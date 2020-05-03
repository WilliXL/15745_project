// 15-745 S16 Assignment 2: dataflow.h
// Group: wfan, wxl
////////////////////////////////////////////////////////////////////////////////

#ifndef __CLASSICAL_DATAFLOW_H__
#define __CLASSICAL_DATAFLOW_H__

#include <stdio.h>
#include <iostream>
#include <queue>
#include <vector>

#include "llvm/IR/Instructions.h"
#include "llvm/ADT/BitVector.h"
#include "llvm/ADT/DenseMap.h"
#include "llvm/IR/ValueMap.h"
#include "llvm/IR/CFG.h"
#include "llvm/ADT/PostOrderIterator.h"
#include "llvm/Support/raw_ostream.h"

namespace llvm {

	// Add definitions (and code, depending on your strategy) for your dataflow
	// abstraction here.
    class DataflowAnalysis {
    public:
        DataflowAnalysis(BitVector::size_type size,
                        bool forward,
                        std::function<BitVector(Instruction*, BitVector)> transfer,
                        std::function<void(BasicBlock*, BasicBlock*, BitVector&, BitVector&)> meet,
                        BitVector boundary,
                        BitVector init)
            : size(size),
              forward(forward),
              transfer(transfer),
              meet(meet),
              boundary(boundary),
              init(init) {
        };
        std::pair<std::map<BasicBlock*, BitVector>, std::map<BasicBlock*, BitVector>> doAnalysis(Function* F);
        bool forward;
        std::function<BitVector(Instruction*, BitVector)> transfer;
        std::function<void(BasicBlock*, BasicBlock*, BitVector&, BitVector&)> meet;
        BitVector boundary, init;
    private:
        BitVector::size_type size;
        std::map<BasicBlock*, BitVector> in, out;
    };

}

#endif
