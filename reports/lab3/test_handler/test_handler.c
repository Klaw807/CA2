#include "/home/yangyx/desktop/CA2/cs211_23f_lab_sim_framework/test/lib.h"
#include <stdint.h>
#include <stdio.h>

int result[10]={1,2,3,4,5,6,7,8,9,10};

//result:11 12 13 14 15 1 2 3 4 5

int main()
{
	int maxArrayValue;
    asm volatile(
        "addi	t0, 	x0,		0;"
        "lui	t0, 	0x80000;"
        // "lui	t0, 	0x7FFFF;"
        "addi	t0, 	t0,		768;" // address : 0x80000300
		"addi	t1,		x0,		0;"
		"sw		t1,		0(t0);"
		"addi	t1,		x0,		1;"
		"sw		t1,		4(t0);"
		"addi	t1,		x0,		2;"
		"sw		t1,		8(t0);"
		"addi	t1,		x0,		3;"
		"sw		t1,		12(t0);"
		"addi	t1,		x0,		4;"
		"sw		t1,		16(t0);"
		"addi	t1,		x0,		5;"
		"sw		t1,		20(t0);"
		"addi	t1,		x0,		6;"
		"sw		t1,		24(t0);"
		"addi	t1,		x0,		7;"
		"sw		t1,		28(t0);"
		
		"addi 	a7,		x0,		7;"
		"addi 	a1,		t0,		0;"
		"addi 	a2,		x0,		8;"
		"scall;"
    );
    asm volatile(
        "addi %[result], a0,	0"
        : [result] "=r" (maxArrayValue) 
    );	
    print_s("result:\n");    
    print_d(maxArrayValue);
    print_s("\n");    
	return 0;
}