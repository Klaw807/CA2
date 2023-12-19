#!/usr/bin/bash
source one.sh

filename_prefix=$(echo ${PWD##*/})
filefolder=$(pwd)
riscv_output_dir=$(pwd)

main