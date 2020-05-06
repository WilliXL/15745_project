#include <chrono>
#include <stdlib.h>
#include <stdio.h>



int critical(int* buf) {
    #pragma clang loop vectorize(enable) interleave(enable)
    for (int ii = 0; ii < 1000; ++ii) {
        buf[ii*2+1] = ii * ii - ii; // something simple
        buf[ii*2] = ii * ii - ii; // something simple
    }
    buf[123] = 47;
    return buf[75]; // access much later
}

int main() {
    auto rolling = 0;
    for (int ii = 0; ii < 25; ++ii) {
        int* buf = (int*)malloc(sizeof(int) * 10000000);
        auto start = std::chrono::high_resolution_clock::now();
        critical(buf);
        auto stop = std::chrono::high_resolution_clock::now();
        free(buf);
        auto duration = std::chrono::duration_cast<std::chrono::microseconds>(stop - start);
        rolling = rolling + duration.count();
    }
    auto avg = rolling / 25;
    printf("%d\n",avg);
    return 0;
}
