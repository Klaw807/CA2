#!/usr/bin/bash
source ../../../one.sh

filename_prefix=$(echo ${PWD##*/})
filefolder=$(pwd)
riscv_output_dir=$(pwd)

# riscv_output_file=/home/yangyx/desktop/CA2/cs211_23f_lab_sim_framework/riscv-elf/test_float.riscv
# simulate
main