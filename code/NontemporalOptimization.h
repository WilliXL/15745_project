#include "llvm/Analysis/LoopPass.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/Analysis/ScalarEvolutionExpressions.h"
#include "llvm/IR/Constants.h"
#include "llvm/Analysis/LoopCacheAnalysis.h"
#include "Dataflow.h"

#include <map>
#include <vector>

#define DEBUG_ 1
#define MIN_REUSE_DIST 1000

using namespace llvm;

class AccessAnalysis : public FunctionPass {

public:
    static char ID;
    AccessAnalysis() : FunctionPass(ID) { }

    virtual void getAnalysisUsage(AnalysisUsage &AU) const;
    virtual bool runOnFunction(Function& F);
    virtual bool doInitialization(Function& F);

private:
    std::map<Instruction*,int> InstsToIdx_;
    std::map<BasicBlock*, BitVector> BBOuts_;
    std::vector<Instruction*> InstVector_;
};

static RegisterPass<AccessAnalysis>
  X("access-pass", "15-745 Analyze Access Patterns of Store Instructions");
char AccessAnalysis::ID = 0;