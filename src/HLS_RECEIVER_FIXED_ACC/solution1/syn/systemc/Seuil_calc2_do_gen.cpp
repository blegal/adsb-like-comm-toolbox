// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "Seuil_calc2_do_gen.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic Seuil_calc2_do_gen::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic Seuil_calc2_do_gen::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<2> Seuil_calc2_do_gen::ap_ST_fsm_state1 = "1";
const sc_lv<2> Seuil_calc2_do_gen::ap_ST_fsm_pp0_stage0 = "10";
const bool Seuil_calc2_do_gen::ap_const_boolean_1 = true;
const sc_lv<32> Seuil_calc2_do_gen::ap_const_lv32_1 = "1";
const bool Seuil_calc2_do_gen::ap_const_boolean_0 = false;
const sc_lv<32> Seuil_calc2_do_gen::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<22> Seuil_calc2_do_gen::ap_const_lv22_0 = "0000000000000000000000";
const sc_lv<3> Seuil_calc2_do_gen::ap_const_lv3_0 = "000";
const sc_lv<32> Seuil_calc2_do_gen::ap_const_lv32_5 = "101";
const sc_lv<32> Seuil_calc2_do_gen::ap_const_lv32_15 = "10101";
const sc_lv<17> Seuil_calc2_do_gen::ap_const_lv17_0 = "00000000000000000";
const sc_lv<17> Seuil_calc2_do_gen::ap_const_lv17_1F = "11111";
const sc_lv<1> Seuil_calc2_do_gen::ap_const_lv1_1 = "1";
const sc_lv<27> Seuil_calc2_do_gen::ap_const_lv27_1B = "11011";

