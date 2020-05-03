// 15-745 S16 Assignment 2: dataflow.cpp
// Group:
////////////////////////////////////////////////////////////////////////////////

#include "Dataflow.h"

namespace llvm {

    std::pair<std::map<BasicBlock*, BitVector>, std::map<BasicBlock*, BitVector>> DataflowAnalysis::doAnalysis(Function* F) {
        if (forward) {
            // Initialize states
            for (auto it = F->begin(); it != F->end(); ++it) {
                out[&(*it)] = init;
            }
            // We use reverse postorder for forward analysis
            ReversePostOrderTraversal<Function*> RPOT(F);
            bool change = true;
            while (change) {
                change = false;
                for (auto I = RPOT.begin(); I != RPOT.end(); ++I) {
                    BasicBlock* BB = *I;
                    if (I != RPOT.begin()) {
                        in[BB] = init;
                        // Get the block's input from meeting all of its predecessors
                        for (auto it = pred_begin(BB); it != pred_end(BB); ++it) {
                            meet(BB, *it, in[BB], out[*it]);
                        }
                    } else {
                        // Entry block
                        in[*I] = boundary;
                    }
                    BitVector oldout = out[BB];
                    out[BB] = in[BB];
                    // Apply the transfer function instruction by instruction
                    for (auto it = BB->begin(), e = BB->end(); it != e; ++it) {
                        out[BB] = transfer(&*it, out[BB]);
                    }
                    // If anything changed, we need an extra iteration
                    if (oldout != out[BB])
                        change = true;
                }
            }
        } else {
            // Initialize states
            for (auto it = F->begin(); it != F->end(); ++it) {
                in[&(*it)] = init;
                if (!it->getSingleSuccessor()) {
                    out[&(*it)] = boundary;
                }
            }
            bool change = true;
            while (change) {
                change = false;
                // We use postorder for backwards analysis
                for (po_iterator<BasicBlock*> I = po_begin(&(F->getEntryBlock())); I != po_end(&(F->getEntryBlock())); ++I) {
                    BasicBlock* BB = *I;
                    if (BB->getSingleSuccessor()) { // non-exit block
                        out[BB] = init;
                    }
                    // Get the block's input from meeting all of its successors
                    for (auto it = succ_begin(BB); it != succ_end(BB); ++it) {
                        meet(BB, *it, out[BB], in[*it]);
                    }
                    BitVector oldin = in[BB];
                    in[BB] = out[BB];
                    // Apply the transfer function instruction by instruction backwards
                    for (auto it = BB->rbegin(), e = BB->rend(); it != e; ++it) {
                        in[BB] = transfer(&*it, in[BB]);
                    }
                    if (oldin != in[BB])
                        change = true;
                }
            }
        }
        return std::make_pair(in, out);
    }
}
