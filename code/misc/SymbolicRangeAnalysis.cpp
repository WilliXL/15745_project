#include "Range.h"
#include "NontemporalOptimization.h"
#include "llvm/IR/Constants.h"
#include "llvm/Support/CommandLine.h"



const int MaxExprSize = 8;

const unsigned CHANGED_LOWER = 1 << 0;
const unsigned CHANGED_UPPER = 1 << 1;




void SymbolicRangeAnalysis::setChanged(Value *V, Range &Prev, Range &New) {
    unsigned Changed = (Prev.getLower() != New.getLower() ? CHANGED_LOWER : 0)
                       | (Prev.getUpper() != New.getUpper() ? CHANGED_UPPER : 0);
    Changed_[V] = Changed;

    auto It = StableBounds_.find(V);
    if (It == StableBounds_.end()) {
        StableBounds_[V] = std::make_pair(true, true);
        return;
    }

    bool StableLower = !(Changed & CHANGED_LOWER);
    bool StableUpper = !(Changed & CHANGED_UPPER);
    It->second = std::make_pair(It->second.first & StableLower, It->second.second & StableUpper);
}

static Range GetBoundsForTy(Type *Ty) {
    unsigned Width = Ty->getIntegerBitWidth();
    uint64_t Upper = APInt::getMaxValue(Width).getZExtValue();
    int64_t Lower = APInt::getSignedMinValue(Width).getSExtValue();
    return Range(Lower, Upper);
}

static Range GetBoundsForValue(Value *V) {
    return GetBoundsForTy(V->getType());
}

void SymbolicRangeAnalysis::setState(Value *V, Range range) {
    if (_DEBUG) {
        outs() << "SRA: setState(" << *V << ", (" << range.getLower() << "," << range.getUpper() << "))\n";
    }

    auto Bounds = GetBoundsForValue(V);
    if (sizeof(range.getLower()) > MaxExprSize) {
        range.setLower(Bounds.getLower());
    }

    if (sizeof(range.getUpper()) > MaxExprSize) {
        range.setUpper(Bounds.getUpper());
    }

    auto It = State_.insert(std::make_pair(V, range));
    if (!It.second) {
        if (It.first->second != range)
        setChanged(V, It.first->second, range);
        It.first->second = range;
    } else if (isa<Instruction>(V)) {
        Changed_[V] = CHANGED_LOWER | CHANGED_UPPER;
    }
}

void SymbolicRangeAnalysis::setName(Value *V, std::string Name) {
    if (_DEBUG) {
        outs() << "SRA: setName: " << Name << "\n";
    }
    Name_[V] = Name;
    Value_[Name] = V;
}

bool SymbolicRangeAnalysis::hasStableUpperBound(Value *V) const {
  auto It = StableBounds_.find(V);
  return It == StableBounds_.end() ? false : It->second.second;
}

Range SymbolicRangeAnalysis::getState(Value *V) const {
  // TODO: Handle ptrtoint.
    if (ConstantInt *CI = dyn_cast<ConstantInt>(V))
        return Range(CI->getValue().getSExtValue(),CI->getValue().getSExtValue());
    if (isa<UndefValue>(V) || isa<Constant>(V))
        return GetBoundsForValue(V);
    auto It = State_.find(V);
    assert(It != State_.end() && "Requested value is not in map");
    return It->second;
}

Range SymbolicRangeAnalysis::getStateOrInf(Value *V) const {
  auto State = getState(V);
  return State != Range(0,0)
      ? State : GetBoundsForTy(cast<IntegerType>(V->getType()));
}

