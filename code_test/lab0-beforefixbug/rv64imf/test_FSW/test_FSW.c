#include "/home/yangyx/desktop/CA2/cs211_23f_lab_sim_framework/test/lib.h"
#include <stdint.h>
#include <stdio.h>


int main() {
    float floatValue = 0;
    asm (
    // float t = 12345.25;
    // cout << *(uint32_t *)(&t) << endl;
    // cout << t << endl;     
    // 1178658048   
        "li t0, 1178658048;"
        "li t2, 65536;"
        "sw t0, 0(t2);" // 0x10000 65536
        "flw ft0, 0(t2);"
        "fsw ft0, 12(t2);"
        "lw t1, 12(t2);"
        // "fmv.w.x %[result], %[input1]"
        // : [result] "=f" (floatValue) //TODO: why can not double type here
        // : [input1] "r" (intValue)        
    );
    // asm volatile(
    //     "flw %[result], 12(t2);"
    //     : [result] "=f" (floatValue)
    // );
    // floatValue = 1.123;
    // print_s("test c :\n");
    // print_f(floatValue);
    // print_s("\n");
    exit_proc();    
}
