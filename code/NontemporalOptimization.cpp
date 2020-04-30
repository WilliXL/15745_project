#include "NontemporalOptimization.h"


//--------------------------------------------------------------------------------------------------
// AccessAnalysis Functions
//--------------------------------------------------------------------------------------------------

void AccessAnalysis::getAnalysisUsage(AnalysisUsage &AU) const {
    // AU.addRequired<LoopInfoWrapperPass>();
    AU.addRequired<ScalarEvolutionWrapperPass>();
    AU.setPreservesCFG();
}

AccessPattern* AccessAnalysis::newPatternStruct(ScalarEvolution& SE,
                                                StoreInst* SI, const SCEV* scev) {
    AccessPattern* AP = new AccessPattern();

    const SCEVAddRecExpr* AR = cast<SCEVAddRecExpr>(scev);
    const SCEV* strideSCEV = AR->getOperand(1);
    const SCEVConstant* strideConst = cast<SCEVConstant>(strideSCEV);
    ConstantInt* strideConstInt = strideConst->getValue();
    int stride = strideConstInt->getSExtValue();

    int end = SE.getUnsignedRangeMax(scev).getSExtValue();
    outs() << "Yeet: " << SE.getUnsignedRangeMax(scev) << "\n";

    int vectorWidth = SI->getOperand(0)->getType()->getVectorNumElements();
    Type* scalarType = SI->getOperand(0)->getType()->getScalarType();

    AP->SI = SI; AP->end = end; AP->stride = stride;
    AP->vectorWidth = vectorWidth; AP->scalarType = scalarType;

    return AP;
}

void AccessAnalysis::populateMap(Function& F, ScalarEvolution& SE) {
    for (auto &BB : F) {
        for (auto &I : BB) {
            if (StoreInst* SI = dyn_cast<StoreInst>(&I)) {
                Value* loc = SI->getPointerOperand();

                // true if vectorized, which is what we care about
                if (BitCastInst* BCI = dyn_cast<BitCastInst>(loc)) {
                    if (GetElementPtrInst* GEPI = dyn_cast<GetElementPtrInst>(BCI->getOperand(0))) {
                        Value* DSAddr = GEPI->getPointerOperand();
                        const SCEV* scev = SE.getSCEV(loc);
                        AccessPattern* AP = newPatternStruct(SE,SI,scev);
                        AP->start = DSAddr;
                        AccessMap_[SI] = AP;

                        if (DEBUG_) {
                            outs() << "Access Pattern for StoreInst: " << *SI << "\n";
                            outs() << "    Start: " << *AP->start << "\n";
                            outs() << "    End: " << AP->end << "\n";
                            outs() << "    Stride: " << AP->stride << "\n";
                            outs() << "    VectorWidth: " << AP->vectorWidth << "\n";
                            outs() << "    ScalarType: " << *AP->scalarType << "\n";
                        }
                    }
                }
            }
        }
    }
}

bool AccessAnalysis::runOnFunction(Function& F) {
    auto &SE = getAnalysis<ScalarEvolutionWrapperPass>().getSE();

    populateMap(F,SE);

    return false;
}




















// void PerLoopAnalysis::setLoopRange(Loop* L, ScalarEvolution& SE) {
//     if (Value* IV = dyn_cast<Value>(L->getInductionVariable(SE))) {
//         auto bounds = L->getBounds(SE);
//         if (bounds.hasValue()) {
//             Value& startVal = bounds.getValue().getInitialIVValue();
//             Value& endVal = bounds.getValue().getFinalIVValue();
//             Value* strideVal = bounds.getValue().getStepValue();
//             ConstantInt* startCI = dyn_cast<ConstantInt>(&startVal);
//             ConstantInt* endCI = dyn_cast<ConstantInt>(&endVal);
//             ConstantInt* strideCI = dyn_cast<ConstantInt>(strideVal);
//             int start = startCI->getSExtValue();
//             int end = endCI->getSExtValue();
//             int stride = strideCI->getSExtValue();
//             LoopRange* range = new LoopRange();
//             range->start = start; range->end = end; range->stride = stride; range->IV = IV;
//             LoopMap_[L] = range;
//         }
//         else {
//             LoopMap_[L] = NULL;
//         }
//     }
//     else {
//         LoopMap_[L] = NULL; // just gonna be pedantic for now
//     }
// }

// LoopRange* PerLoopAnalysis::getLoopRange(Loop* L) {
//     return LoopMap_[L];
// }



// bool PerLoopAnalysis::runOnLoop(Loop* L, LPPassManager &LPM) {
//     if (DEBUG_) outs() << "Running on Loop:\n" << *L << "\n";

//     auto &SE = getAnalysis<ScalarEvolutionWrapperPass>().getSE();
//     setLoopRange(L,SE);

//     for (BasicBlock *BB: L->getBlocks()) {
//         for (Instruction &I: *BB) {
//             if (StoreInst* SI = dyn_cast<StoreInst>(&I)) {
//                 // const SCEV* scev = SE.getSCEV(SI->getOperand(1));
//                 // const SCEVAddRecExpr* AR = cast<SCEVAddRecExpr>(scev);
//                 // auto start = *AR->getOperand(0);
//                 // const SCEVConstant* startInt = cast<SCEVConstant>(&start);
//                 // ConstantInt* startConstInt = startInt->getValue();
//                 // int startInteger = startConstInt->getSExtValue();
//                 Value* ptr = SI->getPointerOperand();
//                 BitCastInst* BCI = dyn_cast<BitCastInst>(ptr);
//                 GetElementPtrInst* GEPI = dyn_cast<GetElementPtrInst>(BCI->getOperand(0));
//                 Value* DSPtr = GEPI->getPointerOperand();
//                 // ConstantInt* DSStart = dyn_cast<ConstantInt>(DSPtr);
//                 outs() << GEPI->getAddressSpace() << "\n";
//             }
//         }
//     }

    // if (DEBUG_) {
    //     if (auto range = getLoopRange(L)) {
    //         outs() << "IV SCEV set as: " << "\n";
    //         outs() << "Start: " << range->start << "\n";
    //         outs() << "End: " << range->end << "\n";
    //         outs() << "Stide: " << range->stride << "\n";
    //     }
    //     else {
    //         outs() << "No valid IV found\n";
    //     }
    // }
// }