Seuil_calc2_do_gen::Seuil_calc2_do_gen(sc_module_name name) : sc_module(name), mVcdFile(0) {
    Seuil_calc2_mac_mdEe_U22 = new Seuil_calc2_mac_mdEe<1,1,8,8,16,17>("Seuil_calc2_mac_mdEe_U22");
    Seuil_calc2_mac_mdEe_U22->din0(grp_fu_664_p0);
    Seuil_calc2_mac_mdEe_U22->din1(grp_fu_664_p1);
    Seuil_calc2_mac_mdEe_U22->din2(grp_fu_664_p2);
    Seuil_calc2_mac_mdEe_U22->dout(grp_fu_664_p3);
    Seuil_calc2_mul_meOg_U23 = new Seuil_calc2_mul_meOg<1,1,11,11,22>("Seuil_calc2_mul_meOg_U23");
    Seuil_calc2_mul_meOg_U23->din0(ret_V_6_fu_672_p0);
    Seuil_calc2_mul_meOg_U23->din1(ret_V_6_fu_672_p1);
    Seuil_calc2_mul_meOg_U23->dout(ret_V_6_fu_672_p2);
    Seuil_calc2_mul_mfYi_U24 = new Seuil_calc2_mul_mfYi<1,1,17,6,27>("Seuil_calc2_mul_mfYi_U24");
    Seuil_calc2_mul_mfYi_U24->din0(mul_ln895_fu_678_p0);
    Seuil_calc2_mul_mfYi_U24->din1(mul_ln895_fu_678_p1);
    Seuil_calc2_mul_mfYi_U24->dout(mul_ln895_fu_678_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln215_1_fu_387_p2);
    sensitive << ( zext_ln215_3_fu_357_p1 );
    sensitive << ( zext_ln215_2_fu_353_p1 );

    SC_METHOD(thread_add_ln215_2_fu_397_p2);
    sensitive << ( zext_ln215_8_fu_383_p1 );
    sensitive << ( zext_ln215_9_fu_393_p1 );

    SC_METHOD(thread_add_ln215_3_fu_407_p2);
    sensitive << ( zext_ln215_5_fu_365_p1 );
    sensitive << ( zext_ln215_4_fu_361_p1 );

    SC_METHOD(thread_add_ln215_4_fu_417_p2);
    sensitive << ( zext_ln215_7_fu_373_p1 );
    sensitive << ( zext_ln215_6_fu_369_p1 );

    SC_METHOD(thread_add_ln215_5_fu_427_p2);
    sensitive << ( zext_ln215_11_fu_413_p1 );
    sensitive << ( zext_ln215_12_fu_423_p1 );

    SC_METHOD(thread_add_ln215_fu_377_p2);
    sensitive << ( zext_ln215_fu_345_p1 );
    sensitive << ( zext_ln215_1_fu_349_p1 );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0);

    SC_METHOD(thread_ap_block_pp0_stage0_01001);
    sensitive << ( e_empty_n );
    sensitive << ( detect_full_n );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_enable_reg_pp0_iter4 );

    SC_METHOD(thread_ap_block_pp0_stage0_11001);
    sensitive << ( e_empty_n );
    sensitive << ( detect_full_n );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_enable_reg_pp0_iter4 );

    SC_METHOD(thread_ap_block_pp0_stage0_subdone);
    sensitive << ( e_empty_n );
    sensitive << ( detect_full_n );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_enable_reg_pp0_iter4 );

    SC_METHOD(thread_ap_block_state2_pp0_stage0_iter0);
    sensitive << ( e_empty_n );

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter1);

    SC_METHOD(thread_ap_block_state4_pp0_stage0_iter2);

    SC_METHOD(thread_ap_block_state5_pp0_stage0_iter3);

    SC_METHOD(thread_ap_block_state6_pp0_stage0_iter4);
    sensitive << ( detect_full_n );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_enable_reg_pp0_iter4 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_enable_reg_pp0_iter3 );

    SC_METHOD(thread_ap_phi_mux_p_0108_0_phi_fu_225_p4);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( p_0108_0_reg_221 );
    sensitive << ( sum_V_reg_892 );
    sensitive << ( ap_enable_reg_pp0_iter3 );

    SC_METHOD(thread_ap_sig_allocacmp_p_0343_0_load);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( p_0343_0_fu_80 );
    sensitive << ( x0_V_fu_84 );

    SC_METHOD(thread_detect_blk_n);
    sensitive << ( detect_full_n );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter4 );

    SC_METHOD(thread_detect_din);
    sensitive << ( ap_enable_reg_pp0_iter4 );
    sensitive << ( ap_block_pp0_stage0_01001 );
    sensitive << ( icmp_ln895_fu_652_p2 );

    SC_METHOD(thread_detect_write);
    sensitive << ( ap_enable_reg_pp0_iter4 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_e_blk_n);
    sensitive << ( e_empty_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0 );

    SC_METHOD(thread_e_read);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_grp_fu_664_p0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( lhs_V_4_fu_235_p1 );

    SC_METHOD(thread_grp_fu_664_p1);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( lhs_V_4_fu_235_p1 );

    SC_METHOD(thread_grp_fu_664_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( grp_fu_664_p20 );

    SC_METHOD(thread_grp_fu_664_p20);
    sensitive << ( ret_V_5_fu_242_p2 );

    SC_METHOD(thread_icmp_ln879_fu_470_p2);
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( trunc_ln_fu_460_p4 );

    SC_METHOD(thread_icmp_ln895_fu_652_p2);
    sensitive << ( ap_enable_reg_pp0_iter4 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( mul_ln895_reg_907 );
    sensitive << ( zext_ln895_1_fu_649_p1 );

    SC_METHOD(thread_lhs_V_4_fu_235_p1);
    sensitive << ( ap_sig_allocacmp_p_0343_0_load );

    SC_METHOD(thread_lhs_V_5_fu_239_p1);
    sensitive << ( val_V_reg_876 );

    SC_METHOD(thread_lhs_V_6_fu_643_p1);
    sensitive << ( ps_V_reg_887 );

    SC_METHOD(thread_mul_ln895_fu_678_p0);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter3 );
    sensitive << ( mul_ln895_fu_678_p00 );

    SC_METHOD(thread_mul_ln895_fu_678_p00);
    sensitive << ( res_2_V_reg_897 );

    SC_METHOD(thread_mul_ln895_fu_678_p1);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter3 );

    SC_METHOD(thread_ps_V_fu_437_p2);
    sensitive << ( zext_ln215_10_fu_403_p1 );
    sensitive << ( zext_ln215_13_fu_433_p1 );

    SC_METHOD(thread_res_2_V_fu_476_p3);
    sensitive << ( trunc_ln_fu_460_p4 );
    sensitive << ( icmp_ln879_fu_470_p2 );

    SC_METHOD(thread_ret_V_5_fu_242_p0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( lhs_V_5_fu_239_p1 );

    SC_METHOD(thread_ret_V_5_fu_242_p1);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( lhs_V_5_fu_239_p1 );

    SC_METHOD(thread_ret_V_5_fu_242_p2);
    sensitive << ( ret_V_5_fu_242_p0 );
    sensitive << ( ret_V_5_fu_242_p1 );

    SC_METHOD(thread_ret_V_6_fu_672_p0);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter3 );
    sensitive << ( lhs_V_6_fu_643_p1 );

    SC_METHOD(thread_ret_V_6_fu_672_p1);
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter3 );
    sensitive << ( lhs_V_6_fu_643_p1 );

    SC_METHOD(thread_sext_ln700_fu_450_p1);
    sensitive << ( shl_ln_fu_443_p3 );

    SC_METHOD(thread_shl_ln_fu_443_p3);
    sensitive << ( ret_V_reg_882 );

    SC_METHOD(thread_sum_V_fu_454_p2);
    sensitive << ( ap_phi_mux_p_0108_0_phi_fu_225_p4 );
    sensitive << ( sext_ln700_fu_450_p1 );

    SC_METHOD(thread_trunc_ln_fu_460_p4);
    sensitive << ( sum_V_fu_454_p2 );

    SC_METHOD(thread_zext_ln215_10_fu_403_p1);
    sensitive << ( add_ln215_2_fu_397_p2 );

    SC_METHOD(thread_zext_ln215_11_fu_413_p1);
    sensitive << ( add_ln215_3_fu_407_p2 );

    SC_METHOD(thread_zext_ln215_12_fu_423_p1);
    sensitive << ( add_ln215_4_fu_417_p2 );

    SC_METHOD(thread_zext_ln215_13_fu_433_p1);
    sensitive << ( add_ln215_5_fu_427_p2 );

    SC_METHOD(thread_zext_ln215_1_fu_349_p1);
    sensitive << ( buffer_1_V_fu_88 );

    SC_METHOD(thread_zext_ln215_2_fu_353_p1);
    sensitive << ( buffer_4_V_fu_100 );

    SC_METHOD(thread_zext_ln215_3_fu_357_p1);
    sensitive << ( buffer_5_V_fu_104 );

    SC_METHOD(thread_zext_ln215_4_fu_361_p1);
    sensitive << ( buffer_14_V_fu_140 );

    SC_METHOD(thread_zext_ln215_5_fu_365_p1);
    sensitive << ( buffer_15_V_fu_144 );

    SC_METHOD(thread_zext_ln215_6_fu_369_p1);
    sensitive << ( buffer_18_V_fu_156 );

    SC_METHOD(thread_zext_ln215_7_fu_373_p1);
    sensitive << ( buffer_19_V_fu_160 );

    SC_METHOD(thread_zext_ln215_8_fu_383_p1);
    sensitive << ( add_ln215_fu_377_p2 );

    SC_METHOD(thread_zext_ln215_9_fu_393_p1);
    sensitive << ( add_ln215_1_fu_387_p2 );

    SC_METHOD(thread_zext_ln215_fu_345_p1);
    sensitive << ( x0_V_fu_84 );

    SC_METHOD(thread_zext_ln895_1_fu_649_p1);
    sensitive << ( ret_V_6_reg_902 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_CS_fsm );

    ap_CS_fsm = "01";
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter4 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter2 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter3 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "Seuil_calc2_do_gen_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, e_dout, "(port)e_dout");
    sc_trace(mVcdFile, e_empty_n, "(port)e_empty_n");
    sc_trace(mVcdFile, e_read, "(port)e_read");
    sc_trace(mVcdFile, detect_din, "(port)detect_din");
    sc_trace(mVcdFile, detect_full_n, "(port)detect_full_n");
    sc_trace(mVcdFile, detect_write, "(port)detect_write");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, e_blk_n, "e_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, detect_blk_n, "detect_blk_n");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter4, "ap_enable_reg_pp0_iter4");
    sc_trace(mVcdFile, p_0108_0_reg_221, "p_0108_0_reg_221");
    sc_trace(mVcdFile, val_V_reg_876, "val_V_reg_876");
    sc_trace(mVcdFile, ap_block_state2_pp0_stage0_iter0, "ap_block_state2_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter1, "ap_block_state3_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_state4_pp0_stage0_iter2, "ap_block_state4_pp0_stage0_iter2");
    sc_trace(mVcdFile, ap_block_state5_pp0_stage0_iter3, "ap_block_state5_pp0_stage0_iter3");
    sc_trace(mVcdFile, ap_block_state6_pp0_stage0_iter4, "ap_block_state6_pp0_stage0_iter4");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, val_V_reg_876_pp0_iter1_reg, "val_V_reg_876_pp0_iter1_reg");
    sc_trace(mVcdFile, grp_fu_664_p3, "grp_fu_664_p3");
    sc_trace(mVcdFile, ret_V_reg_882, "ret_V_reg_882");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ps_V_fu_437_p2, "ps_V_fu_437_p2");
    sc_trace(mVcdFile, ps_V_reg_887, "ps_V_reg_887");
    sc_trace(mVcdFile, sum_V_fu_454_p2, "sum_V_fu_454_p2");
    sc_trace(mVcdFile, sum_V_reg_892, "sum_V_reg_892");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter2, "ap_enable_reg_pp0_iter2");
    sc_trace(mVcdFile, res_2_V_fu_476_p3, "res_2_V_fu_476_p3");
    sc_trace(mVcdFile, res_2_V_reg_897, "res_2_V_reg_897");
    sc_trace(mVcdFile, ret_V_6_fu_672_p2, "ret_V_6_fu_672_p2");
    sc_trace(mVcdFile, ret_V_6_reg_902, "ret_V_6_reg_902");
    sc_trace(mVcdFile, mul_ln895_fu_678_p2, "mul_ln895_fu_678_p2");
    sc_trace(mVcdFile, mul_ln895_reg_907, "mul_ln895_reg_907");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_subdone, "ap_block_pp0_stage0_subdone");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter3, "ap_enable_reg_pp0_iter3");
    sc_trace(mVcdFile, ap_phi_mux_p_0108_0_phi_fu_225_p4, "ap_phi_mux_p_0108_0_phi_fu_225_p4");
    sc_trace(mVcdFile, p_0343_0_fu_80, "p_0343_0_fu_80");
    sc_trace(mVcdFile, ap_sig_allocacmp_p_0343_0_load, "ap_sig_allocacmp_p_0343_0_load");
    sc_trace(mVcdFile, x0_V_fu_84, "x0_V_fu_84");
    sc_trace(mVcdFile, buffer_1_V_fu_88, "buffer_1_V_fu_88");
    sc_trace(mVcdFile, buffer_2_V_fu_92, "buffer_2_V_fu_92");
    sc_trace(mVcdFile, buffer_3_V_fu_96, "buffer_3_V_fu_96");
    sc_trace(mVcdFile, buffer_4_V_fu_100, "buffer_4_V_fu_100");
    sc_trace(mVcdFile, buffer_5_V_fu_104, "buffer_5_V_fu_104");
    sc_trace(mVcdFile, buffer_6_V_fu_108, "buffer_6_V_fu_108");
    sc_trace(mVcdFile, buffer_7_V_fu_112, "buffer_7_V_fu_112");
    sc_trace(mVcdFile, buffer_8_V_fu_116, "buffer_8_V_fu_116");
    sc_trace(mVcdFile, buffer_9_V_fu_120, "buffer_9_V_fu_120");
    sc_trace(mVcdFile, buffer_10_V_fu_124, "buffer_10_V_fu_124");
    sc_trace(mVcdFile, buffer_11_V_fu_128, "buffer_11_V_fu_128");
    sc_trace(mVcdFile, buffer_12_V_fu_132, "buffer_12_V_fu_132");
    sc_trace(mVcdFile, buffer_13_V_fu_136, "buffer_13_V_fu_136");
    sc_trace(mVcdFile, buffer_14_V_fu_140, "buffer_14_V_fu_140");
    sc_trace(mVcdFile, buffer_15_V_fu_144, "buffer_15_V_fu_144");
    sc_trace(mVcdFile, buffer_16_V_fu_148, "buffer_16_V_fu_148");
    sc_trace(mVcdFile, buffer_17_V_fu_152, "buffer_17_V_fu_152");
    sc_trace(mVcdFile, buffer_18_V_fu_156, "buffer_18_V_fu_156");
    sc_trace(mVcdFile, buffer_19_V_fu_160, "buffer_19_V_fu_160");
    sc_trace(mVcdFile, buffer_20_V_fu_164, "buffer_20_V_fu_164");
    sc_trace(mVcdFile, buffer_21_V_fu_168, "buffer_21_V_fu_168");
    sc_trace(mVcdFile, buffer_22_V_fu_172, "buffer_22_V_fu_172");
    sc_trace(mVcdFile, buffer_23_V_fu_176, "buffer_23_V_fu_176");
    sc_trace(mVcdFile, buffer_24_V_fu_180, "buffer_24_V_fu_180");
    sc_trace(mVcdFile, buffer_25_V_fu_184, "buffer_25_V_fu_184");
    sc_trace(mVcdFile, buffer_26_V_fu_188, "buffer_26_V_fu_188");
    sc_trace(mVcdFile, buffer_27_V_fu_192, "buffer_27_V_fu_192");
    sc_trace(mVcdFile, buffer_28_V_fu_196, "buffer_28_V_fu_196");
    sc_trace(mVcdFile, buffer_29_V_fu_200, "buffer_29_V_fu_200");
    sc_trace(mVcdFile, buffer_30_V_fu_204, "buffer_30_V_fu_204");
    sc_trace(mVcdFile, ap_block_pp0_stage0_01001, "ap_block_pp0_stage0_01001");
    sc_trace(mVcdFile, ret_V_5_fu_242_p0, "ret_V_5_fu_242_p0");
    sc_trace(mVcdFile, lhs_V_5_fu_239_p1, "lhs_V_5_fu_239_p1");
    sc_trace(mVcdFile, ret_V_5_fu_242_p1, "ret_V_5_fu_242_p1");
    sc_trace(mVcdFile, ret_V_5_fu_242_p2, "ret_V_5_fu_242_p2");
    sc_trace(mVcdFile, zext_ln215_fu_345_p1, "zext_ln215_fu_345_p1");
    sc_trace(mVcdFile, zext_ln215_1_fu_349_p1, "zext_ln215_1_fu_349_p1");
    sc_trace(mVcdFile, add_ln215_fu_377_p2, "add_ln215_fu_377_p2");
    sc_trace(mVcdFile, zext_ln215_3_fu_357_p1, "zext_ln215_3_fu_357_p1");
    sc_trace(mVcdFile, zext_ln215_2_fu_353_p1, "zext_ln215_2_fu_353_p1");
    sc_trace(mVcdFile, add_ln215_1_fu_387_p2, "add_ln215_1_fu_387_p2");
    sc_trace(mVcdFile, zext_ln215_8_fu_383_p1, "zext_ln215_8_fu_383_p1");
    sc_trace(mVcdFile, zext_ln215_9_fu_393_p1, "zext_ln215_9_fu_393_p1");
    sc_trace(mVcdFile, add_ln215_2_fu_397_p2, "add_ln215_2_fu_397_p2");
    sc_trace(mVcdFile, zext_ln215_5_fu_365_p1, "zext_ln215_5_fu_365_p1");
    sc_trace(mVcdFile, zext_ln215_4_fu_361_p1, "zext_ln215_4_fu_361_p1");
    sc_trace(mVcdFile, add_ln215_3_fu_407_p2, "add_ln215_3_fu_407_p2");
    sc_trace(mVcdFile, zext_ln215_7_fu_373_p1, "zext_ln215_7_fu_373_p1");
    sc_trace(mVcdFile, zext_ln215_6_fu_369_p1, "zext_ln215_6_fu_369_p1");
    sc_trace(mVcdFile, add_ln215_4_fu_417_p2, "add_ln215_4_fu_417_p2");
    sc_trace(mVcdFile, zext_ln215_11_fu_413_p1, "zext_ln215_11_fu_413_p1");
    sc_trace(mVcdFile, zext_ln215_12_fu_423_p1, "zext_ln215_12_fu_423_p1");
    sc_trace(mVcdFile, add_ln215_5_fu_427_p2, "add_ln215_5_fu_427_p2");
    sc_trace(mVcdFile, zext_ln215_10_fu_403_p1, "zext_ln215_10_fu_403_p1");
    sc_trace(mVcdFile, zext_ln215_13_fu_433_p1, "zext_ln215_13_fu_433_p1");
    sc_trace(mVcdFile, shl_ln_fu_443_p3, "shl_ln_fu_443_p3");
    sc_trace(mVcdFile, sext_ln700_fu_450_p1, "sext_ln700_fu_450_p1");
    sc_trace(mVcdFile, trunc_ln_fu_460_p4, "trunc_ln_fu_460_p4");
    sc_trace(mVcdFile, icmp_ln879_fu_470_p2, "icmp_ln879_fu_470_p2");
    sc_trace(mVcdFile, zext_ln895_1_fu_649_p1, "zext_ln895_1_fu_649_p1");
    sc_trace(mVcdFile, icmp_ln895_fu_652_p2, "icmp_ln895_fu_652_p2");
    sc_trace(mVcdFile, grp_fu_664_p0, "grp_fu_664_p0");
    sc_trace(mVcdFile, lhs_V_4_fu_235_p1, "lhs_V_4_fu_235_p1");
    sc_trace(mVcdFile, grp_fu_664_p1, "grp_fu_664_p1");
    sc_trace(mVcdFile, grp_fu_664_p2, "grp_fu_664_p2");
    sc_trace(mVcdFile, ret_V_6_fu_672_p0, "ret_V_6_fu_672_p0");
    sc_trace(mVcdFile, lhs_V_6_fu_643_p1, "lhs_V_6_fu_643_p1");
    sc_trace(mVcdFile, ret_V_6_fu_672_p1, "ret_V_6_fu_672_p1");
    sc_trace(mVcdFile, mul_ln895_fu_678_p0, "mul_ln895_fu_678_p0");
    sc_trace(mVcdFile, mul_ln895_fu_678_p1, "mul_ln895_fu_678_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
    sc_trace(mVcdFile, grp_fu_664_p20, "grp_fu_664_p20");
    sc_trace(mVcdFile, mul_ln895_fu_678_p00, "mul_ln895_fu_678_p00");
#endif

    }
}

