#include "Range.h"

using namespace llvm;

Range::Range(SAGEExpr Both)
  : Lower_(Both), Upper_(Both) {
}

Range::Range(SAGEExpr Lower, SAGEExpr Upper)
  : Lower_(Lower), Upper_(Upper) {
}

Range Range::operator+(const Range& Other) const {
  return Range(getLower() + Other.getLower(),
                   getUpper() + Other.getUpper());
}

Range Range::operator-(const Range& Other) const {
  return Range(getLower() - Other.getUpper(),
                   getUpper() - Other.getLower());
}

Range Range::operator*(const Range& Other) const {
  int64_t LL = getLower() * Other.getLower(),
           LU = getLower() * Other.getUpper(),
           UL = getUpper() * Other.getLower(),
           UU = getUpper() * Other.getUpper();
  return Range(std::min(LL,std::min(LU,std::min(UL,UU))), std::max(LL,std::max(LU,std::max(UL,UU))));
}

Range Range::operator/(const Range& Other) const {
  int64_t LL = getLower()/Other.getLower(),
           LU = getLower()/Other.getUpper(),
           UL = getUpper()/Other.getLower(),
           UU = getUpper()/Other.getUpper();
  return Range(std::min(LL,std::min(LU,std::min(UL,UU))), std::max(LL,std::max(LU,std::max(UL,UU))));
}

bool Range::operator==(const Range& Other) const {
  return getLower() == Other.getLower()
      && getUpper() == Other.getUpper();
}

bool Range::operator!=(const Range& Other) const {
  return !(*this == Other);
}