#!/usr/bin/bash
source ../one.sh

# TODO: fill test
root_dir=../..
trace_dir=$(pwd)
filename_prefix=$(echo ${PWD##*/})
filefolder=$(pwd)
riscv_output_dir=$(pwd)

echo "" > $trace_dir/simulator.log
# for policy in "${inclusionPolicys[@]}"
for inclusionPolicy in "${inclusionPolicys[@]}"
do
    for replacementPolicy in "${replacementPolicys[@]}"
    do
        cache_main
    done
done