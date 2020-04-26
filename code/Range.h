#ifndef _RANGE_H_
#define _RANGE_H_

#include <cstdint>

class Range {
public:
    Range(int64_t Lower, int64_t Upper, int32_t Stride) :
        Lower_(Lower), Upper_(Upper), Stride_(Stride) {}

	int64_t getLower() const { return Lower_; }
	int64_t getUpper() const { return Upper_; }
    int32_t getStride() const { return Stride_; }

	void setLower(const int64_t& Lower) { Lower_ = Lower; }
	void setUpper(const int64_t& Upper) { Upper_ = Upper; }
    void setStride(const int32_t& Stride) { Stride_ = Stride; }

    bool interacts(Range& r1, Range& r2) {
        int64_t r1Lower = r1.getLower(), r2Lower = r2.getLower();
        if (r1Lower == r2Lower) return true;
        int32_t s1 = r1.getStride(), s2 = r2.getStride();
        int64_t i1 = r1Lower+s1, i2 = r2Lower+s2;
        int64_t r1Upper = r1.getUpper(), r2Upper = r2.getUpper();
        while (i1 < r1Upper and i2 < r2Upper) {
            if (i1 == i2) return true;
            i1 += s1;
            i2 += s2;
        }
        return false;
    }

    Range operator+(const int op) {
        return Range(getLower() + op, getUpper() + op, getStride());
    }
    Range operator-(const int op) {
        return Range(getLower() - op, getUpper() - op, getStride());
    }
    Range operator*(const int op) {
        return Range(getLower() * op, getUpper() * op, getStride() * op);
    }
    Range operator/(const int op) {
        return Range(getLower() / op, getUpper() / op, getStride() / op);
    }

	bool operator==(const Range& Other) {
        return getLower() == Other.getLower() &&
               getUpper() == Other.getUpper() &&
               getStride() == Other.getStride();
    }
	bool operator!=(const Range& Other) {
        return !(*this == Other);
    }

private:
	int64_t Lower_;
	int64_t Upper_;
    int32_t Stride_;
};

#endif
