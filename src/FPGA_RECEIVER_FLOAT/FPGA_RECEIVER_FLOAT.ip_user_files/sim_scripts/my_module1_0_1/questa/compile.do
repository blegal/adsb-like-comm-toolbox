vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xbip_utils_v3_0_10
vlib questa_lib/msim/axi_utils_v2_0_6
vlib questa_lib/msim/xbip_pipe_v3_0_6
vlib questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib questa_lib/msim/xbip_dsp48_addsub_v3_0_6
vlib questa_lib/msim/xbip_dsp48_multadd_v3_0_6
vlib questa_lib/msim/xbip_bram18k_v3_0_6
vlib questa_lib/msim/mult_gen_v12_0_16
vlib questa_lib/msim/floating_point_v7_1_10
vlib questa_lib/msim/xil_defaultlib

vmap xbip_utils_v3_0_10 questa_lib/msim/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 questa_lib/msim/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 questa_lib/msim/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 questa_lib/msim/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 questa_lib/msim/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 questa_lib/msim/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_16 questa_lib/msim/mult_gen_v12_0_16
vmap floating_point_v7_1_10 questa_lib/msim/floating_point_v7_1_10
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work xbip_utils_v3_0_10 -64 -93 \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -64 -93 \
"../../../ipstatic/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -64 -93 \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93 \
"../../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -64 -93 \
"../../../ipstatic/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -64 -93 \
"../../../ipstatic/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -64 -93 \
"../../../ipstatic/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_16 -64 -93 \
"../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_10 -64 -93 \
"../../../ipstatic/hdl/floating_point_v7_1_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../ipstatic/hdl/vhdl/BitDecider.vhd" \
"../../../ipstatic/hdl/vhdl/BitDecider_do_gen.vhd" \
"../../../ipstatic/hdl/vhdl/BitsToBytes.vhd" \
"../../../ipstatic/hdl/vhdl/BitsToBytes_do_gen.vhd" \
"../../../ipstatic/hdl/vhdl/CRCCheck.vhd" \
"../../../ipstatic/hdl/vhdl/CRCCheck_do_gen.vhd" \
"../../../ipstatic/hdl/vhdl/CRCCheck_do_gen_ibkb.vhd" \
"../../../ipstatic/hdl/vhdl/CRCCheck_mux_42_8cud.vhd" \
"../../../ipstatic/hdl/vhdl/Detecteur1.vhd" \
"../../../ipstatic/hdl/vhdl/DOUBLEUR_U.vhd" \
"../../../ipstatic/hdl/vhdl/DOUBLEUR_U_do_gen.vhd" \
"../../../ipstatic/hdl/vhdl/DownSampling.vhd" \
"../../../ipstatic/hdl/vhdl/DownSampling_do_gen.vhd" \
"../../../ipstatic/hdl/vhdl/fifo_w1_d32_A.vhd" \
"../../../ipstatic/hdl/vhdl/fifo_w1_d1024_A.vhd" \
"../../../ipstatic/hdl/vhdl/fifo_w8_d32_A.vhd" \
"../../../ipstatic/hdl/vhdl/fifo_w8_d1024_A.vhd" \
"../../../ipstatic/hdl/vhdl/fifo_w8_d1024_A_x.vhd" \
"../../../ipstatic/hdl/vhdl/FrameProcessing.vhd" \
"../../../ipstatic/hdl/vhdl/FrameProcessing_do_gen.vhd" \
"../../../ipstatic/hdl/vhdl/ModuleCompute.vhd" \
"../../../ipstatic/hdl/vhdl/ModuleCompute_do_gen.vhd" \
"../../../ipstatic/hdl/vhdl/ModuleCompute_macjbC.vhd" \
"../../../ipstatic/hdl/vhdl/Seuil_calc.vhd" \
"../../../ipstatic/hdl/vhdl/Seuil_calc_do_gen.vhd" \
"../../../ipstatic/hdl/vhdl/Seuil_calc_fmul_3dEe.vhd" \
"../../../ipstatic/hdl/vhdl/Seuil_calc_fpext_fYi.vhd" \
"../../../ipstatic/hdl/vhdl/Seuil_calc_mac_muhbi.vhd" \
"../../../ipstatic/hdl/vhdl/Seuil_calc_mul_muibs.vhd" \
"../../../ipstatic/hdl/vhdl/Seuil_calc_udiv_2g8j.vhd" \
"../../../ipstatic/hdl/vhdl/Seuil_calc_uitofpeOg.vhd" \
"../../../ipstatic/hdl/vhdl/trames_separ1.vhd" \
"../../../ipstatic/hdl/vhdl/trames_separ1_do_gen.vhd" \
"../../../ipstatic/hdl/vhdl/my_module1.vhd" \
"../../../ipstatic/hdl/ip/my_module1_ap_fmul_2_max_dsp_32.vhd" \
"../../../ipstatic/hdl/ip/my_module1_ap_fpext_0_no_dsp_32.vhd" \
"../../../ipstatic/hdl/ip/my_module1_ap_uitofp_4_no_dsp_32.vhd" \
"../../../../receiver_adsb_fpga.srcs/sources_1/ip/my_module1_0_1/sim/my_module1_0.vhd" \

