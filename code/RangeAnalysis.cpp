#include "NontemporalTransform.h"

void RangeAnalysis::getAnalysisUsage(AnalysisUsage &AU) const {
    AU.addRequired<LoopInfoWrapperPass>();
    AU.addRequired<ScalarEvolutionWrapperPass>();
    AU.setPreservesCFG();
    // return false;
}

bool RangeAnalysis::runOnLoop(Loop* L, LPPassManager &LPM) {
    if (DEBUG_) outs() << "Running on Loop: " << *L << "\n";
    LoopInfo &LI = getAnalysis<LoopInfoWrapperPass>().getLoopInfo();
    auto &SE = getAnalysis<ScalarEvolutionWrapperPass>().getSE();

    std::vector<Value*> gep_scev;
    for (BasicBlock *BB: L->getBlocks()) {
        for (Instruction &I: *BB) {
            if (auto si = dyn_cast<GetElementPtrInst>(&I)) {
                for (auto it = si->idx_begin(); it != si->idx_end(); ++it) {
                    auto SCEV = SE.getSCEV(*it);
                    gep_scev.push_back(*it);
                    outs() << *SCEV << "\n";
                }
            }
        }
    }

    std::map<Value*, bool> m;
    for (int i=0;i<gep_scev.size();i++) {
        unsigned minByteDiff = UINT_MAX;
        for (int j=0;j<gep_scev.size();j++) {
            if (i == j) continue;
            const SCEV *AS = SE.getSCEV(gep_scev[i]), *BS = SE.getSCEV(gep_scev[j]);
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

