#!/usr/bin/bash

# ./Simulator riscv-elf-file-name [-v] [-s] [-d] [-b param]
# Parameters: 
#         [-v] verbose output 
#         [-s] single step
#         [-d] dump memory and register trace to dump.txt
#         [-b param] branch perdiction strategy, accepted param AT, NT, BTFNT, BPB
root_dir=~/desktop/CA2

# riscv
rv64_test_dir=$root_dir/cs211_23f_lab_sim_framework/test

# filename_prefix=helloworld
# filefolder=
# riscv_output_dir=$(pwd)/rv64imf && 

# Simulator
Simulator_dir=$root_dir/cs211_23f_lab_sim_framework/build
# Simulator_log_file=
# var paras:
# filename_prefix
# filefolder
# riscv_output_dir
riscv64_build(){
    mkdir -p $riscv_output_dir
    # Use RV64I, RV64M and RV64F, You may want the test/lib.c to help build your own testcase
    riscv64-unknown-elf-gcc -march=rv64imf $filefolder/$filename_prefix.c $rv64_test_dir/lib.c -o $riscv_output_dir/$filename_prefix.riscv
    # Disassembly by riscv64-unknown-elf-objdump, and outout it to the .s file
    riscv64-unknown-elf-objdump -d $riscv_output_dir/$filename_prefix.riscv > $riscv_output_dir/$filename_prefix.s
}

# default global var: $Simulator_dir
# var para1:$riscv_output_file
simulate(){
    echo "" > $riscv_output_dir/simulator.log
    pushd $Simulator_dir 
    # ./Simulator $riscv_output_file -v
    ./Simulator -v -d $riscv_output_file >> $riscv_output_dir/simulator.log
    echo -e "\n----pure results----\n" >> $riscv_output_dir/simulator.log
    ./Simulator $riscv_output_file >> $riscv_output_dir/simulator.log
    # cp -r $Simulator_dir/dump.txt $riscv_output_dir
    popd
}

build_simulator() {
    pushd $Simulator_dir
    make
    popd
}

main(){
    riscv_output_file=$riscv_output_dir/$filename_prefix.riscv
    build_simulator
    riscv64_build
    simulate
}
# riscv_output_file=$root_dir/cs211_23f_lab_sim_framework/riscv-elf/helloworld.riscv
# simulate



# build_simulator

# filename_prefix=test_FMV_W_X
# filefolder=$root_dir/code_test/lab0/rv64imf
# file_prefix=$filefolder/$filename_prefix
# riscv_output_dir=$(pwd)/rv64imf && mkdir -p $riscv_output_dir
# riscv_output_file=$riscv_output_dir/$filename_prefix.riscv
# riscv64_build
# simulate