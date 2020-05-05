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

std::string printSet(std::vector<Instruction*> v, Instruction* inst, BitVector bv) {
    std::string s;
    raw_string_ostream inst_output(s);
    // if (inst != nullptr && isa<PHINode>(inst)) {
    //     inst_output << *inst << "\n";
    // } else {
        // if (inst != nullptr) {
        //     inst_output << *inst << "\n";
        // }
        // inst_output << "{";
        for (auto it = bv.set_bits_begin(); it != bv.set_bits_end(); ++it) {
            if (it != bv.set_bits_begin()) {
                inst_output << ",";
            }
            inst_output << *(v[*it]);
        }
        // inst_output << "}\n";
    // }
    return inst_output.str();
}

bool AccessAnalysis::populateInstsMap(Function &F) {
    int idx = 0;
    for (auto& BB : F) {
        for (Instruction& I : BB) {
            if (isa<StoreInst>(I)) {
                if (!dyn_cast<GetElementPtrInst>((dyn_cast<StoreInst>(&I))->getPointerOperand())) continue;
                InstsToIdx_[&I] = idx;
                idx++;
                InstVector_.push_back(&I);
            }
            if (isa<LoadInst>(I)) {
                if (!dyn_cast<GetElementPtrInst>((dyn_cast<LoadInst>(&I))->getPointerOperand())){
                    outs() << "load wo pointer operand: " << I << "\n";
                    continue;
                }
                InstsToIdx_[&I] = idx;
                idx++;
                InstVector_.push_back(&I);
            }
        }
    }
    return false;
}