Seuil_calc2_do_gen::~Seuil_calc2_do_gen() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete Seuil_calc2_mac_mdEe_U22;
    delete Seuil_calc2_mul_meOg_U23;
    delete Seuil_calc2_mul_mfYi_U24;
}

void Seuil_calc2_do_gen::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter1 = ap_enable_reg_pp0_iter0.read();
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) {
            ap_enable_reg_pp0_iter1 = ap_const_logic_0;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter2 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter2 = ap_enable_reg_pp0_iter1.read();
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) {
            ap_enable_reg_pp0_iter2 = ap_const_logic_0;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter3 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter3 = ap_enable_reg_pp0_iter2.read();
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) {
            ap_enable_reg_pp0_iter3 = ap_const_logic_0;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter4 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter4 = ap_enable_reg_pp0_iter3.read();
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) {
            ap_enable_reg_pp0_iter4 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()))) {
        p_0108_0_reg_221 = sum_V_reg_892.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) {
        p_0108_0_reg_221 = ap_const_lv22_0;
    }
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()))) {
        buffer_10_V_fu_124 = buffer_11_V_fu_128.read();
        buffer_11_V_fu_128 = buffer_12_V_fu_132.read();
        buffer_12_V_fu_132 = buffer_13_V_fu_136.read();
        buffer_13_V_fu_136 = buffer_14_V_fu_140.read();
        buffer_14_V_fu_140 = buffer_15_V_fu_144.read();
        buffer_15_V_fu_144 = buffer_16_V_fu_148.read();
        buffer_16_V_fu_148 = buffer_17_V_fu_152.read();
        buffer_17_V_fu_152 = buffer_18_V_fu_156.read();
        buffer_18_V_fu_156 = buffer_19_V_fu_160.read();
        buffer_19_V_fu_160 = buffer_20_V_fu_164.read();
        buffer_1_V_fu_88 = buffer_2_V_fu_92.read();
        buffer_20_V_fu_164 = buffer_21_V_fu_168.read();
        buffer_21_V_fu_168 = buffer_22_V_fu_172.read();
        buffer_22_V_fu_172 = buffer_23_V_fu_176.read();
        buffer_23_V_fu_176 = buffer_24_V_fu_180.read();
        buffer_24_V_fu_180 = buffer_25_V_fu_184.read();
        buffer_25_V_fu_184 = buffer_26_V_fu_188.read();
        buffer_26_V_fu_188 = buffer_27_V_fu_192.read();
        buffer_27_V_fu_192 = buffer_28_V_fu_196.read();
        buffer_28_V_fu_196 = buffer_29_V_fu_200.read();
        buffer_29_V_fu_200 = buffer_30_V_fu_204.read();
        buffer_2_V_fu_92 = buffer_3_V_fu_96.read();
        buffer_30_V_fu_204 = val_V_reg_876_pp0_iter1_reg.read();
        buffer_3_V_fu_96 = buffer_4_V_fu_100.read();
        buffer_4_V_fu_100 = buffer_5_V_fu_104.read();
        buffer_5_V_fu_104 = buffer_6_V_fu_108.read();
        buffer_6_V_fu_108 = buffer_7_V_fu_112.read();
        buffer_7_V_fu_112 = buffer_8_V_fu_116.read();
        buffer_8_V_fu_116 = buffer_9_V_fu_120.read();
        buffer_9_V_fu_120 = buffer_10_V_fu_124.read();
        p_0343_0_fu_80 = x0_V_fu_84.read();
        sum_V_reg_892 = sum_V_fu_454_p2.read();
        x0_V_fu_84 = buffer_1_V_fu_88.read();
    }
    if (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0)) {
        mul_ln895_reg_907 = mul_ln895_fu_678_p2.read();
        ps_V_reg_887 = ps_V_fu_437_p2.read();
        res_2_V_reg_897 = res_2_V_fu_476_p3.read();
        ret_V_6_reg_902 = ret_V_6_fu_672_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        ret_V_reg_882 = grp_fu_664_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        val_V_reg_876 = e_dout.read();
        val_V_reg_876_pp0_iter1_reg = val_V_reg_876.read();
    }
}

