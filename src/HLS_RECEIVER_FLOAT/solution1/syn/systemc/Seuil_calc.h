// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Seuil_calc_HH_
#define _Seuil_calc_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Seuil_calc_do_gen.h"

namespace ap_rtl {

struct Seuil_calc : public sc_module {
    // Port declarations 8
    sc_in_clk clock;
    sc_in< sc_logic > reset;
    sc_in< sc_lv<8> > e_dout;
    sc_in< sc_logic > e_empty_n;
    sc_out< sc_logic > e_read;
    sc_out< sc_logic > detect_din;
    sc_in< sc_logic > detect_full_n;
    sc_out< sc_logic > detect_write;


    // Module declarations
    Seuil_calc(sc_module_name name);
    SC_HAS_PROCESS(Seuil_calc);

    ~Seuil_calc();

    sc_trace_file* mVcdFile;

    Seuil_calc_do_gen* grp_Seuil_calc_do_gen_fu_56;
    sc_signal< sc_logic > grp_Seuil_calc_do_gen_fu_56_e_read;
    sc_signal< sc_logic > grp_Seuil_calc_do_gen_fu_56_detect_din;
    sc_signal< sc_logic > grp_Seuil_calc_do_gen_fu_56_detect_write;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_detect_din();
    void thread_detect_write();
    void thread_e_read();
};

}

using namespace ap_rtl;

#endif
