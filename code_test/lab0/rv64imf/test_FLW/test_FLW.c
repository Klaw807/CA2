#include "/home/yangyx/desktop/CA2/cs211_23f_lab_sim_framework/test/lib.h"
#include <stdint.h>
#include <stdio.h>


int main() {
    float floatValue;
    asm ( 
        "li t0, 1178658048;"
        "li t2, 65536;"
        "sw t0, 0(t2);" // 0x10000 65536
        "flw ft0, 0(t2);"     
    );
    asm volatile(
        "flw %0, 0(t2);"
        : "=f" (floatValue)
    );
    print_s("test c :\n");
    print_f(floatValue);
    print_s("\n");
    exit_proc();    
}