void Seuil_calc2_do_gen::thread_add_ln215_1_fu_387_p2() {
    add_ln215_1_fu_387_p2 = (!zext_ln215_3_fu_357_p1.read().is_01() || !zext_ln215_2_fu_353_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(zext_ln215_3_fu_357_p1.read()) + sc_biguint<9>(zext_ln215_2_fu_353_p1.read()));
}

void Seuil_calc2_do_gen::thread_add_ln215_2_fu_397_p2() {
    add_ln215_2_fu_397_p2 = (!zext_ln215_8_fu_383_p1.read().is_01() || !zext_ln215_9_fu_393_p1.read().is_01())? sc_lv<10>(): (sc_biguint<10>(zext_ln215_8_fu_383_p1.read()) + sc_biguint<10>(zext_ln215_9_fu_393_p1.read()));
}

void Seuil_calc2_do_gen::thread_add_ln215_3_fu_407_p2() {
    add_ln215_3_fu_407_p2 = (!zext_ln215_5_fu_365_p1.read().is_01() || !zext_ln215_4_fu_361_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(zext_ln215_5_fu_365_p1.read()) + sc_biguint<9>(zext_ln215_4_fu_361_p1.read()));
}

void Seuil_calc2_do_gen::thread_add_ln215_4_fu_417_p2() {
    add_ln215_4_fu_417_p2 = (!zext_ln215_7_fu_373_p1.read().is_01() || !zext_ln215_6_fu_369_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(zext_ln215_7_fu_373_p1.read()) + sc_biguint<9>(zext_ln215_6_fu_369_p1.read()));
}

