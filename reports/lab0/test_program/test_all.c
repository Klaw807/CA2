#include "/home/yangyx/desktop/CA2/cs211_23f_lab_sim_framework/test/lib.h"
#include <stdint.h>
#include <stdio.h>

	// li t0, -5
	// FMV.S.X ft0, t0


int main() {
    float floatout = 0;
    int64_t intValue = 0x4048f5c3;//1078523331 in decimal, 3.14 in float if bits not changed
    float floatin = 0;

    asm volatile(
        "fmv.w.x %[result], %[input1]"
        : [result] "=f" (floatout) 
        : [input1] "r" (intValue)
    );
    print_f(floatout);
    print_s("\n");    

    asm volatile(
        "fmv.x.w %[result], %[input1]"
        : [result] "=r" (intValue) 
        : [input1] "f" (floatout)
    );
    print_d(intValue);
    print_s("\n");   

    floatin = 8.3;
    asm volatile(
        "fsqrt.s %[result], %[input1]"
        : [result] "=f" (floatout) 
        : [input1] "f" (floatin)
    );
    print_f(floatout);
    print_s("\n");    


    exit_proc();    
}
