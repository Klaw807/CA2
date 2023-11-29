# build from source code 
as the guidebook, and generate Simulator in cs211_23f_lab_sim_framework/build

# explanation for instructions
- test_all.c/riscv for fmv.w.x, fmv.x.w, fsqrt.s
- test_printFloat.c/riscv for flw, fsw
- test_convert.c/riscv for fcvt.w.s and fcvt.s.w
- test_sample_FLoat.c/riscv for fadd.s,fsub.s,fmul.s,fdiv.s

## how to run test
```
cd ../cs211_23f_lab_sim_framework/build
./Simulator TEST_FILE_NAME.riscv
```