void Seuil_calc2_do_gen::thread_add_ln215_5_fu_427_p2() {
    add_ln215_5_fu_427_p2 = (!zext_ln215_11_fu_413_p1.read().is_01() || !zext_ln215_12_fu_423_p1.read().is_01())? sc_lv<10>(): (sc_biguint<10>(zext_ln215_11_fu_413_p1.read()) + sc_biguint<10>(zext_ln215_12_fu_423_p1.read()));
}

void Seuil_calc2_do_gen::thread_add_ln215_fu_377_p2() {
    add_ln215_fu_377_p2 = (!zext_ln215_fu_345_p1.read().is_01() || !zext_ln215_1_fu_349_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(zext_ln215_fu_345_p1.read()) + sc_biguint<9>(zext_ln215_1_fu_349_p1.read()));
}

void Seuil_calc2_do_gen::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[1];
}

void Seuil_calc2_do_gen::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void Seuil_calc2_do_gen::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void Seuil_calc2_do_gen::thread_ap_block_pp0_stage0_01001() {
    ap_block_pp0_stage0_01001 = ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, e_empty_n.read())) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, detect_full_n.read())));
}

void Seuil_calc2_do_gen::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, e_empty_n.read())) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, detect_full_n.read())));
}

void Seuil_calc2_do_gen::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, e_empty_n.read())) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
  esl_seteq<1,1,1>(ap_const_logic_0, detect_full_n.read())));
}