static Range Narrow(PHINode *Phi, Value *V, ICmpInst::Predicate Pred,
                        SymbolicRangeAnalysis *SRA) {
    if (_DEBUG) outs() << "SRA: Narrow: " << *Phi << "," << *V << "\n";

  auto Ret   = SRA->getStateOrInf(Phi->getIncomingValue(0)),
       Bound = SRA->getStateOrInf(V);
  switch (Pred) {
    case CmpInst::ICMP_SLT:
    case CmpInst::ICMP_ULT:
        if (_DEBUG) outs() << "     Narrow: " << "(" << Ret.getUpper() << "," << Ret.getLower() << ")" << " < " << "(" << Bound.getUpper() << "," << Bound.getLower() << ")" << "\n";
      Ret.setUpper(Bound.getUpper() - 1);
      break;
    case CmpInst::ICMP_SLE:
    case CmpInst::ICMP_ULE:
        if (_DEBUG) outs() << "     Narrow: " << "(" << Ret.getUpper() << "," << Ret.getLower() << ")" << " <= " << "(" << Bound.getUpper() << "," << Bound.getLower() << ")" << "\n";
      Ret.setUpper(Bound.getUpper());
      break;
    case CmpInst::ICMP_SGT:
    case CmpInst::ICMP_UGT:
        if (_DEBUG) outs() << "     Narrow: " << "(" << Ret.getUpper() << "," << Ret.getLower() << ")" << " > " << "(" << Bound.getUpper() << "," << Bound.getLower() << ")" << "\n";
      Ret.setLower(Bound.getLower() + 1);
      break;
    case CmpInst::ICMP_SGE:
    case CmpInst::ICMP_UGE:
        if (_DEBUG) outs() << "     Narrow: " << "(" << Ret.getUpper() << "," << Ret.getLower() << ")" << " >= " << "(" << Bound.getUpper() << "," << Bound.getLower() << ")" << "\n";
      Ret.setLower(Bound.getLower());
      break;
    case CmpInst::ICMP_EQ:
        if (_DEBUG) outs() << "     Narrow: " << "(" << Ret.getUpper() << "," << Ret.getLower() << ")" << " == " << "(" << Bound.getUpper() << "," << Bound.getLower() << ")" << "\n";
      Ret = Bound;
      break;
    case CmpInst::ICMP_NE:
      if (SRA->hasStableLowerBound(Phi)) {
          if (_DEBUG) outs() << "     Narrow: " << "(" << Ret.getUpper() << "," << Ret.getLower() << ")" << " != " << "(" << Bound.getUpper() << "," << Bound.getLower() << ")" << " (lower)\n";
        Ret.setUpper(Bound.getUpper() - 1);
      } else if (SRA->hasStableUpperBound(Phi)) {
          if (_DEBUG) outs() << "     Narrow: " << "(" << Ret.getUpper() << "," << Ret.getLower() << ")" << " != " << "(" << Bound.getUpper() << "," << Bound.getLower() << ")" << " (upper)\n";
        Ret.setLower(Bound.getLower() + 1);
      }
      break;
    default:
      break;
  }

    if (_DEBUG) outs() << "Narrow: return " << "(" << Ret.getUpper() << "," << Ret.getLower() << ")" << "\n";
  return Ret;
}

void SymbolicRangeAnalysis::createNarrowingFn(Value *LHS, Value *RHS,
                                      CmpInst::Predicate Pred, BasicBlock *BB) {
  if (auto Redef = RDF_->getRedef(LHS, BB))
    Fn_[Redef] = [Redef, RHS, Pred, this] ()
      { return Narrow(Redef, RHS, Pred, this); };
}

void SymbolicRangeAnalysis::handleBranch(BranchInst *BI, ICmpInst *ICI) {
    Value *LHS = ICI->getOperand(0), *RHS = ICI->getOperand(1);
    BasicBlock *TB = BI->getSuccessor(0), *FB = BI->getSuccessor(1);
    CmpInst::Predicate Pred     = ICI->getPredicate(),
                        SwapPred = ICI->getSwappedPredicate(),
                        InvPred  = ICI->getInversePredicate(), EqPred;

    // For (i < j) branching to cond.true and cond.false, for example:
    // 1) i < j at cond.true;
    createNarrowingFn(LHS, RHS, Pred,     TB);
    // 2) j > i at cond.true;
    createNarrowingFn(RHS, LHS, SwapPred, TB);
    // 3) i >= j at cond.false;
    createNarrowingFn(LHS, RHS, InvPred,  FB);

    if (ICI->isEquality())
        EqPred = Pred;
    else if (ICI->isTrueWhenEqual())
        EqPred = (ICmpInst::Predicate)(Pred - 1);
    else {
        assert(ICI->isFalseWhenEqual());
        EqPred = (ICmpInst::Predicate)(Pred + 1);
    }
    // 4) j <= i at cond.false;
    createNarrowingFn(RHS, LHS, EqPred, FB);
}


