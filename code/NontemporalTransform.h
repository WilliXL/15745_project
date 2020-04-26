#include "llvm/Analysis/LoopPass.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/ScalarEvolution.h"

#include <map>
#include <bitset>

#define DEBUG_ 1

using namespace llvm;

class RangeAnalysis : public LoopPass {
public:
    static char ID;
    RangeAnalysis() : LoopPass(ID) { }

    virtual void getAnalysisUsage(AnalysisUsage &AU) const;
    virtual bool runOnLoop(Loop* L, LPPassManager &LPM);

private:

};

static RegisterPass<RangeAnalysis>
  X("range-anal", "15-745 Nontemporal Memory Instruction Transformation Pass");
char RangeAnalysis::ID = 0;