void Seuil_calc2_do_gen::thread_ap_block_state2_pp0_stage0_iter0() {
    ap_block_state2_pp0_stage0_iter0 = esl_seteq<1,1,1>(ap_const_logic_0, e_empty_n.read());
}

void Seuil_calc2_do_gen::thread_ap_block_state3_pp0_stage0_iter1() {
    ap_block_state3_pp0_stage0_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void Seuil_calc2_do_gen::thread_ap_block_state4_pp0_stage0_iter2() {
    ap_block_state4_pp0_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void Seuil_calc2_do_gen::thread_ap_block_state5_pp0_stage0_iter3() {
    ap_block_state5_pp0_stage0_iter3 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void Seuil_calc2_do_gen::thread_ap_block_state6_pp0_stage0_iter4() {
    ap_block_state6_pp0_stage0_iter4 = esl_seteq<1,1,1>(ap_const_logic_0, detect_full_n.read());
}

void Seuil_calc2_do_gen::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void Seuil_calc2_do_gen::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter3.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter4.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void Seuil_calc2_do_gen::thread_ap_phi_mux_p_0108_0_phi_fu_225_p4() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()))) {
        ap_phi_mux_p_0108_0_phi_fu_225_p4 = sum_V_reg_892.read();
    } else {
        ap_phi_mux_p_0108_0_phi_fu_225_p4 = p_0108_0_reg_221.read();
    }
}

