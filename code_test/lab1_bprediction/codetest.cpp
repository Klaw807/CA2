#include<bits/stdc++.h>
//for debug
using namespace std;

bool testIfUint642Int64NotChangingBit(){
    double number = 100; // 示例 double 变量

    std::bitset<sizeof(double) * 8> bits2(*reinterpret_cast<unsigned long long*>(&number));

    for (int i = bits2.size() - 1; i >= 0; --i) {
        std::cout << bits2[i];
    }

    std::cout << std::endl;

    float num = number; // 示例 float 变量

    std::bitset<sizeof(float) * 8> bits(*reinterpret_cast<unsigned int*>(&num));

    for (int i = bits.size() - 1; i >= 0; --i) {
        std::cout << bits[i];
    }

    std::cout << std::endl;

    return 0;
}

void testFMV_W_X(){
    uint64_t op1;
    double floatout;
    op1 = 0x1234567887654321;
    uint32_t low_32_bits = op1 & 0xFFFFFFFF;
    uint32_t* place = (uint32_t*)(&floatout);
    *place = low_32_bits;
    printf("%016lx\n%016lx\n%016lx\n", op1, *((uint64_t *)(&op1)), *((uint64_t *)(&floatout)));
}

void testFMV_X_W(){
    uint64_t out = 0;
    double floatop1 = -123.456;
    float real_floatop1;
    // real_floatop1 = cutDoubleReg2low32bit2Float(floatop1);
    real_floatop1 = -123.456;
    bool negative_sign;
    negative_sign = (real_floatop1 < 0);
    out = 0;
    *(uint32_t*)(&out) = *(uint32_t *)(&real_floatop1);
    if (negative_sign) *((uint32_t*)(&out)+1) = 0xFFFFFFFF;
    printf("%lx\n", *(uint64_t *)(&floatop1));
    printf("%x\n", *(uint32_t *)(&real_floatop1));
    printf("%lx\n", *(uint64_t *)(&out));
    printf("%f\n", real_floatop1);

}



void testIfLittleEndian() {
    uint32_t op1 = 0x10000000;
    cout << (uint32_t)(*((char *)(&op1))) << endl;
}

void testFLW(){
    uint32_t tmp_uint32 = 0x12345678;
    float tmp_float = *(float*)(&tmp_uint32);
    double floatout = (double)tmp_float;
    cout << *(uint32_t*)(&tmp_float) << endl;
    cout << *(uint32_t*)(&tmp_uint32) << endl;
    cout << tmp_uint32 << endl;
    cout << tmp_float << endl;
    cout << floatout << endl;
}

// just see that d1 not just fill its low 32bit from float
void testFloat2Double(){
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

    f1 = d1;
    printf("%lf\n", f1);
    // cout << 0x4423948b;
    // li t0, 1143182475
    // sw t0, 0(x0)
    // flw ft0, 0(x0)
}

void testFSW(){
    uint64_t op2 = 0;
    double floatop2 = 123.25;
    float tmp_float = (float)floatop2;
    *(uint32_t*)(&op2) = *(uint32_t*)(&tmp_float);

    printf("%x\n", *(uint32_t*)(&op2));
    printf("%x\n", *(uint32_t*)(&tmp_float));
    printf("%x\n", *(uint32_t*)(&floatop2));
    printf("%lx\n", *(uint64_t*)(&floatop2));
    printf("%lf\n", floatop2);
    printf("%f\n", tmp_float);
}

float cutDoubleReg2low32bit2Float(double op1) {
  return (*(float *)(&op1));
}
void saveFloat2DoubleReg2low32bit(float floatop, double &dop) {
  *(float *)(&dop) = floatop;
}

void testCutAndSaveFloat2DoubleReg(){
    double op1 = 123.456;
    float op2 = cutDoubleReg2low32bit2Float(op1);
    printf("%x\n", *(uint32_t*)(&op1));
    printf("%x\n", *(uint32_t*)(&op2));
    op2 = 789.456;
    saveFloat2DoubleReg2low32bit(op2, op1);
    printf("%x\n", *(uint32_t*)(&op1));
    printf("%x\n", *(uint32_t*)(&op2));
}
int main() {
    // testFMV_W_X();
    // testIfLittleEndian();
    // testFLW();
    // testFloat2Double();
    // testFSW();
    // testFMV_X_W();
    // testFMV_X_W();

    float f = 3.14;
    printf("%x\n", *(uint32_t *)(&f));
    printf("%d\n", *(uint32_t *)(&f));
}