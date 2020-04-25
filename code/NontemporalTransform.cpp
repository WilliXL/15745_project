// 15-745 Project
// Group: wxl and wfan
////////////////////////////////////////////////////////////////////////////////


#include "llvm/Pass.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/CommandLine.h"

using namespace llvm;
using namespace std;

class NontemporalTransform : public ModulePass {
public:
  static char ID;
  NontemporalTransform() : ModulePass(ID) { }

  virtual void getAnalysisUsage(AnalysisUsage &AU) const;
  virtual bool runOnModule(Module&);
};

void NontemporalTransform::getAnalysisUsage(AnalysisUsage &AU) const {
  AU.addRequired<SymbolicRangeAnalysis>();
  AU.setPreservesAll();
}

static RegisterPass<NontemporalTransform>
  X("nt-transform", "15-745 Nontemporal Memory Instruction Transformation Pass");
char NontemporalTransform::ID = 0;

bool NontemporalTransform::runOnModule(Module& M) {
  for (auto &F : M) {
    if (F.isIntrinsic() || F.isDeclaration())
      continue;

    auto &SRA = getAnalysis<SymbolicRangeAnalysis>(F);

    for (auto &BB : F) {
        for (auto &I : BB) {
            if (auto si = dyn_cast<StoreInst>(&I)) {
                if (SRA.canOptimize(&I) && // TODO
                    si->getValueOperand()->getType()->isVectorTy()) {
                    auto MDN = MDNode::get(BB->getContext(),
                                           MDString::get(BB->getContext(),
                                           to_string(1)));
                    I.setMetadata("nontemporal",MDN);
                    if (_DEBUG) {
                        outs() << "Set non-temporal\n";
                    }
                }
            }
        }
    }

    // LLVMContext& C = M.getContext();
    // std::string Range;
    // raw_string_ostream Stream(Range);
    // for (auto &BB : F)
    //   for (auto &I : BB)
    //     if (I.getType()->isIntegerTy()) {
        //   Stream << SRA.getStateOrInf(&I);
    //       I.setMetadata("sra", MDNode::get(C, MDString::get(C, Stream.str())));
    //       Stream.str().clear();
    //     }
  }

  return true;
}