std::pair<std::map<BasicBlock*, BitVector>, std::map<BasicBlock*, BitVector>> AccessAnalysis::doDfaAnalysis(Function &F) {
    BitVector::size_type size = InstsToIdx_.size();
    BitVector boundary = BitVector(size, false);
    BitVector init = BitVector(size, false);

    DataflowAnalysis DFAAccess(
        size, // size
        false, // backward
        [this](Instruction* I, BitVector BV) {
            // outs() << "I: " << *I << "\n" << printSet(InstVector_,nullptr,BV) << "\n\n\n";
            if (this->InstsToIdx_.find(I) == this->InstsToIdx_.end()) return BV;
            return BV.set(this->InstsToIdx_[I]);
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
    // outs() << "instOne: " << *instOne << ", instTwo: " << *instTwo << "\n";
    StoreInst* SIOne = dyn_cast<StoreInst>(instOne);
    GetElementPtrInst* GEPIOne = dyn_cast<GetElementPtrInst>(SIOne->getPointerOperand());
    auto DSOne = GEPIOne->getPointerOperand();

    if (StoreInst* SITwo = dyn_cast<StoreInst>(instTwo)) {
        GetElementPtrInst* GEPITwo = dyn_cast<GetElementPtrInst>(SITwo->getPointerOperand());
        auto DSTwo = GEPITwo->getPointerOperand();
        return DSOne == DSTwo;
    }
    if (LoadInst* LITwo = dyn_cast<LoadInst>(instTwo)) {
        GetElementPtrInst* GEPITwo = dyn_cast<GetElementPtrInst>(LITwo->getPointerOperand());
        auto DSTwo = GEPITwo->getPointerOperand();
        return DSOne == DSTwo;
    }
    return false;


}

void AccessAnalysis::insertNontemporalInstruction(Instruction* inst) {
    StoreInst* SI = dyn_cast<StoreInst>(inst);
    auto MDN = MDNode::get(inst->getParent()->getContext(), MDString::get(inst->getParent()->getContext(), std::to_string(1)));
    SI->setMetadata("nontemporal", MDN);
    outs() << "Inserted NT Inst at: " << *inst << "\n";
}

unsigned AccessAnalysis::getLoopCacheFootprint(Loop* L, LoopInfo &LI, ScalarEvolution &SE) {
    unsigned total = 0;
    for (auto BB : L->getBlocks()) {
        for (Instruction& I: *BB) {
            if (isa<StoreInst>(I) || isa<LoadInst>(I)) {
                IndexedReference IR(I, LI, SE);
                total += IR.computeRefCost(*L, 64);
            }
        }
    }
    return total;
}

int AccessAnalysis::getReuseDistance(Instruction* instOne, Instruction* instTwo, LoopInfo &LI, ScalarEvolution &SE, DependenceInfo &DI, AliasAnalysis &AA) {
    BasicBlock* BBOne = instOne->getParent();
    BasicBlock* BBTwo = instTwo->getParent();
    Loop* LoopOne = LI.getLoopFor(BBOne);
    Loop* LoopTwo = LI.getLoopFor(BBTwo);
    auto IROne = IndexedReference(*instOne, LI, SE); // TODO member variables???
    auto IRTwo = IndexedReference(*instTwo, LI, SE);
    if (!IROne.isValid()) {
        outs() << "IROne not valid\n";
        return 0;
    }
    if (!IRTwo.isValid()) {
        outs() << "IRTwo not valid\n";
        return 0;
    }

    if (LoopOne == LoopTwo) {
        auto hasTempReuse = IROne.hasTemporalReuse(IRTwo,MIN_REUSE_DIST,*LoopOne,DI,AA);
        if (hasTempReuse.hasValue()) {
            if (hasTempReuse.getValue()) {
                return MIN_REUSE_DIST - 1;
            }
            else {
                return MIN_REUSE_DIST;
            }
        } else {
            // Dont care
            outs() << "temporal reuse unknown\n";
            return MIN_REUSE_DIST;
        }
    }
    else if (LI.getLoopDepth(BBOne) != LI.getLoopDepth(BBTwo)) {
        // outs() << "0 case\n";
        return 0; // let's not deal with this for now
    }
    else {
        Loop *LOne = LoopOne, *LTwo = LoopTwo;
        while (LOne->getParentLoop() != LTwo->getParentLoop()) {
            LOne = LOne->getParentLoop();
            LTwo = LTwo->getParentLoop();
        }
        unsigned totalReuseDistance = 0;
        if (LOne->getParentLoop() == nullptr) {
            bool on = false;
            for (auto it = LI.rbegin(); it != LI.rend(); ++it) {
                if ((*it)->contains(BBOne)) on = true;
                if ((*it)->contains(BBTwo)) break;
                if (on) {
                    totalReuseDistance += getLoopCacheFootprint(*it, LI, SE);
                }
            }
        } else {
            bool on = false;
            const std::vector<Loop*> subLoops = LOne->getSubLoops();
            for (auto it = subLoops.begin(); it != subLoops.end(); ++it) {
                if ((*it)->contains(BBOne)) on = true;
                if ((*it)->contains(BBTwo)) break;
                if (on) {
                    totalReuseDistance += getLoopCacheFootprint(*it, LI, SE);
                }
            }
        }
        // outs() << "TRD: " << totalReuseDistance << "\n";
        return totalReuseDistance;
    }
}

void AccessAnalysis::insertNontemporalInsts(LoopInfo &LI, ScalarEvolution &SE, DependenceInfo &DI, AliasAnalysis &AA) {
    for (auto it = InstsToIdx_.begin(); it != InstsToIdx_.end(); ++it) {
        auto instOne = it->first;
        if (!isa<StoreInst>(instOne)) continue;
        auto parentBlock = instOne->getParent();
        auto BV = BBOuts_[parentBlock];
        // outs() << "Inst: " << *instOne << "\n" << printSet(InstVector_, nullptr, BV) << "\n";
        bool isShort = false;
        for (auto idx : BV.set_bits()) {
            auto instTwo = InstVector_[idx];
            outs() << "InstOne: " << *instOne << ", instTwo: " << *instTwo << "\n";
            if (!ptsToSameStruct(instOne,instTwo)) continue;
            auto RD = getReuseDistance(instOne,instTwo, LI, SE, DI, AA);
            outs() << "RD: " << RD << "\n";
            if (RD < MIN_REUSE_DIST) {
                isShort = true;
                break;
            }
        }
        outs() << "isShort: " << isShort << "\n";
        outs() << "instOne: " << *instOne << "\n";
        if (!isShort) insertNontemporalInstruction(instOne);
    }
}

bool AccessAnalysis::runOnFunction(Function& F) {
    auto &LI = getAnalysis<LoopInfoWrapperPass>().getLoopInfo();
    auto &SE = getAnalysis<ScalarEvolutionWrapperPass>().getSE();
    auto &DI = getAnalysis<DependenceAnalysisWrapperPass>().getDI();
    auto &AA = getAnalysis<AAResultsWrapperPass>().getAAResults();

    outs() << "RUN ON FUNCTION " << F.getName() << "\n";
    
    InstsToIdx_.clear();
    InstVector_.clear();
    populateInstsMap(F);

    auto accessInOut = doDfaAnalysis(F);
    BBOuts_ = accessInOut.first;
    insertNontemporalInsts(LI, SE, DI, AA);

    return true;
}