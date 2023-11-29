#include "/home/yangyx/desktop/CA2/cs211_23f_lab_sim_framework/test/lib.h"
#include <math.h>

int main() {
    float a = 3.14159;
    int b = a;
    print_d(b);
    print_s("\n");    
    b = 10;
    a = b;
    print_f(a);
    print_s("\n");
    exit_proc();
}