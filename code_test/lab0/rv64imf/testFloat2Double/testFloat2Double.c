#include "/home/yangyx/desktop/CA2/cs211_23f_lab_sim_framework/test/lib.h"
#include <stdint.h>
#include <stdio.h>

int main() {
    double d1 = 654.321;
    float f1 = d1;
    printf("%lx\n", *((uint64_t *)(&d1)));
    printf("%x\n", *((uint32_t *)(&f1)));
    printf("%lf\n", d1);
    printf("%lf\n", f1);    
    f1 = d1 = 0;
    f1 = 3.145678;
    d1 = f1;
    printf("%lx\n", *((uint64_t *)(&d1)));
    printf("%x\n", *((uint32_t *)(&f1)));
    printf("%lf\n", d1);
    printf("%lf\n", f1);
    return 0;
}
