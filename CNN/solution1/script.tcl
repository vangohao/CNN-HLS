############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project CNN
set_top cnn
add_files conv.cpp
add_files conv.h
add_files -tb conv_testbench.cpp
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./CNN/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -O
export_design -format ip_catalog
