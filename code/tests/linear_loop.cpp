#include <chrono>
#include <stdlib.h>
#include <stdio.h>



int critical(int* buf) {
    // #pragma clang loop vectorize(enable) interleave(enable)
    for (int ii = 0; ii < 10000000; ++ii) {
        buf[ii] = ii * ii - ii; // something simple
    }
    return buf[0]; // access much later
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