void SymbolicRangeAnalysis::initialize(Function *F) {
    if (_DEBUG) {
        outs() << "SRA: initialize: " << F->getName() << "\n";
    }
  // Create symbols for the function's integer arguments.
    for (auto AI = F->arg_begin(), AE = F->arg_end(); AI != AE; ++AI)
        if (AI->getType()->isIntegerTy()) {
            std::string Name = makeName(F, &(*AI));
            setName(&(*AI), Name);
            // SAGEExpr Arg(*SI_, Name.c_str());
            auto range = GetBoundsForTy(AI->getType());
            // Range is symbolic - [Arg, Arg].
            setState(&(*AI), range);
        }

    // Create a closure for each instruction.
    for (auto &BB : *F) {
        // Handle sigma nodes.
        Instruction *TI = BB.getTerminator();
        if (BranchInst *BI = dyn_cast<BranchInst>(TI))
        if (BI->isConditional())
            if (ICmpInst *ICI = dyn_cast<ICmpInst>(BI->getCondition()))
            handleBranch(BI, ICI);

        // Handle everything that's not a sigma node.
        for (auto &I : BB) {
            if (I.getType()->isIntegerTy()) {
            Mapping_[&I] = Mapping_.size() + 1;
            handleIntInst(&I);
            }
        }
    }
}

void SymbolicRangeAnalysis::reset(Function *F) {
    if (_DEBUG) {
        outs() << "SRA: reset: " << F->getName() << "\n";
    }
    for (auto &BB : *F) {
        for (auto &I : BB) {
            if (Changed_.count(&I) && Changed_[&I]) {
                Worklist_.insert(std::make_pair(Mapping_[&I], &I));
            }
        }
    }
    Evaled_.clear();
    Changed_.clear();
}

void SymbolicRangeAnalysis::iterate(Function *F) {
    if (_DEBUG) {
        outs() << "SRA: iterate: " << F->getName() << "\n";
    }
    while (!Worklist_.empty()) {
        auto Next = Worklist_.begin();
        Instruction *I = Next->second;
        Worklist_.erase(Next);
        if (Fn_.count(I) && !Evaled_.count(I)) {
        Evaled_.insert(I);
        setState(I, Fn_[I]());
        for (auto UI = I->use_begin(), UE = I->use_end(); UI != UE; ++UI)
            if (Instruction *Use = dyn_cast<Instruction>(*UI)) {
                if (!Evaled_.count(Use)) {
                    Worklist_.insert(std::make_pair(Mapping_[Use], Use));
                }
            }
        }
    }
}

// void SymbolicRangeAnalysis::widen(Function *F) {
//     if (_DEBUG) {
//         outs() << "SRA: widen: " << F.getName() << "\n";
//     }
//     for (auto &BB : *F)
//         for (auto &I : BB)
//         if (I.getType()->isIntegerTy())
//             if (Changed_.count(&I) && Changed_[&I]) {
//             auto State = getStateOrInf(&I);
//             auto Bounds = GetBoundsForValue(&I, SI_);
//             if (Changed_[&I] & CHANGED_LOWER)
//                 State.setLower(Bounds.getLower());
//             if (Changed_[&I] & CHANGED_UPPER)
//                 State.setUpper(Bounds.getUpper());
//             setState(&I, State);
//     }
// }



bool SymbolicRangeAnalysis::runOnFunction(Function& F) {
    Module_ = F.getParent();
    // SI_ = &getAnalysis<SAGEInterface>();

    if (_DEBUG) {
        outs() << "SRA: runOnModule: " << F.getName() << "\n";
    }

    dbgs() << "SRA: runOnModule: " << F.getName() << "\n";

    // RDF_ = &getAnalysis<Redefinition>();

    initialize(&F);
    reset(&F);
    iterate(&F);
    reset(&F);
    iterate(&F);
    reset(&F);
    iterate(&F);
    // widen(&F);

    // if (_DEBUG) {
    //     outs() << *this << "\n";
    // }

    return false;
}

static RegisterPass<SymbolicRangeAnalysis>
  X("sra", "15-745 Symbolic Range Analysis Pass Borrowed from SRA Paper", false, false);
char SymbolicRangeAnalysis::ID = 1;