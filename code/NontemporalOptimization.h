#include "llvm/Analysis/LoopPass.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/Analysis/ScalarEvolutionExpressions.h"
#include "llvm/IR/Constants.h"
#include "llvm/Analysis/LoopCacheAnalysis.h"

#include <map>

#define DEBUG_ 1

using namespace llvm;

struct AccessPattern {
    StoreInst* SI;
    Value* start;
    int end;
    int stride;
    int vectorWidth;
    Type* scalarType;
};

class AccessAnalysis : public FunctionPass {

public:
    static char ID;
    AccessAnalysis() : FunctionPass(ID) { }

    virtual void getAnalysisUsage(AnalysisUsage &AU) const;
    virtual bool runOnFunction(Function& F);
    void populateMap(Function& F, LoopInfo& LI, ScalarEvolution& SE);
    AccessPattern* newPatternStruct(ScalarEvolution& SE, StoreInst* SI, const SCEV* scev);

private:
    std::map <StoreInst*,AccessPattern*> AccessMap_;

};

static RegisterPass<AccessAnalysis>
  X("access-pass", "15-745 Analyze Access Patterns of Store Instructions");
char AccessAnalysis::ID = 0;