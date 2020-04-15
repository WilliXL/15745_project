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
    class NontemporalAnalysis : public ModulePass {

        public:
            static char ID;

            NontemporalAnalysis() : ModulePass(ID) { }
            ~NontemporalAnalysis() { }

            // void NontemporalAnalysis::getAnalysisUsage(AnalysisUsage &AU) const {
            //     AU.addRequired<NontemporalAnalysis>();
            //     AU.setPreservesAll();
            // }

            bool runOnModule(Module& M) {
                for (auto &F : M) {
                    LLVMContext& C = F.getContext();
                    auto name = F.getName().str();
                    if (name.find("critical") == string::npos) continue;
                    // outs() << F.getName() << "\n";
                    for (auto &BB : F) {
                        for (auto &I : BB) {
                            if (isa<llvm::StoreInst>(I)) {
                                auto MDN = MDNode::get(C, MDString::get(C, to_string(1)));
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
