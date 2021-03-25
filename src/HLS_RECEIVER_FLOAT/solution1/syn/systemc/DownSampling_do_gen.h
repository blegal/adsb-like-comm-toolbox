// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _DownSampling_do_gen_HH_
#define _DownSampling_do_gen_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct DownSampling_do_gen : public sc_module {
    // Port declarations 8
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_lv<8> > e_dout;
    sc_in< sc_logic > e_empty_n;
    sc_out< sc_logic > e_read;
    sc_out< sc_lv<8> > s_din;
    sc_in< sc_logic > s_full_n;
    sc_out< sc_logic > s_write;


    // Module declarations
    DownSampling_do_gen(sc_module_name name);
    SC_HAS_PROCESS(DownSampling_do_gen);

    ~DownSampling_do_gen();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > e_blk_n;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > s_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<8> > val_V_reg_92;
    sc_signal< sc_lv<8> > trunc_ln_reg_97;
    sc_signal< sc_lv<9> > zext_ln40_fu_72_p1;
    sc_signal< sc_lv<9> > zext_ln38_fu_69_p1;
    sc_signal< sc_lv<9> > add_ln40_fu_76_p2;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_state3;
    static const sc_lv<4> ap_ST_fsm_state4;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_8;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln40_fu_76_p2();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_e_blk_n();
    void thread_e_read();
    void thread_s_blk_n();
    void thread_s_din();
    void thread_s_write();
    void thread_zext_ln38_fu_69_p1();
    void thread_zext_ln40_fu_72_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
