#include "NontemporalOptimization.h"


//--------------------------------------------------------------------------------------------------
// AccessAnalysis Functions
//--------------------------------------------------------------------------------------------------

void AccessAnalysis::getAnalysisUsage(AnalysisUsage &AU) const {
    AU.addRequired<LoopInfoWrapperPass>();
    AU.addRequired<ScalarEvolutionWrapperPass>();
    AU.addRequired<DependenceAnalysisWrapperPass>();
    AU.addRequired<AAResultsWrapperPass>();
    AU.setPreservesCFG();
}

bool AccessAnalysis::doInitialization(Function& F) {
    int idx = 0;
    for (auto BB : F) {
        for (auto I : BB) {
            if (isa<StoreInst>(I) || isa<LoadInst>(I)) {
                InstsToIdx_[I] = idx;
                idx++;
                InstVector_.push_back(I);
            }
        }
    }
    return false;
}

void AccessAnalysis::doDfaAnalysis(void) {
    BitVector::size_type size = InstsToIdx_.size();
    BitVector boundary = BitVector(size);
    BitVector init = BitVector(size, true);

    DataflowAnalysis DFAAccess(
        size, // size
        false, // backward
        [&InstsToIdx_](Instruction* I, BitVector BV) {
            return BV.set(InstsToIdx_[I]);
        }, // transfer func (just propagate this instruction up)
        [](BasicBlock*, BasicBlock*, BitVector& in1, BitVector& in2) {
            in1 |= in2; // meet operator is bitwise OR (union)
        }, // meet operator
        boundary, // boundary
        init); // entry
    auto accessInOut = DFAAccess.doAnalysis(&F);
    return accessInOut;
}

bool AccessAnalysis::ptsToSameStruct(Instruction* instOne, Instruction* instTwo) {
    StoreInst* SIOne = dyn_cast<StoreInst>(instOne);
    GetElementPtrInst* GEPIOne = dyn_cast<GetElementPtrInst>(SIOne->getPointerOperand());
    auto DSOne = GEPIOne->getPointerOperand();

    if (StoreInst* SITwo = dyn_cast<StoreInst>(instTwo)) {
        GetElementPtrInst* GEPITwo = dyn_cast<GetElementPtrInst>(SITwo->getPointerOperand());
        auto DSTwo = GEPITwo->getPointerOperand();
        return DSOne == DSTwo
    }
    if (LoadInst* LITwo = dyn_cast<LoadInst>(instTwo)) {
        GetElementPtrInst* GEPITwo = dyn_cast<GetElementPtrInst>(SITwo->getPointerOperand());
        auto DSTwo = GEPITwo->getPointerOperand();
        return DSOne == DSTwo
    }
    return false;


}

void AccessAnalysis::insertNontemporalInstruction(Instruction* inst) {
    StoreInst* SI = dyn_cast<StoreInst>(inst);
    auto MDN = MDNode::get(BB->getContext(), MDString::get(BB->getContext(), to_string(1)));
    SI.setMetadata("nontemporal", MDN);
}

int AccessAnalysis::getReuseDistance(Instruction* instOne, Instruction* instTwo) {

    BasicBlock* BBOne = instOne->getParent();
    BasicBlock* BBTwo = instTwo->getParent();
    const Loop* LoopOne = LI[BBOne];
    const Loop* LoopTwo = LI[BBTwo];
    auto IROne = IndexedReference(instOne, LI, SE); // TODO member variables???
    auto IRTwo = IndexedReference(instTwo, LI, SE);

    if (LoopOne == LoopTwo) {
        auto hasTempReuse = IROne.hasTemporalReuse(IRTwo,MIN_REUSE_DIST,*LoopOne,DI,AA);
        if (hasTempReuse.hasValue()) {
            if (hasTempReuse.value()) {
                return MIN_REUSE_DIST - 1;
            }
            else {
                return MIN_REUSE_DIST;
            }
        }
    }
    else if (LoopOne.getParentLoop() == LoopTwo || LoopTwo.getParentLoop() == LoopOne) {
        return 0; // let's not deal with this for now
    }
    else if ()

    return 0;
}

void AccessAnalysis::insertNontemporalInsts() {
    for (auto it = InstToIdx_.begin(); it != InstToIdx_.end(); ++it) {
        auto instOne = it->first;
        if (!isa<StoreInst>(instOne)) continue;
        auto parentBlock = key->getParent();
        auto BV = BBOuts_[parentBlock];
        for (auto idx : BV.set_bits()) {
            auto instTwo = InstVector_[idx];
            if (!ptsToSameStruct(instOne,instTwo)) continue;
            auto RD = getReuseDistance(instOne,instTwo);
            if (RD >= MIN_REUSE_DIST) insertNontemporalInstruction(instOne);
        }
    }
}

bool AccessAnalysis::runOnFunction(Function& F) {
    LoopInfo &LI = getAnalysis<LoopInfoWrapperPass>().getLoopInfo();
    auto &SE = getAnalysis<ScalarEvolutionWrapperPass>().getSE();
    auto &DI = getAnalysis<DependenceAnalysisWrapperPass>().getDI();
    auto &AA = getAnalysis<AAResultsWrapperPass>().getAAResults();

    auto accessInOut = doDfaAnalysis();
    BBOuts_ = accessInOut.second();
    insertNontemporalInsts();

    return true;
}