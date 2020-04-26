#ifndef _SYMBOLICRANGEANALYSIS_H_
#define _SYMBOLICRANGEANALYSIS_H_

// #include "SAGE/SAGEInterface.h"

#include "Redefinition.h"

// #include "SAGE/SAGEExpr.h"
// #include "SAGE/Range.h"

#include "llvm/Pass.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/ADT/APInt.h"
#include "llvm/Analysis/DominanceFrontier.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Instructions.h"
// #include "llvm/IR/InstrTypes.h"

#include <map>
#include <set>

#define _DEBUG 1 // turn off when done

using namespace llvm;

class SymbolicRangeAnalysis : public FunctionPass {
public:
  static char ID;
  SymbolicRangeAnalysis() : FunctionPass(ID) { }

  virtual void getAnalysisUsage(AnalysisUsage &AU) const;
  virtual bool runOnFunction(Function&);
  virtual void print(raw_ostream &OS, const Module*) const;

//   SAGEExpr  getBottomExpr() const;
  Range getBottom() const;

  std::string makeName(Function *F, Value *V);
  void        setName(Value *V, std::string Name);
//   std::string getName(Value *V) const;

  void      setState(Value *V, Range range);
  Range getState(Value *V)      const;
  Range getStateOrInf(Value *V) const;

//   std::pair<Value*, Value*> getRangeValuesFor(Value *V, IRBuilder<> IRB) const;

  void initialize(Function *F);
  void reset(Function *F);
  void iterate(Function *F);
//   void widen(Function *F);

  void handleIntInst(Instruction *I);
  void handleBranch(BranchInst *BI, ICmpInst *ICI);

  void createNarrowingFn(Value *LHS, Value *RHS,
                         CmpInst::Predicate Pred, BasicBlock *BB);

  bool hasStableLowerBound(Value *V) const;
  bool hasStableUpperBound(Value *V) const;

  void setChanged(Value *V, Range &Prev, Range &New);

//   SAGEInterface &getSI() { return *SI_; }

private:
  Module *Module_;
//   SAGEInterface *SI_;
  Redefinition  *RDF_;

  std::map<Value*, std::string> Name_;
  std::map<std::string, Value*> Value_;
  std::map<Value*, Range>   State_;
  std::map<Value*, unsigned>    Changed_;
  std::map<Value*, std::pair<bool, bool>> StableBounds_;

  std::map< Instruction*, std::function<Range()> > Fn_;

  std::map<Instruction*, unsigned>             Mapping_;
  std::set<std::pair<unsigned, Instruction*> > Worklist_;
  std::set<Instruction*>                       Evaled_;
};

#endif
