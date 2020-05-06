#include <chrono>
#include <stdlib.h>
#include <stdio.h>
#include <vector>

#define ITERS 100
#define SIZE 3000000 // 3 million ints

void saxpy_prefixsum() {
    std::vector<int> A;
    std::vector<int> B;

    for (int ii = 0; ii < SIZE; ++ii) {
        A.push_back(rand() % SIZE);
        B.push_back(rand() % SIZE);
    }
    for (int ii = 0; ii < SIZE; ++ii) {
        A[ii] += A[ii] * B[ii];
    }
    for (int ii = 1; ii < SIZE; ++ii) {
        A[ii] = A[ii] + A[ii-1];
    }
}

int main() {

    int total = 0;
    int duration;
    for (int ii = 0; ii < ITERS; ++ii) {
        auto start = std::chrono::system_clock::now();
        saxpy_prefixsum();
        auto end = std::chrono::system_clock::now();
        duration = std::chrono::duration_cast<std::chrono::milliseconds>(end-start).count();
        total += duration;
    }
    int average = total / ITERS;
    printf("Total: %d, Average: %d\n",total,average);

    return 0;
}