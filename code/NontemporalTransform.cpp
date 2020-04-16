// 15-745 Project
// Group: wxl and wfan
////////////////////////////////////////////////////////////////////////////////

#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/IR/Constants.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/ADT/BitVector.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/ValueTracking.h"
#include "llvm/Transforms/Utils/ValueMapper.h"
#include <string>


using namespace llvm;
using namespace std;

namespace {
    class NontemporalAnalysis : public LoopPass {

        public:
            static char ID;

            NontemporalAnalysis() : LoopPass(ID) { }
            ~NontemporalAnalysis() { }

            void getAnalysisUsage(AnalysisUsage &AU) const {
                AU.setPreservesAll();
            }

            bool runOnLoop(Loop* L, LPPassManager &LPM) {
                for (BasicBlock* BB : L->getBlocks()) {
                    for (Instruction &I : *BB) {
                        if (auto si = dyn_cast<StoreInst>(&I)) {
                            if (si->getValueOperand()->getType()->isVectorTy()) {
                                auto MDN = MDNode::get(BB->getContext(), MDString::get(BB->getContext(), to_string(1)));
                                I.setMetadata("nontemporal",MDN);
                                outs() << "Set non-temporal\n";
                            }
                        }
                    }
                }
                return true;

            }
        private:
    };

    char NontemporalAnalysis::ID = 0;
    RegisterPass<NontemporalAnalysis> X("nontemporal-pass",
            "15745 Nontemporal Memory Instruction Insert Pass");
}
