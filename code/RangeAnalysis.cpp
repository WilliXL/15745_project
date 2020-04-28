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

    auto IV = L->getInductionVariable(SE);
    outs() << "IV: " << IV << "\n";
    auto IV_SC = SE.getSCEV(IV);
    ConstantRange R = SE.getSignedRange(IV_SC);
    auto upper = SE.getSignedRangeMax(IV_SC);
    auto lower = SE.getSignedRangeMin(IV_SC);
    outs() << "Upper: " << upper << ", Lower: " << lower << "\n";
    outs() << *IV_SC << "\n";

    std::vector<const SCEV*> gep_scev;
    for (BasicBlock *BB: L->getBlocks()) {
        for (Instruction &I: *BB) {
            if (auto si = dyn_cast<GetElementPtrInst>(&I)) {
                for (auto it = si->idx_begin(); it != si->idx_end(); ++it) {
                    auto SCEV = SE.getSCEV(*it);
                    gep_scev.push_back(SCEV);
                    outs() << *SCEV << "\n";
                }
            }
        }
    }

    for (int i=0;i<gep_scev.size();i++) {
        unsigned minByteDiff = UINT_MAX;
        for (int j=0;j<gep_scev.size();j++) {
            if (i == j) continue;
            const SCEV *AS = gep_scev[i], *BS = gep_scev[j];
            unsigned bitWidth = SE.getTypeSizeInBits(AS->getType());
            auto diff = SE.getMinusSCEV(AS, BS);
            outs() << "diff range: " << SE.getUnsignedRangeMin(diff) << " " << SE.getUnsignedRangeMax(diff) << "\n";
            unsigned byteDiff = bitWidth * SE.getUnsignedRangeMin(diff).getLimitedValue() / 8;
            minByteDiff = std::min(minByteDiff, byteDiff);
        }
        outs() << "min byte diff: " << minByteDiff << "\n";
    }

    return false;
}

