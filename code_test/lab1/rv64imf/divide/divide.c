#include "/home/yangyx/desktop/CA2/cs211_23f_lab_sim_framework/test/lib.h"
#include <stdint.h>
#include <stdio.h>

const uint32_t array_size = 1000;
int array1[1000];
int array2[1000];

//result:11 12 13 14 15 1 2 3 4 5

int main()
{
	for (int i = 0; i < array_size; i++){
		array1[i] = i+100;
		array2[i] = i+200;
	}
	for (int i = 0; i < array_size; i++){
		array1[i] = array2[i]/array1[i];
	}	
	exit_proc();
}