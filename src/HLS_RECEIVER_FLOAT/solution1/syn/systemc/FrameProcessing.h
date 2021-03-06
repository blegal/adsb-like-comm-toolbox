// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _FrameProcessing_HH_
#define _FrameProcessing_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "FrameProcessing_do_gen.h"

namespace ap_rtl {

struct FrameProcessing : public sc_module {
    // Port declarations 11
    sc_in_clk clock;
    sc_in< sc_logic > reset;
    sc_in< sc_lv<8> > e_dout;
    sc_in< sc_logic > e_empty_n;
    sc_out< sc_logic > e_read;
    sc_out< sc_lv<32> > addr_din;
    sc_in< sc_logic > addr_full_n;
    sc_out< sc_logic > addr_write;
    sc_out< sc_lv<24> > rgbv_din;
    sc_in< sc_logic > rgbv_full_n;
    sc_out< sc_logic > rgbv_write;


    // Module declarations
    FrameProcessing(sc_module_name name);
    SC_HAS_PROCESS(FrameProcessing);

    ~FrameProcessing();

    sc_trace_file* mVcdFile;

    FrameProcessing_do_gen* grp_FrameProcessing_do_gen_fu_64;
    sc_signal< sc_logic > grp_FrameProcessing_do_gen_fu_64_e_read;
    sc_signal< sc_lv<32> > grp_FrameProcessing_do_gen_fu_64_addr_din;
    sc_signal< sc_logic > grp_FrameProcessing_do_gen_fu_64_addr_write;
    sc_signal< sc_lv<24> > grp_FrameProcessing_do_gen_fu_64_rgbv_din;
    sc_signal< sc_logic > grp_FrameProcessing_do_gen_fu_64_rgbv_write;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_addr_din();
    void thread_addr_write();
    void thread_e_read();
    void thread_rgbv_din();
    void thread_rgbv_write();
};

}

using namespace ap_rtl;

#endif