void Seuil_calc2_do_gen::thread_ap_sig_allocacmp_p_0343_0_load() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()))) {
        ap_sig_allocacmp_p_0343_0_load = x0_V_fu_84.read();
    } else {
        ap_sig_allocacmp_p_0343_0_load = p_0343_0_fu_80.read();
    }
}

void Seuil_calc2_do_gen::thread_detect_blk_n() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()))) {
        detect_blk_n = detect_full_n.read();
    } else {
        detect_blk_n = ap_const_logic_1;
    }
}

void Seuil_calc2_do_gen::thread_detect_din() {
    detect_din =  (sc_logic) ((icmp_ln895_fu_652_p2.read() ^ ap_const_lv1_1))[0];
}

void Seuil_calc2_do_gen::thread_detect_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        detect_write = ap_const_logic_1;
    } else {
        detect_write = ap_const_logic_0;
    }
}

void Seuil_calc2_do_gen::thread_e_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        e_blk_n = e_empty_n.read();
    } else {
        e_blk_n = ap_const_logic_1;
    }
}

void Seuil_calc2_do_gen::thread_e_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        e_read = ap_const_logic_1;
    } else {
        e_read = ap_const_logic_0;
    }
}

void Seuil_calc2_do_gen::thread_grp_fu_664_p0() {
    grp_fu_664_p0 =  (sc_lv<8>) (lhs_V_4_fu_235_p1.read());
}

void Seuil_calc2_do_gen::thread_grp_fu_664_p1() {
    grp_fu_664_p1 =  (sc_lv<8>) (lhs_V_4_fu_235_p1.read());
}

void Seuil_calc2_do_gen::thread_grp_fu_664_p2() {
    grp_fu_664_p2 =  (sc_lv<16>) (grp_fu_664_p20.read());
}

void Seuil_calc2_do_gen::thread_grp_fu_664_p20() {
    grp_fu_664_p20 = esl_zext<17,16>(ret_V_5_fu_242_p2.read());
}

void Seuil_calc2_do_gen::thread_icmp_ln879_fu_470_p2() {
    icmp_ln879_fu_470_p2 = (!trunc_ln_fu_460_p4.read().is_01() || !ap_const_lv17_0.is_01())? sc_lv<1>(): sc_lv<1>(trunc_ln_fu_460_p4.read() == ap_const_lv17_0);
}

void Seuil_calc2_do_gen::thread_icmp_ln895_fu_652_p2() {
    icmp_ln895_fu_652_p2 = (!zext_ln895_1_fu_649_p1.read().is_01() || !mul_ln895_reg_907.read().is_01())? sc_lv<1>(): (sc_biguint<27>(zext_ln895_1_fu_649_p1.read()) < sc_biguint<27>(mul_ln895_reg_907.read()));
}

void Seuil_calc2_do_gen::thread_lhs_V_4_fu_235_p1() {
    lhs_V_4_fu_235_p1 = esl_zext<16,8>(ap_sig_allocacmp_p_0343_0_load.read());
}

void Seuil_calc2_do_gen::thread_lhs_V_5_fu_239_p1() {
    lhs_V_5_fu_239_p1 = esl_zext<16,8>(val_V_reg_876.read());
}

void Seuil_calc2_do_gen::thread_lhs_V_6_fu_643_p1() {
    lhs_V_6_fu_643_p1 = esl_zext<22,11>(ps_V_reg_887.read());
}

void Seuil_calc2_do_gen::thread_mul_ln895_fu_678_p0() {
    mul_ln895_fu_678_p0 =  (sc_lv<17>) (mul_ln895_fu_678_p00.read());
}

void Seuil_calc2_do_gen::thread_mul_ln895_fu_678_p00() {
    mul_ln895_fu_678_p00 = esl_zext<27,17>(res_2_V_reg_897.read());
}

void Seuil_calc2_do_gen::thread_mul_ln895_fu_678_p1() {
    mul_ln895_fu_678_p1 =  (sc_lv<6>) (ap_const_lv27_1B);
}

void Seuil_calc2_do_gen::thread_ps_V_fu_437_p2() {
    ps_V_fu_437_p2 = (!zext_ln215_10_fu_403_p1.read().is_01() || !zext_ln215_13_fu_433_p1.read().is_01())? sc_lv<11>(): (sc_biguint<11>(zext_ln215_10_fu_403_p1.read()) + sc_biguint<11>(zext_ln215_13_fu_433_p1.read()));
}

void Seuil_calc2_do_gen::thread_res_2_V_fu_476_p3() {
    res_2_V_fu_476_p3 = (!icmp_ln879_fu_470_p2.read()[0].is_01())? sc_lv<17>(): ((icmp_ln879_fu_470_p2.read()[0].to_bool())? ap_const_lv17_1F: trunc_ln_fu_460_p4.read());
}

void Seuil_calc2_do_gen::thread_ret_V_5_fu_242_p0() {
    ret_V_5_fu_242_p0 =  (sc_lv<8>) (lhs_V_5_fu_239_p1.read());
}

void Seuil_calc2_do_gen::thread_ret_V_5_fu_242_p1() {
    ret_V_5_fu_242_p1 =  (sc_lv<8>) (lhs_V_5_fu_239_p1.read());
}

