#include "NontemporalTransform.h"

void RangeAnalysis::getAnalysisUsage(AnalysisUsage &AU) const {
    AU.addRequired<LoopInfoWrapperPass>();
    AU.addRequired<ScalarEvolutionWrapperPass>();
    AU.setPreservesCFG();
}

const SCEV* RangeAnalysis::getIndexVariableVectorized(ScalarEvolution& SE, const StoreInst* SI) {
    auto bitCast = SI->getPointerOperand();
    if (auto bitCastInst = dyn_cast<BitCastInst>(bitCast)) {
        auto ptr = bitCastInst->getOperand(0);
        if (auto getEltPtrInst = dyn_cast<GetElementPtrInst>(ptr)) {
            auto indices = getEltPtrInst->indices();
            auto scev = SE.getSCEV(&(**(indices.begin())));
            return scev;
        }
    }
    return NULL;
}

bool RangeAnalysis::runOnLoop(Loop* L, LPPassManager &LPM) {
    if (DEBUG_) outs() << "Running on Loop: " << *L << "\n";
    LoopInfo &LI = getAnalysis<LoopInfoWrapperPass>().getLoopInfo();
    auto &SE = getAnalysis<ScalarEvolutionWrapperPass>().getSE();

    std::vector<StoreInst*> gep_scev;
    for (BasicBlock *BB: L->getBlocks()) {
        for (Instruction &I: *BB) {
            if (auto si = dyn_cast<StoreInst>(&I)) {
                gep_scev.push_back(si);
                // if (auto SCEV = getIndexVariableVectorized(SE,si)) {
                //     gep_scev.push_back(si);
                // }
                // for (auto it = si->idx_begin(); it != si->idx_end(); ++it) {
                //     auto SCEV = SE.getSCEV(*it);
                //     gep_scev.push_back(*it);
                //     outs() << *SCEV << "\n";
                // }
            }
        }
    }

    std::map<StoreInst*, bool> m;
    for (int i=0;i<gep_scev.size();i++) {
        unsigned minByteDiff = UINT_MAX;
        for (int j=0;j<gep_scev.size();j++) {
            if (i == j) continue;
            const SCEV *AS = getIndexVariableVectorized(SE,gep_scev[i]),
                       *BS = getIndexVariableVectorized(SE,gep_scev[j]);
            unsigned bitWidth = SE.getTypeSizeInBits(AS->getType());
            auto diff = SE.getMinusSCEV(AS, BS);
            outs() << "diff range: " << SE.getUnsignedRangeMin(diff) << " " << SE.getUnsignedRangeMax(diff) << "\n";
            unsigned byteDiff = bitWidth * SE.getUnsignedRangeMin(diff).abs().getLimitedValue() / 8;
            minByteDiff = std::min(minByteDiff, byteDiff);
        }
        m[gep_scev[i]] = minByteDiff < 64;
        outs() << "min byte diff: " << minByteDiff << "\n";
    }

    return false;
}

