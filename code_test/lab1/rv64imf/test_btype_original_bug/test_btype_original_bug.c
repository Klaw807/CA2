#include "/home/yangyx/desktop/CA2/cs211_23f_lab_sim_framework/test/lib.h"
#include <stdint.h>
#include <stdio.h>

	// li t0, -5
	// FMV.S.X ft0, t0
void old(){
    int a = 1, b = 2, c = 3, d = 4;
    start:
    print_s("start\n");
    start2:
    print_s("start2\n");
    // if (1 == a){
    //     if (2 == b){

    //     }else{
    //         goto start;
    //     }
    // }else{
    //     goto end;
    // }
    // a = 2;
    // goto start;
    // end:
    // print_s("end\n");


    if (a == b){
        if (a != c){
            if (a == d){
                goto start;
            }else{
                goto start2;
            }
        }else{
            if (a != d){
                goto start;
            }else{
                goto start2;
            }
        }
    }else{
        if (a == c){
            if (a != d){

            }else{
                
            }
        }else{
            if (a == d){

            }else{
                
            }
        }
    }
    exit_proc();    
}

int main() {
    asm volatile(
        "start:"
        "addi t3, x0, 3;"
        "addi t4, x0, 3;"
        "beq t3, t3, start;"
        "bne t3, t4, end;"
        "end:"
    );    
    exit_proc();    
}