void Seuil_calc2_do_gen::thread_ret_V_5_fu_242_p2() {
    ret_V_5_fu_242_p2 = (!ret_V_5_fu_242_p0.read().is_01() || !ret_V_5_fu_242_p1.read().is_01())? sc_lv<16>(): sc_biguint<8>(ret_V_5_fu_242_p0.read()) * sc_biguint<8>(ret_V_5_fu_242_p1.read());
}

void Seuil_calc2_do_gen::thread_ret_V_6_fu_672_p0() {
    ret_V_6_fu_672_p0 =  (sc_lv<11>) (lhs_V_6_fu_643_p1.read());
}

void Seuil_calc2_do_gen::thread_ret_V_6_fu_672_p1() {
    ret_V_6_fu_672_p1 =  (sc_lv<11>) (lhs_V_6_fu_643_p1.read());
}

void Seuil_calc2_do_gen::thread_sext_ln700_fu_450_p1() {
    sext_ln700_fu_450_p1 = esl_sext<22,20>(shl_ln_fu_443_p3.read());
}

void Seuil_calc2_do_gen::thread_shl_ln_fu_443_p3() {
    shl_ln_fu_443_p3 = esl_concat<17,3>(ret_V_reg_882.read(), ap_const_lv3_0);
}

void Seuil_calc2_do_gen::thread_sum_V_fu_454_p2() {
    sum_V_fu_454_p2 = (!ap_phi_mux_p_0108_0_phi_fu_225_p4.read().is_01() || !sext_ln700_fu_450_p1.read().is_01())? sc_lv<22>(): (sc_biguint<22>(ap_phi_mux_p_0108_0_phi_fu_225_p4.read()) + sc_bigint<22>(sext_ln700_fu_450_p1.read()));
}

void Seuil_calc2_do_gen::thread_trunc_ln_fu_460_p4() {
    trunc_ln_fu_460_p4 = sum_V_fu_454_p2.read().range(21, 5);
}

void Seuil_calc2_do_gen::thread_zext_ln215_10_fu_403_p1() {
    zext_ln215_10_fu_403_p1 = esl_zext<11,10>(add_ln215_2_fu_397_p2.read());
}

void Seuil_calc2_do_gen::thread_zext_ln215_11_fu_413_p1() {
    zext_ln215_11_fu_413_p1 = esl_zext<10,9>(add_ln215_3_fu_407_p2.read());
}

void Seuil_calc2_do_gen::thread_zext_ln215_12_fu_423_p1() {
    zext_ln215_12_fu_423_p1 = esl_zext<10,9>(add_ln215_4_fu_417_p2.read());
}

void Seuil_calc2_do_gen::thread_zext_ln215_13_fu_433_p1() {
    zext_ln215_13_fu_433_p1 = esl_zext<11,10>(add_ln215_5_fu_427_p2.read());
}

void Seuil_calc2_do_gen::thread_zext_ln215_1_fu_349_p1() {
    zext_ln215_1_fu_349_p1 = esl_zext<9,8>(buffer_1_V_fu_88.read());
}

void Seuil_calc2_do_gen::thread_zext_ln215_2_fu_353_p1() {
    zext_ln215_2_fu_353_p1 = esl_zext<9,8>(buffer_4_V_fu_100.read());
}

void Seuil_calc2_do_gen::thread_zext_ln215_3_fu_357_p1() {
    zext_ln215_3_fu_357_p1 = esl_zext<9,8>(buffer_5_V_fu_104.read());
}

void Seuil_calc2_do_gen::thread_zext_ln215_4_fu_361_p1() {
    zext_ln215_4_fu_361_p1 = esl_zext<9,8>(buffer_14_V_fu_140.read());
}

void Seuil_calc2_do_gen::thread_zext_ln215_5_fu_365_p1() {
    zext_ln215_5_fu_365_p1 = esl_zext<9,8>(buffer_15_V_fu_144.read());
}

void Seuil_calc2_do_gen::thread_zext_ln215_6_fu_369_p1() {
    zext_ln215_6_fu_369_p1 = esl_zext<9,8>(buffer_18_V_fu_156.read());
}

void Seuil_calc2_do_gen::thread_zext_ln215_7_fu_373_p1() {
    zext_ln215_7_fu_373_p1 = esl_zext<9,8>(buffer_19_V_fu_160.read());
}

void Seuil_calc2_do_gen::thread_zext_ln215_8_fu_383_p1() {
    zext_ln215_8_fu_383_p1 = esl_zext<10,9>(add_ln215_fu_377_p2.read());
}

void Seuil_calc2_do_gen::thread_zext_ln215_9_fu_393_p1() {
    zext_ln215_9_fu_393_p1 = esl_zext<10,9>(add_ln215_1_fu_387_p2.read());
}

void Seuil_calc2_do_gen::thread_zext_ln215_fu_345_p1() {
    zext_ln215_fu_345_p1 = esl_zext<9,8>(x0_V_fu_84.read());
}

void Seuil_calc2_do_gen::thread_zext_ln895_1_fu_649_p1() {
    zext_ln895_1_fu_649_p1 = esl_zext<27,22>(ret_V_6_reg_902.read());
}

void Seuil_calc2_do_gen::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
break;
        default : 
            ap_NS_fsm = "XX";
            break;
    }
}

}

