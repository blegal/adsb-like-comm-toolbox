// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Seuil_calc1_do_gen_HH_
#define _Seuil_calc1_do_gen_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Seuil_calc1_mac_mdEe.h"
#include "Seuil_calc1_mul_meOg.h"
#include "Seuil_calc1_mul_mfYi.h"

namespace ap_rtl {

struct Seuil_calc1_do_gen : public sc_module {
    // Port declarations 8
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_lv<8> > e_dout;
    sc_in< sc_logic > e_empty_n;
    sc_out< sc_logic > e_read;
    sc_out< sc_logic > detect_din;
    sc_in< sc_logic > detect_full_n;
    sc_out< sc_logic > detect_write;


    // Module declarations
    Seuil_calc1_do_gen(sc_module_name name);
    SC_HAS_PROCESS(Seuil_calc1_do_gen);

    ~Seuil_calc1_do_gen();

    sc_trace_file* mVcdFile;

    Seuil_calc1_mac_mdEe<1,1,8,8,16,17>* Seuil_calc1_mac_mdEe_U22;
    Seuil_calc1_mac_mdEe<1,1,8,8,16,17>* Seuil_calc1_mac_mdEe_U23;
    Seuil_calc1_mac_mdEe<1,1,8,8,16,17>* Seuil_calc1_mac_mdEe_U24;
    Seuil_calc1_mac_mdEe<1,1,8,8,16,17>* Seuil_calc1_mac_mdEe_U25;
    Seuil_calc1_mac_mdEe<1,1,8,8,16,17>* Seuil_calc1_mac_mdEe_U26;
    Seuil_calc1_mac_mdEe<1,1,8,8,16,17>* Seuil_calc1_mac_mdEe_U27;
    Seuil_calc1_mac_mdEe<1,1,8,8,16,17>* Seuil_calc1_mac_mdEe_U28;
    Seuil_calc1_mac_mdEe<1,1,8,8,16,17>* Seuil_calc1_mac_mdEe_U29;
    Seuil_calc1_mac_mdEe<1,1,8,8,16,17>* Seuil_calc1_mac_mdEe_U30;
    Seuil_calc1_mac_mdEe<1,1,8,8,16,17>* Seuil_calc1_mac_mdEe_U31;
    Seuil_calc1_mac_mdEe<1,1,8,8,16,17>* Seuil_calc1_mac_mdEe_U32;
    Seuil_calc1_mac_mdEe<1,1,8,8,16,17>* Seuil_calc1_mac_mdEe_U33;
    Seuil_calc1_mac_mdEe<1,1,8,8,16,17>* Seuil_calc1_mac_mdEe_U34;
    Seuil_calc1_mac_mdEe<1,1,8,8,16,17>* Seuil_calc1_mac_mdEe_U35;
    Seuil_calc1_mac_mdEe<1,1,8,8,16,17>* Seuil_calc1_mac_mdEe_U36;
    Seuil_calc1_mac_mdEe<1,1,8,8,16,17>* Seuil_calc1_mac_mdEe_U37;
    Seuil_calc1_mul_meOg<1,1,11,11,22>* Seuil_calc1_mul_meOg_U38;
    Seuil_calc1_mul_mfYi<1,1,17,6,27>* Seuil_calc1_mul_mfYi_U39;
    sc_signal< sc_logic > e_blk_n;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_logic > detect_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter5;
    sc_signal< sc_lv<8> > val_V_reg_1395;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter4;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter5;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<11> > ps_V_fu_394_p2;
    sc_signal< sc_lv<11> > ps_V_reg_1401;
    sc_signal< sc_lv<11> > ps_V_reg_1401_pp0_iter2_reg;
    sc_signal< sc_lv<11> > ps_V_reg_1401_pp0_iter3_reg;
    sc_signal< sc_lv<17> > grp_fu_1069_p3;
    sc_signal< sc_lv<17> > add_ln700_reg_1406;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_lv<17> > grp_fu_1077_p3;
    sc_signal< sc_lv<17> > add_ln700_1_reg_1411;
    sc_signal< sc_lv<17> > grp_fu_1085_p3;
    sc_signal< sc_lv<17> > add_ln700_3_reg_1416;
    sc_signal< sc_lv<17> > grp_fu_1093_p3;
    sc_signal< sc_lv<17> > add_ln700_4_reg_1421;
    sc_signal< sc_lv<17> > grp_fu_1101_p3;
    sc_signal< sc_lv<17> > add_ln700_7_reg_1426;
    sc_signal< sc_lv<17> > grp_fu_1109_p3;
    sc_signal< sc_lv<17> > add_ln700_8_reg_1431;
    sc_signal< sc_lv<17> > grp_fu_1117_p3;
    sc_signal< sc_lv<17> > add_ln700_10_reg_1436;
    sc_signal< sc_lv<17> > grp_fu_1125_p3;
    sc_signal< sc_lv<17> > add_ln700_11_reg_1441;
    sc_signal< sc_lv<17> > grp_fu_1133_p3;
    sc_signal< sc_lv<17> > add_ln700_15_reg_1446;
    sc_signal< sc_lv<17> > grp_fu_1141_p3;
    sc_signal< sc_lv<17> > add_ln700_16_reg_1451;
    sc_signal< sc_lv<17> > grp_fu_1149_p3;
    sc_signal< sc_lv<17> > add_ln700_18_reg_1456;
    sc_signal< sc_lv<17> > grp_fu_1157_p3;
    sc_signal< sc_lv<17> > add_ln700_19_reg_1461;
    sc_signal< sc_lv<17> > grp_fu_1165_p3;
    sc_signal< sc_lv<17> > add_ln700_22_reg_1466;
    sc_signal< sc_lv<17> > grp_fu_1173_p3;
    sc_signal< sc_lv<17> > add_ln700_23_reg_1471;
    sc_signal< sc_lv<17> > grp_fu_1181_p3;
    sc_signal< sc_lv<17> > add_ln700_25_reg_1476;
    sc_signal< sc_lv<17> > grp_fu_1189_p3;
    sc_signal< sc_lv<17> > add_ln700_26_reg_1481;
    sc_signal< sc_lv<19> > add_ln700_6_fu_873_p2;
    sc_signal< sc_lv<19> > add_ln700_6_reg_1486;
    sc_signal< sc_lv<19> > add_ln700_13_fu_911_p2;
    sc_signal< sc_lv<19> > add_ln700_13_reg_1491;
    sc_signal< sc_lv<20> > add_ln700_29_fu_1001_p2;
    sc_signal< sc_lv<20> > add_ln700_29_reg_1496;
    sc_signal< sc_lv<17> > res_2_V_1_fu_1040_p3;
    sc_signal< sc_lv<17> > res_2_V_1_reg_1501;
    sc_signal< sc_lv<22> > ret_V_fu_1197_p2;
    sc_signal< sc_lv<22> > ret_V_reg_1506;
    sc_signal< sc_lv<27> > mul_ln895_fu_1203_p2;
    sc_signal< sc_lv<27> > mul_ln895_reg_1511;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_lv<8> > buffer_V_1_01066_fu_72;
    sc_signal< sc_lv<8> > buffer_1_V_fu_76;
    sc_signal< sc_lv<8> > buffer_2_V_fu_80;
    sc_signal< sc_lv<8> > buffer_3_V_fu_84;
    sc_signal< sc_lv<8> > buffer_4_V_fu_88;
    sc_signal< sc_lv<8> > buffer_5_V_fu_92;
    sc_signal< sc_lv<8> > buffer_6_V_fu_96;
    sc_signal< sc_lv<8> > buffer_7_V_fu_100;
    sc_signal< sc_lv<8> > buffer_8_V_fu_104;
    sc_signal< sc_lv<8> > buffer_9_V_fu_108;
    sc_signal< sc_lv<8> > buffer_10_V_fu_112;
    sc_signal< sc_lv<8> > buffer_11_V_fu_116;
    sc_signal< sc_lv<8> > buffer_12_V_fu_120;
    sc_signal< sc_lv<8> > buffer_13_V_fu_124;
    sc_signal< sc_lv<8> > buffer_14_V_fu_128;
    sc_signal< sc_lv<8> > buffer_15_V_fu_132;
    sc_signal< sc_lv<8> > buffer_16_V_fu_136;
    sc_signal< sc_lv<8> > buffer_17_V_fu_140;
    sc_signal< sc_lv<8> > buffer_18_V_fu_144;
    sc_signal< sc_lv<8> > buffer_19_V_fu_148;
    sc_signal< sc_lv<8> > buffer_20_V_fu_152;
    sc_signal< sc_lv<8> > buffer_21_V_fu_156;
    sc_signal< sc_lv<8> > buffer_22_V_fu_160;
    sc_signal< sc_lv<8> > buffer_23_V_fu_164;
    sc_signal< sc_lv<8> > buffer_24_V_fu_168;
    sc_signal< sc_lv<8> > buffer_25_V_fu_172;
    sc_signal< sc_lv<8> > buffer_26_V_fu_176;
    sc_signal< sc_lv<8> > buffer_27_V_fu_180;
    sc_signal< sc_lv<8> > buffer_28_V_fu_184;
    sc_signal< sc_lv<8> > buffer_29_V_fu_188;
    sc_signal< sc_lv<8> > buffer_30_V_fu_192;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<9> > zext_ln215_fu_302_p1;
    sc_signal< sc_lv<9> > zext_ln215_1_fu_306_p1;
    sc_signal< sc_lv<9> > add_ln215_fu_334_p2;
    sc_signal< sc_lv<9> > zext_ln215_3_fu_314_p1;
    sc_signal< sc_lv<9> > zext_ln215_2_fu_310_p1;
    sc_signal< sc_lv<9> > add_ln215_1_fu_344_p2;
    sc_signal< sc_lv<10> > zext_ln215_40_fu_340_p1;
    sc_signal< sc_lv<10> > zext_ln215_41_fu_350_p1;
    sc_signal< sc_lv<10> > add_ln215_2_fu_354_p2;
    sc_signal< sc_lv<9> > zext_ln215_5_fu_322_p1;
    sc_signal< sc_lv<9> > zext_ln215_4_fu_318_p1;
    sc_signal< sc_lv<9> > add_ln215_3_fu_364_p2;
    sc_signal< sc_lv<9> > zext_ln215_7_fu_330_p1;
    sc_signal< sc_lv<9> > zext_ln215_6_fu_326_p1;
    sc_signal< sc_lv<9> > add_ln215_4_fu_374_p2;
    sc_signal< sc_lv<10> > zext_ln215_43_fu_370_p1;
    sc_signal< sc_lv<10> > zext_ln215_44_fu_380_p1;
    sc_signal< sc_lv<10> > add_ln215_5_fu_384_p2;
    sc_signal< sc_lv<11> > zext_ln215_42_fu_360_p1;
    sc_signal< sc_lv<11> > zext_ln215_45_fu_390_p1;
    sc_signal< sc_lv<8> > mul_ln1352_fu_404_p0;
    sc_signal< sc_lv<16> > zext_ln215_8_fu_400_p1;
    sc_signal< sc_lv<8> > mul_ln1352_fu_404_p1;
    sc_signal< sc_lv<16> > mul_ln1352_fu_404_p2;
    sc_signal< sc_lv<8> > mul_ln1352_3_fu_426_p0;
    sc_signal< sc_lv<16> > zext_ln215_11_fu_422_p1;
    sc_signal< sc_lv<8> > mul_ln1352_3_fu_426_p1;
    sc_signal< sc_lv<16> > mul_ln1352_3_fu_426_p2;
    sc_signal< sc_lv<8> > mul_ln1352_5_fu_444_p0;
    sc_signal< sc_lv<16> > zext_ln215_13_fu_440_p1;
    sc_signal< sc_lv<8> > mul_ln1352_5_fu_444_p1;
    sc_signal< sc_lv<16> > mul_ln1352_5_fu_444_p2;
    sc_signal< sc_lv<8> > mul_ln1352_7_fu_462_p0;
    sc_signal< sc_lv<16> > zext_ln215_15_fu_458_p1;
    sc_signal< sc_lv<8> > mul_ln1352_7_fu_462_p1;
    sc_signal< sc_lv<16> > mul_ln1352_7_fu_462_p2;
    sc_signal< sc_lv<8> > mul_ln1352_9_fu_480_p0;
    sc_signal< sc_lv<16> > zext_ln215_17_fu_476_p1;
    sc_signal< sc_lv<8> > mul_ln1352_9_fu_480_p1;
    sc_signal< sc_lv<16> > mul_ln1352_9_fu_480_p2;
    sc_signal< sc_lv<8> > mul_ln1352_11_fu_498_p0;
    sc_signal< sc_lv<16> > zext_ln215_19_fu_494_p1;
    sc_signal< sc_lv<8> > mul_ln1352_11_fu_498_p1;
    sc_signal< sc_lv<16> > mul_ln1352_11_fu_498_p2;
    sc_signal< sc_lv<8> > mul_ln1352_13_fu_516_p0;
    sc_signal< sc_lv<16> > zext_ln215_21_fu_512_p1;
    sc_signal< sc_lv<8> > mul_ln1352_13_fu_516_p1;
    sc_signal< sc_lv<16> > mul_ln1352_13_fu_516_p2;
    sc_signal< sc_lv<8> > mul_ln1352_15_fu_534_p0;
    sc_signal< sc_lv<16> > zext_ln215_23_fu_530_p1;
    sc_signal< sc_lv<8> > mul_ln1352_15_fu_534_p1;
    sc_signal< sc_lv<16> > mul_ln1352_15_fu_534_p2;
    sc_signal< sc_lv<8> > mul_ln1352_17_fu_552_p0;
    sc_signal< sc_lv<16> > zext_ln215_25_fu_548_p1;
    sc_signal< sc_lv<8> > mul_ln1352_17_fu_552_p1;
    sc_signal< sc_lv<16> > mul_ln1352_17_fu_552_p2;
    sc_signal< sc_lv<8> > mul_ln1352_19_fu_570_p0;
    sc_signal< sc_lv<16> > zext_ln215_27_fu_566_p1;
    sc_signal< sc_lv<8> > mul_ln1352_19_fu_570_p1;
    sc_signal< sc_lv<16> > mul_ln1352_19_fu_570_p2;
    sc_signal< sc_lv<8> > mul_ln1352_21_fu_588_p0;
    sc_signal< sc_lv<16> > zext_ln215_29_fu_584_p1;
    sc_signal< sc_lv<8> > mul_ln1352_21_fu_588_p1;
    sc_signal< sc_lv<16> > mul_ln1352_21_fu_588_p2;
    sc_signal< sc_lv<8> > mul_ln1352_23_fu_606_p0;
    sc_signal< sc_lv<16> > zext_ln215_31_fu_602_p1;
    sc_signal< sc_lv<8> > mul_ln1352_23_fu_606_p1;
    sc_signal< sc_lv<16> > mul_ln1352_23_fu_606_p2;
    sc_signal< sc_lv<8> > mul_ln1352_25_fu_624_p0;
    sc_signal< sc_lv<16> > zext_ln215_33_fu_620_p1;
    sc_signal< sc_lv<8> > mul_ln1352_25_fu_624_p1;
    sc_signal< sc_lv<16> > mul_ln1352_25_fu_624_p2;
    sc_signal< sc_lv<8> > mul_ln1352_27_fu_642_p0;
    sc_signal< sc_lv<16> > zext_ln215_35_fu_638_p1;
    sc_signal< sc_lv<8> > mul_ln1352_27_fu_642_p1;
    sc_signal< sc_lv<16> > mul_ln1352_27_fu_642_p2;
    sc_signal< sc_lv<8> > mul_ln1352_29_fu_660_p0;
    sc_signal< sc_lv<16> > zext_ln215_37_fu_656_p1;
    sc_signal< sc_lv<8> > mul_ln1352_29_fu_660_p1;
    sc_signal< sc_lv<16> > mul_ln1352_29_fu_660_p2;
    sc_signal< sc_lv<8> > mul_ln1352_31_fu_677_p0;
    sc_signal< sc_lv<16> > zext_ln215_39_fu_674_p1;
    sc_signal< sc_lv<8> > mul_ln1352_31_fu_677_p1;
    sc_signal< sc_lv<16> > mul_ln1352_31_fu_677_p2;
    sc_signal< sc_lv<18> > zext_ln700_1_fu_841_p1;
    sc_signal< sc_lv<18> > zext_ln700_2_fu_844_p1;
    sc_signal< sc_lv<18> > add_ln700_2_fu_847_p2;
    sc_signal< sc_lv<18> > zext_ln700_4_fu_857_p1;
    sc_signal< sc_lv<18> > zext_ln700_5_fu_860_p1;
    sc_signal< sc_lv<18> > add_ln700_5_fu_863_p2;
    sc_signal< sc_lv<19> > zext_ln700_3_fu_853_p1;
    sc_signal< sc_lv<19> > zext_ln700_6_fu_869_p1;
    sc_signal< sc_lv<18> > zext_ln700_8_fu_879_p1;
    sc_signal< sc_lv<18> > zext_ln700_9_fu_882_p1;
    sc_signal< sc_lv<18> > add_ln700_9_fu_885_p2;
    sc_signal< sc_lv<18> > zext_ln700_11_fu_895_p1;
    sc_signal< sc_lv<18> > zext_ln700_12_fu_898_p1;
    sc_signal< sc_lv<18> > add_ln700_12_fu_901_p2;
    sc_signal< sc_lv<19> > zext_ln700_10_fu_891_p1;
    sc_signal< sc_lv<19> > zext_ln700_13_fu_907_p1;
    sc_signal< sc_lv<18> > zext_ln700_15_fu_917_p1;
    sc_signal< sc_lv<18> > zext_ln700_16_fu_920_p1;
    sc_signal< sc_lv<18> > add_ln700_17_fu_923_p2;
    sc_signal< sc_lv<18> > zext_ln700_18_fu_933_p1;
    sc_signal< sc_lv<18> > zext_ln700_19_fu_936_p1;
    sc_signal< sc_lv<18> > add_ln700_20_fu_939_p2;
    sc_signal< sc_lv<19> > zext_ln700_17_fu_929_p1;
    sc_signal< sc_lv<19> > zext_ln700_20_fu_945_p1;
    sc_signal< sc_lv<19> > add_ln700_21_fu_949_p2;
    sc_signal< sc_lv<18> > zext_ln700_22_fu_959_p1;
    sc_signal< sc_lv<18> > zext_ln700_23_fu_962_p1;
    sc_signal< sc_lv<18> > add_ln700_24_fu_965_p2;
    sc_signal< sc_lv<18> > zext_ln700_25_fu_975_p1;
    sc_signal< sc_lv<18> > zext_ln700_26_fu_978_p1;
    sc_signal< sc_lv<18> > add_ln700_27_fu_981_p2;
    sc_signal< sc_lv<19> > zext_ln700_24_fu_971_p1;
    sc_signal< sc_lv<19> > zext_ln700_27_fu_987_p1;
    sc_signal< sc_lv<19> > add_ln700_28_fu_991_p2;
    sc_signal< sc_lv<20> > zext_ln700_21_fu_955_p1;
    sc_signal< sc_lv<20> > zext_ln700_28_fu_997_p1;
    sc_signal< sc_lv<20> > zext_ln700_7_fu_1007_p1;
    sc_signal< sc_lv<20> > zext_ln700_14_fu_1010_p1;
    sc_signal< sc_lv<20> > add_ln700_14_fu_1013_p2;
    sc_signal< sc_lv<20> > add_ln700_30_fu_1019_p2;
    sc_signal< sc_lv<17> > r_V_fu_1024_p4;
    sc_signal< sc_lv<1> > icmp_ln879_fu_1034_p2;
    sc_signal< sc_lv<27> > zext_ln895_1_fu_1054_p1;
    sc_signal< sc_lv<1> > icmp_ln895_fu_1057_p2;
    sc_signal< sc_lv<8> > grp_fu_1069_p0;
    sc_signal< sc_lv<16> > zext_ln215_9_fu_414_p1;
    sc_signal< sc_lv<8> > grp_fu_1069_p1;
    sc_signal< sc_lv<16> > grp_fu_1069_p2;
    sc_signal< sc_lv<8> > grp_fu_1077_p0;
    sc_signal< sc_lv<16> > zext_ln215_10_fu_418_p1;
    sc_signal< sc_lv<8> > grp_fu_1077_p1;
    sc_signal< sc_lv<16> > grp_fu_1077_p2;
    sc_signal< sc_lv<8> > grp_fu_1085_p0;
    sc_signal< sc_lv<16> > zext_ln215_12_fu_436_p1;
    sc_signal< sc_lv<8> > grp_fu_1085_p1;
    sc_signal< sc_lv<16> > grp_fu_1085_p2;
    sc_signal< sc_lv<8> > grp_fu_1093_p0;
    sc_signal< sc_lv<16> > zext_ln215_14_fu_454_p1;
    sc_signal< sc_lv<8> > grp_fu_1093_p1;
    sc_signal< sc_lv<16> > grp_fu_1093_p2;
    sc_signal< sc_lv<8> > grp_fu_1101_p0;
    sc_signal< sc_lv<16> > zext_ln215_16_fu_472_p1;
    sc_signal< sc_lv<8> > grp_fu_1101_p1;
    sc_signal< sc_lv<16> > grp_fu_1101_p2;
    sc_signal< sc_lv<8> > grp_fu_1109_p0;
    sc_signal< sc_lv<16> > zext_ln215_18_fu_490_p1;
    sc_signal< sc_lv<8> > grp_fu_1109_p1;
    sc_signal< sc_lv<16> > grp_fu_1109_p2;
    sc_signal< sc_lv<8> > grp_fu_1117_p0;
    sc_signal< sc_lv<16> > zext_ln215_20_fu_508_p1;
    sc_signal< sc_lv<8> > grp_fu_1117_p1;
    sc_signal< sc_lv<16> > grp_fu_1117_p2;
    sc_signal< sc_lv<8> > grp_fu_1125_p0;
    sc_signal< sc_lv<16> > zext_ln215_22_fu_526_p1;
    sc_signal< sc_lv<8> > grp_fu_1125_p1;
    sc_signal< sc_lv<16> > grp_fu_1125_p2;
    sc_signal< sc_lv<8> > grp_fu_1133_p0;
    sc_signal< sc_lv<16> > zext_ln215_24_fu_544_p1;
    sc_signal< sc_lv<8> > grp_fu_1133_p1;
    sc_signal< sc_lv<16> > grp_fu_1133_p2;
    sc_signal< sc_lv<8> > grp_fu_1141_p0;
    sc_signal< sc_lv<16> > zext_ln215_26_fu_562_p1;
    sc_signal< sc_lv<8> > grp_fu_1141_p1;
    sc_signal< sc_lv<16> > grp_fu_1141_p2;
    sc_signal< sc_lv<8> > grp_fu_1149_p0;
    sc_signal< sc_lv<16> > zext_ln215_28_fu_580_p1;
    sc_signal< sc_lv<8> > grp_fu_1149_p1;
    sc_signal< sc_lv<16> > grp_fu_1149_p2;
    sc_signal< sc_lv<8> > grp_fu_1157_p0;
    sc_signal< sc_lv<16> > zext_ln215_30_fu_598_p1;
    sc_signal< sc_lv<8> > grp_fu_1157_p1;
    sc_signal< sc_lv<16> > grp_fu_1157_p2;
    sc_signal< sc_lv<8> > grp_fu_1165_p0;
    sc_signal< sc_lv<16> > zext_ln215_32_fu_616_p1;
    sc_signal< sc_lv<8> > grp_fu_1165_p1;
    sc_signal< sc_lv<16> > grp_fu_1165_p2;
    sc_signal< sc_lv<8> > grp_fu_1173_p0;
    sc_signal< sc_lv<16> > zext_ln215_34_fu_634_p1;
    sc_signal< sc_lv<8> > grp_fu_1173_p1;
    sc_signal< sc_lv<16> > grp_fu_1173_p2;
    sc_signal< sc_lv<8> > grp_fu_1181_p0;
    sc_signal< sc_lv<16> > zext_ln215_36_fu_652_p1;
    sc_signal< sc_lv<8> > grp_fu_1181_p1;
    sc_signal< sc_lv<16> > grp_fu_1181_p2;
    sc_signal< sc_lv<8> > grp_fu_1189_p0;
    sc_signal< sc_lv<16> > zext_ln215_38_fu_670_p1;
    sc_signal< sc_lv<8> > grp_fu_1189_p1;
    sc_signal< sc_lv<16> > grp_fu_1189_p2;
    sc_signal< sc_lv<11> > ret_V_fu_1197_p0;
    sc_signal< sc_lv<22> > lhs_V_fu_1048_p1;
    sc_signal< sc_lv<11> > ret_V_fu_1197_p1;
    sc_signal< sc_lv<17> > mul_ln895_fu_1203_p0;
    sc_signal< sc_lv<6> > mul_ln895_fu_1203_p1;
    sc_signal< sc_lv<2> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_lv<17> > grp_fu_1069_p20;
    sc_signal< sc_lv<17> > grp_fu_1077_p20;
    sc_signal< sc_lv<17> > grp_fu_1085_p20;
    sc_signal< sc_lv<17> > grp_fu_1093_p20;
    sc_signal< sc_lv<17> > grp_fu_1101_p20;
    sc_signal< sc_lv<17> > grp_fu_1109_p20;
    sc_signal< sc_lv<17> > grp_fu_1117_p20;
    sc_signal< sc_lv<17> > grp_fu_1125_p20;
    sc_signal< sc_lv<17> > grp_fu_1133_p20;
    sc_signal< sc_lv<17> > grp_fu_1141_p20;
    sc_signal< sc_lv<17> > grp_fu_1149_p20;
    sc_signal< sc_lv<17> > grp_fu_1157_p20;
    sc_signal< sc_lv<17> > grp_fu_1165_p20;
    sc_signal< sc_lv<17> > grp_fu_1173_p20;
    sc_signal< sc_lv<17> > grp_fu_1181_p20;
    sc_signal< sc_lv<17> > grp_fu_1189_p20;
    sc_signal< sc_lv<27> > mul_ln895_fu_1203_p00;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_ST_fsm_state1;
    static const sc_lv<2> ap_ST_fsm_pp0_stage0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<17> ap_const_lv17_0;
    static const sc_lv<17> ap_const_lv17_1F;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<27> ap_const_lv27_1B;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln215_1_fu_344_p2();
    void thread_add_ln215_2_fu_354_p2();
    void thread_add_ln215_3_fu_364_p2();
    void thread_add_ln215_4_fu_374_p2();
    void thread_add_ln215_5_fu_384_p2();
    void thread_add_ln215_fu_334_p2();
    void thread_add_ln700_12_fu_901_p2();
    void thread_add_ln700_13_fu_911_p2();
    void thread_add_ln700_14_fu_1013_p2();
    void thread_add_ln700_17_fu_923_p2();
    void thread_add_ln700_20_fu_939_p2();
    void thread_add_ln700_21_fu_949_p2();
    void thread_add_ln700_24_fu_965_p2();
    void thread_add_ln700_27_fu_981_p2();
    void thread_add_ln700_28_fu_991_p2();
    void thread_add_ln700_29_fu_1001_p2();
    void thread_add_ln700_2_fu_847_p2();
    void thread_add_ln700_30_fu_1019_p2();
    void thread_add_ln700_5_fu_863_p2();
    void thread_add_ln700_6_fu_873_p2();
    void thread_add_ln700_9_fu_885_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_block_state5_pp0_stage0_iter3();
    void thread_ap_block_state6_pp0_stage0_iter4();
    void thread_ap_block_state7_pp0_stage0_iter5();
    void thread_ap_enable_pp0();
    void thread_ap_idle_pp0();
    void thread_detect_blk_n();
    void thread_detect_din();
    void thread_detect_write();
    void thread_e_blk_n();
    void thread_e_read();
    void thread_grp_fu_1069_p0();
    void thread_grp_fu_1069_p1();
    void thread_grp_fu_1069_p2();
    void thread_grp_fu_1069_p20();
    void thread_grp_fu_1077_p0();
    void thread_grp_fu_1077_p1();
    void thread_grp_fu_1077_p2();
    void thread_grp_fu_1077_p20();
    void thread_grp_fu_1085_p0();
    void thread_grp_fu_1085_p1();
    void thread_grp_fu_1085_p2();
    void thread_grp_fu_1085_p20();
    void thread_grp_fu_1093_p0();
    void thread_grp_fu_1093_p1();
    void thread_grp_fu_1093_p2();
    void thread_grp_fu_1093_p20();
    void thread_grp_fu_1101_p0();
    void thread_grp_fu_1101_p1();
    void thread_grp_fu_1101_p2();
    void thread_grp_fu_1101_p20();
    void thread_grp_fu_1109_p0();
    void thread_grp_fu_1109_p1();
    void thread_grp_fu_1109_p2();
    void thread_grp_fu_1109_p20();
    void thread_grp_fu_1117_p0();
    void thread_grp_fu_1117_p1();
    void thread_grp_fu_1117_p2();
    void thread_grp_fu_1117_p20();
    void thread_grp_fu_1125_p0();
    void thread_grp_fu_1125_p1();
    void thread_grp_fu_1125_p2();
    void thread_grp_fu_1125_p20();
    void thread_grp_fu_1133_p0();
    void thread_grp_fu_1133_p1();
    void thread_grp_fu_1133_p2();
    void thread_grp_fu_1133_p20();
    void thread_grp_fu_1141_p0();
    void thread_grp_fu_1141_p1();
    void thread_grp_fu_1141_p2();
    void thread_grp_fu_1141_p20();
    void thread_grp_fu_1149_p0();
    void thread_grp_fu_1149_p1();
    void thread_grp_fu_1149_p2();
    void thread_grp_fu_1149_p20();
    void thread_grp_fu_1157_p0();
    void thread_grp_fu_1157_p1();
    void thread_grp_fu_1157_p2();
    void thread_grp_fu_1157_p20();
    void thread_grp_fu_1165_p0();
    void thread_grp_fu_1165_p1();
    void thread_grp_fu_1165_p2();
    void thread_grp_fu_1165_p20();
    void thread_grp_fu_1173_p0();
    void thread_grp_fu_1173_p1();
    void thread_grp_fu_1173_p2();
    void thread_grp_fu_1173_p20();
    void thread_grp_fu_1181_p0();
    void thread_grp_fu_1181_p1();
    void thread_grp_fu_1181_p2();
    void thread_grp_fu_1181_p20();
    void thread_grp_fu_1189_p0();
    void thread_grp_fu_1189_p1();
    void thread_grp_fu_1189_p2();
    void thread_grp_fu_1189_p20();
    void thread_icmp_ln879_fu_1034_p2();
    void thread_icmp_ln895_fu_1057_p2();
    void thread_lhs_V_fu_1048_p1();
    void thread_mul_ln1352_11_fu_498_p0();
    void thread_mul_ln1352_11_fu_498_p1();
    void thread_mul_ln1352_11_fu_498_p2();
    void thread_mul_ln1352_13_fu_516_p0();
    void thread_mul_ln1352_13_fu_516_p1();
    void thread_mul_ln1352_13_fu_516_p2();
    void thread_mul_ln1352_15_fu_534_p0();
    void thread_mul_ln1352_15_fu_534_p1();
    void thread_mul_ln1352_15_fu_534_p2();
    void thread_mul_ln1352_17_fu_552_p0();
    void thread_mul_ln1352_17_fu_552_p1();
    void thread_mul_ln1352_17_fu_552_p2();
    void thread_mul_ln1352_19_fu_570_p0();
    void thread_mul_ln1352_19_fu_570_p1();
    void thread_mul_ln1352_19_fu_570_p2();
    void thread_mul_ln1352_21_fu_588_p0();
    void thread_mul_ln1352_21_fu_588_p1();
    void thread_mul_ln1352_21_fu_588_p2();
    void thread_mul_ln1352_23_fu_606_p0();
    void thread_mul_ln1352_23_fu_606_p1();
    void thread_mul_ln1352_23_fu_606_p2();
    void thread_mul_ln1352_25_fu_624_p0();
    void thread_mul_ln1352_25_fu_624_p1();
    void thread_mul_ln1352_25_fu_624_p2();
    void thread_mul_ln1352_27_fu_642_p0();
    void thread_mul_ln1352_27_fu_642_p1();
    void thread_mul_ln1352_27_fu_642_p2();
    void thread_mul_ln1352_29_fu_660_p0();
    void thread_mul_ln1352_29_fu_660_p1();
    void thread_mul_ln1352_29_fu_660_p2();
    void thread_mul_ln1352_31_fu_677_p0();
    void thread_mul_ln1352_31_fu_677_p1();
    void thread_mul_ln1352_31_fu_677_p2();
    void thread_mul_ln1352_3_fu_426_p0();
    void thread_mul_ln1352_3_fu_426_p1();
    void thread_mul_ln1352_3_fu_426_p2();
    void thread_mul_ln1352_5_fu_444_p0();
    void thread_mul_ln1352_5_fu_444_p1();
    void thread_mul_ln1352_5_fu_444_p2();
    void thread_mul_ln1352_7_fu_462_p0();
    void thread_mul_ln1352_7_fu_462_p1();
    void thread_mul_ln1352_7_fu_462_p2();
    void thread_mul_ln1352_9_fu_480_p0();
    void thread_mul_ln1352_9_fu_480_p1();
    void thread_mul_ln1352_9_fu_480_p2();
    void thread_mul_ln1352_fu_404_p0();
    void thread_mul_ln1352_fu_404_p1();
    void thread_mul_ln1352_fu_404_p2();
    void thread_mul_ln895_fu_1203_p0();
    void thread_mul_ln895_fu_1203_p00();
    void thread_mul_ln895_fu_1203_p1();
    void thread_ps_V_fu_394_p2();
    void thread_r_V_fu_1024_p4();
    void thread_res_2_V_1_fu_1040_p3();
    void thread_ret_V_fu_1197_p0();
    void thread_ret_V_fu_1197_p1();
    void thread_zext_ln215_10_fu_418_p1();
    void thread_zext_ln215_11_fu_422_p1();
    void thread_zext_ln215_12_fu_436_p1();
    void thread_zext_ln215_13_fu_440_p1();
    void thread_zext_ln215_14_fu_454_p1();
    void thread_zext_ln215_15_fu_458_p1();
    void thread_zext_ln215_16_fu_472_p1();
    void thread_zext_ln215_17_fu_476_p1();
    void thread_zext_ln215_18_fu_490_p1();
    void thread_zext_ln215_19_fu_494_p1();
    void thread_zext_ln215_1_fu_306_p1();
    void thread_zext_ln215_20_fu_508_p1();
    void thread_zext_ln215_21_fu_512_p1();
    void thread_zext_ln215_22_fu_526_p1();
    void thread_zext_ln215_23_fu_530_p1();
    void thread_zext_ln215_24_fu_544_p1();
    void thread_zext_ln215_25_fu_548_p1();
    void thread_zext_ln215_26_fu_562_p1();
    void thread_zext_ln215_27_fu_566_p1();
    void thread_zext_ln215_28_fu_580_p1();
    void thread_zext_ln215_29_fu_584_p1();
    void thread_zext_ln215_2_fu_310_p1();
    void thread_zext_ln215_30_fu_598_p1();
    void thread_zext_ln215_31_fu_602_p1();
    void thread_zext_ln215_32_fu_616_p1();
    void thread_zext_ln215_33_fu_620_p1();
    void thread_zext_ln215_34_fu_634_p1();
    void thread_zext_ln215_35_fu_638_p1();
    void thread_zext_ln215_36_fu_652_p1();
    void thread_zext_ln215_37_fu_656_p1();
    void thread_zext_ln215_38_fu_670_p1();
    void thread_zext_ln215_39_fu_674_p1();
    void thread_zext_ln215_3_fu_314_p1();
    void thread_zext_ln215_40_fu_340_p1();
    void thread_zext_ln215_41_fu_350_p1();
    void thread_zext_ln215_42_fu_360_p1();
    void thread_zext_ln215_43_fu_370_p1();
    void thread_zext_ln215_44_fu_380_p1();
    void thread_zext_ln215_45_fu_390_p1();
    void thread_zext_ln215_4_fu_318_p1();
    void thread_zext_ln215_5_fu_322_p1();
    void thread_zext_ln215_6_fu_326_p1();
    void thread_zext_ln215_7_fu_330_p1();
    void thread_zext_ln215_8_fu_400_p1();
    void thread_zext_ln215_9_fu_414_p1();
    void thread_zext_ln215_fu_302_p1();
    void thread_zext_ln700_10_fu_891_p1();
    void thread_zext_ln700_11_fu_895_p1();
    void thread_zext_ln700_12_fu_898_p1();
    void thread_zext_ln700_13_fu_907_p1();
    void thread_zext_ln700_14_fu_1010_p1();
    void thread_zext_ln700_15_fu_917_p1();
    void thread_zext_ln700_16_fu_920_p1();
    void thread_zext_ln700_17_fu_929_p1();
    void thread_zext_ln700_18_fu_933_p1();
    void thread_zext_ln700_19_fu_936_p1();
    void thread_zext_ln700_1_fu_841_p1();
    void thread_zext_ln700_20_fu_945_p1();
    void thread_zext_ln700_21_fu_955_p1();
    void thread_zext_ln700_22_fu_959_p1();
    void thread_zext_ln700_23_fu_962_p1();
    void thread_zext_ln700_24_fu_971_p1();
    void thread_zext_ln700_25_fu_975_p1();
    void thread_zext_ln700_26_fu_978_p1();
    void thread_zext_ln700_27_fu_987_p1();
    void thread_zext_ln700_28_fu_997_p1();
    void thread_zext_ln700_2_fu_844_p1();
    void thread_zext_ln700_3_fu_853_p1();
    void thread_zext_ln700_4_fu_857_p1();
    void thread_zext_ln700_5_fu_860_p1();
    void thread_zext_ln700_6_fu_869_p1();
    void thread_zext_ln700_7_fu_1007_p1();
    void thread_zext_ln700_8_fu_879_p1();
    void thread_zext_ln700_9_fu_882_p1();
    void thread_zext_ln895_1_fu_1054_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
