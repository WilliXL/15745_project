#ifndef _RANGE_H_
#define _RANGE_H_

#include "llvm/Support/raw_ostream.h"

// #include "SAGEExpr.h"

class Range {
public:
    Range(int64_t Lower, int64_t Upper) : Lower_(Lower), Upper_(Upper) {}

	int64_t getLower() const { return Lower_; }
	int64_t getUpper() const { return Upper_; }

	void setLower(const int64_t& Lower) { Lower_ = Lower; }
	void setUpper(const int64_t& Upper) { Upper_ = Upper; }

    Range operator+(const Range& Other) {
        return Range(getLower() + Other.getLower(), getUpper() + Other.getUpper());
    }
    Range operator-(const Range& Other) {
        return Range(getLower() - Other.getUpper(), getUpper() - Other.getLower());
    }
    Range operator*(const Range& Other) {
        int64_t LL = getLower() * Other.getLower(),
                LU = getLower() * Other.getUpper(),
                UL = getUpper() * Other.getLower(),
                UU = getUpper() * Other.getUpper();
        return Range(std::min(LL,std::min(LU,std::min(UL,UU))), std::max(LL,std::max(LU,std::max(UL,UU))));
    }
    Range operator/(const Range& Other) {
        int64_t LL = getLower()/Other.getLower(),
                LU = getLower()/Other.getUpper(),
                UL = getUpper()/Other.getLower(),
                UU = getUpper()/Other.getUpper();
        return Range(std::min(LL,std::min(LU,std::min(UL,UU))), std::max(LL,std::max(LU,std::max(UL,UU))));
    }

	bool operator==(const Range& Other) {
        return getLower() == Other.getLower() &&
               getUpper() == Other.getUpper();
    }
	bool operator!=(const Range& Other) {
        return !(*this == Other);
    }

private:
	int64_t Lower_;
	int64_t Upper_;
};

// raw_ostream& operator<<(raw_ostream& OS, const Range& R);

#endif
