#include "NontemporalOptimization.h"


//--------------------------------------------------------------------------------------------------
// AccessAnalysis Functions
//--------------------------------------------------------------------------------------------------

void AccessAnalysis::getAnalysisUsage(AnalysisUsage &AU) const {
    AU.addRequired<LoopInfoWrapperPass>();
    AU.addRequired<ScalarEvolutionWrapperPass>();
    AU.setPreservesCFG();
}

bool AccessAnalysis::runOnFunction(Function& F) {
    LoopInfo &LI = getAnalysis<LoopInfoWrapperPass>().getLoopInfo();
    auto &SE = getAnalysis<ScalarEvolutionWrapperPass>().getSE();


    return false;
}