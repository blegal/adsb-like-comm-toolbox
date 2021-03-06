// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="Seuil_calc1,hls_ip_2020_1,{HLS_INPUT_TYPE=sc,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a100t-csg324-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.190000,HLS_SYN_LAT=4,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=18,HLS_SYN_FF=735,HLS_SYN_LUT=1328,HLS_VERSION=2020_1}" *)

module Seuil_calc1 (
        clock,
        reset,
        e_dout,
        e_empty_n,
        e_read,
        detect_din,
        detect_full_n,
        detect_write
);


input   clock;
input   reset;
input  [7:0] e_dout;
input   e_empty_n;
output   e_read;
output   detect_din;
input   detect_full_n;
output   detect_write;

wire    grp_Seuil_calc1_do_gen_fu_56_e_read;
wire    grp_Seuil_calc1_do_gen_fu_56_detect_din;
wire    grp_Seuil_calc1_do_gen_fu_56_detect_write;

Seuil_calc1_do_gen grp_Seuil_calc1_do_gen_fu_56(
    .ap_clk(clock),
    .ap_rst(reset),
    .e_dout(e_dout),
    .e_empty_n(e_empty_n),
    .e_read(grp_Seuil_calc1_do_gen_fu_56_e_read),
    .detect_din(grp_Seuil_calc1_do_gen_fu_56_detect_din),
    .detect_full_n(detect_full_n),
    .detect_write(grp_Seuil_calc1_do_gen_fu_56_detect_write)
);

assign detect_din = grp_Seuil_calc1_do_gen_fu_56_detect_din;

assign detect_write = grp_Seuil_calc1_do_gen_fu_56_detect_write;

assign e_read = grp_Seuil_calc1_do_gen_fu_56_e_read;

endmodule //Seuil_calc1
