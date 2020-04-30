#include "llvm/Analysis/LoopPass.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/ScalarEvolution.h"

#include <map>

#define DEBUG_ 1

using namespace llvm;

class LoopAnalysis : public LoopPass {

public:
    static char ID;
    LoopAnalysis() : LoopPass(ID) { }

    virtual void getAnalysisUsage(AnalysisUsage &AU) const;
    virtual bool runOnLoop(Loop* L, LPPassManager &LPM);

private:
    std::map <Loop*,SCEV*> LoopMap_;

};