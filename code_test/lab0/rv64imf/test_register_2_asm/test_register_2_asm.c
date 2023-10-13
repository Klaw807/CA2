#include "/home/yangyx/desktop/CA2/cs211_23f_lab_sim_framework/test/lib.h"
#include <stdint.h>
#include <stdio.h>

int main() {
    int a = 5, b = 10, sum;

    asm volatile (
        "add %[result], %[input1], %[input2]"
        : [result] "=r" (sum)
        : [input1] "r" (a), [input2] "r" (b)
    );
    print_d(a);
    print_s("\n");
    print_d(b);
    print_s("\n");
    print_d(sum);
    print_s("\n");
    exit_proc();    
}
