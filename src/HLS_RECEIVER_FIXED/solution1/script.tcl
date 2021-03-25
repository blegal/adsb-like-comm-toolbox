############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project HLS_RECEIVER_FLOAT
set_top my_module1
add_files systemc/src/trames_separ1.hpp
add_files systemc/src/my_module1.hpp
add_files systemc/src/my_module1.cpp -cflags "-std=c++0x"
add_files systemc/src/constantes.hpp
add_files systemc/src/Seuil_calc1.hpp
add_files systemc/src/ModuleCompute_old.hpp
add_files systemc/src/FrameProcessing.hpp
add_files systemc/src/DownSampling.hpp
add_files systemc/src/Doubleur_uint.hpp
add_files systemc/src/Detecteur1.hpp
add_files systemc/src/CRCCheck.hpp
add_files systemc/src/BitsToBytes.hpp
add_files systemc/src/BitDecider.hpp
open_solution "solution1"
set_part {xc7a100t-csg324-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl vhdl
#source "./HLS_RECEIVER_FLOAT/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -flow impl -rtl vhdl -format ip_catalog
