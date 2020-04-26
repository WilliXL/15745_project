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

    for (BasicBlock *BB: L->getBlocks()) {
        for (Instruction &I: *BB) {
            if (auto si = dyn_cast<StoreInst>(&I)) {
                auto SCEV = SE.getSCEV(si->getValueOperand());
                ConstantRange R = SE.getSignedRange(SCEV);
                auto upper = SE.getSignedRangeMax(SCEV);
                auto lower = SE.getSignedRangeMin(SCEV);
                outs() << "Upper: " << b.to_string() << ", Lower: " << lower << "\n";
                outs() << *SCEV << "\n";
            }
        }
    }

    return false;
}

