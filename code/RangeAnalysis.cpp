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

    // auto IV = L->getInductionVariable(SE);
    Optional< Loop::LoopBounds > bounds = L->getBounds(SE);
    if (bounds.hasValue()) {
        outs() << bounds.getValue().getInitialIVValue() << "\n";
    }
    else {
        outs() << "YEET\n";
    }

    // for (BasicBlock *BB: L->getBlocks()) {
    //     for (Instruction &I: *BB) {
    //         if (PHINode* phi = dyn_cast<PHINode>(&I)) {
                
                
    //         }
            // if (auto si = dyn_cast<StoreInst>(&I)) {
            //     auto SCEV = SE.getSCEV(si->getValueOperand());
            //     ConstantRange R = SE.getSignedRange(SCEV);
            //     auto upper = SE.getSignedRangeMax(SCEV);
            //     auto lower = SE.getSignedRangeMin(SCEV);
            //     outs() << "Upper: " << upper << ", Lower: " << lower << "\n";
            //     outs() << *SCEV << "\n";
            // }
        // }
    // }

    return false;
}

