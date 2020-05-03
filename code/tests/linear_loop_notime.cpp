#include <chrono>
#include <stdlib.h>
#include <stdio.h>



int critical(int* buf) {
    // #pragma clang loop vectorize(enable) interleave(enable)
    for (int ii = 0; ii < 10000000; ++ii) {
        buf[ii] = ii * ii - ii; // something simple
    }
    for (int yeet = 1; yeet < 100; ++yeet) {
        buf[yeet] = buf[yeet-1];
    }
    for (int jj = 1; jj < 10000000; jj += 2) {
        buf[jj] = buf[jj-1];
    }
    return 0;
}

int main() {
    for (int ii = 0; ii < 25; ++ii) {
        int* buf = (int*)malloc(sizeof(int) * 10000000);
        critical(buf);
        free(buf);
    }
    return 0;
}
