// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "trames_separ.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic trames_separ::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic trames_separ::ap_const_logic_0 = sc_dt::Log_0;
const bool trames_separ::ap_const_boolean_1 = true;

trames_separ::trames_separ(sc_module_name name) : sc_module(name), mVcdFile(0) {
    grp_trames_separ_do_gen_fu_60 = new trames_separ_do_gen("grp_trames_separ_do_gen_fu_60");
    grp_trames_separ_do_gen_fu_60->ap_clk(clock);
    grp_trames_separ_do_gen_fu_60->ap_rst(reset);
    grp_trames_separ_do_gen_fu_60->e_dout(e_dout);
    grp_trames_separ_do_gen_fu_60->e_empty_n(e_empty_n);
    grp_trames_separ_do_gen_fu_60->e_read(grp_trames_separ_do_gen_fu_60_e_read);
    grp_trames_separ_do_gen_fu_60->detect_dout(detect_dout);
    grp_trames_separ_do_gen_fu_60->detect_empty_n(detect_empty_n);
    grp_trames_separ_do_gen_fu_60->detect_read(grp_trames_separ_do_gen_fu_60_detect_read);
    grp_trames_separ_do_gen_fu_60->s_din(grp_trames_separ_do_gen_fu_60_s_din);
    grp_trames_separ_do_gen_fu_60->s_full_n(s_full_n);
    grp_trames_separ_do_gen_fu_60->s_write(grp_trames_separ_do_gen_fu_60_s_write);

    SC_METHOD(thread_detect_read);
    sensitive << ( grp_trames_separ_do_gen_fu_60_detect_read );

    SC_METHOD(thread_e_read);
    sensitive << ( grp_trames_separ_do_gen_fu_60_e_read );

    SC_METHOD(thread_s_din);
    sensitive << ( grp_trames_separ_do_gen_fu_60_s_din );
    sensitive << ( grp_trames_separ_do_gen_fu_60_s_write );

    SC_METHOD(thread_s_write);
    sensitive << ( grp_trames_separ_do_gen_fu_60_s_write );

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "trames_separ_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, clock, "(port)clock");
    sc_trace(mVcdFile, reset, "(port)reset");
    sc_trace(mVcdFile, e_dout, "(port)e_dout");
    sc_trace(mVcdFile, e_empty_n, "(port)e_empty_n");
    sc_trace(mVcdFile, e_read, "(port)e_read");
    sc_trace(mVcdFile, detect_dout, "(port)detect_dout");
    sc_trace(mVcdFile, detect_empty_n, "(port)detect_empty_n");
    sc_trace(mVcdFile, detect_read, "(port)detect_read");
    sc_trace(mVcdFile, s_din, "(port)s_din");
    sc_trace(mVcdFile, s_full_n, "(port)s_full_n");
    sc_trace(mVcdFile, s_write, "(port)s_write");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, grp_trames_separ_do_gen_fu_60_e_read, "grp_trames_separ_do_gen_fu_60_e_read");
    sc_trace(mVcdFile, grp_trames_separ_do_gen_fu_60_detect_read, "grp_trames_separ_do_gen_fu_60_detect_read");
    sc_trace(mVcdFile, grp_trames_separ_do_gen_fu_60_s_din, "grp_trames_separ_do_gen_fu_60_s_din");
    sc_trace(mVcdFile, grp_trames_separ_do_gen_fu_60_s_write, "grp_trames_separ_do_gen_fu_60_s_write");
#endif

    }
}

trames_separ::~trames_separ() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete grp_trames_separ_do_gen_fu_60;
}

void trames_separ::thread_detect_read() {
    detect_read = grp_trames_separ_do_gen_fu_60_detect_read.read();
}

void trames_separ::thread_e_read() {
    e_read = grp_trames_separ_do_gen_fu_60_e_read.read();
}

void trames_separ::thread_s_din() {
    s_din = grp_trames_separ_do_gen_fu_60_s_din.read();
}

void trames_separ::thread_s_write() {
    s_write = grp_trames_separ_do_gen_fu_60_s_write.read();
}

}

