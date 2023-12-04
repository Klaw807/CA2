#!/usr/bin/bash
source ../../one.sh

# TODO: fill test

trace_dir=$(pwd)
filename_prefix=$(echo ${PWD##*/})
filefolder=$(pwd)
riscv_output_dir=$(pwd)

riscv_output_file=/home/yangyx/desktop/CA2/cs211_23f_lab_sim_framework/riscv-elf/quicksort.riscv

ifUseVictimCache=1
for inclusionPolicy in $name_inclusionPolicys
do
    for L1ReplacementPolicy in $name_replacementPolicys_for_simulator
    do
        for L2ReplacementPolicy in $name_replacementPolicys_for_simulator
        do
            cache_simulator_main
        done
    done
done
ifUseVictimCache=0
for inclusionPolicy in $name_inclusionPolicys
do
    for L1ReplacementPolicy in $name_replacementPolicys_for_simulator
    do
        for L2ReplacementPolicy in $name_replacementPolicys_for_simulator
        do
            cache_simulator_main
        done
    done
done