#include "/home/yangyx/desktop/CA2/cs211_23f_lab_sim_framework/test/lib.h"
#include <stdint.h>
#include <stdio.h>

	// li t0, -5
	// FMV.S.X ft0, t0


int main() {
    int64_t intValue = 0x42f68000;
    float floatValue=0;

    asm volatile(
        "fmv.w.x %[result], %[input1]"
        : [result] "=f" (floatValue) //TODO: why can not double type here
        : [input1] "r" (intValue)
    );

    // print_f(floatValue);
    // print_s("\n");
    // floatValue = *(float *)(&intValue);
    // print_f(floatValue);
    // print_s("\n");
    // print_d(intValue);
    // print_s("\n");    
    // print_d(*(uint32_t *)(&floatValue));
    print_s("\n");    
    exit_proc();    
}
