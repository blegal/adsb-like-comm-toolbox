vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xbip_utils_v3_0_10
vlib modelsim_lib/msim/axi_utils_v2_0_6
vlib modelsim_lib/msim/xbip_pipe_v3_0_6
vlib modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vlib modelsim_lib/msim/xbip_dsp48_multadd_v3_0_6
vlib modelsim_lib/msim/xbip_bram18k_v3_0_6
vlib modelsim_lib/msim/mult_gen_v12_0_16
vlib modelsim_lib/msim/floating_point_v7_1_10
vlib modelsim_lib/msim/xil_defaultlib

vmap xbip_utils_v3_0_10 modelsim_lib/msim/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 modelsim_lib/msim/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 modelsim_lib/msim/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 modelsim_lib/msim/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 modelsim_lib/msim/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_16 modelsim_lib/msim/mult_gen_v12_0_16
vmap floating_point_v7_1_10 modelsim_lib/msim/floating_point_v7_1_10
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

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
"../../../ipstatic/hdl/vhdl/Detecteur.vhd" \
"../../../ipstatic/hdl/vhdl/DOUBLEUR_U.vhd" \
"../../../ipstatic/hdl/vhdl/DOUBLEUR_U_do_gen.vhd" \
"../../../ipstatic/hdl/vhdl/DownSampling.vhd" \
"../../../ipstatic/hdl/vhdl/DownSampling_do_gen.vhd" \
"../../../ipstatic/hdl/vhdl/fifo_w1_d1_A.vhd" \
"../../../ipstatic/hdl/vhdl/fifo_w1_d32_A.vhd" \
"../../../ipstatic/hdl/vhdl/fifo_w8_d1_A.vhd" \
"../../../ipstatic/hdl/vhdl/fifo_w8_d1_A_x.vhd" \
"../../../ipstatic/hdl/vhdl/fifo_w8_d32_A.vhd" \
"../../../ipstatic/hdl/vhdl/FrameProcessing.vhd" \
"../../../ipstatic/hdl/vhdl/FrameProcessing_do_gen.vhd" \
"../../../ipstatic/hdl/vhdl/ModuleCompute.vhd" \
"../../../ipstatic/hdl/vhdl/ModuleCompute_do_gen.vhd" \
"../../../ipstatic/hdl/vhdl/ModuleCompute_macjbC.vhd" \
"../../../ipstatic/hdl/vhdl/Seuil_calc_fixed.vhd" \
"../../../ipstatic/hdl/vhdl/Seuil_calc_fixed_dEe.vhd" \
"../../../ipstatic/hdl/vhdl/Seuil_calc_fixed_do_gen.vhd" \
"../../../ipstatic/hdl/vhdl/Seuil_calc_fixed_eOg.vhd" \
"../../../ipstatic/hdl/vhdl/Seuil_calc_fixed_fYi.vhd" \
"../../../ipstatic/hdl/vhdl/Seuil_calc_fixed_g8j.vhd" \
"../../../ipstatic/hdl/vhdl/Seuil_calc_fixed_hbi.vhd" \
"../../../ipstatic/hdl/vhdl/Seuil_calc_fixed_ibs.vhd" \
"../../../ipstatic/hdl/vhdl/trames_separ.vhd" \
"../../../ipstatic/hdl/vhdl/trames_separ_do_gen.vhd" \
"../../../ipstatic/hdl/vhdl/my_module_fixed.vhd" \
"../../../ipstatic/hdl/ip/my_module_fixed_ap_fpext_0_no_dsp_32.vhd" \
"../../../ipstatic/hdl/ip/my_module_fixed_ap_fmul_2_max_dsp_32.vhd" \
"../../../ipstatic/hdl/ip/my_module_fixed_ap_uitofp_4_no_dsp_32.vhd" \
"../../../../receiver_adsb_fpga.srcs/sources_1/ip/my_module_fixed_0_8/sim/my_module_fixed_0.vhd" \

