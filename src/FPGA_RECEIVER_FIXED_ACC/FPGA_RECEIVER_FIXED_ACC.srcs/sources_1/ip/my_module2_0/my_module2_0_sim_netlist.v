// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Thu Mar 25 14:17:06 2021
// Host        : JARVIS running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/oasa/Documents/ef/adsb-like-comm-toolbox/src/FPGA_RECEIVER_FIXED_ACC/FPGA_RECEIVER_FIXED_ACC.srcs/sources_1/ip/my_module2_0/my_module2_0_sim_netlist.v
// Design      : my_module2_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "my_module2_0,my_module2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "HLS" *) 
(* x_core_info = "my_module2,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module my_module2_0
   (clock,
    reset,
    e_dout,
    e_empty_n,
    e_read,
    addr_din,
    addr_full_n,
    addr_write,
    rgbv_din,
    rgbv_full_n,
    rgbv_write);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clock CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clock;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  (* x_interface_info = "xilinx.com:interface:acc_fifo_read:1.0 e RD_DATA" *) input [7:0]e_dout;
  (* x_interface_info = "xilinx.com:interface:acc_fifo_read:1.0 e EMPTY_N" *) input e_empty_n;
  (* x_interface_info = "xilinx.com:interface:acc_fifo_read:1.0 e RD_EN" *) output e_read;
  (* x_interface_info = "xilinx.com:interface:acc_fifo_write:1.0 addr WR_DATA" *) output [31:0]addr_din;
  (* x_interface_info = "xilinx.com:interface:acc_fifo_write:1.0 addr FULL_N" *) input addr_full_n;
  (* x_interface_info = "xilinx.com:interface:acc_fifo_write:1.0 addr WR_EN" *) output addr_write;
  (* x_interface_info = "xilinx.com:interface:acc_fifo_write:1.0 rgbv WR_DATA" *) output [23:0]rgbv_din;
  (* x_interface_info = "xilinx.com:interface:acc_fifo_write:1.0 rgbv FULL_N" *) input rgbv_full_n;
  (* x_interface_info = "xilinx.com:interface:acc_fifo_write:1.0 rgbv WR_EN" *) output rgbv_write;

  wire [31:0]addr_din;
  wire addr_full_n;
  wire addr_write;
  wire clock;
  wire [7:0]e_dout;
  wire e_empty_n;
  wire e_read;
  wire reset;
  wire [23:0]rgbv_din;
  wire rgbv_full_n;
  wire rgbv_write;

  my_module2_0_my_module2 U0
       (.addr_din(addr_din),
        .addr_full_n(addr_full_n),
        .addr_write(addr_write),
        .clock(clock),
        .e_dout(e_dout),
        .e_empty_n(e_empty_n),
        .e_read(e_read),
        .reset(reset),
        .rgbv_din(rgbv_din),
        .rgbv_full_n(rgbv_full_n),
        .rgbv_write(rgbv_write));
endmodule

(* ORIG_REF_NAME = "BitDecider" *) 
module my_module2_0_BitDecider
   (grp_BitDecider_fu_292_s_din,
    \ap_CS_fsm_reg[1] ,
    Q,
    internal_empty_n3_out,
    clock,
    dow2bit_1_empty_n,
    bit2byt_1_full_n,
    grp_BitsToBytes_fu_306_e_read,
    reset,
    E,
    D);
  output grp_BitDecider_fu_292_s_din;
  output \ap_CS_fsm_reg[1] ;
  output [2:0]Q;
  output internal_empty_n3_out;
  input clock;
  input dow2bit_1_empty_n;
  input bit2byt_1_full_n;
  input grp_BitsToBytes_fu_306_e_read;
  input reset;
  input [0:0]E;
  input [7:0]D;

  wire [7:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire \ap_CS_fsm_reg[1] ;
  wire bit2byt_1_full_n;
  wire clock;
  wire dow2bit_1_empty_n;
  wire grp_BitDecider_fu_292_s_din;
  wire grp_BitsToBytes_fu_306_e_read;
  wire internal_empty_n3_out;
  wire reset;

  my_module2_0_BitDecider_do_gen grp_BitDecider_do_gen_fu_58
       (.D(D),
        .E(E),
        .Q(Q),
        .\ap_CS_fsm_reg[1]_0 (\ap_CS_fsm_reg[1] ),
        .bit2byt_1_full_n(bit2byt_1_full_n),
        .clock(clock),
        .dow2bit_1_empty_n(dow2bit_1_empty_n),
        .grp_BitDecider_fu_292_s_din(grp_BitDecider_fu_292_s_din),
        .grp_BitsToBytes_fu_306_e_read(grp_BitsToBytes_fu_306_e_read),
        .internal_empty_n3_out(internal_empty_n3_out),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "BitDecider_do_gen" *) 
module my_module2_0_BitDecider_do_gen
   (grp_BitDecider_fu_292_s_din,
    \ap_CS_fsm_reg[1]_0 ,
    Q,
    internal_empty_n3_out,
    clock,
    dow2bit_1_empty_n,
    bit2byt_1_full_n,
    grp_BitsToBytes_fu_306_e_read,
    reset,
    E,
    D);
  output grp_BitDecider_fu_292_s_din;
  output \ap_CS_fsm_reg[1]_0 ;
  output [2:0]Q;
  output internal_empty_n3_out;
  input clock;
  input dow2bit_1_empty_n;
  input bit2byt_1_full_n;
  input grp_BitsToBytes_fu_306_e_read;
  input reset;
  input [0:0]E;
  input [7:0]D;

  wire [7:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire \ap_CS_fsm_reg[1]_0 ;
  wire [3:1]ap_NS_fsm;
  wire bit2byt_1_full_n;
  wire clock;
  wire dow2bit_1_empty_n;
  wire grp_BitDecider_fu_292_s_din;
  wire grp_BitsToBytes_fu_306_e_read;
  wire icmp_ln37_fu_65_p2;
  wire \icmp_ln37_reg_75[0]_i_10_n_8 ;
  wire \icmp_ln37_reg_75[0]_i_1_n_8 ;
  wire \icmp_ln37_reg_75[0]_i_3_n_8 ;
  wire \icmp_ln37_reg_75[0]_i_4_n_8 ;
  wire \icmp_ln37_reg_75[0]_i_5_n_8 ;
  wire \icmp_ln37_reg_75[0]_i_6_n_8 ;
  wire \icmp_ln37_reg_75[0]_i_7_n_8 ;
  wire \icmp_ln37_reg_75[0]_i_8_n_8 ;
  wire \icmp_ln37_reg_75[0]_i_9_n_8 ;
  wire \icmp_ln37_reg_75_reg[0]_i_2_n_10 ;
  wire \icmp_ln37_reg_75_reg[0]_i_2_n_11 ;
  wire \icmp_ln37_reg_75_reg[0]_i_2_n_9 ;
  wire internal_empty_n3_out;
  wire reset;
  wire [7:0]val_V_reg_70;
  wire [3:0]\NLW_icmp_ln37_reg_75_reg[0]_i_2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \ap_CS_fsm[1]_i_1__4 
       (.I0(Q[2]),
        .I1(bit2byt_1_full_n),
        .I2(dow2bit_1_empty_n),
        .I3(Q[0]),
        .O(ap_NS_fsm[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_CS_fsm[2]_i_1__4 
       (.I0(Q[0]),
        .I1(dow2bit_1_empty_n),
        .I2(Q[1]),
        .O(ap_NS_fsm[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \ap_CS_fsm[3]_i_1__1 
       (.I0(Q[1]),
        .I1(dow2bit_1_empty_n),
        .I2(bit2byt_1_full_n),
        .I3(Q[2]),
        .O(ap_NS_fsm[3]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(Q[0]),
        .S(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(Q[1]),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(Q[2]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \icmp_ln37_reg_75[0]_i_1 
       (.I0(icmp_ln37_fu_65_p2),
        .I1(dow2bit_1_empty_n),
        .I2(Q[1]),
        .I3(grp_BitDecider_fu_292_s_din),
        .O(\icmp_ln37_reg_75[0]_i_1_n_8 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \icmp_ln37_reg_75[0]_i_10 
       (.I0(val_V_reg_70[0]),
        .I1(D[0]),
        .I2(val_V_reg_70[1]),
        .I3(D[1]),
        .O(\icmp_ln37_reg_75[0]_i_10_n_8 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \icmp_ln37_reg_75[0]_i_3 
       (.I0(val_V_reg_70[6]),
        .I1(D[6]),
        .I2(D[7]),
        .I3(val_V_reg_70[7]),
        .O(\icmp_ln37_reg_75[0]_i_3_n_8 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \icmp_ln37_reg_75[0]_i_4 
       (.I0(val_V_reg_70[4]),
        .I1(D[4]),
        .I2(D[5]),
        .I3(val_V_reg_70[5]),
        .O(\icmp_ln37_reg_75[0]_i_4_n_8 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \icmp_ln37_reg_75[0]_i_5 
       (.I0(val_V_reg_70[2]),
        .I1(D[2]),
        .I2(D[3]),
        .I3(val_V_reg_70[3]),
        .O(\icmp_ln37_reg_75[0]_i_5_n_8 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \icmp_ln37_reg_75[0]_i_6 
       (.I0(val_V_reg_70[0]),
        .I1(D[0]),
        .I2(D[1]),
        .I3(val_V_reg_70[1]),
        .O(\icmp_ln37_reg_75[0]_i_6_n_8 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \icmp_ln37_reg_75[0]_i_7 
       (.I0(val_V_reg_70[6]),
        .I1(D[6]),
        .I2(val_V_reg_70[7]),
        .I3(D[7]),
        .O(\icmp_ln37_reg_75[0]_i_7_n_8 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \icmp_ln37_reg_75[0]_i_8 
       (.I0(val_V_reg_70[4]),
        .I1(D[4]),
        .I2(val_V_reg_70[5]),
        .I3(D[5]),
        .O(\icmp_ln37_reg_75[0]_i_8_n_8 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \icmp_ln37_reg_75[0]_i_9 
       (.I0(val_V_reg_70[2]),
        .I1(D[2]),
        .I2(val_V_reg_70[3]),
        .I3(D[3]),
        .O(\icmp_ln37_reg_75[0]_i_9_n_8 ));
  FDRE \icmp_ln37_reg_75_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(\icmp_ln37_reg_75[0]_i_1_n_8 ),
        .Q(grp_BitDecider_fu_292_s_din),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \icmp_ln37_reg_75_reg[0]_i_2 
       (.CI(1'b0),
        .CO({icmp_ln37_fu_65_p2,\icmp_ln37_reg_75_reg[0]_i_2_n_9 ,\icmp_ln37_reg_75_reg[0]_i_2_n_10 ,\icmp_ln37_reg_75_reg[0]_i_2_n_11 }),
        .CYINIT(1'b0),
        .DI({\icmp_ln37_reg_75[0]_i_3_n_8 ,\icmp_ln37_reg_75[0]_i_4_n_8 ,\icmp_ln37_reg_75[0]_i_5_n_8 ,\icmp_ln37_reg_75[0]_i_6_n_8 }),
        .O(\NLW_icmp_ln37_reg_75_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({\icmp_ln37_reg_75[0]_i_7_n_8 ,\icmp_ln37_reg_75[0]_i_8_n_8 ,\icmp_ln37_reg_75[0]_i_9_n_8 ,\icmp_ln37_reg_75[0]_i_10_n_8 }));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h08)) 
    internal_empty_n_i_3__1
       (.I0(Q[2]),
        .I1(bit2byt_1_full_n),
        .I2(grp_BitsToBytes_fu_306_e_read),
        .O(internal_empty_n3_out));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    internal_full_n_i_3__0
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(dow2bit_1_empty_n),
        .O(\ap_CS_fsm_reg[1]_0 ));
  FDRE \val_V_reg_70_reg[0] 
       (.C(clock),
        .CE(E),
        .D(D[0]),
        .Q(val_V_reg_70[0]),
        .R(1'b0));
  FDRE \val_V_reg_70_reg[1] 
       (.C(clock),
        .CE(E),
        .D(D[1]),
        .Q(val_V_reg_70[1]),
        .R(1'b0));
  FDRE \val_V_reg_70_reg[2] 
       (.C(clock),
        .CE(E),
        .D(D[2]),
        .Q(val_V_reg_70[2]),
        .R(1'b0));
  FDRE \val_V_reg_70_reg[3] 
       (.C(clock),
        .CE(E),
        .D(D[3]),
        .Q(val_V_reg_70[3]),
        .R(1'b0));
  FDRE \val_V_reg_70_reg[4] 
       (.C(clock),
        .CE(E),
        .D(D[4]),
        .Q(val_V_reg_70[4]),
        .R(1'b0));
  FDRE \val_V_reg_70_reg[5] 
       (.C(clock),
        .CE(E),
        .D(D[5]),
        .Q(val_V_reg_70[5]),
        .R(1'b0));
  FDRE \val_V_reg_70_reg[6] 
       (.C(clock),
        .CE(E),
        .D(D[6]),
        .Q(val_V_reg_70[6]),
        .R(1'b0));
  FDRE \val_V_reg_70_reg[7] 
       (.C(clock),
        .CE(E),
        .D(D[7]),
        .Q(val_V_reg_70[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "BitsToBytes" *) 
module my_module2_0_BitsToBytes
   (grp_BitsToBytes_fu_306_e_read,
    E,
    \ap_CS_fsm_reg[3] ,
    \q_0_reg_93_reg[2] ,
    in,
    Q,
    bit2byt_1_full_n,
    bit2byt_1_empty_n,
    byt2crc_1_full_n,
    reset,
    clock,
    bit2byt_1_dout);
  output grp_BitsToBytes_fu_306_e_read;
  output [0:0]E;
  output \ap_CS_fsm_reg[3] ;
  output [0:0]\q_0_reg_93_reg[2] ;
  output [7:0]in;
  input [0:0]Q;
  input bit2byt_1_full_n;
  input bit2byt_1_empty_n;
  input byt2crc_1_full_n;
  input reset;
  input clock;
  input bit2byt_1_dout;

  wire [0:0]E;
  wire [0:0]Q;
  wire \ap_CS_fsm_reg[3] ;
  wire bit2byt_1_dout;
  wire bit2byt_1_empty_n;
  wire bit2byt_1_full_n;
  wire byt2crc_1_full_n;
  wire clock;
  wire grp_BitsToBytes_fu_306_e_read;
  wire [7:0]in;
  wire [0:0]\q_0_reg_93_reg[2] ;
  wire reset;

  my_module2_0_BitsToBytes_do_gen grp_BitsToBytes_do_gen_fu_58
       (.E(grp_BitsToBytes_fu_306_e_read),
        .Q(Q),
        .\ap_CS_fsm_reg[3] (E),
        .\ap_CS_fsm_reg[3]_0 (\ap_CS_fsm_reg[3] ),
        .bit2byt_1_dout(bit2byt_1_dout),
        .bit2byt_1_empty_n(bit2byt_1_empty_n),
        .bit2byt_1_full_n(bit2byt_1_full_n),
        .byt2crc_1_full_n(byt2crc_1_full_n),
        .clock(clock),
        .in(in),
        .\q_0_reg_93_reg[2]_0 (\q_0_reg_93_reg[2] ),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "BitsToBytes_do_gen" *) 
module my_module2_0_BitsToBytes_do_gen
   (E,
    \ap_CS_fsm_reg[3] ,
    \ap_CS_fsm_reg[3]_0 ,
    \q_0_reg_93_reg[2]_0 ,
    in,
    Q,
    bit2byt_1_full_n,
    bit2byt_1_empty_n,
    byt2crc_1_full_n,
    reset,
    clock,
    bit2byt_1_dout);
  output [0:0]E;
  output [0:0]\ap_CS_fsm_reg[3] ;
  output \ap_CS_fsm_reg[3]_0 ;
  output [0:0]\q_0_reg_93_reg[2]_0 ;
  output [7:0]in;
  input [0:0]Q;
  input bit2byt_1_full_n;
  input bit2byt_1_empty_n;
  input byt2crc_1_full_n;
  input reset;
  input clock;
  input bit2byt_1_dout;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]\ap_CS_fsm_reg[3] ;
  wire \ap_CS_fsm_reg[3]_0 ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire [2:2]ap_NS_fsm;
  wire bit2byt_1_dout;
  wire bit2byt_1_empty_n;
  wire bit2byt_1_full_n;
  wire byt2crc_1_full_n;
  wire clock;
  wire [7:0]in;
  wire [3:0]q_0_reg_93_reg;
  wire [0:0]\q_0_reg_93_reg[2]_0 ;
  wire [3:0]q_fu_110_p2;
  wire reset;
  wire \v_assign_reg_81[7]_i_1_n_8 ;
  wire \v_assign_reg_81[7]_i_2_n_8 ;

  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \ap_CS_fsm[1]_i_1__1 
       (.I0(q_0_reg_93_reg[2]),
        .I1(q_0_reg_93_reg[3]),
        .I2(q_0_reg_93_reg[0]),
        .I3(q_0_reg_93_reg[1]),
        .I4(ap_CS_fsm_state3),
        .I5(byt2crc_1_full_n),
        .O(\q_0_reg_93_reg[2]_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \ap_CS_fsm[2]_i_1__0 
       (.I0(ap_CS_fsm_state2),
        .I1(\q_0_reg_93_reg[2]_0 ),
        .O(ap_NS_fsm));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(\q_0_reg_93_reg[2]_0 ),
        .Q(ap_CS_fsm_state2),
        .S(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm),
        .Q(ap_CS_fsm_state3),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \mOutPtr[4]_i_2__0 
       (.I0(E),
        .I1(Q),
        .I2(bit2byt_1_full_n),
        .O(\ap_CS_fsm_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \mOutPtr[5]_i_1__0 
       (.I0(E),
        .I1(Q),
        .I2(bit2byt_1_full_n),
        .O(\ap_CS_fsm_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \q_0_reg_93[0]_i_1 
       (.I0(q_0_reg_93_reg[0]),
        .O(q_fu_110_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_0_reg_93[1]_i_1 
       (.I0(q_0_reg_93_reg[0]),
        .I1(q_0_reg_93_reg[1]),
        .O(q_fu_110_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \q_0_reg_93[2]_i_1 
       (.I0(q_0_reg_93_reg[2]),
        .I1(q_0_reg_93_reg[1]),
        .I2(q_0_reg_93_reg[0]),
        .O(q_fu_110_p2[2]));
  LUT6 #(
    .INIT(64'hFFFB000000000000)) 
    \q_0_reg_93[3]_i_1 
       (.I0(q_0_reg_93_reg[2]),
        .I1(q_0_reg_93_reg[3]),
        .I2(q_0_reg_93_reg[0]),
        .I3(q_0_reg_93_reg[1]),
        .I4(ap_CS_fsm_state3),
        .I5(bit2byt_1_empty_n),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \q_0_reg_93[3]_i_2 
       (.I0(q_0_reg_93_reg[3]),
        .I1(q_0_reg_93_reg[0]),
        .I2(q_0_reg_93_reg[1]),
        .I3(q_0_reg_93_reg[2]),
        .O(q_fu_110_p2[3]));
  FDRE \q_0_reg_93_reg[0] 
       (.C(clock),
        .CE(E),
        .D(q_fu_110_p2[0]),
        .Q(q_0_reg_93_reg[0]),
        .R(\v_assign_reg_81[7]_i_1_n_8 ));
  FDRE \q_0_reg_93_reg[1] 
       (.C(clock),
        .CE(E),
        .D(q_fu_110_p2[1]),
        .Q(q_0_reg_93_reg[1]),
        .R(\v_assign_reg_81[7]_i_1_n_8 ));
  FDRE \q_0_reg_93_reg[2] 
       (.C(clock),
        .CE(E),
        .D(q_fu_110_p2[2]),
        .Q(q_0_reg_93_reg[2]),
        .R(\v_assign_reg_81[7]_i_1_n_8 ));
  FDRE \q_0_reg_93_reg[3] 
       (.C(clock),
        .CE(E),
        .D(q_fu_110_p2[3]),
        .Q(q_0_reg_93_reg[3]),
        .R(\v_assign_reg_81[7]_i_1_n_8 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v_assign_reg_81[7]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(E),
        .O(\v_assign_reg_81[7]_i_1_n_8 ));
  LUT2 #(
    .INIT(4'hE)) 
    \v_assign_reg_81[7]_i_2 
       (.I0(ap_CS_fsm_state2),
        .I1(E),
        .O(\v_assign_reg_81[7]_i_2_n_8 ));
  FDRE \v_assign_reg_81_reg[0] 
       (.C(clock),
        .CE(\v_assign_reg_81[7]_i_2_n_8 ),
        .D(bit2byt_1_dout),
        .Q(in[0]),
        .R(\v_assign_reg_81[7]_i_1_n_8 ));
  FDRE \v_assign_reg_81_reg[1] 
       (.C(clock),
        .CE(\v_assign_reg_81[7]_i_2_n_8 ),
        .D(in[0]),
        .Q(in[1]),
        .R(\v_assign_reg_81[7]_i_1_n_8 ));
  FDRE \v_assign_reg_81_reg[2] 
       (.C(clock),
        .CE(\v_assign_reg_81[7]_i_2_n_8 ),
        .D(in[1]),
        .Q(in[2]),
        .R(\v_assign_reg_81[7]_i_1_n_8 ));
  FDRE \v_assign_reg_81_reg[3] 
       (.C(clock),
        .CE(\v_assign_reg_81[7]_i_2_n_8 ),
        .D(in[2]),
        .Q(in[3]),
        .R(\v_assign_reg_81[7]_i_1_n_8 ));
  FDRE \v_assign_reg_81_reg[4] 
       (.C(clock),
        .CE(\v_assign_reg_81[7]_i_2_n_8 ),
        .D(in[3]),
        .Q(in[4]),
        .R(\v_assign_reg_81[7]_i_1_n_8 ));
  FDRE \v_assign_reg_81_reg[5] 
       (.C(clock),
        .CE(\v_assign_reg_81[7]_i_2_n_8 ),
        .D(in[4]),
        .Q(in[5]),
        .R(\v_assign_reg_81[7]_i_1_n_8 ));
  FDRE \v_assign_reg_81_reg[6] 
       (.C(clock),
        .CE(\v_assign_reg_81[7]_i_2_n_8 ),
        .D(in[5]),
        .Q(in[6]),
        .R(\v_assign_reg_81[7]_i_1_n_8 ));
  FDRE \v_assign_reg_81_reg[7] 
       (.C(clock),
        .CE(\v_assign_reg_81[7]_i_2_n_8 ),
        .D(in[6]),
        .Q(in[7]),
        .R(\v_assign_reg_81[7]_i_1_n_8 ));
endmodule

(* ORIG_REF_NAME = "CRCCheck" *) 
module my_module2_0_CRCCheck
   (\icmp_ln41_reg_658_reg[0] ,
    E,
    \i1_0_reg_180_reg[2] ,
    \icmp_ln41_reg_658_reg[0]_0 ,
    internal_empty_n3_out,
    \icmp_ln68_reg_711_reg[0] ,
    ce,
    Q,
    \ap_CS_fsm_reg[7] ,
    clock,
    out,
    byt2crc_1_empty_n,
    reset,
    \mOutPtr_reg[5] ,
    crc2fra_1_full_n,
    D,
    \mOutPtr_reg[5]_0 );
  output \icmp_ln41_reg_658_reg[0] ;
  output [0:0]E;
  output \i1_0_reg_180_reg[2] ;
  output \icmp_ln41_reg_658_reg[0]_0 ;
  output internal_empty_n3_out;
  output [0:0]\icmp_ln68_reg_711_reg[0] ;
  output ce;
  output [7:0]Q;
  output [0:0]\ap_CS_fsm_reg[7] ;
  input clock;
  input [7:0]out;
  input byt2crc_1_empty_n;
  input reset;
  input [0:0]\mOutPtr_reg[5] ;
  input crc2fra_1_full_n;
  input [0:0]D;
  input \mOutPtr_reg[5]_0 ;

  wire \/ram_reg_0_15_0_0_i_1_n_8 ;
  wire [0:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [6:4]address0;
  wire [0:0]\ap_CS_fsm_reg[7] ;
  wire byt2crc_1_empty_n;
  wire ce;
  wire clock;
  wire crc2fra_1_full_n;
  wire \i1_0_reg_180_reg[2] ;
  wire \icmp_ln41_reg_658_reg[0] ;
  wire \icmp_ln41_reg_658_reg[0]_0 ;
  wire [0:0]\icmp_ln68_reg_711_reg[0] ;
  wire internal_empty_n3_out;
  wire [0:0]\mOutPtr_reg[5] ;
  wire \mOutPtr_reg[5]_0 ;
  wire [7:0]out;
  wire reset;

  LUT4 #(
    .INIT(16'h1000)) 
    \/ram_reg_0_15_0_0_i_1 
       (.I0(address0[4]),
        .I1(address0[5]),
        .I2(address0[6]),
        .I3(\icmp_ln41_reg_658_reg[0] ),
        .O(\/ram_reg_0_15_0_0_i_1_n_8 ));
  my_module2_0_CRCCheck_do_gen grp_CRCCheck_do_gen_fu_56
       (.D(D),
        .E(\icmp_ln41_reg_658_reg[0] ),
        .Q(Q),
        .\ap_CS_fsm_reg[7]_0 (\ap_CS_fsm_reg[7] ),
        .byt2crc_1_empty_n(byt2crc_1_empty_n),
        .ce(ce),
        .clock(clock),
        .crc2fra_1_full_n(crc2fra_1_full_n),
        .\i1_0_reg_180_reg[2]_0 (\i1_0_reg_180_reg[2] ),
        .\i3_0_reg_213_reg[6]_0 (address0),
        .\icmp_ln41_reg_658_reg[0]_0 (\icmp_ln41_reg_658_reg[0]_0 ),
        .\icmp_ln68_reg_711_reg[0]_0 (\icmp_ln68_reg_711_reg[0] ),
        .internal_empty_n3_out(internal_empty_n3_out),
        .internal_empty_n_reg(E),
        .\mOutPtr_reg[5] (\mOutPtr_reg[5] ),
        .\mOutPtr_reg[5]_0 (\mOutPtr_reg[5]_0 ),
        .out(out),
        .\q0[7]_i_5 (\/ram_reg_0_15_0_0_i_1_n_8 ),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "CRCCheck_do_gen" *) 
module my_module2_0_CRCCheck_do_gen
   (\i3_0_reg_213_reg[6]_0 ,
    E,
    internal_empty_n_reg,
    \i1_0_reg_180_reg[2]_0 ,
    \icmp_ln41_reg_658_reg[0]_0 ,
    internal_empty_n3_out,
    \icmp_ln68_reg_711_reg[0]_0 ,
    ce,
    Q,
    \ap_CS_fsm_reg[7]_0 ,
    clock,
    out,
    \q0[7]_i_5 ,
    byt2crc_1_empty_n,
    reset,
    \mOutPtr_reg[5] ,
    crc2fra_1_full_n,
    \mOutPtr_reg[5]_0 ,
    D);
  output [2:0]\i3_0_reg_213_reg[6]_0 ;
  output [0:0]E;
  output [0:0]internal_empty_n_reg;
  output \i1_0_reg_180_reg[2]_0 ;
  output \icmp_ln41_reg_658_reg[0]_0 ;
  output internal_empty_n3_out;
  output [0:0]\icmp_ln68_reg_711_reg[0]_0 ;
  output ce;
  output [7:0]Q;
  output [0:0]\ap_CS_fsm_reg[7]_0 ;
  input clock;
  input [7:0]out;
  input \q0[7]_i_5 ;
  input byt2crc_1_empty_n;
  input reset;
  input [0:0]\mOutPtr_reg[5] ;
  input crc2fra_1_full_n;
  input \mOutPtr_reg[5]_0 ;
  input [0:0]D;

  wire [0:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [31:0]R_0_reg_156;
  wire \R_0_reg_156[0]_i_1_n_8 ;
  wire \R_0_reg_156[10]_i_1_n_8 ;
  wire \R_0_reg_156[11]_i_1_n_8 ;
  wire \R_0_reg_156[12]_i_1_n_8 ;
  wire \R_0_reg_156[13]_i_1_n_8 ;
  wire \R_0_reg_156[14]_i_1_n_8 ;
  wire \R_0_reg_156[15]_i_1_n_8 ;
  wire \R_0_reg_156[16]_i_1_n_8 ;
  wire \R_0_reg_156[17]_i_1_n_8 ;
  wire \R_0_reg_156[18]_i_1_n_8 ;
  wire \R_0_reg_156[19]_i_1_n_8 ;
  wire \R_0_reg_156[1]_i_1_n_8 ;
  wire \R_0_reg_156[20]_i_1_n_8 ;
  wire \R_0_reg_156[21]_i_1_n_8 ;
  wire \R_0_reg_156[22]_i_1_n_8 ;
  wire \R_0_reg_156[23]_i_1_n_8 ;
  wire \R_0_reg_156[24]_i_1_n_8 ;
  wire \R_0_reg_156[25]_i_1_n_8 ;
  wire \R_0_reg_156[2]_i_1_n_8 ;
  wire \R_0_reg_156[31]_i_1_n_8 ;
  wire \R_0_reg_156[31]_i_2_n_8 ;
  wire \R_0_reg_156[31]_i_3_n_8 ;
  wire \R_0_reg_156[3]_i_1_n_8 ;
  wire \R_0_reg_156[4]_i_1_n_8 ;
  wire \R_0_reg_156[5]_i_1_n_8 ;
  wire \R_0_reg_156[6]_i_1_n_8 ;
  wire \R_0_reg_156[7]_i_1_n_8 ;
  wire \R_0_reg_156[8]_i_1_n_8 ;
  wire \R_0_reg_156[9]_i_1_n_8 ;
  wire \ap_CS_fsm[3]_i_3__0_n_8 ;
  wire \ap_CS_fsm[3]_i_4__0_n_8 ;
  wire \ap_CS_fsm[3]_i_5__0_n_8 ;
  wire \ap_CS_fsm[3]_i_6__0_n_8 ;
  wire \ap_CS_fsm[3]_i_7_n_8 ;
  wire \ap_CS_fsm[7]_i_2_n_8 ;
  wire \ap_CS_fsm[7]_i_4_n_8 ;
  wire \ap_CS_fsm[7]_i_5_n_8 ;
  wire ap_CS_fsm_pp0_stage0;
  wire ap_CS_fsm_pp1_stage0;
  wire [0:0]\ap_CS_fsm_reg[7]_0 ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state6;
  wire ap_CS_fsm_state7;
  wire ap_CS_fsm_state8;
  wire [7:2]ap_NS_fsm;
  wire ap_NS_fsm115_out;
  wire ap_NS_fsm117_out;
  wire \ap_NS_fsm3_inferred__0/i__carry__0_n_10 ;
  wire \ap_NS_fsm3_inferred__0/i__carry__0_n_11 ;
  wire \ap_NS_fsm3_inferred__0/i__carry__0_n_8 ;
  wire \ap_NS_fsm3_inferred__0/i__carry__0_n_9 ;
  wire \ap_NS_fsm3_inferred__0/i__carry__1_n_10 ;
  wire \ap_NS_fsm3_inferred__0/i__carry__1_n_11 ;
  wire \ap_NS_fsm3_inferred__0/i__carry_n_10 ;
  wire \ap_NS_fsm3_inferred__0/i__carry_n_11 ;
  wire \ap_NS_fsm3_inferred__0/i__carry_n_8 ;
  wire \ap_NS_fsm3_inferred__0/i__carry_n_9 ;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_i_1_n_8;
  wire ap_enable_reg_pp0_iter1_i_1_n_8;
  wire ap_enable_reg_pp0_iter1_reg_n_8;
  wire ap_enable_reg_pp0_iter2_i_1_n_8;
  wire ap_enable_reg_pp0_iter2_reg_n_8;
  wire ap_enable_reg_pp1_iter0;
  wire ap_enable_reg_pp1_iter0_i_1_n_8;
  wire ap_enable_reg_pp1_iter1_i_1_n_8;
  wire ap_enable_reg_pp1_iter1_reg_n_8;
  wire byt2crc_1_empty_n;
  wire ce;
  wire clock;
  wire crc2fra_1_full_n;
  wire [31:0]crc_0_reg_191;
  wire [7:0]crc_fu_603_p3;
  wire [7:0]crc_t_3_1_fu_106;
  wire crc_t_3_1_fu_1060;
  wire [7:0]crc_t_3_2_fu_110;
  wire crc_t_3_2_fu_1100;
  wire [7:0]crc_t_3_3_fu_114;
  wire crc_t_3_3_fu_1140;
  wire [7:0]crc_t_3_fu_102;
  wire crc_t_3_fu_1020;
  wire [0:0]din4;
  wire \i1_0_reg_180[0]_i_1_n_8 ;
  wire \i1_0_reg_180[1]_i_1_n_8 ;
  wire \i1_0_reg_180[2]_i_1_n_8 ;
  wire \i1_0_reg_180_reg[2]_0 ;
  wire \i1_0_reg_180_reg_n_8_[0] ;
  wire \i1_0_reg_180_reg_n_8_[1] ;
  wire \i1_0_reg_180_reg_n_8_[2] ;
  wire \i2_0_reg_202[2]_i_2_n_8 ;
  wire \i2_0_reg_202_reg_n_8_[0] ;
  wire \i2_0_reg_202_reg_n_8_[1] ;
  wire \i2_0_reg_202_reg_n_8_[2] ;
  wire i3_0_reg_2130;
  wire \i3_0_reg_213[6]_i_4_n_8 ;
  wire [6:0]i3_0_reg_213_reg;
  wire [2:0]\i3_0_reg_213_reg[6]_0 ;
  wire i_0_reg_168;
  wire \i_0_reg_168_reg_n_8_[0] ;
  wire \i_0_reg_168_reg_n_8_[1] ;
  wire \i_0_reg_168_reg_n_8_[2] ;
  wire \i_0_reg_168_reg_n_8_[3] ;
  wire \i_0_reg_168_reg_n_8_[4] ;
  wire \i_0_reg_168_reg_n_8_[5] ;
  wire \i_0_reg_168_reg_n_8_[6] ;
  wire [6:0]i_5_fu_230_p2;
  wire i_5_reg_6620;
  wire \i_5_reg_662[2]_i_2_n_8 ;
  wire \i_5_reg_662[4]_i_2_n_8 ;
  wire \i_5_reg_662[6]_i_3_n_8 ;
  wire \i_5_reg_662[6]_i_4_n_8 ;
  wire [6:0]i_5_reg_662_reg;
  wire [2:1]i_6_fu_557_p2;
  wire [6:0]i_7_fu_623_p2;
  wire i__carry__0_i_1_n_8;
  wire i__carry__0_i_2_n_8;
  wire i__carry__0_i_3_n_8;
  wire i__carry__0_i_4_n_8;
  wire i__carry__1_i_1_n_8;
  wire i__carry__1_i_2_n_8;
  wire i__carry__1_i_3_n_8;
  wire i__carry_i_1_n_8;
  wire i__carry_i_2_n_8;
  wire i__carry_i_3_n_8;
  wire i__carry_i_4_n_8;
  wire icmp_ln41_fu_224_p2;
  wire icmp_ln41_reg_6580;
  wire \icmp_ln41_reg_658[0]_i_1_n_8 ;
  wire icmp_ln41_reg_658_pp0_iter1_reg;
  wire \icmp_ln41_reg_658_pp0_iter1_reg[0]_i_1_n_8 ;
  wire \icmp_ln41_reg_658_reg[0]_0 ;
  wire \icmp_ln41_reg_658_reg_n_8_[0] ;
  wire icmp_ln63_fu_611_p2;
  wire icmp_ln68_fu_617_p2;
  wire icmp_ln68_reg_711;
  wire \icmp_ln68_reg_711[0]_i_1_n_8 ;
  wire [0:0]\icmp_ln68_reg_711_reg[0]_0 ;
  wire internal_empty_n3_out;
  wire [0:0]internal_empty_n_reg;
  wire [30:0]lshr_ln49_3_reg_672;
  wire lshr_ln49_3_reg_6720;
  wire \lshr_ln49_3_reg_672[0]_i_1_n_8 ;
  wire \lshr_ln49_3_reg_672[0]_i_2_n_8 ;
  wire \lshr_ln49_3_reg_672[11]_i_1_n_8 ;
  wire \lshr_ln49_3_reg_672[12]_i_1_n_8 ;
  wire \lshr_ln49_3_reg_672[12]_i_2_n_8 ;
  wire \lshr_ln49_3_reg_672[14]_i_2_n_8 ;
  wire \lshr_ln49_3_reg_672[15]_i_2_n_8 ;
  wire \lshr_ln49_3_reg_672[16]_i_2_n_8 ;
  wire \lshr_ln49_3_reg_672[17]_i_2_n_8 ;
  wire \lshr_ln49_3_reg_672[19]_i_2_n_8 ;
  wire \lshr_ln49_3_reg_672[1]_i_2_n_8 ;
  wire \lshr_ln49_3_reg_672[20]_i_1_n_8 ;
  wire \lshr_ln49_3_reg_672[20]_i_2_n_8 ;
  wire \lshr_ln49_3_reg_672[21]_i_2_n_8 ;
  wire \lshr_ln49_3_reg_672[22]_i_2_n_8 ;
  wire \lshr_ln49_3_reg_672[24]_i_1_n_8 ;
  wire \lshr_ln49_3_reg_672[29]_i_2_n_8 ;
  wire \lshr_ln49_3_reg_672[2]_i_1_n_8 ;
  wire \lshr_ln49_3_reg_672[2]_i_2_n_8 ;
  wire \lshr_ln49_3_reg_672[30]_i_1_n_8 ;
  wire \lshr_ln49_3_reg_672[30]_i_2_n_8 ;
  wire \lshr_ln49_3_reg_672[30]_i_3_n_8 ;
  wire \lshr_ln49_3_reg_672[3]_i_1_n_8 ;
  wire \lshr_ln49_3_reg_672[4]_i_2_n_8 ;
  wire \lshr_ln49_3_reg_672[5]_i_1_n_8 ;
  wire \lshr_ln49_3_reg_672[5]_i_2_n_8 ;
  wire \lshr_ln49_3_reg_672[6]_i_1_n_8 ;
  wire \lshr_ln49_3_reg_672[7]_i_2_n_8 ;
  wire \lshr_ln49_3_reg_672[9]_i_1_n_8 ;
  wire [0:0]\mOutPtr_reg[5] ;
  wire \mOutPtr_reg[5]_0 ;
  wire [7:0]out;
  wire [29:1]p_0_in;
  wire \q0[7]_i_5 ;
  wire reset;
  wire select_ln49_2_reg_667;
  wire \select_ln49_2_reg_667[0]_i_2_n_8 ;
  wire \select_ln49_2_reg_667[0]_i_3_n_8 ;
  wire \select_ln49_2_reg_667[0]_i_4_n_8 ;
  wire \select_ln49_2_reg_667[0]_i_5_n_8 ;
  wire [3:0]\NLW_ap_NS_fsm3_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_ap_NS_fsm3_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_ap_NS_fsm3_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_ap_NS_fsm3_inferred__0/i__carry__1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \R_0_reg_156[0]_i_1 
       (.I0(lshr_ln49_3_reg_672[4]),
        .I1(select_ln49_2_reg_667),
        .I2(lshr_ln49_3_reg_672[0]),
        .O(\R_0_reg_156[0]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \R_0_reg_156[10]_i_1 
       (.I0(lshr_ln49_3_reg_672[1]),
        .I1(lshr_ln49_3_reg_672[0]),
        .I2(lshr_ln49_3_reg_672[14]),
        .I3(lshr_ln49_3_reg_672[2]),
        .O(\R_0_reg_156[10]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \R_0_reg_156[11]_i_1 
       (.I0(lshr_ln49_3_reg_672[15]),
        .I1(lshr_ln49_3_reg_672[2]),
        .I2(lshr_ln49_3_reg_672[1]),
        .I3(lshr_ln49_3_reg_672[3]),
        .I4(select_ln49_2_reg_667),
        .O(\R_0_reg_156[11]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \R_0_reg_156[12]_i_1 
       (.I0(lshr_ln49_3_reg_672[16]),
        .I1(lshr_ln49_3_reg_672[3]),
        .I2(select_ln49_2_reg_667),
        .I3(lshr_ln49_3_reg_672[2]),
        .O(\R_0_reg_156[12]_i_1_n_8 ));
  LUT2 #(
    .INIT(4'h6)) 
    \R_0_reg_156[13]_i_1 
       (.I0(lshr_ln49_3_reg_672[3]),
        .I1(lshr_ln49_3_reg_672[17]),
        .O(\R_0_reg_156[13]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \R_0_reg_156[14]_i_1 
       (.I0(lshr_ln49_3_reg_672[18]),
        .I1(select_ln49_2_reg_667),
        .I2(lshr_ln49_3_reg_672[0]),
        .O(\R_0_reg_156[14]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \R_0_reg_156[15]_i_1 
       (.I0(lshr_ln49_3_reg_672[19]),
        .I1(lshr_ln49_3_reg_672[1]),
        .I2(lshr_ln49_3_reg_672[0]),
        .O(\R_0_reg_156[15]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \R_0_reg_156[16]_i_1 
       (.I0(lshr_ln49_3_reg_672[2]),
        .I1(lshr_ln49_3_reg_672[1]),
        .I2(select_ln49_2_reg_667),
        .I3(lshr_ln49_3_reg_672[20]),
        .O(\R_0_reg_156[16]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \R_0_reg_156[17]_i_1 
       (.I0(lshr_ln49_3_reg_672[21]),
        .I1(lshr_ln49_3_reg_672[0]),
        .I2(lshr_ln49_3_reg_672[2]),
        .I3(lshr_ln49_3_reg_672[3]),
        .O(\R_0_reg_156[17]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \R_0_reg_156[18]_i_1 
       (.I0(lshr_ln49_3_reg_672[0]),
        .I1(lshr_ln49_3_reg_672[1]),
        .I2(lshr_ln49_3_reg_672[22]),
        .I3(lshr_ln49_3_reg_672[3]),
        .O(\R_0_reg_156[18]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \R_0_reg_156[19]_i_1 
       (.I0(lshr_ln49_3_reg_672[0]),
        .I1(select_ln49_2_reg_667),
        .I2(lshr_ln49_3_reg_672[23]),
        .I3(lshr_ln49_3_reg_672[1]),
        .I4(lshr_ln49_3_reg_672[2]),
        .O(\R_0_reg_156[19]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \R_0_reg_156[1]_i_1 
       (.I0(lshr_ln49_3_reg_672[5]),
        .I1(lshr_ln49_3_reg_672[1]),
        .I2(lshr_ln49_3_reg_672[0]),
        .I3(select_ln49_2_reg_667),
        .O(\R_0_reg_156[1]_i_1_n_8 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \R_0_reg_156[20]_i_1 
       (.I0(lshr_ln49_3_reg_672[24]),
        .I1(lshr_ln49_3_reg_672[1]),
        .I2(lshr_ln49_3_reg_672[0]),
        .I3(lshr_ln49_3_reg_672[2]),
        .I4(select_ln49_2_reg_667),
        .I5(lshr_ln49_3_reg_672[3]),
        .O(\R_0_reg_156[20]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \R_0_reg_156[21]_i_1 
       (.I0(lshr_ln49_3_reg_672[3]),
        .I1(lshr_ln49_3_reg_672[25]),
        .I2(lshr_ln49_3_reg_672[1]),
        .I3(lshr_ln49_3_reg_672[2]),
        .O(\R_0_reg_156[21]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \R_0_reg_156[22]_i_1 
       (.I0(lshr_ln49_3_reg_672[0]),
        .I1(lshr_ln49_3_reg_672[26]),
        .I2(lshr_ln49_3_reg_672[2]),
        .I3(select_ln49_2_reg_667),
        .I4(lshr_ln49_3_reg_672[3]),
        .O(\R_0_reg_156[22]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \R_0_reg_156[23]_i_1 
       (.I0(lshr_ln49_3_reg_672[1]),
        .I1(lshr_ln49_3_reg_672[27]),
        .I2(lshr_ln49_3_reg_672[3]),
        .I3(select_ln49_2_reg_667),
        .O(\R_0_reg_156[23]_i_1_n_8 ));
  LUT2 #(
    .INIT(4'h6)) 
    \R_0_reg_156[24]_i_1 
       (.I0(lshr_ln49_3_reg_672[2]),
        .I1(lshr_ln49_3_reg_672[28]),
        .O(\R_0_reg_156[24]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \R_0_reg_156[25]_i_1 
       (.I0(lshr_ln49_3_reg_672[3]),
        .I1(select_ln49_2_reg_667),
        .I2(lshr_ln49_3_reg_672[29]),
        .O(\R_0_reg_156[25]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \R_0_reg_156[2]_i_1 
       (.I0(lshr_ln49_3_reg_672[1]),
        .I1(lshr_ln49_3_reg_672[2]),
        .I2(lshr_ln49_3_reg_672[0]),
        .I3(select_ln49_2_reg_667),
        .I4(lshr_ln49_3_reg_672[6]),
        .O(\R_0_reg_156[2]_i_1_n_8 ));
  LUT6 #(
    .INIT(64'h8A8A8A8A8AAA8A8A)) 
    \R_0_reg_156[31]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(icmp_ln41_reg_658_pp0_iter1_reg),
        .I2(ap_enable_reg_pp0_iter2_reg_n_8),
        .I3(byt2crc_1_empty_n),
        .I4(ap_enable_reg_pp0_iter1_reg_n_8),
        .I5(\icmp_ln41_reg_658_reg_n_8_[0] ),
        .O(\R_0_reg_156[31]_i_1_n_8 ));
  LUT6 #(
    .INIT(64'hBABABABABAAABABA)) 
    \R_0_reg_156[31]_i_2 
       (.I0(ap_CS_fsm_state2),
        .I1(icmp_ln41_reg_658_pp0_iter1_reg),
        .I2(ap_enable_reg_pp0_iter2_reg_n_8),
        .I3(byt2crc_1_empty_n),
        .I4(ap_enable_reg_pp0_iter1_reg_n_8),
        .I5(\icmp_ln41_reg_658_reg_n_8_[0] ),
        .O(\R_0_reg_156[31]_i_2_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \R_0_reg_156[31]_i_3 
       (.I0(select_ln49_2_reg_667),
        .I1(lshr_ln49_3_reg_672[3]),
        .O(\R_0_reg_156[31]_i_3_n_8 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \R_0_reg_156[3]_i_1 
       (.I0(lshr_ln49_3_reg_672[2]),
        .I1(select_ln49_2_reg_667),
        .I2(lshr_ln49_3_reg_672[3]),
        .I3(lshr_ln49_3_reg_672[7]),
        .I4(lshr_ln49_3_reg_672[1]),
        .I5(lshr_ln49_3_reg_672[0]),
        .O(\R_0_reg_156[3]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \R_0_reg_156[4]_i_1 
       (.I0(lshr_ln49_3_reg_672[3]),
        .I1(lshr_ln49_3_reg_672[8]),
        .I2(lshr_ln49_3_reg_672[1]),
        .I3(lshr_ln49_3_reg_672[2]),
        .O(\R_0_reg_156[4]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \R_0_reg_156[5]_i_1 
       (.I0(lshr_ln49_3_reg_672[9]),
        .I1(lshr_ln49_3_reg_672[0]),
        .I2(lshr_ln49_3_reg_672[2]),
        .I3(lshr_ln49_3_reg_672[3]),
        .O(\R_0_reg_156[5]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \R_0_reg_156[6]_i_1 
       (.I0(lshr_ln49_3_reg_672[10]),
        .I1(lshr_ln49_3_reg_672[1]),
        .I2(lshr_ln49_3_reg_672[0]),
        .I3(lshr_ln49_3_reg_672[3]),
        .I4(select_ln49_2_reg_667),
        .O(\R_0_reg_156[6]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \R_0_reg_156[7]_i_1 
       (.I0(lshr_ln49_3_reg_672[2]),
        .I1(lshr_ln49_3_reg_672[1]),
        .I2(select_ln49_2_reg_667),
        .I3(lshr_ln49_3_reg_672[11]),
        .O(\R_0_reg_156[7]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \R_0_reg_156[8]_i_1 
       (.I0(lshr_ln49_3_reg_672[12]),
        .I1(lshr_ln49_3_reg_672[0]),
        .I2(lshr_ln49_3_reg_672[2]),
        .I3(lshr_ln49_3_reg_672[3]),
        .O(\R_0_reg_156[8]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \R_0_reg_156[9]_i_1 
       (.I0(lshr_ln49_3_reg_672[0]),
        .I1(lshr_ln49_3_reg_672[1]),
        .I2(lshr_ln49_3_reg_672[13]),
        .I3(lshr_ln49_3_reg_672[3]),
        .O(\R_0_reg_156[9]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[0] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(\R_0_reg_156[0]_i_1_n_8 ),
        .Q(R_0_reg_156[0]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[10] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(\R_0_reg_156[10]_i_1_n_8 ),
        .Q(R_0_reg_156[10]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[11] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(\R_0_reg_156[11]_i_1_n_8 ),
        .Q(R_0_reg_156[11]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[12] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(\R_0_reg_156[12]_i_1_n_8 ),
        .Q(R_0_reg_156[12]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[13] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(\R_0_reg_156[13]_i_1_n_8 ),
        .Q(R_0_reg_156[13]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[14] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(\R_0_reg_156[14]_i_1_n_8 ),
        .Q(R_0_reg_156[14]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[15] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(\R_0_reg_156[15]_i_1_n_8 ),
        .Q(R_0_reg_156[15]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[16] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(\R_0_reg_156[16]_i_1_n_8 ),
        .Q(R_0_reg_156[16]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[17] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(\R_0_reg_156[17]_i_1_n_8 ),
        .Q(R_0_reg_156[17]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[18] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(\R_0_reg_156[18]_i_1_n_8 ),
        .Q(R_0_reg_156[18]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[19] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(\R_0_reg_156[19]_i_1_n_8 ),
        .Q(R_0_reg_156[19]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[1] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(\R_0_reg_156[1]_i_1_n_8 ),
        .Q(R_0_reg_156[1]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[20] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(\R_0_reg_156[20]_i_1_n_8 ),
        .Q(R_0_reg_156[20]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[21] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(\R_0_reg_156[21]_i_1_n_8 ),
        .Q(R_0_reg_156[21]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[22] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(\R_0_reg_156[22]_i_1_n_8 ),
        .Q(R_0_reg_156[22]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[23] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(\R_0_reg_156[23]_i_1_n_8 ),
        .Q(R_0_reg_156[23]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[24] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(\R_0_reg_156[24]_i_1_n_8 ),
        .Q(R_0_reg_156[24]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[25] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(\R_0_reg_156[25]_i_1_n_8 ),
        .Q(R_0_reg_156[25]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[26] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(lshr_ln49_3_reg_672[30]),
        .Q(R_0_reg_156[26]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[27] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(select_ln49_2_reg_667),
        .Q(R_0_reg_156[27]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[28] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(lshr_ln49_3_reg_672[0]),
        .Q(R_0_reg_156[28]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[29] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(lshr_ln49_3_reg_672[1]),
        .Q(R_0_reg_156[29]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[2] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(\R_0_reg_156[2]_i_1_n_8 ),
        .Q(R_0_reg_156[2]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[30] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(lshr_ln49_3_reg_672[2]),
        .Q(R_0_reg_156[30]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[31] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(\R_0_reg_156[31]_i_3_n_8 ),
        .Q(R_0_reg_156[31]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[3] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(\R_0_reg_156[3]_i_1_n_8 ),
        .Q(R_0_reg_156[3]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[4] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(\R_0_reg_156[4]_i_1_n_8 ),
        .Q(R_0_reg_156[4]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[5] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(\R_0_reg_156[5]_i_1_n_8 ),
        .Q(R_0_reg_156[5]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[6] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(\R_0_reg_156[6]_i_1_n_8 ),
        .Q(R_0_reg_156[6]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[7] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(\R_0_reg_156[7]_i_1_n_8 ),
        .Q(R_0_reg_156[7]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[8] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(\R_0_reg_156[8]_i_1_n_8 ),
        .Q(R_0_reg_156[8]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  FDRE \R_0_reg_156_reg[9] 
       (.C(clock),
        .CE(\R_0_reg_156[31]_i_2_n_8 ),
        .D(\R_0_reg_156[9]_i_1_n_8 ),
        .Q(R_0_reg_156[9]),
        .R(\R_0_reg_156[31]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \SRL_SIG_reg[31][7]_srl32_i_1 
       (.I0(crc2fra_1_full_n),
        .I1(ap_CS_fsm_pp1_stage0),
        .I2(ap_enable_reg_pp1_iter1_reg_n_8),
        .I3(icmp_ln68_reg_711),
        .O(ce));
  LUT6 #(
    .INIT(64'hEEEFEFEFAAAAAAAA)) 
    \ap_CS_fsm[2]_i_1__1 
       (.I0(ap_CS_fsm_state2),
        .I1(ap_enable_reg_pp0_iter1_reg_n_8),
        .I2(ap_enable_reg_pp0_iter2_reg_n_8),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(icmp_ln41_fu_224_p2),
        .I5(ap_CS_fsm_pp0_stage0),
        .O(ap_NS_fsm[2]));
  LUT5 #(
    .INIT(32'h0000AA80)) 
    \ap_CS_fsm[3]_i_1__2 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(icmp_ln41_fu_224_p2),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(ap_enable_reg_pp0_iter2_reg_n_8),
        .I4(ap_enable_reg_pp0_iter1_reg_n_8),
        .O(ap_NS_fsm[3]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \ap_CS_fsm[3]_i_2__0 
       (.I0(\ap_CS_fsm[3]_i_3__0_n_8 ),
        .I1(\ap_CS_fsm[3]_i_4__0_n_8 ),
        .I2(\ap_CS_fsm[3]_i_5__0_n_8 ),
        .I3(\i_5_reg_662[2]_i_2_n_8 ),
        .I4(\ap_CS_fsm[3]_i_6__0_n_8 ),
        .O(icmp_ln41_fu_224_p2));
  LUT6 #(
    .INIT(64'h3000505030000000)) 
    \ap_CS_fsm[3]_i_3__0 
       (.I0(\i_0_reg_168_reg_n_8_[4] ),
        .I1(i_5_reg_662_reg[4]),
        .I2(\ap_CS_fsm[3]_i_7_n_8 ),
        .I3(i_5_reg_662_reg[6]),
        .I4(\i_5_reg_662[6]_i_4_n_8 ),
        .I5(\i_0_reg_168_reg_n_8_[6] ),
        .O(\ap_CS_fsm[3]_i_3__0_n_8 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \ap_CS_fsm[3]_i_4__0 
       (.I0(i_5_reg_662_reg[5]),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_enable_reg_pp0_iter1_reg_n_8),
        .I3(\icmp_ln41_reg_658_reg_n_8_[0] ),
        .I4(\i_0_reg_168_reg_n_8_[5] ),
        .O(\ap_CS_fsm[3]_i_4__0_n_8 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \ap_CS_fsm[3]_i_5__0 
       (.I0(i_5_reg_662_reg[3]),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_enable_reg_pp0_iter1_reg_n_8),
        .I3(\icmp_ln41_reg_658_reg_n_8_[0] ),
        .I4(\i_0_reg_168_reg_n_8_[3] ),
        .O(\ap_CS_fsm[3]_i_5__0_n_8 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \ap_CS_fsm[3]_i_6__0 
       (.I0(i_5_reg_662_reg[1]),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_enable_reg_pp0_iter1_reg_n_8),
        .I3(\icmp_ln41_reg_658_reg_n_8_[0] ),
        .I4(\i_0_reg_168_reg_n_8_[1] ),
        .O(\ap_CS_fsm[3]_i_6__0_n_8 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \ap_CS_fsm[3]_i_7 
       (.I0(i_5_reg_662_reg[2]),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_enable_reg_pp0_iter1_reg_n_8),
        .I3(\icmp_ln41_reg_658_reg_n_8_[0] ),
        .I4(\i_0_reg_168_reg_n_8_[2] ),
        .O(\ap_CS_fsm[3]_i_7_n_8 ));
  LUT5 #(
    .INIT(32'hFFFBAAAA)) 
    \ap_CS_fsm[4]_i_1__1 
       (.I0(ap_CS_fsm_state6),
        .I1(\i1_0_reg_180_reg_n_8_[2] ),
        .I2(\i1_0_reg_180_reg_n_8_[1] ),
        .I3(\i1_0_reg_180_reg_n_8_[0] ),
        .I4(ap_CS_fsm_state7),
        .O(ap_NS_fsm[4]));
  LUT5 #(
    .INIT(32'hFFFF0200)) 
    \ap_CS_fsm[5]_i_1 
       (.I0(\i1_0_reg_180_reg_n_8_[2] ),
        .I1(\i1_0_reg_180_reg_n_8_[1] ),
        .I2(\i1_0_reg_180_reg_n_8_[0] ),
        .I3(ap_CS_fsm_state7),
        .I4(\i2_0_reg_202[2]_i_2_n_8 ),
        .O(ap_NS_fsm[5]));
  LUT5 #(
    .INIT(32'hFBFFAAAA)) 
    \ap_CS_fsm[6]_i_1 
       (.I0(ap_NS_fsm115_out),
        .I1(ap_enable_reg_pp1_iter0),
        .I2(\ap_CS_fsm[7]_i_4_n_8 ),
        .I3(icmp_ln68_fu_617_p2),
        .I4(ap_CS_fsm_pp1_stage0),
        .O(ap_NS_fsm[6]));
  LUT6 #(
    .INIT(64'h11111111F1111111)) 
    \ap_CS_fsm[7]_i_1 
       (.I0(\ap_CS_fsm[7]_i_2_n_8 ),
        .I1(icmp_ln63_fu_611_p2),
        .I2(icmp_ln68_fu_617_p2),
        .I3(ap_enable_reg_pp1_iter0),
        .I4(ap_CS_fsm_pp1_stage0),
        .I5(\ap_CS_fsm[7]_i_4_n_8 ),
        .O(ap_NS_fsm[7]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \ap_CS_fsm[7]_i_2 
       (.I0(\i2_0_reg_202_reg_n_8_[0] ),
        .I1(\i2_0_reg_202_reg_n_8_[2] ),
        .I2(\i2_0_reg_202_reg_n_8_[1] ),
        .I3(ap_CS_fsm_state8),
        .O(\ap_CS_fsm[7]_i_2_n_8 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \ap_CS_fsm[7]_i_3 
       (.I0(i3_0_reg_213_reg[3]),
        .I1(i3_0_reg_213_reg[4]),
        .I2(i3_0_reg_213_reg[2]),
        .I3(\ap_CS_fsm[7]_i_5_n_8 ),
        .O(icmp_ln68_fu_617_p2));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \ap_CS_fsm[7]_i_4 
       (.I0(crc2fra_1_full_n),
        .I1(ap_enable_reg_pp1_iter1_reg_n_8),
        .I2(icmp_ln68_reg_711),
        .O(\ap_CS_fsm[7]_i_4_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \ap_CS_fsm[7]_i_5 
       (.I0(i3_0_reg_213_reg[1]),
        .I1(i3_0_reg_213_reg[0]),
        .I2(i3_0_reg_213_reg[6]),
        .I3(i3_0_reg_213_reg[5]),
        .O(\ap_CS_fsm[7]_i_5_n_8 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(D),
        .Q(ap_CS_fsm_state2),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_pp0_stage0),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state6),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_state7),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(ap_CS_fsm_state8),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[6]),
        .Q(ap_CS_fsm_pp1_stage0),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[7]),
        .Q(\ap_CS_fsm_reg[7]_0 ),
        .R(reset));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \ap_NS_fsm3_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\ap_NS_fsm3_inferred__0/i__carry_n_8 ,\ap_NS_fsm3_inferred__0/i__carry_n_9 ,\ap_NS_fsm3_inferred__0/i__carry_n_10 ,\ap_NS_fsm3_inferred__0/i__carry_n_11 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ap_NS_fsm3_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_8,i__carry_i_2_n_8,i__carry_i_3_n_8,i__carry_i_4_n_8}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \ap_NS_fsm3_inferred__0/i__carry__0 
       (.CI(\ap_NS_fsm3_inferred__0/i__carry_n_8 ),
        .CO({\ap_NS_fsm3_inferred__0/i__carry__0_n_8 ,\ap_NS_fsm3_inferred__0/i__carry__0_n_9 ,\ap_NS_fsm3_inferred__0/i__carry__0_n_10 ,\ap_NS_fsm3_inferred__0/i__carry__0_n_11 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ap_NS_fsm3_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1_n_8,i__carry__0_i_2_n_8,i__carry__0_i_3_n_8,i__carry__0_i_4_n_8}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \ap_NS_fsm3_inferred__0/i__carry__1 
       (.CI(\ap_NS_fsm3_inferred__0/i__carry__0_n_8 ),
        .CO({\NLW_ap_NS_fsm3_inferred__0/i__carry__1_CO_UNCONNECTED [3],icmp_ln63_fu_611_p2,\ap_NS_fsm3_inferred__0/i__carry__1_n_10 ,\ap_NS_fsm3_inferred__0/i__carry__1_n_11 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ap_NS_fsm3_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__1_i_1_n_8,i__carry__1_i_2_n_8,i__carry__1_i_3_n_8}));
  LUT5 #(
    .INIT(32'h00007770)) 
    ap_enable_reg_pp0_iter0_i_1
       (.I0(icmp_ln41_fu_224_p2),
        .I1(icmp_ln41_reg_6580),
        .I2(ap_CS_fsm_state2),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(reset),
        .O(ap_enable_reg_pp0_iter0_i_1_n_8));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(clock),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1_n_8),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000055750030)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(icmp_ln41_fu_224_p2),
        .I1(byt2crc_1_empty_n),
        .I2(ap_enable_reg_pp0_iter1_reg_n_8),
        .I3(\icmp_ln41_reg_658_reg_n_8_[0] ),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(reset),
        .O(ap_enable_reg_pp0_iter1_i_1_n_8));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(clock),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_8),
        .Q(ap_enable_reg_pp0_iter1_reg_n_8),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FF00F400)) 
    ap_enable_reg_pp0_iter2_i_1
       (.I0(ap_CS_fsm_state2),
        .I1(ap_enable_reg_pp0_iter2_reg_n_8),
        .I2(byt2crc_1_empty_n),
        .I3(ap_enable_reg_pp0_iter1_reg_n_8),
        .I4(\icmp_ln41_reg_658_reg_n_8_[0] ),
        .I5(reset),
        .O(ap_enable_reg_pp0_iter2_i_1_n_8));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(clock),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter2_i_1_n_8),
        .Q(ap_enable_reg_pp0_iter2_reg_n_8),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000F7F7F700)) 
    ap_enable_reg_pp1_iter0_i_1
       (.I0(icmp_ln68_fu_617_p2),
        .I1(ap_CS_fsm_pp1_stage0),
        .I2(\ap_CS_fsm[7]_i_4_n_8 ),
        .I3(ap_NS_fsm115_out),
        .I4(ap_enable_reg_pp1_iter0),
        .I5(reset),
        .O(ap_enable_reg_pp1_iter0_i_1_n_8));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp1_iter0_reg
       (.C(clock),
        .CE(1'b1),
        .D(ap_enable_reg_pp1_iter0_i_1_n_8),
        .Q(ap_enable_reg_pp1_iter0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1100000011300030)) 
    ap_enable_reg_pp1_iter1_i_1
       (.I0(ap_NS_fsm115_out),
        .I1(reset),
        .I2(ap_enable_reg_pp1_iter0),
        .I3(\ap_CS_fsm[7]_i_4_n_8 ),
        .I4(ap_enable_reg_pp1_iter1_reg_n_8),
        .I5(icmp_ln68_fu_617_p2),
        .O(ap_enable_reg_pp1_iter1_i_1_n_8));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp1_iter1_reg
       (.C(clock),
        .CE(1'b1),
        .D(ap_enable_reg_pp1_iter1_i_1_n_8),
        .Q(ap_enable_reg_pp1_iter1_reg_n_8),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \crc_0_reg_191[0]_i_1 
       (.I0(crc_t_3_fu_102[0]),
        .I1(crc_t_3_1_fu_106[0]),
        .I2(\i2_0_reg_202_reg_n_8_[1] ),
        .I3(crc_t_3_2_fu_110[0]),
        .I4(\i2_0_reg_202_reg_n_8_[0] ),
        .I5(crc_t_3_3_fu_114[0]),
        .O(crc_fu_603_p3[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \crc_0_reg_191[1]_i_1 
       (.I0(crc_t_3_fu_102[1]),
        .I1(crc_t_3_1_fu_106[1]),
        .I2(\i2_0_reg_202_reg_n_8_[1] ),
        .I3(crc_t_3_2_fu_110[1]),
        .I4(\i2_0_reg_202_reg_n_8_[0] ),
        .I5(crc_t_3_3_fu_114[1]),
        .O(crc_fu_603_p3[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \crc_0_reg_191[2]_i_1 
       (.I0(crc_t_3_fu_102[2]),
        .I1(crc_t_3_1_fu_106[2]),
        .I2(\i2_0_reg_202_reg_n_8_[1] ),
        .I3(crc_t_3_2_fu_110[2]),
        .I4(\i2_0_reg_202_reg_n_8_[0] ),
        .I5(crc_t_3_3_fu_114[2]),
        .O(crc_fu_603_p3[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \crc_0_reg_191[3]_i_1 
       (.I0(crc_t_3_fu_102[3]),
        .I1(crc_t_3_1_fu_106[3]),
        .I2(\i2_0_reg_202_reg_n_8_[1] ),
        .I3(crc_t_3_2_fu_110[3]),
        .I4(\i2_0_reg_202_reg_n_8_[0] ),
        .I5(crc_t_3_3_fu_114[3]),
        .O(crc_fu_603_p3[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \crc_0_reg_191[4]_i_1 
       (.I0(crc_t_3_fu_102[4]),
        .I1(crc_t_3_1_fu_106[4]),
        .I2(\i2_0_reg_202_reg_n_8_[1] ),
        .I3(crc_t_3_2_fu_110[4]),
        .I4(\i2_0_reg_202_reg_n_8_[0] ),
        .I5(crc_t_3_3_fu_114[4]),
        .O(crc_fu_603_p3[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \crc_0_reg_191[5]_i_1 
       (.I0(crc_t_3_fu_102[5]),
        .I1(crc_t_3_1_fu_106[5]),
        .I2(\i2_0_reg_202_reg_n_8_[1] ),
        .I3(crc_t_3_2_fu_110[5]),
        .I4(\i2_0_reg_202_reg_n_8_[0] ),
        .I5(crc_t_3_3_fu_114[5]),
        .O(crc_fu_603_p3[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \crc_0_reg_191[6]_i_1 
       (.I0(crc_t_3_fu_102[6]),
        .I1(crc_t_3_1_fu_106[6]),
        .I2(\i2_0_reg_202_reg_n_8_[1] ),
        .I3(crc_t_3_2_fu_110[6]),
        .I4(\i2_0_reg_202_reg_n_8_[0] ),
        .I5(crc_t_3_3_fu_114[6]),
        .O(crc_fu_603_p3[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \crc_0_reg_191[7]_i_1 
       (.I0(crc_t_3_fu_102[7]),
        .I1(crc_t_3_1_fu_106[7]),
        .I2(\i2_0_reg_202_reg_n_8_[1] ),
        .I3(crc_t_3_2_fu_110[7]),
        .I4(\i2_0_reg_202_reg_n_8_[0] ),
        .I5(crc_t_3_3_fu_114[7]),
        .O(crc_fu_603_p3[7]));
  FDRE \crc_0_reg_191_reg[0] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_fu_603_p3[0]),
        .Q(crc_0_reg_191[0]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[10] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_0_reg_191[2]),
        .Q(crc_0_reg_191[10]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[11] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_0_reg_191[3]),
        .Q(crc_0_reg_191[11]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[12] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_0_reg_191[4]),
        .Q(crc_0_reg_191[12]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[13] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_0_reg_191[5]),
        .Q(crc_0_reg_191[13]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[14] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_0_reg_191[6]),
        .Q(crc_0_reg_191[14]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[15] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_0_reg_191[7]),
        .Q(crc_0_reg_191[15]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[16] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_0_reg_191[8]),
        .Q(crc_0_reg_191[16]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[17] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_0_reg_191[9]),
        .Q(crc_0_reg_191[17]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[18] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_0_reg_191[10]),
        .Q(crc_0_reg_191[18]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[19] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_0_reg_191[11]),
        .Q(crc_0_reg_191[19]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[1] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_fu_603_p3[1]),
        .Q(crc_0_reg_191[1]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[20] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_0_reg_191[12]),
        .Q(crc_0_reg_191[20]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[21] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_0_reg_191[13]),
        .Q(crc_0_reg_191[21]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[22] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_0_reg_191[14]),
        .Q(crc_0_reg_191[22]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[23] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_0_reg_191[15]),
        .Q(crc_0_reg_191[23]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[24] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_0_reg_191[16]),
        .Q(crc_0_reg_191[24]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[25] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_0_reg_191[17]),
        .Q(crc_0_reg_191[25]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[26] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_0_reg_191[18]),
        .Q(crc_0_reg_191[26]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[27] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_0_reg_191[19]),
        .Q(crc_0_reg_191[27]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[28] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_0_reg_191[20]),
        .Q(crc_0_reg_191[28]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[29] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_0_reg_191[21]),
        .Q(crc_0_reg_191[29]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[2] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_fu_603_p3[2]),
        .Q(crc_0_reg_191[2]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[30] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_0_reg_191[22]),
        .Q(crc_0_reg_191[30]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[31] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_0_reg_191[23]),
        .Q(crc_0_reg_191[31]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[3] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_fu_603_p3[3]),
        .Q(crc_0_reg_191[3]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[4] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_fu_603_p3[4]),
        .Q(crc_0_reg_191[4]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[5] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_fu_603_p3[5]),
        .Q(crc_0_reg_191[5]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[6] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_fu_603_p3[6]),
        .Q(crc_0_reg_191[6]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[7] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_fu_603_p3[7]),
        .Q(crc_0_reg_191[7]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[8] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_0_reg_191[0]),
        .Q(crc_0_reg_191[8]),
        .R(ap_NS_fsm117_out));
  FDRE \crc_0_reg_191_reg[9] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(crc_0_reg_191[1]),
        .Q(crc_0_reg_191[9]),
        .R(ap_NS_fsm117_out));
  LUT4 #(
    .INIT(16'h0080)) 
    \crc_t_3_1_fu_106[7]_i_1 
       (.I0(byt2crc_1_empty_n),
        .I1(ap_CS_fsm_state7),
        .I2(\i1_0_reg_180_reg_n_8_[0] ),
        .I3(\i1_0_reg_180_reg_n_8_[1] ),
        .O(crc_t_3_1_fu_1060));
  FDRE \crc_t_3_1_fu_106_reg[0] 
       (.C(clock),
        .CE(crc_t_3_1_fu_1060),
        .D(out[0]),
        .Q(crc_t_3_1_fu_106[0]),
        .R(1'b0));
  FDRE \crc_t_3_1_fu_106_reg[1] 
       (.C(clock),
        .CE(crc_t_3_1_fu_1060),
        .D(out[1]),
        .Q(crc_t_3_1_fu_106[1]),
        .R(1'b0));
  FDRE \crc_t_3_1_fu_106_reg[2] 
       (.C(clock),
        .CE(crc_t_3_1_fu_1060),
        .D(out[2]),
        .Q(crc_t_3_1_fu_106[2]),
        .R(1'b0));
  FDRE \crc_t_3_1_fu_106_reg[3] 
       (.C(clock),
        .CE(crc_t_3_1_fu_1060),
        .D(out[3]),
        .Q(crc_t_3_1_fu_106[3]),
        .R(1'b0));
  FDRE \crc_t_3_1_fu_106_reg[4] 
       (.C(clock),
        .CE(crc_t_3_1_fu_1060),
        .D(out[4]),
        .Q(crc_t_3_1_fu_106[4]),
        .R(1'b0));
  FDRE \crc_t_3_1_fu_106_reg[5] 
       (.C(clock),
        .CE(crc_t_3_1_fu_1060),
        .D(out[5]),
        .Q(crc_t_3_1_fu_106[5]),
        .R(1'b0));
  FDRE \crc_t_3_1_fu_106_reg[6] 
       (.C(clock),
        .CE(crc_t_3_1_fu_1060),
        .D(out[6]),
        .Q(crc_t_3_1_fu_106[6]),
        .R(1'b0));
  FDRE \crc_t_3_1_fu_106_reg[7] 
       (.C(clock),
        .CE(crc_t_3_1_fu_1060),
        .D(out[7]),
        .Q(crc_t_3_1_fu_106[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0080)) 
    \crc_t_3_2_fu_110[7]_i_1 
       (.I0(byt2crc_1_empty_n),
        .I1(ap_CS_fsm_state7),
        .I2(\i1_0_reg_180_reg_n_8_[1] ),
        .I3(\i1_0_reg_180_reg_n_8_[0] ),
        .O(crc_t_3_2_fu_1100));
  FDRE \crc_t_3_2_fu_110_reg[0] 
       (.C(clock),
        .CE(crc_t_3_2_fu_1100),
        .D(out[0]),
        .Q(crc_t_3_2_fu_110[0]),
        .R(1'b0));
  FDRE \crc_t_3_2_fu_110_reg[1] 
       (.C(clock),
        .CE(crc_t_3_2_fu_1100),
        .D(out[1]),
        .Q(crc_t_3_2_fu_110[1]),
        .R(1'b0));
  FDRE \crc_t_3_2_fu_110_reg[2] 
       (.C(clock),
        .CE(crc_t_3_2_fu_1100),
        .D(out[2]),
        .Q(crc_t_3_2_fu_110[2]),
        .R(1'b0));
  FDRE \crc_t_3_2_fu_110_reg[3] 
       (.C(clock),
        .CE(crc_t_3_2_fu_1100),
        .D(out[3]),
        .Q(crc_t_3_2_fu_110[3]),
        .R(1'b0));
  FDRE \crc_t_3_2_fu_110_reg[4] 
       (.C(clock),
        .CE(crc_t_3_2_fu_1100),
        .D(out[4]),
        .Q(crc_t_3_2_fu_110[4]),
        .R(1'b0));
  FDRE \crc_t_3_2_fu_110_reg[5] 
       (.C(clock),
        .CE(crc_t_3_2_fu_1100),
        .D(out[5]),
        .Q(crc_t_3_2_fu_110[5]),
        .R(1'b0));
  FDRE \crc_t_3_2_fu_110_reg[6] 
       (.C(clock),
        .CE(crc_t_3_2_fu_1100),
        .D(out[6]),
        .Q(crc_t_3_2_fu_110[6]),
        .R(1'b0));
  FDRE \crc_t_3_2_fu_110_reg[7] 
       (.C(clock),
        .CE(crc_t_3_2_fu_1100),
        .D(out[7]),
        .Q(crc_t_3_2_fu_110[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    \crc_t_3_3_fu_114[7]_i_1 
       (.I0(byt2crc_1_empty_n),
        .I1(ap_CS_fsm_state7),
        .I2(\i1_0_reg_180_reg_n_8_[1] ),
        .I3(\i1_0_reg_180_reg_n_8_[0] ),
        .O(crc_t_3_3_fu_1140));
  FDRE \crc_t_3_3_fu_114_reg[0] 
       (.C(clock),
        .CE(crc_t_3_3_fu_1140),
        .D(out[0]),
        .Q(crc_t_3_3_fu_114[0]),
        .R(1'b0));
  FDRE \crc_t_3_3_fu_114_reg[1] 
       (.C(clock),
        .CE(crc_t_3_3_fu_1140),
        .D(out[1]),
        .Q(crc_t_3_3_fu_114[1]),
        .R(1'b0));
  FDRE \crc_t_3_3_fu_114_reg[2] 
       (.C(clock),
        .CE(crc_t_3_3_fu_1140),
        .D(out[2]),
        .Q(crc_t_3_3_fu_114[2]),
        .R(1'b0));
  FDRE \crc_t_3_3_fu_114_reg[3] 
       (.C(clock),
        .CE(crc_t_3_3_fu_1140),
        .D(out[3]),
        .Q(crc_t_3_3_fu_114[3]),
        .R(1'b0));
  FDRE \crc_t_3_3_fu_114_reg[4] 
       (.C(clock),
        .CE(crc_t_3_3_fu_1140),
        .D(out[4]),
        .Q(crc_t_3_3_fu_114[4]),
        .R(1'b0));
  FDRE \crc_t_3_3_fu_114_reg[5] 
       (.C(clock),
        .CE(crc_t_3_3_fu_1140),
        .D(out[5]),
        .Q(crc_t_3_3_fu_114[5]),
        .R(1'b0));
  FDRE \crc_t_3_3_fu_114_reg[6] 
       (.C(clock),
        .CE(crc_t_3_3_fu_1140),
        .D(out[6]),
        .Q(crc_t_3_3_fu_114[6]),
        .R(1'b0));
  FDRE \crc_t_3_3_fu_114_reg[7] 
       (.C(clock),
        .CE(crc_t_3_3_fu_1140),
        .D(out[7]),
        .Q(crc_t_3_3_fu_114[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000008)) 
    \crc_t_3_fu_102[7]_i_1 
       (.I0(byt2crc_1_empty_n),
        .I1(ap_CS_fsm_state7),
        .I2(\i1_0_reg_180_reg_n_8_[2] ),
        .I3(\i1_0_reg_180_reg_n_8_[1] ),
        .I4(\i1_0_reg_180_reg_n_8_[0] ),
        .O(crc_t_3_fu_1020));
  FDRE \crc_t_3_fu_102_reg[0] 
       (.C(clock),
        .CE(crc_t_3_fu_1020),
        .D(out[0]),
        .Q(crc_t_3_fu_102[0]),
        .R(1'b0));
  FDRE \crc_t_3_fu_102_reg[1] 
       (.C(clock),
        .CE(crc_t_3_fu_1020),
        .D(out[1]),
        .Q(crc_t_3_fu_102[1]),
        .R(1'b0));
  FDRE \crc_t_3_fu_102_reg[2] 
       (.C(clock),
        .CE(crc_t_3_fu_1020),
        .D(out[2]),
        .Q(crc_t_3_fu_102[2]),
        .R(1'b0));
  FDRE \crc_t_3_fu_102_reg[3] 
       (.C(clock),
        .CE(crc_t_3_fu_1020),
        .D(out[3]),
        .Q(crc_t_3_fu_102[3]),
        .R(1'b0));
  FDRE \crc_t_3_fu_102_reg[4] 
       (.C(clock),
        .CE(crc_t_3_fu_1020),
        .D(out[4]),
        .Q(crc_t_3_fu_102[4]),
        .R(1'b0));
  FDRE \crc_t_3_fu_102_reg[5] 
       (.C(clock),
        .CE(crc_t_3_fu_1020),
        .D(out[5]),
        .Q(crc_t_3_fu_102[5]),
        .R(1'b0));
  FDRE \crc_t_3_fu_102_reg[6] 
       (.C(clock),
        .CE(crc_t_3_fu_1020),
        .D(out[6]),
        .Q(crc_t_3_fu_102[6]),
        .R(1'b0));
  FDRE \crc_t_3_fu_102_reg[7] 
       (.C(clock),
        .CE(crc_t_3_fu_1020),
        .D(out[7]),
        .Q(crc_t_3_fu_102[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000000DF0F0F0)) 
    \i1_0_reg_180[0]_i_1 
       (.I0(\i1_0_reg_180_reg_n_8_[2] ),
        .I1(\i1_0_reg_180_reg_n_8_[1] ),
        .I2(\i1_0_reg_180_reg_n_8_[0] ),
        .I3(ap_CS_fsm_state7),
        .I4(byt2crc_1_empty_n),
        .I5(ap_CS_fsm_state6),
        .O(\i1_0_reg_180[0]_i_1_n_8 ));
  LUT5 #(
    .INIT(32'h00007F80)) 
    \i1_0_reg_180[1]_i_1 
       (.I0(byt2crc_1_empty_n),
        .I1(ap_CS_fsm_state7),
        .I2(\i1_0_reg_180_reg_n_8_[0] ),
        .I3(\i1_0_reg_180_reg_n_8_[1] ),
        .I4(ap_CS_fsm_state6),
        .O(\i1_0_reg_180[1]_i_1_n_8 ));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \i1_0_reg_180[2]_i_1 
       (.I0(byt2crc_1_empty_n),
        .I1(ap_CS_fsm_state7),
        .I2(\i1_0_reg_180_reg_n_8_[0] ),
        .I3(\i1_0_reg_180_reg_n_8_[1] ),
        .I4(\i1_0_reg_180_reg_n_8_[2] ),
        .I5(ap_CS_fsm_state6),
        .O(\i1_0_reg_180[2]_i_1_n_8 ));
  FDRE \i1_0_reg_180_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(\i1_0_reg_180[0]_i_1_n_8 ),
        .Q(\i1_0_reg_180_reg_n_8_[0] ),
        .R(1'b0));
  FDRE \i1_0_reg_180_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(\i1_0_reg_180[1]_i_1_n_8 ),
        .Q(\i1_0_reg_180_reg_n_8_[1] ),
        .R(1'b0));
  FDRE \i1_0_reg_180_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(\i1_0_reg_180[2]_i_1_n_8 ),
        .Q(\i1_0_reg_180_reg_n_8_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i2_0_reg_202[0]_i_1 
       (.I0(\i2_0_reg_202_reg_n_8_[0] ),
        .O(din4));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i2_0_reg_202[1]_i_1 
       (.I0(\i2_0_reg_202_reg_n_8_[1] ),
        .I1(\i2_0_reg_202_reg_n_8_[0] ),
        .O(i_6_fu_557_p2[1]));
  LUT4 #(
    .INIT(16'h0200)) 
    \i2_0_reg_202[2]_i_1 
       (.I0(ap_CS_fsm_state7),
        .I1(\i1_0_reg_180_reg_n_8_[0] ),
        .I2(\i1_0_reg_180_reg_n_8_[1] ),
        .I3(\i1_0_reg_180_reg_n_8_[2] ),
        .O(ap_NS_fsm117_out));
  LUT4 #(
    .INIT(16'hFB00)) 
    \i2_0_reg_202[2]_i_2 
       (.I0(\i2_0_reg_202_reg_n_8_[0] ),
        .I1(\i2_0_reg_202_reg_n_8_[2] ),
        .I2(\i2_0_reg_202_reg_n_8_[1] ),
        .I3(ap_CS_fsm_state8),
        .O(\i2_0_reg_202[2]_i_2_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i2_0_reg_202[2]_i_3 
       (.I0(\i2_0_reg_202_reg_n_8_[2] ),
        .I1(\i2_0_reg_202_reg_n_8_[0] ),
        .I2(\i2_0_reg_202_reg_n_8_[1] ),
        .O(i_6_fu_557_p2[2]));
  FDRE \i2_0_reg_202_reg[0] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(din4),
        .Q(\i2_0_reg_202_reg_n_8_[0] ),
        .R(ap_NS_fsm117_out));
  FDRE \i2_0_reg_202_reg[1] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(i_6_fu_557_p2[1]),
        .Q(\i2_0_reg_202_reg_n_8_[1] ),
        .R(ap_NS_fsm117_out));
  FDRE \i2_0_reg_202_reg[2] 
       (.C(clock),
        .CE(\i2_0_reg_202[2]_i_2_n_8 ),
        .D(i_6_fu_557_p2[2]),
        .Q(\i2_0_reg_202_reg_n_8_[2] ),
        .R(ap_NS_fsm117_out));
  LUT1 #(
    .INIT(2'h1)) 
    \i3_0_reg_213[0]_i_1 
       (.I0(i3_0_reg_213_reg[0]),
        .O(i_7_fu_623_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i3_0_reg_213[1]_i_1 
       (.I0(i3_0_reg_213_reg[0]),
        .I1(i3_0_reg_213_reg[1]),
        .O(i_7_fu_623_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i3_0_reg_213[2]_i_1 
       (.I0(i3_0_reg_213_reg[2]),
        .I1(i3_0_reg_213_reg[1]),
        .I2(i3_0_reg_213_reg[0]),
        .O(i_7_fu_623_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i3_0_reg_213[3]_i_1 
       (.I0(i3_0_reg_213_reg[3]),
        .I1(i3_0_reg_213_reg[0]),
        .I2(i3_0_reg_213_reg[1]),
        .I3(i3_0_reg_213_reg[2]),
        .O(i_7_fu_623_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i3_0_reg_213[4]_i_1 
       (.I0(i3_0_reg_213_reg[4]),
        .I1(i3_0_reg_213_reg[2]),
        .I2(i3_0_reg_213_reg[1]),
        .I3(i3_0_reg_213_reg[0]),
        .I4(i3_0_reg_213_reg[3]),
        .O(i_7_fu_623_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \i3_0_reg_213[5]_i_1 
       (.I0(i3_0_reg_213_reg[5]),
        .I1(i3_0_reg_213_reg[3]),
        .I2(i3_0_reg_213_reg[0]),
        .I3(i3_0_reg_213_reg[1]),
        .I4(i3_0_reg_213_reg[2]),
        .I5(i3_0_reg_213_reg[4]),
        .O(i_7_fu_623_p2[5]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \i3_0_reg_213[6]_i_1 
       (.I0(icmp_ln63_fu_611_p2),
        .I1(ap_CS_fsm_state8),
        .I2(\i2_0_reg_202_reg_n_8_[1] ),
        .I3(\i2_0_reg_202_reg_n_8_[2] ),
        .I4(\i2_0_reg_202_reg_n_8_[0] ),
        .O(ap_NS_fsm115_out));
  LUT6 #(
    .INIT(64'h00000000FB000000)) 
    \i3_0_reg_213[6]_i_2 
       (.I0(crc2fra_1_full_n),
        .I1(ap_enable_reg_pp1_iter1_reg_n_8),
        .I2(icmp_ln68_reg_711),
        .I3(ap_CS_fsm_pp1_stage0),
        .I4(ap_enable_reg_pp1_iter0),
        .I5(icmp_ln68_fu_617_p2),
        .O(i3_0_reg_2130));
  LUT3 #(
    .INIT(8'h6A)) 
    \i3_0_reg_213[6]_i_3 
       (.I0(i3_0_reg_213_reg[6]),
        .I1(\i3_0_reg_213[6]_i_4_n_8 ),
        .I2(i3_0_reg_213_reg[5]),
        .O(i_7_fu_623_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \i3_0_reg_213[6]_i_4 
       (.I0(i3_0_reg_213_reg[4]),
        .I1(i3_0_reg_213_reg[2]),
        .I2(i3_0_reg_213_reg[1]),
        .I3(i3_0_reg_213_reg[0]),
        .I4(i3_0_reg_213_reg[3]),
        .O(\i3_0_reg_213[6]_i_4_n_8 ));
  FDRE \i3_0_reg_213_reg[0] 
       (.C(clock),
        .CE(i3_0_reg_2130),
        .D(i_7_fu_623_p2[0]),
        .Q(i3_0_reg_213_reg[0]),
        .R(ap_NS_fsm115_out));
  FDRE \i3_0_reg_213_reg[1] 
       (.C(clock),
        .CE(i3_0_reg_2130),
        .D(i_7_fu_623_p2[1]),
        .Q(i3_0_reg_213_reg[1]),
        .R(ap_NS_fsm115_out));
  FDRE \i3_0_reg_213_reg[2] 
       (.C(clock),
        .CE(i3_0_reg_2130),
        .D(i_7_fu_623_p2[2]),
        .Q(i3_0_reg_213_reg[2]),
        .R(ap_NS_fsm115_out));
  FDRE \i3_0_reg_213_reg[3] 
       (.C(clock),
        .CE(i3_0_reg_2130),
        .D(i_7_fu_623_p2[3]),
        .Q(i3_0_reg_213_reg[3]),
        .R(ap_NS_fsm115_out));
  FDRE \i3_0_reg_213_reg[4] 
       (.C(clock),
        .CE(i3_0_reg_2130),
        .D(i_7_fu_623_p2[4]),
        .Q(i3_0_reg_213_reg[4]),
        .R(ap_NS_fsm115_out));
  FDRE \i3_0_reg_213_reg[5] 
       (.C(clock),
        .CE(i3_0_reg_2130),
        .D(i_7_fu_623_p2[5]),
        .Q(i3_0_reg_213_reg[5]),
        .R(ap_NS_fsm115_out));
  FDRE \i3_0_reg_213_reg[6] 
       (.C(clock),
        .CE(i3_0_reg_2130),
        .D(i_7_fu_623_p2[6]),
        .Q(i3_0_reg_213_reg[6]),
        .R(ap_NS_fsm115_out));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \i_0_reg_168[6]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(byt2crc_1_empty_n),
        .I2(ap_CS_fsm_pp0_stage0),
        .I3(ap_enable_reg_pp0_iter1_reg_n_8),
        .I4(\icmp_ln41_reg_658_reg_n_8_[0] ),
        .O(i_0_reg_168));
  FDRE \i_0_reg_168_reg[0] 
       (.C(clock),
        .CE(E),
        .D(i_5_reg_662_reg[0]),
        .Q(\i_0_reg_168_reg_n_8_[0] ),
        .R(i_0_reg_168));
  FDRE \i_0_reg_168_reg[1] 
       (.C(clock),
        .CE(E),
        .D(i_5_reg_662_reg[1]),
        .Q(\i_0_reg_168_reg_n_8_[1] ),
        .R(i_0_reg_168));
  FDRE \i_0_reg_168_reg[2] 
       (.C(clock),
        .CE(E),
        .D(i_5_reg_662_reg[2]),
        .Q(\i_0_reg_168_reg_n_8_[2] ),
        .R(i_0_reg_168));
  FDRE \i_0_reg_168_reg[3] 
       (.C(clock),
        .CE(E),
        .D(i_5_reg_662_reg[3]),
        .Q(\i_0_reg_168_reg_n_8_[3] ),
        .R(i_0_reg_168));
  FDRE \i_0_reg_168_reg[4] 
       (.C(clock),
        .CE(E),
        .D(i_5_reg_662_reg[4]),
        .Q(\i_0_reg_168_reg_n_8_[4] ),
        .R(i_0_reg_168));
  FDRE \i_0_reg_168_reg[5] 
       (.C(clock),
        .CE(E),
        .D(i_5_reg_662_reg[5]),
        .Q(\i_0_reg_168_reg_n_8_[5] ),
        .R(i_0_reg_168));
  FDRE \i_0_reg_168_reg[6] 
       (.C(clock),
        .CE(E),
        .D(i_5_reg_662_reg[6]),
        .Q(\i_0_reg_168_reg_n_8_[6] ),
        .R(i_0_reg_168));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h4575)) 
    \i_5_reg_662[0]_i_1 
       (.I0(\i_0_reg_168_reg_n_8_[0] ),
        .I1(\icmp_ln41_reg_658_reg_n_8_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_8),
        .I3(i_5_reg_662_reg[0]),
        .O(i_5_fu_230_p2[0]));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \i_5_reg_662[1]_i_1 
       (.I0(\i_0_reg_168_reg_n_8_[0] ),
        .I1(i_5_reg_662_reg[0]),
        .I2(\i_0_reg_168_reg_n_8_[1] ),
        .I3(\i_5_reg_662[6]_i_4_n_8 ),
        .I4(i_5_reg_662_reg[1]),
        .O(i_5_fu_230_p2[1]));
  LUT6 #(
    .INIT(64'h3C553CAACCAACCAA)) 
    \i_5_reg_662[2]_i_1 
       (.I0(\i_0_reg_168_reg_n_8_[2] ),
        .I1(i_5_reg_662_reg[2]),
        .I2(i_5_reg_662_reg[1]),
        .I3(\i_5_reg_662[6]_i_4_n_8 ),
        .I4(\i_0_reg_168_reg_n_8_[1] ),
        .I5(\i_5_reg_662[2]_i_2_n_8 ),
        .O(i_5_fu_230_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \i_5_reg_662[2]_i_2 
       (.I0(i_5_reg_662_reg[0]),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_enable_reg_pp0_iter1_reg_n_8),
        .I3(\icmp_ln41_reg_658_reg_n_8_[0] ),
        .I4(\i_0_reg_168_reg_n_8_[0] ),
        .O(\i_5_reg_662[2]_i_2_n_8 ));
  LUT5 #(
    .INIT(32'h4575BA8A)) 
    \i_5_reg_662[3]_i_1 
       (.I0(\i_0_reg_168_reg_n_8_[3] ),
        .I1(\icmp_ln41_reg_658_reg_n_8_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_8),
        .I3(i_5_reg_662_reg[3]),
        .I4(\i_5_reg_662[4]_i_2_n_8 ),
        .O(i_5_fu_230_p2[3]));
  LUT6 #(
    .INIT(64'h3CCC5A5A3CCCAAAA)) 
    \i_5_reg_662[4]_i_1 
       (.I0(\i_0_reg_168_reg_n_8_[4] ),
        .I1(i_5_reg_662_reg[4]),
        .I2(\i_5_reg_662[4]_i_2_n_8 ),
        .I3(i_5_reg_662_reg[3]),
        .I4(\i_5_reg_662[6]_i_4_n_8 ),
        .I5(\i_0_reg_168_reg_n_8_[3] ),
        .O(i_5_fu_230_p2[4]));
  LUT6 #(
    .INIT(64'hC0AAC00000000000)) 
    \i_5_reg_662[4]_i_2 
       (.I0(\i_0_reg_168_reg_n_8_[2] ),
        .I1(i_5_reg_662_reg[2]),
        .I2(i_5_reg_662_reg[1]),
        .I3(\i_5_reg_662[6]_i_4_n_8 ),
        .I4(\i_0_reg_168_reg_n_8_[1] ),
        .I5(\i_5_reg_662[2]_i_2_n_8 ),
        .O(\i_5_reg_662[4]_i_2_n_8 ));
  LUT5 #(
    .INIT(32'h4575BA8A)) 
    \i_5_reg_662[5]_i_1 
       (.I0(\i_0_reg_168_reg_n_8_[5] ),
        .I1(\icmp_ln41_reg_658_reg_n_8_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_8),
        .I3(i_5_reg_662_reg[5]),
        .I4(\i_5_reg_662[6]_i_3_n_8 ),
        .O(i_5_fu_230_p2[5]));
  LUT5 #(
    .INIT(32'hAA8A0000)) 
    \i_5_reg_662[6]_i_1 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(byt2crc_1_empty_n),
        .I2(ap_enable_reg_pp0_iter1_reg_n_8),
        .I3(\icmp_ln41_reg_658_reg_n_8_[0] ),
        .I4(ap_CS_fsm_pp0_stage0),
        .O(i_5_reg_6620));
  LUT6 #(
    .INIT(64'h3CCC5A5A3CCCAAAA)) 
    \i_5_reg_662[6]_i_2 
       (.I0(\i_0_reg_168_reg_n_8_[6] ),
        .I1(i_5_reg_662_reg[6]),
        .I2(\i_5_reg_662[6]_i_3_n_8 ),
        .I3(i_5_reg_662_reg[5]),
        .I4(\i_5_reg_662[6]_i_4_n_8 ),
        .I5(\i_0_reg_168_reg_n_8_[5] ),
        .O(i_5_fu_230_p2[6]));
  LUT6 #(
    .INIT(64'hC000A0A0C0000000)) 
    \i_5_reg_662[6]_i_3 
       (.I0(\i_0_reg_168_reg_n_8_[4] ),
        .I1(i_5_reg_662_reg[4]),
        .I2(\i_5_reg_662[4]_i_2_n_8 ),
        .I3(i_5_reg_662_reg[3]),
        .I4(\i_5_reg_662[6]_i_4_n_8 ),
        .I5(\i_0_reg_168_reg_n_8_[3] ),
        .O(\i_5_reg_662[6]_i_3_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \i_5_reg_662[6]_i_4 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(ap_enable_reg_pp0_iter1_reg_n_8),
        .I2(\icmp_ln41_reg_658_reg_n_8_[0] ),
        .O(\i_5_reg_662[6]_i_4_n_8 ));
  FDRE \i_5_reg_662_reg[0] 
       (.C(clock),
        .CE(i_5_reg_6620),
        .D(i_5_fu_230_p2[0]),
        .Q(i_5_reg_662_reg[0]),
        .R(1'b0));
  FDRE \i_5_reg_662_reg[1] 
       (.C(clock),
        .CE(i_5_reg_6620),
        .D(i_5_fu_230_p2[1]),
        .Q(i_5_reg_662_reg[1]),
        .R(1'b0));
  FDRE \i_5_reg_662_reg[2] 
       (.C(clock),
        .CE(i_5_reg_6620),
        .D(i_5_fu_230_p2[2]),
        .Q(i_5_reg_662_reg[2]),
        .R(1'b0));
  FDRE \i_5_reg_662_reg[3] 
       (.C(clock),
        .CE(i_5_reg_6620),
        .D(i_5_fu_230_p2[3]),
        .Q(i_5_reg_662_reg[3]),
        .R(1'b0));
  FDRE \i_5_reg_662_reg[4] 
       (.C(clock),
        .CE(i_5_reg_6620),
        .D(i_5_fu_230_p2[4]),
        .Q(i_5_reg_662_reg[4]),
        .R(1'b0));
  FDRE \i_5_reg_662_reg[5] 
       (.C(clock),
        .CE(i_5_reg_6620),
        .D(i_5_fu_230_p2[5]),
        .Q(i_5_reg_662_reg[5]),
        .R(1'b0));
  FDRE \i_5_reg_662_reg[6] 
       (.C(clock),
        .CE(i_5_reg_6620),
        .D(i_5_fu_230_p2[6]),
        .Q(i_5_reg_662_reg[6]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_1
       (.I0(crc_0_reg_191[21]),
        .I1(R_0_reg_156[21]),
        .I2(crc_0_reg_191[22]),
        .I3(R_0_reg_156[22]),
        .I4(R_0_reg_156[23]),
        .I5(crc_0_reg_191[23]),
        .O(i__carry__0_i_1_n_8));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2
       (.I0(R_0_reg_156[20]),
        .I1(crc_0_reg_191[20]),
        .I2(crc_0_reg_191[18]),
        .I3(R_0_reg_156[18]),
        .I4(crc_0_reg_191[19]),
        .I5(R_0_reg_156[19]),
        .O(i__carry__0_i_2_n_8));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_3
       (.I0(crc_0_reg_191[16]),
        .I1(R_0_reg_156[16]),
        .I2(crc_0_reg_191[15]),
        .I3(R_0_reg_156[15]),
        .I4(R_0_reg_156[17]),
        .I5(crc_0_reg_191[17]),
        .O(i__carry__0_i_3_n_8));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_4
       (.I0(R_0_reg_156[14]),
        .I1(crc_0_reg_191[14]),
        .I2(crc_0_reg_191[13]),
        .I3(R_0_reg_156[13]),
        .I4(crc_0_reg_191[12]),
        .I5(R_0_reg_156[12]),
        .O(i__carry__0_i_4_n_8));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_1
       (.I0(R_0_reg_156[31]),
        .I1(crc_0_reg_191[31]),
        .I2(R_0_reg_156[30]),
        .I3(crc_0_reg_191[30]),
        .O(i__carry__1_i_1_n_8));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_2
       (.I0(crc_0_reg_191[27]),
        .I1(R_0_reg_156[27]),
        .I2(crc_0_reg_191[28]),
        .I3(R_0_reg_156[28]),
        .I4(R_0_reg_156[29]),
        .I5(crc_0_reg_191[29]),
        .O(i__carry__1_i_2_n_8));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_3
       (.I0(crc_0_reg_191[24]),
        .I1(R_0_reg_156[24]),
        .I2(crc_0_reg_191[25]),
        .I3(R_0_reg_156[25]),
        .I4(R_0_reg_156[26]),
        .I5(crc_0_reg_191[26]),
        .O(i__carry__1_i_3_n_8));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1
       (.I0(R_0_reg_156[11]),
        .I1(crc_0_reg_191[11]),
        .I2(crc_0_reg_191[9]),
        .I3(R_0_reg_156[9]),
        .I4(crc_0_reg_191[10]),
        .I5(R_0_reg_156[10]),
        .O(i__carry_i_1_n_8));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(R_0_reg_156[8]),
        .I1(crc_0_reg_191[8]),
        .I2(crc_0_reg_191[6]),
        .I3(R_0_reg_156[6]),
        .I4(crc_0_reg_191[7]),
        .I5(R_0_reg_156[7]),
        .O(i__carry_i_2_n_8));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(R_0_reg_156[5]),
        .I1(crc_0_reg_191[5]),
        .I2(crc_0_reg_191[3]),
        .I3(R_0_reg_156[3]),
        .I4(crc_0_reg_191[4]),
        .I5(R_0_reg_156[4]),
        .O(i__carry_i_3_n_8));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4
       (.I0(crc_0_reg_191[2]),
        .I1(R_0_reg_156[2]),
        .I2(crc_0_reg_191[0]),
        .I3(R_0_reg_156[0]),
        .I4(R_0_reg_156[1]),
        .I5(crc_0_reg_191[1]),
        .O(i__carry_i_4_n_8));
  my_module2_0_CRCCheck_do_gen_ibkb ibuffer_V_U
       (.Q({ap_CS_fsm_pp1_stage0,ap_CS_fsm_pp0_stage0}),
        .ap_enable_reg_pp1_iter0(ap_enable_reg_pp1_iter0),
        .byt2crc_1_empty_n(byt2crc_1_empty_n),
        .clock(clock),
        .crc2fra_1_full_n(crc2fra_1_full_n),
        .\i3_0_reg_213_reg[4] (\i3_0_reg_213_reg[6]_0 [0]),
        .\i3_0_reg_213_reg[5] (\i3_0_reg_213_reg[6]_0 [1]),
        .\i3_0_reg_213_reg[6] (\i3_0_reg_213_reg[6]_0 [2]),
        .\i_0_reg_168_reg[6] (ap_enable_reg_pp0_iter1_reg_n_8),
        .\i_0_reg_168_reg[6]_0 (\icmp_ln41_reg_658_reg_n_8_[0] ),
        .icmp_ln41_reg_6580(icmp_ln41_reg_6580),
        .\icmp_ln41_reg_658_reg[0] (E),
        .icmp_ln68_reg_711(icmp_ln68_reg_711),
        .out(out),
        .\q0[7]_i_5 (\q0[7]_i_5 ),
        .\q0_reg[0] (ap_enable_reg_pp1_iter1_reg_n_8),
        .\q0_reg[0]_0 (i3_0_reg_213_reg),
        .\q0_reg[0]_1 ({\i_0_reg_168_reg_n_8_[6] ,\i_0_reg_168_reg_n_8_[5] ,\i_0_reg_168_reg_n_8_[4] ,\i_0_reg_168_reg_n_8_[3] ,\i_0_reg_168_reg_n_8_[2] ,\i_0_reg_168_reg_n_8_[1] ,\i_0_reg_168_reg_n_8_[0] }),
        .\q0_reg[7] (Q));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hB8B8B0B8)) 
    \icmp_ln41_reg_658[0]_i_1 
       (.I0(icmp_ln41_fu_224_p2),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(\icmp_ln41_reg_658_reg_n_8_[0] ),
        .I3(ap_enable_reg_pp0_iter1_reg_n_8),
        .I4(byt2crc_1_empty_n),
        .O(\icmp_ln41_reg_658[0]_i_1_n_8 ));
  LUT5 #(
    .INIT(32'hDDFD8888)) 
    \icmp_ln41_reg_658_pp0_iter1_reg[0]_i_1 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(\icmp_ln41_reg_658_reg_n_8_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_8),
        .I3(byt2crc_1_empty_n),
        .I4(icmp_ln41_reg_658_pp0_iter1_reg),
        .O(\icmp_ln41_reg_658_pp0_iter1_reg[0]_i_1_n_8 ));
  FDRE \icmp_ln41_reg_658_pp0_iter1_reg_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(\icmp_ln41_reg_658_pp0_iter1_reg[0]_i_1_n_8 ),
        .Q(icmp_ln41_reg_658_pp0_iter1_reg),
        .R(1'b0));
  FDRE \icmp_ln41_reg_658_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(\icmp_ln41_reg_658[0]_i_1_n_8 ),
        .Q(\icmp_ln41_reg_658_reg_n_8_[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hB8B8B0B8)) 
    \icmp_ln68_reg_711[0]_i_1 
       (.I0(icmp_ln68_fu_617_p2),
        .I1(ap_CS_fsm_pp1_stage0),
        .I2(icmp_ln68_reg_711),
        .I3(ap_enable_reg_pp1_iter1_reg_n_8),
        .I4(crc2fra_1_full_n),
        .O(\icmp_ln68_reg_711[0]_i_1_n_8 ));
  FDRE \icmp_ln68_reg_711_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(\icmp_ln68_reg_711[0]_i_1_n_8 ),
        .Q(icmp_ln68_reg_711),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2022222222222222)) 
    internal_empty_n_i_3__2
       (.I0(\mOutPtr_reg[5] ),
        .I1(\i1_0_reg_180_reg[2]_0 ),
        .I2(\icmp_ln41_reg_658_reg_n_8_[0] ),
        .I3(ap_enable_reg_pp0_iter1_reg_n_8),
        .I4(ap_CS_fsm_pp0_stage0),
        .I5(byt2crc_1_empty_n),
        .O(internal_empty_n3_out));
  LUT6 #(
    .INIT(64'h66A56666995A9999)) 
    \lshr_ln49_3_reg_672[0]_i_1 
       (.I0(\lshr_ln49_3_reg_672[22]_i_2_n_8 ),
        .I1(R_0_reg_156[4]),
        .I2(\lshr_ln49_3_reg_672[0]_i_2_n_8 ),
        .I3(icmp_ln41_reg_658_pp0_iter1_reg),
        .I4(ap_enable_reg_pp0_iter2_reg_n_8),
        .I5(out[4]),
        .O(\lshr_ln49_3_reg_672[0]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \lshr_ln49_3_reg_672[0]_i_2 
       (.I0(lshr_ln49_3_reg_672[2]),
        .I1(lshr_ln49_3_reg_672[1]),
        .I2(lshr_ln49_3_reg_672[8]),
        .I3(lshr_ln49_3_reg_672[3]),
        .O(\lshr_ln49_3_reg_672[0]_i_2_n_8 ));
  LUT6 #(
    .INIT(64'hAAAA966955559669)) 
    \lshr_ln49_3_reg_672[10]_i_1 
       (.I0(\lshr_ln49_3_reg_672[19]_i_2_n_8 ),
        .I1(lshr_ln49_3_reg_672[18]),
        .I2(select_ln49_2_reg_667),
        .I3(lshr_ln49_3_reg_672[0]),
        .I4(\select_ln49_2_reg_667[0]_i_3_n_8 ),
        .I5(R_0_reg_156[14]),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'h6A65656A959A9A95)) 
    \lshr_ln49_3_reg_672[11]_i_1 
       (.I0(\lshr_ln49_3_reg_672[30]_i_2_n_8 ),
        .I1(R_0_reg_156[15]),
        .I2(\select_ln49_2_reg_667[0]_i_3_n_8 ),
        .I3(lshr_ln49_3_reg_672[19]),
        .I4(\select_ln49_2_reg_667[0]_i_5_n_8 ),
        .I5(p_0_in[29]),
        .O(\lshr_ln49_3_reg_672[11]_i_1_n_8 ));
  LUT6 #(
    .INIT(64'hAAAA966955559669)) 
    \lshr_ln49_3_reg_672[12]_i_1 
       (.I0(\lshr_ln49_3_reg_672[30]_i_2_n_8 ),
        .I1(lshr_ln49_3_reg_672[20]),
        .I2(select_ln49_2_reg_667),
        .I3(\lshr_ln49_3_reg_672[12]_i_2_n_8 ),
        .I4(\select_ln49_2_reg_667[0]_i_3_n_8 ),
        .I5(R_0_reg_156[16]),
        .O(\lshr_ln49_3_reg_672[12]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lshr_ln49_3_reg_672[12]_i_2 
       (.I0(lshr_ln49_3_reg_672[1]),
        .I1(lshr_ln49_3_reg_672[2]),
        .O(\lshr_ln49_3_reg_672[12]_i_2_n_8 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAC33C3CC3)) 
    \lshr_ln49_3_reg_672[13]_i_1 
       (.I0(R_0_reg_156[17]),
        .I1(\select_ln49_2_reg_667[0]_i_4_n_8 ),
        .I2(lshr_ln49_3_reg_672[0]),
        .I3(select_ln49_2_reg_667),
        .I4(lshr_ln49_3_reg_672[21]),
        .I5(\select_ln49_2_reg_667[0]_i_3_n_8 ),
        .O(p_0_in[13]));
  LUT5 #(
    .INIT(32'hA6AA5559)) 
    \lshr_ln49_3_reg_672[14]_i_1 
       (.I0(\lshr_ln49_3_reg_672[22]_i_2_n_8 ),
        .I1(ap_enable_reg_pp0_iter2_reg_n_8),
        .I2(icmp_ln41_reg_658_pp0_iter1_reg),
        .I3(\lshr_ln49_3_reg_672[14]_i_2_n_8 ),
        .I4(R_0_reg_156[18]),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \lshr_ln49_3_reg_672[14]_i_2 
       (.I0(lshr_ln49_3_reg_672[3]),
        .I1(lshr_ln49_3_reg_672[22]),
        .I2(lshr_ln49_3_reg_672[1]),
        .I3(lshr_ln49_3_reg_672[0]),
        .O(\lshr_ln49_3_reg_672[14]_i_2_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hA6AA5559)) 
    \lshr_ln49_3_reg_672[15]_i_1 
       (.I0(\lshr_ln49_3_reg_672[20]_i_2_n_8 ),
        .I1(ap_enable_reg_pp0_iter2_reg_n_8),
        .I2(icmp_ln41_reg_658_pp0_iter1_reg),
        .I3(\lshr_ln49_3_reg_672[15]_i_2_n_8 ),
        .I4(R_0_reg_156[19]),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \lshr_ln49_3_reg_672[15]_i_2 
       (.I0(lshr_ln49_3_reg_672[2]),
        .I1(lshr_ln49_3_reg_672[1]),
        .I2(lshr_ln49_3_reg_672[23]),
        .I3(select_ln49_2_reg_667),
        .I4(lshr_ln49_3_reg_672[0]),
        .O(\lshr_ln49_3_reg_672[15]_i_2_n_8 ));
  LUT6 #(
    .INIT(64'h6A66656695999A99)) 
    \lshr_ln49_3_reg_672[16]_i_1 
       (.I0(\lshr_ln49_3_reg_672[30]_i_2_n_8 ),
        .I1(R_0_reg_156[20]),
        .I2(icmp_ln41_reg_658_pp0_iter1_reg),
        .I3(ap_enable_reg_pp0_iter2_reg_n_8),
        .I4(\lshr_ln49_3_reg_672[16]_i_2_n_8 ),
        .I5(p_0_in[29]),
        .O(p_0_in[16]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \lshr_ln49_3_reg_672[16]_i_2 
       (.I0(lshr_ln49_3_reg_672[3]),
        .I1(select_ln49_2_reg_667),
        .I2(lshr_ln49_3_reg_672[2]),
        .I3(lshr_ln49_3_reg_672[0]),
        .I4(lshr_ln49_3_reg_672[1]),
        .I5(lshr_ln49_3_reg_672[24]),
        .O(\lshr_ln49_3_reg_672[16]_i_2_n_8 ));
  LUT6 #(
    .INIT(64'h995A999966A56666)) 
    \lshr_ln49_3_reg_672[17]_i_1 
       (.I0(\lshr_ln49_3_reg_672[30]_i_2_n_8 ),
        .I1(R_0_reg_156[21]),
        .I2(\lshr_ln49_3_reg_672[17]_i_2_n_8 ),
        .I3(icmp_ln41_reg_658_pp0_iter1_reg),
        .I4(ap_enable_reg_pp0_iter2_reg_n_8),
        .I5(\lshr_ln49_3_reg_672[22]_i_2_n_8 ),
        .O(p_0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \lshr_ln49_3_reg_672[17]_i_2 
       (.I0(lshr_ln49_3_reg_672[2]),
        .I1(lshr_ln49_3_reg_672[1]),
        .I2(lshr_ln49_3_reg_672[25]),
        .I3(lshr_ln49_3_reg_672[3]),
        .O(\lshr_ln49_3_reg_672[17]_i_2_n_8 ));
  LUT6 #(
    .INIT(64'h9AA9A99A56656556)) 
    \lshr_ln49_3_reg_672[18]_i_1 
       (.I0(\lshr_ln49_3_reg_672[20]_i_2_n_8 ),
        .I1(\select_ln49_2_reg_667[0]_i_3_n_8 ),
        .I2(lshr_ln49_3_reg_672[0]),
        .I3(lshr_ln49_3_reg_672[26]),
        .I4(\select_ln49_2_reg_667[0]_i_4_n_8 ),
        .I5(R_0_reg_156[22]),
        .O(p_0_in[18]));
  LUT6 #(
    .INIT(64'h9AA9A99A56656556)) 
    \lshr_ln49_3_reg_672[19]_i_1 
       (.I0(\lshr_ln49_3_reg_672[19]_i_2_n_8 ),
        .I1(\select_ln49_2_reg_667[0]_i_3_n_8 ),
        .I2(lshr_ln49_3_reg_672[1]),
        .I3(lshr_ln49_3_reg_672[27]),
        .I4(\lshr_ln49_3_reg_672[21]_i_2_n_8 ),
        .I5(R_0_reg_156[23]),
        .O(p_0_in[19]));
  LUT2 #(
    .INIT(4'h9)) 
    \lshr_ln49_3_reg_672[19]_i_2 
       (.I0(\lshr_ln49_3_reg_672[30]_i_2_n_8 ),
        .I1(\lshr_ln49_3_reg_672[20]_i_2_n_8 ),
        .O(\lshr_ln49_3_reg_672[19]_i_2_n_8 ));
  LUT6 #(
    .INIT(64'h6A66656695999A99)) 
    \lshr_ln49_3_reg_672[1]_i_1 
       (.I0(\lshr_ln49_3_reg_672[20]_i_2_n_8 ),
        .I1(R_0_reg_156[5]),
        .I2(icmp_ln41_reg_658_pp0_iter1_reg),
        .I3(ap_enable_reg_pp0_iter2_reg_n_8),
        .I4(\lshr_ln49_3_reg_672[1]_i_2_n_8 ),
        .I5(out[5]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \lshr_ln49_3_reg_672[1]_i_2 
       (.I0(lshr_ln49_3_reg_672[3]),
        .I1(lshr_ln49_3_reg_672[2]),
        .I2(lshr_ln49_3_reg_672[0]),
        .I3(lshr_ln49_3_reg_672[9]),
        .O(\lshr_ln49_3_reg_672[1]_i_2_n_8 ));
  LUT6 #(
    .INIT(64'hF60609F909F9F606)) 
    \lshr_ln49_3_reg_672[20]_i_1 
       (.I0(lshr_ln49_3_reg_672[28]),
        .I1(lshr_ln49_3_reg_672[2]),
        .I2(\select_ln49_2_reg_667[0]_i_3_n_8 ),
        .I3(R_0_reg_156[24]),
        .I4(\lshr_ln49_3_reg_672[20]_i_2_n_8 ),
        .I5(\lshr_ln49_3_reg_672[30]_i_2_n_8 ),
        .O(\lshr_ln49_3_reg_672[20]_i_1_n_8 ));
  LUT2 #(
    .INIT(4'h6)) 
    \lshr_ln49_3_reg_672[20]_i_2 
       (.I0(p_0_in[29]),
        .I1(\lshr_ln49_3_reg_672[22]_i_2_n_8 ),
        .O(\lshr_ln49_3_reg_672[20]_i_2_n_8 ));
  LUT6 #(
    .INIT(64'h66665AA59999A55A)) 
    \lshr_ln49_3_reg_672[21]_i_1 
       (.I0(\lshr_ln49_3_reg_672[30]_i_2_n_8 ),
        .I1(R_0_reg_156[25]),
        .I2(lshr_ln49_3_reg_672[29]),
        .I3(\lshr_ln49_3_reg_672[21]_i_2_n_8 ),
        .I4(\select_ln49_2_reg_667[0]_i_3_n_8 ),
        .I5(p_0_in[29]),
        .O(p_0_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \lshr_ln49_3_reg_672[21]_i_2 
       (.I0(lshr_ln49_3_reg_672[3]),
        .I1(select_ln49_2_reg_667),
        .O(\lshr_ln49_3_reg_672[21]_i_2_n_8 ));
  LUT6 #(
    .INIT(64'h9A99959965666A66)) 
    \lshr_ln49_3_reg_672[22]_i_1 
       (.I0(\lshr_ln49_3_reg_672[30]_i_2_n_8 ),
        .I1(R_0_reg_156[26]),
        .I2(icmp_ln41_reg_658_pp0_iter1_reg),
        .I3(ap_enable_reg_pp0_iter2_reg_n_8),
        .I4(lshr_ln49_3_reg_672[30]),
        .I5(\lshr_ln49_3_reg_672[22]_i_2_n_8 ),
        .O(p_0_in[22]));
  LUT6 #(
    .INIT(64'hA99A9AA965565665)) 
    \lshr_ln49_3_reg_672[22]_i_2 
       (.I0(out[0]),
        .I1(\select_ln49_2_reg_667[0]_i_3_n_8 ),
        .I2(lshr_ln49_3_reg_672[4]),
        .I3(select_ln49_2_reg_667),
        .I4(lshr_ln49_3_reg_672[0]),
        .I5(R_0_reg_156[0]),
        .O(\lshr_ln49_3_reg_672[22]_i_2_n_8 ));
  LUT5 #(
    .INIT(32'h5565AA6A)) 
    \lshr_ln49_3_reg_672[23]_i_1 
       (.I0(p_0_in[29]),
        .I1(select_ln49_2_reg_667),
        .I2(ap_enable_reg_pp0_iter2_reg_n_8),
        .I3(icmp_ln41_reg_658_pp0_iter1_reg),
        .I4(R_0_reg_156[27]),
        .O(p_0_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hAA9A5595)) 
    \lshr_ln49_3_reg_672[24]_i_1 
       (.I0(\lshr_ln49_3_reg_672[30]_i_2_n_8 ),
        .I1(lshr_ln49_3_reg_672[0]),
        .I2(ap_enable_reg_pp0_iter2_reg_n_8),
        .I3(icmp_ln41_reg_658_pp0_iter1_reg),
        .I4(R_0_reg_156[28]),
        .O(\lshr_ln49_3_reg_672[24]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    \lshr_ln49_3_reg_672[25]_i_1 
       (.I0(R_0_reg_156[29]),
        .I1(icmp_ln41_reg_658_pp0_iter1_reg),
        .I2(ap_enable_reg_pp0_iter2_reg_n_8),
        .I3(lshr_ln49_3_reg_672[1]),
        .O(p_0_in[25]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \lshr_ln49_3_reg_672[26]_i_1 
       (.I0(R_0_reg_156[30]),
        .I1(icmp_ln41_reg_658_pp0_iter1_reg),
        .I2(ap_enable_reg_pp0_iter2_reg_n_8),
        .I3(lshr_ln49_3_reg_672[2]),
        .O(p_0_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hAA3CAAAA)) 
    \lshr_ln49_3_reg_672[27]_i_1 
       (.I0(R_0_reg_156[31]),
        .I1(lshr_ln49_3_reg_672[3]),
        .I2(select_ln49_2_reg_667),
        .I3(icmp_ln41_reg_658_pp0_iter1_reg),
        .I4(ap_enable_reg_pp0_iter2_reg_n_8),
        .O(p_0_in[27]));
  LUT6 #(
    .INIT(64'h55553CC3AAAAC33C)) 
    \lshr_ln49_3_reg_672[28]_i_1 
       (.I0(R_0_reg_156[0]),
        .I1(lshr_ln49_3_reg_672[0]),
        .I2(select_ln49_2_reg_667),
        .I3(lshr_ln49_3_reg_672[4]),
        .I4(\select_ln49_2_reg_667[0]_i_3_n_8 ),
        .I5(out[0]),
        .O(p_0_in[28]));
  LUT6 #(
    .INIT(64'h566565569AA9A99A)) 
    \lshr_ln49_3_reg_672[29]_i_1 
       (.I0(out[1]),
        .I1(\select_ln49_2_reg_667[0]_i_3_n_8 ),
        .I2(lshr_ln49_3_reg_672[5]),
        .I3(lshr_ln49_3_reg_672[1]),
        .I4(\lshr_ln49_3_reg_672[29]_i_2_n_8 ),
        .I5(R_0_reg_156[1]),
        .O(p_0_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lshr_ln49_3_reg_672[29]_i_2 
       (.I0(lshr_ln49_3_reg_672[0]),
        .I1(select_ln49_2_reg_667),
        .O(\lshr_ln49_3_reg_672[29]_i_2_n_8 ));
  LUT6 #(
    .INIT(64'h6966999696996669)) 
    \lshr_ln49_3_reg_672[2]_i_1 
       (.I0(\lshr_ln49_3_reg_672[20]_i_2_n_8 ),
        .I1(out[6]),
        .I2(\select_ln49_2_reg_667[0]_i_3_n_8 ),
        .I3(\lshr_ln49_3_reg_672[2]_i_2_n_8 ),
        .I4(R_0_reg_156[6]),
        .I5(\lshr_ln49_3_reg_672[30]_i_2_n_8 ),
        .O(\lshr_ln49_3_reg_672[2]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \lshr_ln49_3_reg_672[2]_i_2 
       (.I0(select_ln49_2_reg_667),
        .I1(lshr_ln49_3_reg_672[3]),
        .I2(lshr_ln49_3_reg_672[0]),
        .I3(lshr_ln49_3_reg_672[1]),
        .I4(lshr_ln49_3_reg_672[10]),
        .O(\lshr_ln49_3_reg_672[2]_i_2_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \lshr_ln49_3_reg_672[30]_i_1 
       (.I0(\lshr_ln49_3_reg_672[30]_i_2_n_8 ),
        .O(\lshr_ln49_3_reg_672[30]_i_1_n_8 ));
  LUT5 #(
    .INIT(32'hA6AA5559)) 
    \lshr_ln49_3_reg_672[30]_i_2 
       (.I0(out[2]),
        .I1(ap_enable_reg_pp0_iter2_reg_n_8),
        .I2(icmp_ln41_reg_658_pp0_iter1_reg),
        .I3(\lshr_ln49_3_reg_672[30]_i_3_n_8 ),
        .I4(R_0_reg_156[2]),
        .O(\lshr_ln49_3_reg_672[30]_i_2_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \lshr_ln49_3_reg_672[30]_i_3 
       (.I0(lshr_ln49_3_reg_672[6]),
        .I1(select_ln49_2_reg_667),
        .I2(lshr_ln49_3_reg_672[0]),
        .I3(lshr_ln49_3_reg_672[2]),
        .I4(lshr_ln49_3_reg_672[1]),
        .O(\lshr_ln49_3_reg_672[30]_i_3_n_8 ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \lshr_ln49_3_reg_672[3]_i_1 
       (.I0(\lshr_ln49_3_reg_672[20]_i_2_n_8 ),
        .I1(\lshr_ln49_3_reg_672[30]_i_2_n_8 ),
        .I2(R_0_reg_156[7]),
        .I3(\select_ln49_2_reg_667[0]_i_3_n_8 ),
        .I4(\R_0_reg_156[7]_i_1_n_8 ),
        .I5(out[7]),
        .O(\lshr_ln49_3_reg_672[3]_i_1_n_8 ));
  LUT6 #(
    .INIT(64'h6A66656695999A99)) 
    \lshr_ln49_3_reg_672[4]_i_1 
       (.I0(\lshr_ln49_3_reg_672[30]_i_2_n_8 ),
        .I1(R_0_reg_156[8]),
        .I2(icmp_ln41_reg_658_pp0_iter1_reg),
        .I3(ap_enable_reg_pp0_iter2_reg_n_8),
        .I4(\lshr_ln49_3_reg_672[4]_i_2_n_8 ),
        .I5(p_0_in[29]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \lshr_ln49_3_reg_672[4]_i_2 
       (.I0(lshr_ln49_3_reg_672[3]),
        .I1(lshr_ln49_3_reg_672[2]),
        .I2(lshr_ln49_3_reg_672[0]),
        .I3(lshr_ln49_3_reg_672[12]),
        .O(\lshr_ln49_3_reg_672[4]_i_2_n_8 ));
  LUT6 #(
    .INIT(64'h995A999966A56666)) 
    \lshr_ln49_3_reg_672[5]_i_1 
       (.I0(\lshr_ln49_3_reg_672[30]_i_2_n_8 ),
        .I1(R_0_reg_156[9]),
        .I2(\lshr_ln49_3_reg_672[5]_i_2_n_8 ),
        .I3(icmp_ln41_reg_658_pp0_iter1_reg),
        .I4(ap_enable_reg_pp0_iter2_reg_n_8),
        .I5(\lshr_ln49_3_reg_672[22]_i_2_n_8 ),
        .O(\lshr_ln49_3_reg_672[5]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \lshr_ln49_3_reg_672[5]_i_2 
       (.I0(lshr_ln49_3_reg_672[3]),
        .I1(lshr_ln49_3_reg_672[13]),
        .I2(lshr_ln49_3_reg_672[1]),
        .I3(lshr_ln49_3_reg_672[0]),
        .O(\lshr_ln49_3_reg_672[5]_i_2_n_8 ));
  LUT6 #(
    .INIT(64'hAAAA966955559669)) 
    \lshr_ln49_3_reg_672[6]_i_1 
       (.I0(\lshr_ln49_3_reg_672[20]_i_2_n_8 ),
        .I1(lshr_ln49_3_reg_672[2]),
        .I2(lshr_ln49_3_reg_672[14]),
        .I3(\select_ln49_2_reg_667[0]_i_5_n_8 ),
        .I4(\select_ln49_2_reg_667[0]_i_3_n_8 ),
        .I5(R_0_reg_156[10]),
        .O(\lshr_ln49_3_reg_672[6]_i_1_n_8 ));
  LUT6 #(
    .INIT(64'h6A66656695999A99)) 
    \lshr_ln49_3_reg_672[7]_i_1 
       (.I0(\lshr_ln49_3_reg_672[30]_i_2_n_8 ),
        .I1(R_0_reg_156[11]),
        .I2(icmp_ln41_reg_658_pp0_iter1_reg),
        .I3(ap_enable_reg_pp0_iter2_reg_n_8),
        .I4(\lshr_ln49_3_reg_672[7]_i_2_n_8 ),
        .I5(p_0_in[29]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \lshr_ln49_3_reg_672[7]_i_2 
       (.I0(select_ln49_2_reg_667),
        .I1(lshr_ln49_3_reg_672[3]),
        .I2(lshr_ln49_3_reg_672[1]),
        .I3(lshr_ln49_3_reg_672[2]),
        .I4(lshr_ln49_3_reg_672[15]),
        .O(\lshr_ln49_3_reg_672[7]_i_2_n_8 ));
  LUT6 #(
    .INIT(64'h9A95959A656A6A65)) 
    \lshr_ln49_3_reg_672[8]_i_1 
       (.I0(\lshr_ln49_3_reg_672[30]_i_2_n_8 ),
        .I1(R_0_reg_156[12]),
        .I2(\select_ln49_2_reg_667[0]_i_3_n_8 ),
        .I3(lshr_ln49_3_reg_672[16]),
        .I4(\select_ln49_2_reg_667[0]_i_4_n_8 ),
        .I5(\lshr_ln49_3_reg_672[22]_i_2_n_8 ),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'hAAAA69AA55556955)) 
    \lshr_ln49_3_reg_672[9]_i_1 
       (.I0(\lshr_ln49_3_reg_672[20]_i_2_n_8 ),
        .I1(lshr_ln49_3_reg_672[17]),
        .I2(lshr_ln49_3_reg_672[3]),
        .I3(ap_enable_reg_pp0_iter2_reg_n_8),
        .I4(icmp_ln41_reg_658_pp0_iter1_reg),
        .I5(R_0_reg_156[13]),
        .O(\lshr_ln49_3_reg_672[9]_i_1_n_8 ));
  FDRE \lshr_ln49_3_reg_672_reg[0] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(\lshr_ln49_3_reg_672[0]_i_1_n_8 ),
        .Q(lshr_ln49_3_reg_672[0]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[10] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(p_0_in[10]),
        .Q(lshr_ln49_3_reg_672[10]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[11] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(\lshr_ln49_3_reg_672[11]_i_1_n_8 ),
        .Q(lshr_ln49_3_reg_672[11]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[12] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(\lshr_ln49_3_reg_672[12]_i_1_n_8 ),
        .Q(lshr_ln49_3_reg_672[12]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[13] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(p_0_in[13]),
        .Q(lshr_ln49_3_reg_672[13]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[14] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(p_0_in[14]),
        .Q(lshr_ln49_3_reg_672[14]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[15] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(p_0_in[15]),
        .Q(lshr_ln49_3_reg_672[15]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[16] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(p_0_in[16]),
        .Q(lshr_ln49_3_reg_672[16]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[17] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(p_0_in[17]),
        .Q(lshr_ln49_3_reg_672[17]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[18] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(p_0_in[18]),
        .Q(lshr_ln49_3_reg_672[18]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[19] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(p_0_in[19]),
        .Q(lshr_ln49_3_reg_672[19]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[1] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(p_0_in[1]),
        .Q(lshr_ln49_3_reg_672[1]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[20] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(\lshr_ln49_3_reg_672[20]_i_1_n_8 ),
        .Q(lshr_ln49_3_reg_672[20]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[21] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(p_0_in[21]),
        .Q(lshr_ln49_3_reg_672[21]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[22] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(p_0_in[22]),
        .Q(lshr_ln49_3_reg_672[22]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[23] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(p_0_in[23]),
        .Q(lshr_ln49_3_reg_672[23]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[24] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(\lshr_ln49_3_reg_672[24]_i_1_n_8 ),
        .Q(lshr_ln49_3_reg_672[24]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[25] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(p_0_in[25]),
        .Q(lshr_ln49_3_reg_672[25]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[26] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(p_0_in[26]),
        .Q(lshr_ln49_3_reg_672[26]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[27] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(p_0_in[27]),
        .Q(lshr_ln49_3_reg_672[27]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[28] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(p_0_in[28]),
        .Q(lshr_ln49_3_reg_672[28]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[29] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(p_0_in[29]),
        .Q(lshr_ln49_3_reg_672[29]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[2] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(\lshr_ln49_3_reg_672[2]_i_1_n_8 ),
        .Q(lshr_ln49_3_reg_672[2]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[30] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(\lshr_ln49_3_reg_672[30]_i_1_n_8 ),
        .Q(lshr_ln49_3_reg_672[30]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[3] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(\lshr_ln49_3_reg_672[3]_i_1_n_8 ),
        .Q(lshr_ln49_3_reg_672[3]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[4] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(p_0_in[4]),
        .Q(lshr_ln49_3_reg_672[4]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[5] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(\lshr_ln49_3_reg_672[5]_i_1_n_8 ),
        .Q(lshr_ln49_3_reg_672[5]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[6] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(\lshr_ln49_3_reg_672[6]_i_1_n_8 ),
        .Q(lshr_ln49_3_reg_672[6]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[7] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(p_0_in[7]),
        .Q(lshr_ln49_3_reg_672[7]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[8] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(p_0_in[8]),
        .Q(lshr_ln49_3_reg_672[8]),
        .R(1'b0));
  FDRE \lshr_ln49_3_reg_672_reg[9] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(\lshr_ln49_3_reg_672[9]_i_1_n_8 ),
        .Q(lshr_ln49_3_reg_672[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBABBBBBBBBBBBBBB)) 
    \mOutPtr[4]_i_2__1 
       (.I0(\mOutPtr_reg[5] ),
        .I1(\i1_0_reg_180_reg[2]_0 ),
        .I2(\icmp_ln41_reg_658_reg_n_8_[0] ),
        .I3(ap_enable_reg_pp0_iter1_reg_n_8),
        .I4(ap_CS_fsm_pp0_stage0),
        .I5(byt2crc_1_empty_n),
        .O(\icmp_ln41_reg_658_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000FF7FFFFF0080)) 
    \mOutPtr[5]_i_1__1 
       (.I0(byt2crc_1_empty_n),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_enable_reg_pp0_iter1_reg_n_8),
        .I3(\icmp_ln41_reg_658_reg_n_8_[0] ),
        .I4(\i1_0_reg_180_reg[2]_0 ),
        .I5(\mOutPtr_reg[5] ),
        .O(internal_empty_n_reg));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \mOutPtr[5]_i_1__2 
       (.I0(icmp_ln68_reg_711),
        .I1(ap_enable_reg_pp1_iter1_reg_n_8),
        .I2(ap_CS_fsm_pp1_stage0),
        .I3(crc2fra_1_full_n),
        .I4(\mOutPtr_reg[5]_0 ),
        .O(\icmp_ln68_reg_711_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hFD000000)) 
    \mOutPtr[5]_i_3__3 
       (.I0(\i1_0_reg_180_reg_n_8_[2] ),
        .I1(\i1_0_reg_180_reg_n_8_[1] ),
        .I2(\i1_0_reg_180_reg_n_8_[0] ),
        .I3(ap_CS_fsm_state7),
        .I4(byt2crc_1_empty_n),
        .O(\i1_0_reg_180_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h00B0)) 
    \select_ln49_2_reg_667[0]_i_1 
       (.I0(byt2crc_1_empty_n),
        .I1(ap_enable_reg_pp0_iter1_reg_n_8),
        .I2(ap_CS_fsm_pp0_stage0),
        .I3(\icmp_ln41_reg_658_reg_n_8_[0] ),
        .O(lshr_ln49_3_reg_6720));
  LUT6 #(
    .INIT(64'h6A65656A656A6A65)) 
    \select_ln49_2_reg_667[0]_i_2 
       (.I0(out[3]),
        .I1(R_0_reg_156[3]),
        .I2(\select_ln49_2_reg_667[0]_i_3_n_8 ),
        .I3(\select_ln49_2_reg_667[0]_i_4_n_8 ),
        .I4(lshr_ln49_3_reg_672[7]),
        .I5(\select_ln49_2_reg_667[0]_i_5_n_8 ),
        .O(\select_ln49_2_reg_667[0]_i_2_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \select_ln49_2_reg_667[0]_i_3 
       (.I0(icmp_ln41_reg_658_pp0_iter1_reg),
        .I1(ap_enable_reg_pp0_iter2_reg_n_8),
        .O(\select_ln49_2_reg_667[0]_i_3_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \select_ln49_2_reg_667[0]_i_4 
       (.I0(lshr_ln49_3_reg_672[2]),
        .I1(select_ln49_2_reg_667),
        .I2(lshr_ln49_3_reg_672[3]),
        .O(\select_ln49_2_reg_667[0]_i_4_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \select_ln49_2_reg_667[0]_i_5 
       (.I0(lshr_ln49_3_reg_672[0]),
        .I1(lshr_ln49_3_reg_672[1]),
        .O(\select_ln49_2_reg_667[0]_i_5_n_8 ));
  FDRE \select_ln49_2_reg_667_reg[0] 
       (.C(clock),
        .CE(lshr_ln49_3_reg_6720),
        .D(\select_ln49_2_reg_667[0]_i_2_n_8 ),
        .Q(select_ln49_2_reg_667),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "CRCCheck_do_gen_ibkb" *) 
module my_module2_0_CRCCheck_do_gen_ibkb
   (\i3_0_reg_213_reg[4] ,
    \i3_0_reg_213_reg[5] ,
    \icmp_ln41_reg_658_reg[0] ,
    \i3_0_reg_213_reg[6] ,
    icmp_ln41_reg_6580,
    \q0_reg[7] ,
    clock,
    out,
    \q0[7]_i_5 ,
    crc2fra_1_full_n,
    \q0_reg[0] ,
    icmp_ln68_reg_711,
    \i_0_reg_168_reg[6] ,
    Q,
    \i_0_reg_168_reg[6]_0 ,
    byt2crc_1_empty_n,
    \q0_reg[0]_0 ,
    ap_enable_reg_pp1_iter0,
    \q0_reg[0]_1 );
  output \i3_0_reg_213_reg[4] ;
  output \i3_0_reg_213_reg[5] ;
  output \icmp_ln41_reg_658_reg[0] ;
  output \i3_0_reg_213_reg[6] ;
  output icmp_ln41_reg_6580;
  output [7:0]\q0_reg[7] ;
  input clock;
  input [7:0]out;
  input \q0[7]_i_5 ;
  input crc2fra_1_full_n;
  input \q0_reg[0] ;
  input icmp_ln68_reg_711;
  input \i_0_reg_168_reg[6] ;
  input [1:0]Q;
  input \i_0_reg_168_reg[6]_0 ;
  input byt2crc_1_empty_n;
  input [6:0]\q0_reg[0]_0 ;
  input ap_enable_reg_pp1_iter0;
  input [6:0]\q0_reg[0]_1 ;

  wire [1:0]Q;
  wire ap_enable_reg_pp1_iter0;
  wire byt2crc_1_empty_n;
  wire clock;
  wire crc2fra_1_full_n;
  wire \i3_0_reg_213_reg[4] ;
  wire \i3_0_reg_213_reg[5] ;
  wire \i3_0_reg_213_reg[6] ;
  wire \i_0_reg_168_reg[6] ;
  wire \i_0_reg_168_reg[6]_0 ;
  wire icmp_ln41_reg_6580;
  wire \icmp_ln41_reg_658_reg[0] ;
  wire icmp_ln68_reg_711;
  wire [7:0]out;
  wire \q0[7]_i_5 ;
  wire \q0_reg[0] ;
  wire [6:0]\q0_reg[0]_0 ;
  wire [6:0]\q0_reg[0]_1 ;
  wire [7:0]\q0_reg[7] ;

  my_module2_0_CRCCheck_do_gen_ibkb_ram CRCCheck_do_gen_ibkb_ram_U
       (.Q(Q),
        .ap_enable_reg_pp1_iter0(ap_enable_reg_pp1_iter0),
        .byt2crc_1_empty_n(byt2crc_1_empty_n),
        .clock(clock),
        .crc2fra_1_full_n(crc2fra_1_full_n),
        .\i3_0_reg_213_reg[4] (\i3_0_reg_213_reg[4] ),
        .\i3_0_reg_213_reg[5] (\i3_0_reg_213_reg[5] ),
        .\i3_0_reg_213_reg[6] (\i3_0_reg_213_reg[6] ),
        .\i_0_reg_168_reg[6] (\i_0_reg_168_reg[6] ),
        .\i_0_reg_168_reg[6]_0 (\i_0_reg_168_reg[6]_0 ),
        .icmp_ln41_reg_6580(icmp_ln41_reg_6580),
        .\icmp_ln41_reg_658_reg[0] (\icmp_ln41_reg_658_reg[0] ),
        .icmp_ln68_reg_711(icmp_ln68_reg_711),
        .out(out),
        .\q0[7]_i_5_0 (\q0[7]_i_5 ),
        .\q0_reg[0]_0 (\q0_reg[0] ),
        .\q0_reg[0]_1 (\q0_reg[0]_0 ),
        .\q0_reg[0]_2 (\q0_reg[0]_1 ),
        .\q0_reg[7]_0 (\q0_reg[7] ));
endmodule

(* ORIG_REF_NAME = "CRCCheck_do_gen_ibkb_ram" *) 
module my_module2_0_CRCCheck_do_gen_ibkb_ram
   (\i3_0_reg_213_reg[4] ,
    \i3_0_reg_213_reg[5] ,
    \icmp_ln41_reg_658_reg[0] ,
    \i3_0_reg_213_reg[6] ,
    icmp_ln41_reg_6580,
    \q0_reg[7]_0 ,
    clock,
    out,
    \q0[7]_i_5_0 ,
    crc2fra_1_full_n,
    \q0_reg[0]_0 ,
    icmp_ln68_reg_711,
    \i_0_reg_168_reg[6] ,
    Q,
    \i_0_reg_168_reg[6]_0 ,
    byt2crc_1_empty_n,
    \q0_reg[0]_1 ,
    ap_enable_reg_pp1_iter0,
    \q0_reg[0]_2 );
  output \i3_0_reg_213_reg[4] ;
  output \i3_0_reg_213_reg[5] ;
  output \icmp_ln41_reg_658_reg[0] ;
  output \i3_0_reg_213_reg[6] ;
  output icmp_ln41_reg_6580;
  output [7:0]\q0_reg[7]_0 ;
  input clock;
  input [7:0]out;
  input \q0[7]_i_5_0 ;
  input crc2fra_1_full_n;
  input \q0_reg[0]_0 ;
  input icmp_ln68_reg_711;
  input \i_0_reg_168_reg[6] ;
  input [1:0]Q;
  input \i_0_reg_168_reg[6]_0 ;
  input byt2crc_1_empty_n;
  input [6:0]\q0_reg[0]_1 ;
  input ap_enable_reg_pp1_iter0;
  input [6:0]\q0_reg[0]_2 ;

  wire [1:0]Q;
  wire [3:0]address0;
  wire ap_enable_reg_pp1_iter0;
  wire byt2crc_1_empty_n;
  wire ce0;
  wire clock;
  wire crc2fra_1_full_n;
  wire \i3_0_reg_213_reg[4] ;
  wire \i3_0_reg_213_reg[5] ;
  wire \i3_0_reg_213_reg[6] ;
  wire \i_0_reg_168_reg[6] ;
  wire \i_0_reg_168_reg[6]_0 ;
  wire icmp_ln41_reg_6580;
  wire \icmp_ln41_reg_658_reg[0] ;
  wire icmp_ln68_reg_711;
  wire [7:0]out;
  wire \q0[0]_i_1_n_8 ;
  wire \q0[0]_i_2_n_8 ;
  wire \q0[1]_i_1_n_8 ;
  wire \q0[1]_i_2_n_8 ;
  wire \q0[2]_i_1_n_8 ;
  wire \q0[2]_i_2_n_8 ;
  wire \q0[3]_i_1_n_8 ;
  wire \q0[3]_i_2_n_8 ;
  wire \q0[4]_i_1_n_8 ;
  wire \q0[4]_i_2_n_8 ;
  wire \q0[5]_i_1_n_8 ;
  wire \q0[5]_i_2_n_8 ;
  wire \q0[6]_i_1_n_8 ;
  wire \q0[6]_i_2_n_8 ;
  wire \q0[7]_i_2_n_8 ;
  wire \q0[7]_i_3_n_8 ;
  wire \q0[7]_i_5_0 ;
  wire \q0[7]_i_5_n_8 ;
  wire \q0_reg[0]_0 ;
  wire [6:0]\q0_reg[0]_1 ;
  wire [6:0]\q0_reg[0]_2 ;
  wire [7:0]\q0_reg[7]_0 ;
  wire ram_reg_0_15_0_0__0_n_8;
  wire ram_reg_0_15_0_0__1_n_8;
  wire ram_reg_0_15_0_0__2_n_8;
  wire ram_reg_0_15_0_0__3_n_8;
  wire ram_reg_0_15_0_0__4_n_8;
  wire ram_reg_0_15_0_0__5_n_8;
  wire ram_reg_0_15_0_0__6_n_8;
  wire ram_reg_0_15_0_0_n_8;
  wire ram_reg_0_63_0_0__0_n_8;
  wire ram_reg_0_63_0_0__1_n_8;
  wire ram_reg_0_63_0_0__2_n_8;
  wire ram_reg_0_63_0_0__3_n_8;
  wire ram_reg_0_63_0_0__4_n_8;
  wire ram_reg_0_63_0_0__5_n_8;
  wire ram_reg_0_63_0_0__6_n_8;
  wire ram_reg_0_63_0_0_i_1_n_8;
  wire ram_reg_0_63_0_0_n_8;

  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \i_0_reg_168[6]_i_2 
       (.I0(\i_0_reg_168_reg[6]_0 ),
        .I1(\i_0_reg_168_reg[6] ),
        .I2(Q[0]),
        .I3(byt2crc_1_empty_n),
        .O(\icmp_ln41_reg_658_reg[0] ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \q0[0]_i_1 
       (.I0(out[0]),
        .I1(\icmp_ln41_reg_658_reg[0] ),
        .I2(\q0[0]_i_2_n_8 ),
        .I3(\i3_0_reg_213_reg[5] ),
        .I4(\i3_0_reg_213_reg[6] ),
        .I5(ram_reg_0_63_0_0_n_8),
        .O(\q0[0]_i_1_n_8 ));
  LUT5 #(
    .INIT(32'h0222A222)) 
    \q0[0]_i_2 
       (.I0(ram_reg_0_15_0_0_n_8),
        .I1(\q0_reg[0]_2 [4]),
        .I2(ap_enable_reg_pp1_iter0),
        .I3(Q[1]),
        .I4(\q0_reg[0]_1 [4]),
        .O(\q0[0]_i_2_n_8 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \q0[1]_i_1 
       (.I0(out[1]),
        .I1(\icmp_ln41_reg_658_reg[0] ),
        .I2(\q0[1]_i_2_n_8 ),
        .I3(\i3_0_reg_213_reg[5] ),
        .I4(\i3_0_reg_213_reg[6] ),
        .I5(ram_reg_0_63_0_0__0_n_8),
        .O(\q0[1]_i_1_n_8 ));
  LUT5 #(
    .INIT(32'h0222A222)) 
    \q0[1]_i_2 
       (.I0(ram_reg_0_15_0_0__0_n_8),
        .I1(\q0_reg[0]_2 [4]),
        .I2(ap_enable_reg_pp1_iter0),
        .I3(Q[1]),
        .I4(\q0_reg[0]_1 [4]),
        .O(\q0[1]_i_2_n_8 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \q0[2]_i_1 
       (.I0(out[2]),
        .I1(\icmp_ln41_reg_658_reg[0] ),
        .I2(\q0[2]_i_2_n_8 ),
        .I3(\i3_0_reg_213_reg[5] ),
        .I4(\i3_0_reg_213_reg[6] ),
        .I5(ram_reg_0_63_0_0__1_n_8),
        .O(\q0[2]_i_1_n_8 ));
  LUT5 #(
    .INIT(32'h0222A222)) 
    \q0[2]_i_2 
       (.I0(ram_reg_0_15_0_0__1_n_8),
        .I1(\q0_reg[0]_2 [4]),
        .I2(ap_enable_reg_pp1_iter0),
        .I3(Q[1]),
        .I4(\q0_reg[0]_1 [4]),
        .O(\q0[2]_i_2_n_8 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \q0[3]_i_1 
       (.I0(out[3]),
        .I1(\icmp_ln41_reg_658_reg[0] ),
        .I2(\q0[3]_i_2_n_8 ),
        .I3(\i3_0_reg_213_reg[5] ),
        .I4(\i3_0_reg_213_reg[6] ),
        .I5(ram_reg_0_63_0_0__2_n_8),
        .O(\q0[3]_i_1_n_8 ));
  LUT5 #(
    .INIT(32'h0222A222)) 
    \q0[3]_i_2 
       (.I0(ram_reg_0_15_0_0__2_n_8),
        .I1(\q0_reg[0]_2 [4]),
        .I2(ap_enable_reg_pp1_iter0),
        .I3(Q[1]),
        .I4(\q0_reg[0]_1 [4]),
        .O(\q0[3]_i_2_n_8 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \q0[4]_i_1 
       (.I0(out[4]),
        .I1(\icmp_ln41_reg_658_reg[0] ),
        .I2(\q0[4]_i_2_n_8 ),
        .I3(\i3_0_reg_213_reg[5] ),
        .I4(\i3_0_reg_213_reg[6] ),
        .I5(ram_reg_0_63_0_0__3_n_8),
        .O(\q0[4]_i_1_n_8 ));
  LUT5 #(
    .INIT(32'h0222A222)) 
    \q0[4]_i_2 
       (.I0(ram_reg_0_15_0_0__3_n_8),
        .I1(\q0_reg[0]_2 [4]),
        .I2(ap_enable_reg_pp1_iter0),
        .I3(Q[1]),
        .I4(\q0_reg[0]_1 [4]),
        .O(\q0[4]_i_2_n_8 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \q0[5]_i_1 
       (.I0(out[5]),
        .I1(\icmp_ln41_reg_658_reg[0] ),
        .I2(\q0[5]_i_2_n_8 ),
        .I3(\i3_0_reg_213_reg[5] ),
        .I4(\i3_0_reg_213_reg[6] ),
        .I5(ram_reg_0_63_0_0__4_n_8),
        .O(\q0[5]_i_1_n_8 ));
  LUT5 #(
    .INIT(32'h0222A222)) 
    \q0[5]_i_2 
       (.I0(ram_reg_0_15_0_0__4_n_8),
        .I1(\q0_reg[0]_2 [4]),
        .I2(ap_enable_reg_pp1_iter0),
        .I3(Q[1]),
        .I4(\q0_reg[0]_1 [4]),
        .O(\q0[5]_i_2_n_8 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \q0[6]_i_1 
       (.I0(out[6]),
        .I1(\icmp_ln41_reg_658_reg[0] ),
        .I2(\q0[6]_i_2_n_8 ),
        .I3(\i3_0_reg_213_reg[5] ),
        .I4(\i3_0_reg_213_reg[6] ),
        .I5(ram_reg_0_63_0_0__5_n_8),
        .O(\q0[6]_i_1_n_8 ));
  LUT5 #(
    .INIT(32'h0222A222)) 
    \q0[6]_i_2 
       (.I0(ram_reg_0_15_0_0__5_n_8),
        .I1(\q0_reg[0]_2 [4]),
        .I2(ap_enable_reg_pp1_iter0),
        .I3(Q[1]),
        .I4(\q0_reg[0]_1 [4]),
        .O(\q0[6]_i_2_n_8 ));
  LUT6 #(
    .INIT(64'hFFFFFB00FB00FB00)) 
    \q0[7]_i_1 
       (.I0(crc2fra_1_full_n),
        .I1(\q0_reg[0]_0 ),
        .I2(icmp_ln68_reg_711),
        .I3(\q0[7]_i_3_n_8 ),
        .I4(\i_0_reg_168_reg[6] ),
        .I5(icmp_ln41_reg_6580),
        .O(ce0));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \q0[7]_i_2 
       (.I0(out[7]),
        .I1(\icmp_ln41_reg_658_reg[0] ),
        .I2(\q0[7]_i_5_n_8 ),
        .I3(\i3_0_reg_213_reg[5] ),
        .I4(\i3_0_reg_213_reg[6] ),
        .I5(ram_reg_0_63_0_0__6_n_8),
        .O(\q0[7]_i_2_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q0[7]_i_3 
       (.I0(Q[1]),
        .I1(ap_enable_reg_pp1_iter0),
        .O(\q0[7]_i_3_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \q0[7]_i_4 
       (.I0(Q[0]),
        .I1(\i_0_reg_168_reg[6]_0 ),
        .I2(\i_0_reg_168_reg[6] ),
        .I3(byt2crc_1_empty_n),
        .O(icmp_ln41_reg_6580));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h0222A222)) 
    \q0[7]_i_5 
       (.I0(ram_reg_0_15_0_0__6_n_8),
        .I1(\q0_reg[0]_2 [4]),
        .I2(ap_enable_reg_pp1_iter0),
        .I3(Q[1]),
        .I4(\q0_reg[0]_1 [4]),
        .O(\q0[7]_i_5_n_8 ));
  FDRE \q0_reg[0] 
       (.C(clock),
        .CE(ce0),
        .D(\q0[0]_i_1_n_8 ),
        .Q(\q0_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \q0_reg[1] 
       (.C(clock),
        .CE(ce0),
        .D(\q0[1]_i_1_n_8 ),
        .Q(\q0_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \q0_reg[2] 
       (.C(clock),
        .CE(ce0),
        .D(\q0[2]_i_1_n_8 ),
        .Q(\q0_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \q0_reg[3] 
       (.C(clock),
        .CE(ce0),
        .D(\q0[3]_i_1_n_8 ),
        .Q(\q0_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \q0_reg[4] 
       (.C(clock),
        .CE(ce0),
        .D(\q0[4]_i_1_n_8 ),
        .Q(\q0_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \q0_reg[5] 
       (.C(clock),
        .CE(ce0),
        .D(\q0[5]_i_1_n_8 ),
        .Q(\q0_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \q0_reg[6] 
       (.C(clock),
        .CE(ce0),
        .D(\q0[6]_i_1_n_8 ),
        .Q(\q0_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \q0_reg[7] 
       (.C(clock),
        .CE(ce0),
        .D(\q0[7]_i_2_n_8 ),
        .Q(\q0_reg[7]_0 [7]),
        .R(1'b0));
  (* RTL_RAM_BITS = "544" *) 
  (* RTL_RAM_NAME = "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "67" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(out[0]),
        .O(ram_reg_0_15_0_0_n_8),
        .WCLK(clock),
        .WE(\q0[7]_i_5_0 ));
  (* RTL_RAM_BITS = "544" *) 
  (* RTL_RAM_NAME = "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "67" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__0
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(out[1]),
        .O(ram_reg_0_15_0_0__0_n_8),
        .WCLK(clock),
        .WE(\q0[7]_i_5_0 ));
  (* RTL_RAM_BITS = "544" *) 
  (* RTL_RAM_NAME = "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "67" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__1
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(out[2]),
        .O(ram_reg_0_15_0_0__1_n_8),
        .WCLK(clock),
        .WE(\q0[7]_i_5_0 ));
  (* RTL_RAM_BITS = "544" *) 
  (* RTL_RAM_NAME = "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "67" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__2
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(out[3]),
        .O(ram_reg_0_15_0_0__2_n_8),
        .WCLK(clock),
        .WE(\q0[7]_i_5_0 ));
  (* RTL_RAM_BITS = "544" *) 
  (* RTL_RAM_NAME = "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "67" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__3
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(out[4]),
        .O(ram_reg_0_15_0_0__3_n_8),
        .WCLK(clock),
        .WE(\q0[7]_i_5_0 ));
  (* RTL_RAM_BITS = "544" *) 
  (* RTL_RAM_NAME = "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "67" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__4
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(out[5]),
        .O(ram_reg_0_15_0_0__4_n_8),
        .WCLK(clock),
        .WE(\q0[7]_i_5_0 ));
  (* RTL_RAM_BITS = "544" *) 
  (* RTL_RAM_NAME = "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "67" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__5
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(out[6]),
        .O(ram_reg_0_15_0_0__5_n_8),
        .WCLK(clock),
        .WE(\q0[7]_i_5_0 ));
  (* RTL_RAM_BITS = "544" *) 
  (* RTL_RAM_NAME = "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "67" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__6
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(out[7]),
        .O(ram_reg_0_15_0_0__6_n_8),
        .WCLK(clock),
        .WE(\q0[7]_i_5_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    ram_reg_0_15_0_0_i_2
       (.I0(\q0_reg[0]_1 [6]),
        .I1(Q[1]),
        .I2(ap_enable_reg_pp1_iter0),
        .I3(\q0_reg[0]_2 [6]),
        .O(\i3_0_reg_213_reg[6] ));
  (* RTL_RAM_BITS = "544" *) 
  (* RTL_RAM_NAME = "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM64X1S ram_reg_0_63_0_0
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(\i3_0_reg_213_reg[4] ),
        .A5(\i3_0_reg_213_reg[5] ),
        .D(out[0]),
        .O(ram_reg_0_63_0_0_n_8),
        .WCLK(clock),
        .WE(ram_reg_0_63_0_0_i_1_n_8));
  (* RTL_RAM_BITS = "544" *) 
  (* RTL_RAM_NAME = "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM64X1S ram_reg_0_63_0_0__0
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(\i3_0_reg_213_reg[4] ),
        .A5(\i3_0_reg_213_reg[5] ),
        .D(out[1]),
        .O(ram_reg_0_63_0_0__0_n_8),
        .WCLK(clock),
        .WE(ram_reg_0_63_0_0_i_1_n_8));
  (* RTL_RAM_BITS = "544" *) 
  (* RTL_RAM_NAME = "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM64X1S ram_reg_0_63_0_0__1
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(\i3_0_reg_213_reg[4] ),
        .A5(\i3_0_reg_213_reg[5] ),
        .D(out[2]),
        .O(ram_reg_0_63_0_0__1_n_8),
        .WCLK(clock),
        .WE(ram_reg_0_63_0_0_i_1_n_8));
  (* RTL_RAM_BITS = "544" *) 
  (* RTL_RAM_NAME = "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM64X1S ram_reg_0_63_0_0__2
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(\i3_0_reg_213_reg[4] ),
        .A5(\i3_0_reg_213_reg[5] ),
        .D(out[3]),
        .O(ram_reg_0_63_0_0__2_n_8),
        .WCLK(clock),
        .WE(ram_reg_0_63_0_0_i_1_n_8));
  (* RTL_RAM_BITS = "544" *) 
  (* RTL_RAM_NAME = "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM64X1S ram_reg_0_63_0_0__3
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(\i3_0_reg_213_reg[4] ),
        .A5(\i3_0_reg_213_reg[5] ),
        .D(out[4]),
        .O(ram_reg_0_63_0_0__3_n_8),
        .WCLK(clock),
        .WE(ram_reg_0_63_0_0_i_1_n_8));
  (* RTL_RAM_BITS = "544" *) 
  (* RTL_RAM_NAME = "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM64X1S ram_reg_0_63_0_0__4
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(\i3_0_reg_213_reg[4] ),
        .A5(\i3_0_reg_213_reg[5] ),
        .D(out[5]),
        .O(ram_reg_0_63_0_0__4_n_8),
        .WCLK(clock),
        .WE(ram_reg_0_63_0_0_i_1_n_8));
  (* RTL_RAM_BITS = "544" *) 
  (* RTL_RAM_NAME = "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1S ram_reg_0_63_0_0__5
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(\i3_0_reg_213_reg[4] ),
        .A5(\i3_0_reg_213_reg[5] ),
        .D(out[6]),
        .O(ram_reg_0_63_0_0__5_n_8),
        .WCLK(clock),
        .WE(ram_reg_0_63_0_0_i_1_n_8));
  (* RTL_RAM_BITS = "544" *) 
  (* RTL_RAM_NAME = "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1S ram_reg_0_63_0_0__6
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(\i3_0_reg_213_reg[4] ),
        .A5(\i3_0_reg_213_reg[5] ),
        .D(out[7]),
        .O(ram_reg_0_63_0_0__6_n_8),
        .WCLK(clock),
        .WE(ram_reg_0_63_0_0_i_1_n_8));
  LUT5 #(
    .INIT(32'h0222A222)) 
    ram_reg_0_63_0_0_i_1
       (.I0(\icmp_ln41_reg_658_reg[0] ),
        .I1(\q0_reg[0]_2 [6]),
        .I2(ap_enable_reg_pp1_iter0),
        .I3(Q[1]),
        .I4(\q0_reg[0]_1 [6]),
        .O(ram_reg_0_63_0_0_i_1_n_8));
  LUT4 #(
    .INIT(16'hBF80)) 
    ram_reg_0_63_0_0_i_2
       (.I0(\q0_reg[0]_1 [0]),
        .I1(Q[1]),
        .I2(ap_enable_reg_pp1_iter0),
        .I3(\q0_reg[0]_2 [0]),
        .O(address0[0]));
  LUT4 #(
    .INIT(16'hBF80)) 
    ram_reg_0_63_0_0_i_3
       (.I0(\q0_reg[0]_1 [1]),
        .I1(Q[1]),
        .I2(ap_enable_reg_pp1_iter0),
        .I3(\q0_reg[0]_2 [1]),
        .O(address0[1]));
  LUT4 #(
    .INIT(16'hBF80)) 
    ram_reg_0_63_0_0_i_4
       (.I0(\q0_reg[0]_1 [2]),
        .I1(Q[1]),
        .I2(ap_enable_reg_pp1_iter0),
        .I3(\q0_reg[0]_2 [2]),
        .O(address0[2]));
  LUT4 #(
    .INIT(16'hBF80)) 
    ram_reg_0_63_0_0_i_5
       (.I0(\q0_reg[0]_1 [3]),
        .I1(Q[1]),
        .I2(ap_enable_reg_pp1_iter0),
        .I3(\q0_reg[0]_2 [3]),
        .O(address0[3]));
  LUT4 #(
    .INIT(16'hBF80)) 
    ram_reg_0_63_0_0_i_6
       (.I0(\q0_reg[0]_1 [4]),
        .I1(Q[1]),
        .I2(ap_enable_reg_pp1_iter0),
        .I3(\q0_reg[0]_2 [4]),
        .O(\i3_0_reg_213_reg[4] ));
  LUT4 #(
    .INIT(16'hBF80)) 
    ram_reg_0_63_0_0_i_7
       (.I0(\q0_reg[0]_1 [5]),
        .I1(Q[1]),
        .I2(ap_enable_reg_pp1_iter0),
        .I3(\q0_reg[0]_2 [5]),
        .O(\i3_0_reg_213_reg[5] ));
endmodule

(* ORIG_REF_NAME = "Detecteur2" *) 
module my_module2_0_Detecteur2
   (dbl2scalc_1_full_n,
    dbl2tsep_1_full_n,
    ce,
    \mOutPtr_reg[1] ,
    \mOutPtr_reg[0] ,
    \mOutPtr_reg[0]_0 ,
    internal_empty_n_reg,
    internal_empty_n3_out,
    D,
    \dout_buf_reg[7] ,
    clock,
    Q,
    reset,
    mod2dbl_1_empty_n,
    internal_empty_n_reg_0,
    internal_empty_n_reg_1,
    internal_empty_n_reg_2,
    \mOutPtr_reg[5] ,
    det2dow_1_empty_n,
    \mOutPtr_reg[2] ,
    det2dow_1_full_n,
    \ap_CS_fsm_reg[1] );
  output dbl2scalc_1_full_n;
  output dbl2tsep_1_full_n;
  output ce;
  output \mOutPtr_reg[1] ;
  output \mOutPtr_reg[0] ;
  output \mOutPtr_reg[0]_0 ;
  output internal_empty_n_reg;
  output internal_empty_n3_out;
  output [0:0]D;
  output [7:0]\dout_buf_reg[7] ;
  input clock;
  input [7:0]Q;
  input reset;
  input mod2dbl_1_empty_n;
  input internal_empty_n_reg_0;
  input internal_empty_n_reg_1;
  input internal_empty_n_reg_2;
  input [1:0]\mOutPtr_reg[5] ;
  input det2dow_1_empty_n;
  input [1:0]\mOutPtr_reg[2] ;
  input det2dow_1_full_n;
  input [0:0]\ap_CS_fsm_reg[1] ;

  wire [0:0]D;
  wire [7:0]Q;
  wire [0:0]\ap_CS_fsm_reg[1] ;
  wire ce;
  wire ce_2;
  wire clock;
  wire dbl2scalc_1_empty_n;
  wire dbl2scalc_1_fifo_U_n_22;
  wire dbl2scalc_1_fifo_U_n_23;
  wire dbl2scalc_1_fifo_U_n_24;
  wire dbl2scalc_1_fifo_U_n_25;
  wire dbl2scalc_1_fifo_U_n_26;
  wire dbl2scalc_1_fifo_U_n_27;
  wire dbl2scalc_1_fifo_U_n_28;
  wire dbl2scalc_1_fifo_U_n_29;
  wire dbl2scalc_1_fifo_U_n_30;
  wire dbl2scalc_1_fifo_U_n_9;
  wire dbl2scalc_1_full_n;
  wire dbl2tsep_1_empty_n;
  wire dbl2tsep_1_fifo_U_n_10;
  wire dbl2tsep_1_fifo_U_n_11;
  wire dbl2tsep_1_fifo_U_n_12;
  wire dbl2tsep_1_fifo_U_n_13;
  wire dbl2tsep_1_fifo_U_n_14;
  wire dbl2tsep_1_fifo_U_n_15;
  wire dbl2tsep_1_fifo_U_n_16;
  wire dbl2tsep_1_fifo_U_n_17;
  wire dbl2tsep_1_fifo_U_n_18;
  wire dbl2tsep_1_fifo_U_n_28;
  wire dbl2tsep_1_fifo_U_n_29;
  wire dbl2tsep_1_fifo_U_n_30;
  wire dbl2tsep_1_fifo_U_n_31;
  wire dbl2tsep_1_fifo_U_n_32;
  wire dbl2tsep_1_fifo_U_n_33;
  wire dbl2tsep_1_fifo_U_n_34;
  wire dbl2tsep_1_fifo_U_n_35;
  wire dbl2tsep_1_fifo_U_n_36;
  wire dbl2tsep_1_full_n;
  wire det2dow_1_empty_n;
  wire det2dow_1_full_n;
  wire detect_1_dout;
  wire detect_1_empty_n;
  wire detect_1_fifo_U_n_21;
  wire detect_1_fifo_U_n_22;
  wire detect_1_fifo_U_n_23;
  wire detect_1_fifo_U_n_24;
  wire detect_1_fifo_U_n_25;
  wire detect_1_fifo_U_n_26;
  wire detect_1_fifo_U_n_27;
  wire detect_1_fifo_U_n_28;
  wire detect_1_fifo_U_n_29;
  wire detect_1_fifo_U_n_30;
  wire detect_1_fifo_U_n_31;
  wire detect_1_full_n;
  wire [7:0]dout_buf;
  wire [7:0]\dout_buf_reg[7] ;
  wire empty_n;
  wire empty_n_3;
  wire grp_Detecteur2_fu_226_e_read;
  wire \grp_Seuil_calc2_do_gen_fu_56/ap_CS_fsm_pp0_stage0 ;
  wire \grp_Seuil_calc2_do_gen_fu_56/ap_block_pp0_stage0_110010_in ;
  wire \grp_Seuil_calc2_do_gen_fu_56/ap_enable_reg_pp0_iter0 ;
  wire grp_Seuil_calc2_fu_100_detect_din;
  wire grp_Seuil_calc2_fu_100_n_15;
  wire \grp_trames_separ2_do_gen_fu_60/ap_CS_fsm_state2 ;
  wire \grp_trames_separ2_do_gen_fu_60/ap_NS_fsm17_out ;
  wire \grp_trames_separ2_do_gen_fu_60/tmp_reg_173 ;
  wire grp_trames_separ2_fu_114_n_10;
  wire grp_trames_separ2_fu_114_n_12;
  wire grp_trames_separ2_fu_114_n_14;
  wire grp_trames_separ2_fu_114_n_20;
  wire internal_empty_n3_out;
  wire internal_empty_n_reg;
  wire internal_empty_n_reg_0;
  wire internal_empty_n_reg_1;
  wire internal_empty_n_reg_2;
  wire [8:0]mOutPtr_reg;
  wire \mOutPtr_reg[0]_0 ;
  wire [1:0]\mOutPtr_reg[2] ;
  wire [1:0]\mOutPtr_reg[5] ;
  wire mOutPtr_reg_0_sn_1;
  wire mOutPtr_reg_1_sn_1;
  wire mod2dbl_1_empty_n;
  wire p_0_out__24_carry__0_n_10;
  wire p_0_out__24_carry__0_n_11;
  wire p_0_out__24_carry__0_n_12;
  wire p_0_out__24_carry__0_n_13;
  wire p_0_out__24_carry__0_n_14;
  wire p_0_out__24_carry__0_n_15;
  wire p_0_out__24_carry__0_n_8;
  wire p_0_out__24_carry__0_n_9;
  wire p_0_out__24_carry__1_n_15;
  wire p_0_out__24_carry_n_10;
  wire p_0_out__24_carry_n_11;
  wire p_0_out__24_carry_n_12;
  wire p_0_out__24_carry_n_13;
  wire p_0_out__24_carry_n_14;
  wire p_0_out__24_carry_n_15;
  wire p_0_out__24_carry_n_8;
  wire p_0_out__24_carry_n_9;
  wire p_0_out__49_carry__0_n_10;
  wire p_0_out__49_carry__0_n_11;
  wire p_0_out__49_carry__0_n_12;
  wire p_0_out__49_carry__0_n_13;
  wire p_0_out__49_carry__0_n_14;
  wire p_0_out__49_carry__0_n_15;
  wire p_0_out__49_carry__0_n_8;
  wire p_0_out__49_carry__0_n_9;
  wire p_0_out__49_carry__1_n_11;
  wire p_0_out__49_carry__1_n_14;
  wire p_0_out__49_carry__1_n_15;
  wire p_0_out__49_carry_n_10;
  wire p_0_out__49_carry_n_11;
  wire p_0_out__49_carry_n_12;
  wire p_0_out__49_carry_n_13;
  wire p_0_out__49_carry_n_14;
  wire p_0_out__49_carry_n_15;
  wire p_0_out__49_carry_n_8;
  wire p_0_out__49_carry_n_9;
  wire p_0_out_carry__0_n_10;
  wire p_0_out_carry__0_n_11;
  wire p_0_out_carry__0_n_12;
  wire p_0_out_carry__0_n_13;
  wire p_0_out_carry__0_n_14;
  wire p_0_out_carry__0_n_15;
  wire p_0_out_carry__0_n_8;
  wire p_0_out_carry__0_n_9;
  wire p_0_out_carry__1_n_15;
  wire p_0_out_carry_n_10;
  wire p_0_out_carry_n_11;
  wire p_0_out_carry_n_12;
  wire p_0_out_carry_n_13;
  wire p_0_out_carry_n_14;
  wire p_0_out_carry_n_15;
  wire p_0_out_carry_n_8;
  wire p_0_out_carry_n_9;
  wire pop;
  wire pop_4;
  wire reset;
  wire usedw14_out;
  wire usedw14_out_0;
  wire [7:0]usedw_reg;
  wire [7:0]usedw_reg_1;
  wire [3:0]NLW_p_0_out__24_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_p_0_out__24_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_p_0_out__49_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_p_0_out__49_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_p_0_out_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_p_0_out_carry__1_O_UNCONNECTED;

  assign \mOutPtr_reg[0]  = mOutPtr_reg_0_sn_1;
  assign \mOutPtr_reg[1]  = mOutPtr_reg_1_sn_1;
  my_module2_0_fifo_w8_d1024_A dbl2scalc_1_fifo_U
       (.D({p_0_out_carry__1_n_15,p_0_out_carry__0_n_12,p_0_out_carry__0_n_13,p_0_out_carry__0_n_14,p_0_out_carry__0_n_15,p_0_out_carry_n_12,p_0_out_carry_n_13,p_0_out_carry_n_14,p_0_out_carry_n_15}),
        .DI(usedw14_out_0),
        .E(grp_Detecteur2_fu_226_e_read),
        .Q(Q),
        .S({dbl2scalc_1_fifo_U_n_22,dbl2scalc_1_fifo_U_n_23,dbl2scalc_1_fifo_U_n_24,dbl2scalc_1_fifo_U_n_25}),
        .ap_CS_fsm_pp0_stage0(\grp_Seuil_calc2_do_gen_fu_56/ap_CS_fsm_pp0_stage0 ),
        .ap_block_pp0_stage0_110010_in(\grp_Seuil_calc2_do_gen_fu_56/ap_block_pp0_stage0_110010_in ),
        .ap_enable_reg_pp0_iter0(\grp_Seuil_calc2_do_gen_fu_56/ap_enable_reg_pp0_iter0 ),
        .clock(clock),
        .dbl2scalc_1_empty_n(dbl2scalc_1_empty_n),
        .\dout_buf_reg[0]_0 (dbl2tsep_1_fifo_U_n_11),
        .\dout_buf_reg[1]_0 (dbl2tsep_1_fifo_U_n_12),
        .\dout_buf_reg[2]_0 (dbl2tsep_1_fifo_U_n_13),
        .\dout_buf_reg[3]_0 (dbl2tsep_1_fifo_U_n_14),
        .\dout_buf_reg[4]_0 (dbl2tsep_1_fifo_U_n_15),
        .\dout_buf_reg[5]_0 (dbl2tsep_1_fifo_U_n_16),
        .\dout_buf_reg[6]_0 (dbl2tsep_1_fifo_U_n_17),
        .\dout_buf_reg[7]_0 (dout_buf),
        .\dout_buf_reg[7]_1 (dbl2tsep_1_fifo_U_n_18),
        .dout_valid_reg_0(grp_Seuil_calc2_fu_100_n_15),
        .empty_n_reg_0(dbl2scalc_1_fifo_U_n_9),
        .empty_n_reg_1(empty_n_3),
        .empty_n_reg_2(dbl2tsep_1_full_n),
        .full_n_reg_0(dbl2scalc_1_full_n),
        .full_n_reg_1(usedw14_out),
        .full_n_reg_2(empty_n),
        .mod2dbl_1_empty_n(mod2dbl_1_empty_n),
        .pop(pop),
        .pop_0(pop_4),
        .reset(reset),
        .\usedw_reg[7]_0 (usedw_reg),
        .\usedw_reg[7]_1 ({dbl2scalc_1_fifo_U_n_26,dbl2scalc_1_fifo_U_n_27,dbl2scalc_1_fifo_U_n_28,dbl2scalc_1_fifo_U_n_29}),
        .\usedw_reg[8]_0 (dbl2scalc_1_fifo_U_n_30));
  my_module2_0_fifo_w8_d1024_A_3 dbl2tsep_1_fifo_U
       (.D({p_0_out__24_carry__1_n_15,p_0_out__24_carry__0_n_12,p_0_out__24_carry__0_n_13,p_0_out__24_carry__0_n_14,p_0_out__24_carry__0_n_15,p_0_out__24_carry_n_12,p_0_out__24_carry_n_13,p_0_out__24_carry_n_14,p_0_out__24_carry_n_15}),
        .E(grp_Detecteur2_fu_226_e_read),
        .Q(Q),
        .S({dbl2tsep_1_fifo_U_n_28,dbl2tsep_1_fifo_U_n_29,dbl2tsep_1_fifo_U_n_30,dbl2tsep_1_fifo_U_n_31}),
        .clock(clock),
        .dbl2tsep_1_empty_n(dbl2tsep_1_empty_n),
        .\dout_buf_reg[7]_0 (\dout_buf_reg[7] ),
        .dout_valid_reg_0(grp_trames_separ2_fu_114_n_20),
        .empty_n_reg_0(dbl2tsep_1_fifo_U_n_10),
        .empty_n_reg_1(empty_n),
        .full_n_reg_0(dbl2tsep_1_full_n),
        .mod2dbl_1_empty_n(mod2dbl_1_empty_n),
        .pop(pop_4),
        .\q_tmp_reg[0]_0 (dbl2tsep_1_fifo_U_n_11),
        .\q_tmp_reg[0]_1 (dbl2scalc_1_full_n),
        .\q_tmp_reg[1]_0 (dbl2tsep_1_fifo_U_n_12),
        .\q_tmp_reg[2]_0 (dbl2tsep_1_fifo_U_n_13),
        .\q_tmp_reg[3]_0 (dbl2tsep_1_fifo_U_n_14),
        .\q_tmp_reg[4]_0 (dbl2tsep_1_fifo_U_n_15),
        .\q_tmp_reg[5]_0 (dbl2tsep_1_fifo_U_n_16),
        .\q_tmp_reg[6]_0 (dbl2tsep_1_fifo_U_n_17),
        .\q_tmp_reg[7]_0 (dbl2tsep_1_fifo_U_n_18),
        .reset(reset),
        .\usedw_reg[7]_0 (usedw_reg_1),
        .\usedw_reg[7]_1 ({dbl2tsep_1_fifo_U_n_32,dbl2tsep_1_fifo_U_n_33,dbl2tsep_1_fifo_U_n_34,dbl2tsep_1_fifo_U_n_35}),
        .\usedw_reg[8]_0 (dbl2tsep_1_fifo_U_n_36));
  my_module2_0_fifo_w1_d1024_A detect_1_fifo_U
       (.D({p_0_out__49_carry__1_n_14,p_0_out__49_carry__1_n_15,p_0_out__49_carry__0_n_12,p_0_out__49_carry__0_n_13,p_0_out__49_carry__0_n_14,p_0_out__49_carry__0_n_15,p_0_out__49_carry_n_12,p_0_out__49_carry_n_13,p_0_out__49_carry_n_14,p_0_out__49_carry_n_15}),
        .E(grp_trames_separ2_fu_114_n_10),
        .Q(\grp_trames_separ2_do_gen_fu_60/ap_CS_fsm_state2 ),
        .S({detect_1_fifo_U_n_22,detect_1_fifo_U_n_23,detect_1_fifo_U_n_24,detect_1_fifo_U_n_25}),
        .SR(\grp_trames_separ2_do_gen_fu_60/ap_NS_fsm17_out ),
        .\ap_CS_fsm_reg[1] (detect_1_fifo_U_n_21),
        .ce(ce_2),
        .clock(clock),
        .dbl2tsep_1_empty_n(dbl2tsep_1_empty_n),
        .detect_1_dout(detect_1_dout),
        .detect_1_empty_n(detect_1_empty_n),
        .detect_1_full_n(detect_1_full_n),
        .in(grp_Seuil_calc2_fu_100_detect_din),
        .internal_full_n_reg_0(grp_trames_separ2_fu_114_n_14),
        .\mOutPtr_reg[4]_0 (ce),
        .\mOutPtr_reg[7]_0 ({detect_1_fifo_U_n_26,detect_1_fifo_U_n_27,detect_1_fifo_U_n_28,detect_1_fifo_U_n_29}),
        .\mOutPtr_reg[8]_0 (mOutPtr_reg),
        .\mOutPtr_reg[9]_0 ({detect_1_fifo_U_n_30,detect_1_fifo_U_n_31}),
        .reset(reset),
        .tmp_reg_173(\grp_trames_separ2_do_gen_fu_60/tmp_reg_173 ));
  my_module2_0_Seuil_calc2 grp_Seuil_calc2_fu_100
       (.D(dout_buf),
        .ap_CS_fsm_pp0_stage0(\grp_Seuil_calc2_do_gen_fu_56/ap_CS_fsm_pp0_stage0 ),
        .\ap_CS_fsm_reg[0] (D),
        .\ap_CS_fsm_reg[1] (grp_Seuil_calc2_fu_100_n_15),
        .\ap_CS_fsm_reg[1]_0 (\ap_CS_fsm_reg[1] ),
        .ap_block_pp0_stage0_110010_in(\grp_Seuil_calc2_do_gen_fu_56/ap_block_pp0_stage0_110010_in ),
        .ap_enable_reg_pp0_iter0(\grp_Seuil_calc2_do_gen_fu_56/ap_enable_reg_pp0_iter0 ),
        .ce(ce_2),
        .clock(clock),
        .dbl2scalc_1_empty_n(dbl2scalc_1_empty_n),
        .dbl2scalc_1_full_n(dbl2scalc_1_full_n),
        .dbl2tsep_1_full_n(dbl2tsep_1_full_n),
        .detect_1_full_n(detect_1_full_n),
        .\dout_buf_reg[7] (dbl2scalc_1_fifo_U_n_9),
        .full_n_reg(empty_n_3),
        .in(grp_Seuil_calc2_fu_100_detect_din),
        .mod2dbl_1_empty_n(mod2dbl_1_empty_n),
        .pop(pop),
        .reset(reset));
  my_module2_0_trames_separ2 grp_trames_separ2_fu_114
       (.DI(grp_trames_separ2_fu_114_n_12),
        .E(grp_trames_separ2_fu_114_n_10),
        .Q(\grp_trames_separ2_do_gen_fu_60/ap_CS_fsm_state2 ),
        .SR(\grp_trames_separ2_do_gen_fu_60/ap_NS_fsm17_out ),
        .\ap_CS_fsm_reg[1] (grp_trames_separ2_fu_114_n_20),
        .ce(ce_2),
        .clock(clock),
        .dbl2tsep_1_empty_n(dbl2tsep_1_empty_n),
        .det2dow_1_empty_n(det2dow_1_empty_n),
        .det2dow_1_full_n(det2dow_1_full_n),
        .detect_1_dout(detect_1_dout),
        .detect_1_empty_n(detect_1_empty_n),
        .\dout_buf_reg[7] (dbl2tsep_1_fifo_U_n_10),
        .dout_valid_reg(grp_trames_separ2_fu_114_n_14),
        .internal_empty_n3_out(internal_empty_n3_out),
        .internal_empty_n_reg(internal_empty_n_reg),
        .internal_empty_n_reg_0(internal_empty_n_reg_0),
        .internal_empty_n_reg_1(internal_empty_n_reg_1),
        .internal_empty_n_reg_2(internal_empty_n_reg_2),
        .internal_full_n_reg(ce),
        .\mOutPtr_reg[0] (mOutPtr_reg_0_sn_1),
        .\mOutPtr_reg[0]_0 (\mOutPtr_reg[0]_0 ),
        .\mOutPtr_reg[1] (mOutPtr_reg_1_sn_1),
        .\mOutPtr_reg[2] (\mOutPtr_reg[2] ),
        .\mOutPtr_reg[5] (\mOutPtr_reg[5] ),
        .pop(pop_4),
        .reset(reset),
        .tmp_reg_173(\grp_trames_separ2_do_gen_fu_60/tmp_reg_173 ),
        .\tmp_reg_173_reg[0] (detect_1_fifo_U_n_21));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_0_out__24_carry
       (.CI(1'b0),
        .CO({p_0_out__24_carry_n_8,p_0_out__24_carry_n_9,p_0_out__24_carry_n_10,p_0_out__24_carry_n_11}),
        .CYINIT(usedw_reg_1[0]),
        .DI({usedw_reg_1[3:1],usedw14_out}),
        .O({p_0_out__24_carry_n_12,p_0_out__24_carry_n_13,p_0_out__24_carry_n_14,p_0_out__24_carry_n_15}),
        .S({dbl2tsep_1_fifo_U_n_28,dbl2tsep_1_fifo_U_n_29,dbl2tsep_1_fifo_U_n_30,dbl2tsep_1_fifo_U_n_31}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_0_out__24_carry__0
       (.CI(p_0_out__24_carry_n_8),
        .CO({p_0_out__24_carry__0_n_8,p_0_out__24_carry__0_n_9,p_0_out__24_carry__0_n_10,p_0_out__24_carry__0_n_11}),
        .CYINIT(1'b0),
        .DI(usedw_reg_1[7:4]),
        .O({p_0_out__24_carry__0_n_12,p_0_out__24_carry__0_n_13,p_0_out__24_carry__0_n_14,p_0_out__24_carry__0_n_15}),
        .S({dbl2tsep_1_fifo_U_n_32,dbl2tsep_1_fifo_U_n_33,dbl2tsep_1_fifo_U_n_34,dbl2tsep_1_fifo_U_n_35}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_0_out__24_carry__1
       (.CI(p_0_out__24_carry__0_n_8),
        .CO(NLW_p_0_out__24_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_p_0_out__24_carry__1_O_UNCONNECTED[3:1],p_0_out__24_carry__1_n_15}),
        .S({1'b0,1'b0,1'b0,dbl2tsep_1_fifo_U_n_36}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_0_out__49_carry
       (.CI(1'b0),
        .CO({p_0_out__49_carry_n_8,p_0_out__49_carry_n_9,p_0_out__49_carry_n_10,p_0_out__49_carry_n_11}),
        .CYINIT(mOutPtr_reg[0]),
        .DI({mOutPtr_reg[3:1],grp_trames_separ2_fu_114_n_12}),
        .O({p_0_out__49_carry_n_12,p_0_out__49_carry_n_13,p_0_out__49_carry_n_14,p_0_out__49_carry_n_15}),
        .S({detect_1_fifo_U_n_22,detect_1_fifo_U_n_23,detect_1_fifo_U_n_24,detect_1_fifo_U_n_25}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_0_out__49_carry__0
       (.CI(p_0_out__49_carry_n_8),
        .CO({p_0_out__49_carry__0_n_8,p_0_out__49_carry__0_n_9,p_0_out__49_carry__0_n_10,p_0_out__49_carry__0_n_11}),
        .CYINIT(1'b0),
        .DI(mOutPtr_reg[7:4]),
        .O({p_0_out__49_carry__0_n_12,p_0_out__49_carry__0_n_13,p_0_out__49_carry__0_n_14,p_0_out__49_carry__0_n_15}),
        .S({detect_1_fifo_U_n_26,detect_1_fifo_U_n_27,detect_1_fifo_U_n_28,detect_1_fifo_U_n_29}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_0_out__49_carry__1
       (.CI(p_0_out__49_carry__0_n_8),
        .CO({NLW_p_0_out__49_carry__1_CO_UNCONNECTED[3:1],p_0_out__49_carry__1_n_11}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,mOutPtr_reg[8]}),
        .O({NLW_p_0_out__49_carry__1_O_UNCONNECTED[3:2],p_0_out__49_carry__1_n_14,p_0_out__49_carry__1_n_15}),
        .S({1'b0,1'b0,detect_1_fifo_U_n_30,detect_1_fifo_U_n_31}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_0_out_carry
       (.CI(1'b0),
        .CO({p_0_out_carry_n_8,p_0_out_carry_n_9,p_0_out_carry_n_10,p_0_out_carry_n_11}),
        .CYINIT(usedw_reg[0]),
        .DI({usedw_reg[3:1],usedw14_out_0}),
        .O({p_0_out_carry_n_12,p_0_out_carry_n_13,p_0_out_carry_n_14,p_0_out_carry_n_15}),
        .S({dbl2scalc_1_fifo_U_n_22,dbl2scalc_1_fifo_U_n_23,dbl2scalc_1_fifo_U_n_24,dbl2scalc_1_fifo_U_n_25}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_0_out_carry__0
       (.CI(p_0_out_carry_n_8),
        .CO({p_0_out_carry__0_n_8,p_0_out_carry__0_n_9,p_0_out_carry__0_n_10,p_0_out_carry__0_n_11}),
        .CYINIT(1'b0),
        .DI(usedw_reg[7:4]),
        .O({p_0_out_carry__0_n_12,p_0_out_carry__0_n_13,p_0_out_carry__0_n_14,p_0_out_carry__0_n_15}),
        .S({dbl2scalc_1_fifo_U_n_26,dbl2scalc_1_fifo_U_n_27,dbl2scalc_1_fifo_U_n_28,dbl2scalc_1_fifo_U_n_29}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_0_out_carry__1
       (.CI(p_0_out_carry__0_n_8),
        .CO(NLW_p_0_out_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_p_0_out_carry__1_O_UNCONNECTED[3:1],p_0_out_carry__1_n_15}),
        .S({1'b0,1'b0,1'b0,dbl2scalc_1_fifo_U_n_30}));
endmodule

(* ORIG_REF_NAME = "DownSampling" *) 
module my_module2_0_DownSampling
   (\ap_CS_fsm_reg[1] ,
    Q,
    \ap_CS_fsm_reg[1]_0 ,
    \trunc_ln_reg_97_reg[7] ,
    det2dow_1_empty_n,
    ce,
    dow2bit_1_full_n,
    reset,
    clock,
    E,
    e_dout,
    \trunc_ln_reg_97_reg[0] );
  output [0:0]\ap_CS_fsm_reg[1] ;
  output [2:0]Q;
  output \ap_CS_fsm_reg[1]_0 ;
  output [7:0]\trunc_ln_reg_97_reg[7] ;
  input det2dow_1_empty_n;
  input ce;
  input dow2bit_1_full_n;
  input reset;
  input clock;
  input [0:0]E;
  input [7:0]e_dout;
  input [0:0]\trunc_ln_reg_97_reg[0] ;

  wire [0:0]E;
  wire [2:0]Q;
  wire [0:0]\ap_CS_fsm_reg[1] ;
  wire \ap_CS_fsm_reg[1]_0 ;
  wire ce;
  wire clock;
  wire det2dow_1_empty_n;
  wire dow2bit_1_full_n;
  wire [7:0]e_dout;
  wire reset;
  wire [0:0]\trunc_ln_reg_97_reg[0] ;
  wire [7:0]\trunc_ln_reg_97_reg[7] ;

  my_module2_0_DownSampling_do_gen grp_DownSampling_do_gen_fu_56
       (.E(E),
        .Q(Q),
        .\ap_CS_fsm_reg[1]_0 (\ap_CS_fsm_reg[1] ),
        .\ap_CS_fsm_reg[1]_1 (\ap_CS_fsm_reg[1]_0 ),
        .ce(ce),
        .clock(clock),
        .det2dow_1_empty_n(det2dow_1_empty_n),
        .dow2bit_1_full_n(dow2bit_1_full_n),
        .e_dout(e_dout),
        .reset(reset),
        .\trunc_ln_reg_97_reg[0]_0 (\trunc_ln_reg_97_reg[0] ),
        .\trunc_ln_reg_97_reg[7]_0 (\trunc_ln_reg_97_reg[7] ));
endmodule

(* ORIG_REF_NAME = "DownSampling_do_gen" *) 
module my_module2_0_DownSampling_do_gen
   (\ap_CS_fsm_reg[1]_0 ,
    Q,
    \ap_CS_fsm_reg[1]_1 ,
    \trunc_ln_reg_97_reg[7]_0 ,
    det2dow_1_empty_n,
    ce,
    dow2bit_1_full_n,
    reset,
    clock,
    E,
    e_dout,
    \trunc_ln_reg_97_reg[0]_0 );
  output [0:0]\ap_CS_fsm_reg[1]_0 ;
  output [2:0]Q;
  output \ap_CS_fsm_reg[1]_1 ;
  output [7:0]\trunc_ln_reg_97_reg[7]_0 ;
  input det2dow_1_empty_n;
  input ce;
  input dow2bit_1_full_n;
  input reset;
  input clock;
  input [0:0]E;
  input [7:0]e_dout;
  input [0:0]\trunc_ln_reg_97_reg[0]_0 ;

  wire [0:0]E;
  wire [2:0]Q;
  wire [0:0]\ap_CS_fsm_reg[1]_0 ;
  wire \ap_CS_fsm_reg[1]_1 ;
  wire [3:1]ap_NS_fsm;
  wire ce;
  wire clock;
  wire det2dow_1_empty_n;
  wire dow2bit_1_full_n;
  wire [7:0]e_dout;
  wire [7:0]p_0_in;
  wire reset;
  wire \trunc_ln_reg_97[2]_i_2_n_8 ;
  wire \trunc_ln_reg_97[2]_i_3_n_8 ;
  wire \trunc_ln_reg_97[2]_i_4_n_8 ;
  wire \trunc_ln_reg_97[2]_i_5_n_8 ;
  wire \trunc_ln_reg_97[6]_i_2_n_8 ;
  wire \trunc_ln_reg_97[6]_i_3_n_8 ;
  wire \trunc_ln_reg_97[6]_i_4_n_8 ;
  wire \trunc_ln_reg_97[6]_i_5_n_8 ;
  wire [0:0]\trunc_ln_reg_97_reg[0]_0 ;
  wire \trunc_ln_reg_97_reg[2]_i_1_n_10 ;
  wire \trunc_ln_reg_97_reg[2]_i_1_n_11 ;
  wire \trunc_ln_reg_97_reg[2]_i_1_n_8 ;
  wire \trunc_ln_reg_97_reg[2]_i_1_n_9 ;
  wire \trunc_ln_reg_97_reg[6]_i_1_n_10 ;
  wire \trunc_ln_reg_97_reg[6]_i_1_n_11 ;
  wire \trunc_ln_reg_97_reg[6]_i_1_n_8 ;
  wire \trunc_ln_reg_97_reg[6]_i_1_n_9 ;
  wire [7:0]\trunc_ln_reg_97_reg[7]_0 ;
  wire [7:0]val_V_reg_92;
  wire [0:0]\NLW_trunc_ln_reg_97_reg[2]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_trunc_ln_reg_97_reg[7]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_trunc_ln_reg_97_reg[7]_i_2_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h8F88)) 
    \ap_CS_fsm[1]_i_1__3 
       (.I0(Q[2]),
        .I1(dow2bit_1_full_n),
        .I2(det2dow_1_empty_n),
        .I3(Q[0]),
        .O(ap_NS_fsm[1]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ap_CS_fsm[2]_i_1__3 
       (.I0(Q[0]),
        .I1(det2dow_1_empty_n),
        .I2(Q[1]),
        .O(ap_NS_fsm[2]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \ap_CS_fsm[3]_i_1__0 
       (.I0(Q[1]),
        .I1(det2dow_1_empty_n),
        .I2(dow2bit_1_full_n),
        .I3(Q[2]),
        .O(ap_NS_fsm[3]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(Q[0]),
        .S(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(Q[1]),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(Q[2]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    \mOutPtr[5]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(det2dow_1_empty_n),
        .I3(ce),
        .O(\ap_CS_fsm_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \mOutPtr[5]_i_5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(det2dow_1_empty_n),
        .O(\ap_CS_fsm_reg[1]_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \trunc_ln_reg_97[2]_i_2 
       (.I0(e_dout[3]),
        .I1(val_V_reg_92[3]),
        .O(\trunc_ln_reg_97[2]_i_2_n_8 ));
  LUT2 #(
    .INIT(4'h6)) 
    \trunc_ln_reg_97[2]_i_3 
       (.I0(e_dout[2]),
        .I1(val_V_reg_92[2]),
        .O(\trunc_ln_reg_97[2]_i_3_n_8 ));
  LUT2 #(
    .INIT(4'h6)) 
    \trunc_ln_reg_97[2]_i_4 
       (.I0(e_dout[1]),
        .I1(val_V_reg_92[1]),
        .O(\trunc_ln_reg_97[2]_i_4_n_8 ));
  LUT2 #(
    .INIT(4'h6)) 
    \trunc_ln_reg_97[2]_i_5 
       (.I0(e_dout[0]),
        .I1(val_V_reg_92[0]),
        .O(\trunc_ln_reg_97[2]_i_5_n_8 ));
  LUT2 #(
    .INIT(4'h6)) 
    \trunc_ln_reg_97[6]_i_2 
       (.I0(e_dout[7]),
        .I1(val_V_reg_92[7]),
        .O(\trunc_ln_reg_97[6]_i_2_n_8 ));
  LUT2 #(
    .INIT(4'h6)) 
    \trunc_ln_reg_97[6]_i_3 
       (.I0(e_dout[6]),
        .I1(val_V_reg_92[6]),
        .O(\trunc_ln_reg_97[6]_i_3_n_8 ));
  LUT2 #(
    .INIT(4'h6)) 
    \trunc_ln_reg_97[6]_i_4 
       (.I0(e_dout[5]),
        .I1(val_V_reg_92[5]),
        .O(\trunc_ln_reg_97[6]_i_4_n_8 ));
  LUT2 #(
    .INIT(4'h6)) 
    \trunc_ln_reg_97[6]_i_5 
       (.I0(e_dout[4]),
        .I1(val_V_reg_92[4]),
        .O(\trunc_ln_reg_97[6]_i_5_n_8 ));
  FDRE \trunc_ln_reg_97_reg[0] 
       (.C(clock),
        .CE(\trunc_ln_reg_97_reg[0]_0 ),
        .D(p_0_in[0]),
        .Q(\trunc_ln_reg_97_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \trunc_ln_reg_97_reg[1] 
       (.C(clock),
        .CE(\trunc_ln_reg_97_reg[0]_0 ),
        .D(p_0_in[1]),
        .Q(\trunc_ln_reg_97_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \trunc_ln_reg_97_reg[2] 
       (.C(clock),
        .CE(\trunc_ln_reg_97_reg[0]_0 ),
        .D(p_0_in[2]),
        .Q(\trunc_ln_reg_97_reg[7]_0 [2]),
        .R(1'b0));
  CARRY4 \trunc_ln_reg_97_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\trunc_ln_reg_97_reg[2]_i_1_n_8 ,\trunc_ln_reg_97_reg[2]_i_1_n_9 ,\trunc_ln_reg_97_reg[2]_i_1_n_10 ,\trunc_ln_reg_97_reg[2]_i_1_n_11 }),
        .CYINIT(1'b0),
        .DI(e_dout[3:0]),
        .O({p_0_in[2:0],\NLW_trunc_ln_reg_97_reg[2]_i_1_O_UNCONNECTED [0]}),
        .S({\trunc_ln_reg_97[2]_i_2_n_8 ,\trunc_ln_reg_97[2]_i_3_n_8 ,\trunc_ln_reg_97[2]_i_4_n_8 ,\trunc_ln_reg_97[2]_i_5_n_8 }));
  FDRE \trunc_ln_reg_97_reg[3] 
       (.C(clock),
        .CE(\trunc_ln_reg_97_reg[0]_0 ),
        .D(p_0_in[3]),
        .Q(\trunc_ln_reg_97_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \trunc_ln_reg_97_reg[4] 
       (.C(clock),
        .CE(\trunc_ln_reg_97_reg[0]_0 ),
        .D(p_0_in[4]),
        .Q(\trunc_ln_reg_97_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \trunc_ln_reg_97_reg[5] 
       (.C(clock),
        .CE(\trunc_ln_reg_97_reg[0]_0 ),
        .D(p_0_in[5]),
        .Q(\trunc_ln_reg_97_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \trunc_ln_reg_97_reg[6] 
       (.C(clock),
        .CE(\trunc_ln_reg_97_reg[0]_0 ),
        .D(p_0_in[6]),
        .Q(\trunc_ln_reg_97_reg[7]_0 [6]),
        .R(1'b0));
  CARRY4 \trunc_ln_reg_97_reg[6]_i_1 
       (.CI(\trunc_ln_reg_97_reg[2]_i_1_n_8 ),
        .CO({\trunc_ln_reg_97_reg[6]_i_1_n_8 ,\trunc_ln_reg_97_reg[6]_i_1_n_9 ,\trunc_ln_reg_97_reg[6]_i_1_n_10 ,\trunc_ln_reg_97_reg[6]_i_1_n_11 }),
        .CYINIT(1'b0),
        .DI(e_dout[7:4]),
        .O(p_0_in[6:3]),
        .S({\trunc_ln_reg_97[6]_i_2_n_8 ,\trunc_ln_reg_97[6]_i_3_n_8 ,\trunc_ln_reg_97[6]_i_4_n_8 ,\trunc_ln_reg_97[6]_i_5_n_8 }));
  FDRE \trunc_ln_reg_97_reg[7] 
       (.C(clock),
        .CE(\trunc_ln_reg_97_reg[0]_0 ),
        .D(p_0_in[7]),
        .Q(\trunc_ln_reg_97_reg[7]_0 [7]),
        .R(1'b0));
  CARRY4 \trunc_ln_reg_97_reg[7]_i_2 
       (.CI(\trunc_ln_reg_97_reg[6]_i_1_n_8 ),
        .CO({\NLW_trunc_ln_reg_97_reg[7]_i_2_CO_UNCONNECTED [3:1],p_0_in[7]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_trunc_ln_reg_97_reg[7]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE \val_V_reg_92_reg[0] 
       (.C(clock),
        .CE(E),
        .D(e_dout[0]),
        .Q(val_V_reg_92[0]),
        .R(1'b0));
  FDRE \val_V_reg_92_reg[1] 
       (.C(clock),
        .CE(E),
        .D(e_dout[1]),
        .Q(val_V_reg_92[1]),
        .R(1'b0));
  FDRE \val_V_reg_92_reg[2] 
       (.C(clock),
        .CE(E),
        .D(e_dout[2]),
        .Q(val_V_reg_92[2]),
        .R(1'b0));
  FDRE \val_V_reg_92_reg[3] 
       (.C(clock),
        .CE(E),
        .D(e_dout[3]),
        .Q(val_V_reg_92[3]),
        .R(1'b0));
  FDRE \val_V_reg_92_reg[4] 
       (.C(clock),
        .CE(E),
        .D(e_dout[4]),
        .Q(val_V_reg_92[4]),
        .R(1'b0));
  FDRE \val_V_reg_92_reg[5] 
       (.C(clock),
        .CE(E),
        .D(e_dout[5]),
        .Q(val_V_reg_92[5]),
        .R(1'b0));
  FDRE \val_V_reg_92_reg[6] 
       (.C(clock),
        .CE(E),
        .D(e_dout[6]),
        .Q(val_V_reg_92[6]),
        .R(1'b0));
  FDRE \val_V_reg_92_reg[7] 
       (.C(clock),
        .CE(E),
        .D(e_dout[7]),
        .Q(val_V_reg_92[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FrameProcessing" *) 
module my_module2_0_FrameProcessing
   (\ap_CS_fsm_reg[9] ,
    internal_empty_n_reg,
    \ap_CS_fsm_reg[11] ,
    \ap_CS_fsm_reg[9]_0 ,
    Q,
    \reg_168_reg[7] ,
    \reg_164_reg[7] ,
    addr_din,
    clock,
    ce,
    crc2fra_1_empty_n,
    rgbv_full_n,
    addr_full_n,
    \ap_CS_fsm_reg[2] ,
    D,
    E,
    \val_V_8_reg_369_reg[0] ,
    \val_V_5_reg_351_reg[0] ,
    \val_V_6_reg_356_reg[0] ,
    reset);
  output \ap_CS_fsm_reg[9] ;
  output internal_empty_n_reg;
  output \ap_CS_fsm_reg[11] ;
  output \ap_CS_fsm_reg[9]_0 ;
  output [4:0]Q;
  output [7:0]\reg_168_reg[7] ;
  output [7:0]\reg_164_reg[7] ;
  output [25:0]addr_din;
  input clock;
  input ce;
  input crc2fra_1_empty_n;
  input rgbv_full_n;
  input addr_full_n;
  input \ap_CS_fsm_reg[2] ;
  input [7:0]D;
  input [0:0]E;
  input [0:0]\val_V_8_reg_369_reg[0] ;
  input [0:0]\val_V_5_reg_351_reg[0] ;
  input [0:0]\val_V_6_reg_356_reg[0] ;
  input reset;

  wire [7:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire [25:0]addr_din;
  wire addr_full_n;
  wire \ap_CS_fsm_reg[11] ;
  wire \ap_CS_fsm_reg[2] ;
  wire \ap_CS_fsm_reg[9] ;
  wire \ap_CS_fsm_reg[9]_0 ;
  wire ce;
  wire clock;
  wire crc2fra_1_empty_n;
  wire internal_empty_n_reg;
  wire [7:0]\reg_164_reg[7] ;
  wire [7:0]\reg_168_reg[7] ;
  wire reset;
  wire rgbv_full_n;
  wire [0:0]\val_V_5_reg_351_reg[0] ;
  wire [0:0]\val_V_6_reg_356_reg[0] ;
  wire [0:0]\val_V_8_reg_369_reg[0] ;

  my_module2_0_FrameProcessing_do_gen grp_FrameProcessing_do_gen_fu_64
       (.D(D),
        .E(E),
        .Q(Q),
        .addr_din(addr_din),
        .addr_full_n(addr_full_n),
        .\ap_CS_fsm_reg[11]_0 (\ap_CS_fsm_reg[11] ),
        .\ap_CS_fsm_reg[2]_0 (\ap_CS_fsm_reg[2] ),
        .\ap_CS_fsm_reg[9]_0 (\ap_CS_fsm_reg[9] ),
        .\ap_CS_fsm_reg[9]_1 (\ap_CS_fsm_reg[9]_0 ),
        .ce(ce),
        .clock(clock),
        .crc2fra_1_empty_n(crc2fra_1_empty_n),
        .internal_empty_n_reg(internal_empty_n_reg),
        .\reg_164_reg[7]_0 (\reg_164_reg[7] ),
        .\reg_168_reg[7]_0 (\reg_168_reg[7] ),
        .reset(reset),
        .rgbv_full_n(rgbv_full_n),
        .\val_V_5_reg_351_reg[0]_0 (\val_V_5_reg_351_reg[0] ),
        .\val_V_6_reg_356_reg[0]_0 (\val_V_6_reg_356_reg[0] ),
        .\val_V_8_reg_369_reg[0]_0 (\val_V_8_reg_369_reg[0] ));
endmodule

(* ORIG_REF_NAME = "FrameProcessing_do_gen" *) 
module my_module2_0_FrameProcessing_do_gen
   (\ap_CS_fsm_reg[9]_0 ,
    internal_empty_n_reg,
    \ap_CS_fsm_reg[11]_0 ,
    \ap_CS_fsm_reg[9]_1 ,
    Q,
    \reg_168_reg[7]_0 ,
    \reg_164_reg[7]_0 ,
    addr_din,
    clock,
    ce,
    crc2fra_1_empty_n,
    rgbv_full_n,
    addr_full_n,
    \ap_CS_fsm_reg[2]_0 ,
    D,
    E,
    \val_V_8_reg_369_reg[0]_0 ,
    \val_V_5_reg_351_reg[0]_0 ,
    \val_V_6_reg_356_reg[0]_0 ,
    reset);
  output \ap_CS_fsm_reg[9]_0 ;
  output internal_empty_n_reg;
  output \ap_CS_fsm_reg[11]_0 ;
  output \ap_CS_fsm_reg[9]_1 ;
  output [4:0]Q;
  output [7:0]\reg_168_reg[7]_0 ;
  output [7:0]\reg_164_reg[7]_0 ;
  output [25:0]addr_din;
  input clock;
  input ce;
  input crc2fra_1_empty_n;
  input rgbv_full_n;
  input addr_full_n;
  input \ap_CS_fsm_reg[2]_0 ;
  input [7:0]D;
  input [0:0]E;
  input [0:0]\val_V_8_reg_369_reg[0]_0 ;
  input [0:0]\val_V_5_reg_351_reg[0]_0 ;
  input [0:0]\val_V_6_reg_356_reg[0]_0 ;
  input reset;

  wire [7:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire [15:1]add_ln107_2_fu_279_p2;
  wire add_ln107_2_fu_279_p2__1_carry__0_i_1_n_8;
  wire add_ln107_2_fu_279_p2__1_carry__0_i_2_n_8;
  wire add_ln107_2_fu_279_p2__1_carry__0_n_10;
  wire add_ln107_2_fu_279_p2__1_carry__0_n_11;
  wire add_ln107_2_fu_279_p2__1_carry__0_n_8;
  wire add_ln107_2_fu_279_p2__1_carry__0_n_9;
  wire add_ln107_2_fu_279_p2__1_carry__1_i_1_n_8;
  wire add_ln107_2_fu_279_p2__1_carry__1_i_2_n_8;
  wire add_ln107_2_fu_279_p2__1_carry__1_i_3_n_8;
  wire add_ln107_2_fu_279_p2__1_carry__1_i_4_n_8;
  wire add_ln107_2_fu_279_p2__1_carry__1_i_5_n_8;
  wire add_ln107_2_fu_279_p2__1_carry__1_n_10;
  wire add_ln107_2_fu_279_p2__1_carry__1_n_11;
  wire add_ln107_2_fu_279_p2__1_carry__1_n_8;
  wire add_ln107_2_fu_279_p2__1_carry__1_n_9;
  wire add_ln107_2_fu_279_p2__1_carry__2_i_1_n_8;
  wire add_ln107_2_fu_279_p2__1_carry__2_i_2_n_8;
  wire add_ln107_2_fu_279_p2__1_carry__2_i_3_n_8;
  wire add_ln107_2_fu_279_p2__1_carry__2_n_10;
  wire add_ln107_2_fu_279_p2__1_carry__2_n_11;
  wire add_ln107_2_fu_279_p2__1_carry_i_1_n_8;
  wire add_ln107_2_fu_279_p2__1_carry_i_2_n_8;
  wire add_ln107_2_fu_279_p2__1_carry_n_10;
  wire add_ln107_2_fu_279_p2__1_carry_n_11;
  wire add_ln107_2_fu_279_p2__1_carry_n_8;
  wire add_ln107_2_fu_279_p2__1_carry_n_9;
  wire [15:0]add_ln107_2_reg_393;
  wire [25:0]addr_din;
  wire addr_full_n;
  wire \ap_CS_fsm[2]_i_3_n_8 ;
  wire \ap_CS_fsm[2]_i_4_n_8 ;
  wire \ap_CS_fsm_reg[11]_0 ;
  wire \ap_CS_fsm_reg[2]_0 ;
  wire \ap_CS_fsm_reg[9]_0 ;
  wire \ap_CS_fsm_reg[9]_1 ;
  wire ap_CS_fsm_state10;
  wire ap_CS_fsm_state11;
  wire ap_CS_fsm_state12;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state8;
  wire ap_CS_fsm_state9;
  wire [11:1]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_NS_fsm11_carry__0_i_1_n_8;
  wire ap_NS_fsm11_carry__0_i_2_n_8;
  wire ap_NS_fsm11_carry__0_n_11;
  wire ap_NS_fsm11_carry_i_1_n_8;
  wire ap_NS_fsm11_carry_i_2_n_8;
  wire ap_NS_fsm11_carry_i_3_n_8;
  wire ap_NS_fsm11_carry_i_4_n_8;
  wire ap_NS_fsm11_carry_n_10;
  wire ap_NS_fsm11_carry_n_11;
  wire ap_NS_fsm11_carry_n_8;
  wire ap_NS_fsm11_carry_n_9;
  wire ce;
  wire clock;
  wire crc2fra_1_empty_n;
  wire [25:0]curr_off_1_fu_310_p2;
  wire curr_off_1_fu_310_p2_carry__0_n_10;
  wire curr_off_1_fu_310_p2_carry__0_n_11;
  wire curr_off_1_fu_310_p2_carry__0_n_8;
  wire curr_off_1_fu_310_p2_carry__0_n_9;
  wire curr_off_1_fu_310_p2_carry__1_n_10;
  wire curr_off_1_fu_310_p2_carry__1_n_11;
  wire curr_off_1_fu_310_p2_carry__1_n_8;
  wire curr_off_1_fu_310_p2_carry__1_n_9;
  wire curr_off_1_fu_310_p2_carry__2_n_10;
  wire curr_off_1_fu_310_p2_carry__2_n_11;
  wire curr_off_1_fu_310_p2_carry__2_n_8;
  wire curr_off_1_fu_310_p2_carry__2_n_9;
  wire curr_off_1_fu_310_p2_carry__3_n_10;
  wire curr_off_1_fu_310_p2_carry__3_n_11;
  wire curr_off_1_fu_310_p2_carry__3_n_8;
  wire curr_off_1_fu_310_p2_carry__3_n_9;
  wire curr_off_1_fu_310_p2_carry__4_n_10;
  wire curr_off_1_fu_310_p2_carry__4_n_11;
  wire curr_off_1_fu_310_p2_carry__4_n_8;
  wire curr_off_1_fu_310_p2_carry__4_n_9;
  wire curr_off_1_fu_310_p2_carry_n_10;
  wire curr_off_1_fu_310_p2_carry_n_11;
  wire curr_off_1_fu_310_p2_carry_n_8;
  wire curr_off_1_fu_310_p2_carry_n_9;
  wire [25:0]curr_off_1_reg_414;
  wire [25:6]curr_off_fu_238_p2;
  wire curr_off_fu_238_p2__1_carry__0_i_1_n_8;
  wire curr_off_fu_238_p2__1_carry__0_i_2_n_8;
  wire curr_off_fu_238_p2__1_carry__0_i_3_n_8;
  wire curr_off_fu_238_p2__1_carry__0_i_4_n_8;
  wire curr_off_fu_238_p2__1_carry__0_i_5_n_8;
  wire curr_off_fu_238_p2__1_carry__0_i_6_n_8;
  wire curr_off_fu_238_p2__1_carry__0_i_7_n_8;
  wire curr_off_fu_238_p2__1_carry__0_i_8_n_8;
  wire curr_off_fu_238_p2__1_carry__0_n_10;
  wire curr_off_fu_238_p2__1_carry__0_n_11;
  wire curr_off_fu_238_p2__1_carry__0_n_8;
  wire curr_off_fu_238_p2__1_carry__0_n_9;
  wire curr_off_fu_238_p2__1_carry__1_i_1_n_8;
  wire curr_off_fu_238_p2__1_carry__1_i_2_n_8;
  wire curr_off_fu_238_p2__1_carry__1_i_3_n_8;
  wire curr_off_fu_238_p2__1_carry__1_i_4_n_8;
  wire curr_off_fu_238_p2__1_carry__1_i_5_n_8;
  wire curr_off_fu_238_p2__1_carry__1_i_6_n_8;
  wire curr_off_fu_238_p2__1_carry__1_i_7_n_8;
  wire curr_off_fu_238_p2__1_carry__1_i_8_n_8;
  wire curr_off_fu_238_p2__1_carry__1_n_10;
  wire curr_off_fu_238_p2__1_carry__1_n_11;
  wire curr_off_fu_238_p2__1_carry__1_n_8;
  wire curr_off_fu_238_p2__1_carry__1_n_9;
  wire curr_off_fu_238_p2__1_carry__2_i_1_n_8;
  wire curr_off_fu_238_p2__1_carry__2_i_2_n_8;
  wire curr_off_fu_238_p2__1_carry__2_i_3_n_8;
  wire curr_off_fu_238_p2__1_carry__2_i_4_n_8;
  wire curr_off_fu_238_p2__1_carry__2_i_5_n_8;
  wire curr_off_fu_238_p2__1_carry__2_i_6_n_8;
  wire curr_off_fu_238_p2__1_carry__2_i_7_n_8;
  wire curr_off_fu_238_p2__1_carry__2_i_8_n_8;
  wire curr_off_fu_238_p2__1_carry__2_n_10;
  wire curr_off_fu_238_p2__1_carry__2_n_11;
  wire curr_off_fu_238_p2__1_carry__2_n_8;
  wire curr_off_fu_238_p2__1_carry__2_n_9;
  wire curr_off_fu_238_p2__1_carry__3_i_1_n_8;
  wire curr_off_fu_238_p2__1_carry__3_i_2_n_8;
  wire curr_off_fu_238_p2__1_carry__3_i_3_n_8;
  wire curr_off_fu_238_p2__1_carry__3_n_10;
  wire curr_off_fu_238_p2__1_carry__3_n_11;
  wire curr_off_fu_238_p2__1_carry_i_1_n_8;
  wire curr_off_fu_238_p2__1_carry_i_2_n_8;
  wire curr_off_fu_238_p2__1_carry_i_3_n_8;
  wire curr_off_fu_238_p2__1_carry_n_10;
  wire curr_off_fu_238_p2__1_carry_n_11;
  wire curr_off_fu_238_p2__1_carry_n_8;
  wire curr_off_fu_238_p2__1_carry_n_9;
  wire e_read1339_out;
  wire i1_0_reg_1420;
  wire i1_0_reg_142010_out;
  wire \i1_0_reg_142[0]_i_1_n_8 ;
  wire \i1_0_reg_142[5]_i_4_n_8 ;
  wire \i1_0_reg_142[5]_i_5_n_8 ;
  wire [5:0]i1_0_reg_142_reg;
  wire i3_0_reg_1220;
  wire i3_0_reg_12208_out;
  wire \i3_0_reg_122[6]_i_4_n_8 ;
  wire \i3_0_reg_122[6]_i_5_n_8 ;
  wire \i3_0_reg_122[6]_i_6_n_8 ;
  wire \i3_0_reg_122[6]_i_7_n_8 ;
  wire [6:0]i3_0_reg_122_reg;
  wire \i_0_reg_153[0]_i_1_n_8 ;
  wire \i_0_reg_153[5]_i_1_n_8 ;
  wire \i_0_reg_153[5]_i_4_n_8 ;
  wire \i_0_reg_153[5]_i_5_n_8 ;
  wire [5:0]i_0_reg_153_reg;
  wire [5:1]i_3_fu_322_p2;
  wire [6:0]i_4_fu_291_p2;
  wire [5:1]i_fu_334_p2;
  wire icmp_ln107_fu_305_p2;
  wire icmp_ln51_fu_186_p2;
  wire \icmp_ln51_reg_376[0]_i_1_n_8 ;
  wire \icmp_ln51_reg_376_reg_n_8_[0] ;
  wire icmp_ln60_fu_192_p2;
  wire icmp_ln60_reg_380;
  wire \icmp_ln60_reg_380[0]_i_1_n_8 ;
  wire icmp_ln96_fu_198_p2;
  wire icmp_ln96_reg_384;
  wire \icmp_ln96_reg_384[0]_i_1_n_8 ;
  wire internal_empty_n_reg;
  wire \mOutPtr[4]_i_3_n_8 ;
  wire \mOutPtr[5]_i_10_n_8 ;
  wire \mOutPtr[5]_i_11_n_8 ;
  wire \mOutPtr[5]_i_12_n_8 ;
  wire \mOutPtr[5]_i_5__0_n_8 ;
  wire \mOutPtr[5]_i_7_n_8 ;
  wire \mOutPtr[5]_i_8_n_8 ;
  wire \mOutPtr[5]_i_9_n_8 ;
  wire [15:0]mot1_fu_180_p3;
  wire [25:0]p_1_in;
  wire [15:7]p_shl2_fu_264_p4;
  wire reg_1640;
  wire \reg_164[7]_i_2_n_8 ;
  wire [7:0]\reg_164_reg[7]_0 ;
  wire reg_1680;
  wire [7:0]\reg_168_reg[7]_0 ;
  wire reset;
  wire rgbv_full_n;
  wire [25:0]v_assign_cast_reg_406;
  wire v_assign_cast_reg_4061;
  wire \v_assign_cast_reg_406[25]_i_2_n_8 ;
  wire \v_assign_cast_reg_406[25]_i_3_n_8 ;
  wire v_assign_reg_1330;
  wire \v_assign_reg_133[25]_i_10_n_8 ;
  wire \v_assign_reg_133[25]_i_11_n_8 ;
  wire \v_assign_reg_133[25]_i_12_n_8 ;
  wire \v_assign_reg_133[25]_i_1_n_8 ;
  wire \v_assign_reg_133[25]_i_6_n_8 ;
  wire \v_assign_reg_133[25]_i_7_n_8 ;
  wire \v_assign_reg_133[25]_i_8_n_8 ;
  wire \v_assign_reg_133[25]_i_9_n_8 ;
  wire [0:0]\val_V_5_reg_351_reg[0]_0 ;
  wire [0:0]\val_V_6_reg_356_reg[0]_0 ;
  wire [0:0]\val_V_8_reg_369_reg[0]_0 ;
  wire \val_V_8_reg_369_reg_n_8_[1] ;
  wire \val_V_8_reg_369_reg_n_8_[2] ;
  wire \val_V_8_reg_369_reg_n_8_[3] ;
  wire \val_V_8_reg_369_reg_n_8_[4] ;
  wire \val_V_8_reg_369_reg_n_8_[5] ;
  wire \val_V_8_reg_369_reg_n_8_[6] ;
  wire \val_V_8_reg_369_reg_n_8_[7] ;
  wire [3:2]NLW_add_ln107_2_fu_279_p2__1_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_add_ln107_2_fu_279_p2__1_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_ap_NS_fsm11_carry_O_UNCONNECTED;
  wire [3:2]NLW_ap_NS_fsm11_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_ap_NS_fsm11_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_curr_off_1_fu_310_p2_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_curr_off_1_fu_310_p2_carry__5_O_UNCONNECTED;
  wire [2:2]NLW_curr_off_fu_238_p2__1_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_curr_off_fu_238_p2__1_carry__3_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 add_ln107_2_fu_279_p2__1_carry
       (.CI(1'b0),
        .CO({add_ln107_2_fu_279_p2__1_carry_n_8,add_ln107_2_fu_279_p2__1_carry_n_9,add_ln107_2_fu_279_p2__1_carry_n_10,add_ln107_2_fu_279_p2__1_carry_n_11}),
        .CYINIT(1'b0),
        .DI({mot1_fu_180_p3[4],1'b0,mot1_fu_180_p3[2],1'b0}),
        .O(add_ln107_2_fu_279_p2[4:1]),
        .S({add_ln107_2_fu_279_p2__1_carry_i_1_n_8,mot1_fu_180_p3[3],add_ln107_2_fu_279_p2__1_carry_i_2_n_8,mot1_fu_180_p3[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 add_ln107_2_fu_279_p2__1_carry__0
       (.CI(add_ln107_2_fu_279_p2__1_carry_n_8),
        .CO({add_ln107_2_fu_279_p2__1_carry__0_n_8,add_ln107_2_fu_279_p2__1_carry__0_n_9,add_ln107_2_fu_279_p2__1_carry__0_n_10,add_ln107_2_fu_279_p2__1_carry__0_n_11}),
        .CYINIT(1'b0),
        .DI({mot1_fu_180_p3[8:7],1'b0,1'b0}),
        .O(add_ln107_2_fu_279_p2[8:5]),
        .S({add_ln107_2_fu_279_p2__1_carry__0_i_1_n_8,add_ln107_2_fu_279_p2__1_carry__0_i_2_n_8,mot1_fu_180_p3[6:5]}));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln107_2_fu_279_p2__1_carry__0_i_1
       (.I0(mot1_fu_180_p3[8]),
        .I1(p_shl2_fu_264_p4[8]),
        .O(add_ln107_2_fu_279_p2__1_carry__0_i_1_n_8));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln107_2_fu_279_p2__1_carry__0_i_2
       (.I0(mot1_fu_180_p3[7]),
        .I1(p_shl2_fu_264_p4[7]),
        .O(add_ln107_2_fu_279_p2__1_carry__0_i_2_n_8));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 add_ln107_2_fu_279_p2__1_carry__1
       (.CI(add_ln107_2_fu_279_p2__1_carry__0_n_8),
        .CO({add_ln107_2_fu_279_p2__1_carry__1_n_8,add_ln107_2_fu_279_p2__1_carry__1_n_9,add_ln107_2_fu_279_p2__1_carry__1_n_10,add_ln107_2_fu_279_p2__1_carry__1_n_11}),
        .CYINIT(1'b0),
        .DI({curr_off_fu_238_p2__1_carry__0_i_2_n_8,curr_off_fu_238_p2__1_carry__0_i_3_n_8,add_ln107_2_fu_279_p2__1_carry__1_i_1_n_8,mot1_fu_180_p3[9]}),
        .O(add_ln107_2_fu_279_p2[12:9]),
        .S({add_ln107_2_fu_279_p2__1_carry__1_i_2_n_8,add_ln107_2_fu_279_p2__1_carry__1_i_3_n_8,add_ln107_2_fu_279_p2__1_carry__1_i_4_n_8,add_ln107_2_fu_279_p2__1_carry__1_i_5_n_8}));
  LUT3 #(
    .INIT(8'h96)) 
    add_ln107_2_fu_279_p2__1_carry__1_i_1
       (.I0(mot1_fu_180_p3[10]),
        .I1(p_shl2_fu_264_p4[10]),
        .I2(p_shl2_fu_264_p4[8]),
        .O(add_ln107_2_fu_279_p2__1_carry__1_i_1_n_8));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln107_2_fu_279_p2__1_carry__1_i_2
       (.I0(p_shl2_fu_264_p4[10]),
        .I1(mot1_fu_180_p3[12]),
        .I2(p_shl2_fu_264_p4[12]),
        .I3(curr_off_fu_238_p2__1_carry__0_i_2_n_8),
        .O(add_ln107_2_fu_279_p2__1_carry__1_i_2_n_8));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln107_2_fu_279_p2__1_carry__1_i_3
       (.I0(p_shl2_fu_264_p4[9]),
        .I1(mot1_fu_180_p3[11]),
        .I2(p_shl2_fu_264_p4[11]),
        .I3(curr_off_fu_238_p2__1_carry__0_i_3_n_8),
        .O(add_ln107_2_fu_279_p2__1_carry__1_i_3_n_8));
  (* HLUTNM = "lutpair10" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    add_ln107_2_fu_279_p2__1_carry__1_i_4
       (.I0(mot1_fu_180_p3[10]),
        .I1(p_shl2_fu_264_p4[8]),
        .I2(p_shl2_fu_264_p4[10]),
        .I3(p_shl2_fu_264_p4[9]),
        .I4(p_shl2_fu_264_p4[7]),
        .O(add_ln107_2_fu_279_p2__1_carry__1_i_4_n_8));
  LUT3 #(
    .INIT(8'h96)) 
    add_ln107_2_fu_279_p2__1_carry__1_i_5
       (.I0(p_shl2_fu_264_p4[7]),
        .I1(p_shl2_fu_264_p4[9]),
        .I2(mot1_fu_180_p3[9]),
        .O(add_ln107_2_fu_279_p2__1_carry__1_i_5_n_8));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 add_ln107_2_fu_279_p2__1_carry__2
       (.CI(add_ln107_2_fu_279_p2__1_carry__1_n_8),
        .CO({NLW_add_ln107_2_fu_279_p2__1_carry__2_CO_UNCONNECTED[3:2],add_ln107_2_fu_279_p2__1_carry__2_n_10,add_ln107_2_fu_279_p2__1_carry__2_n_11}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,curr_off_fu_238_p2__1_carry__1_i_4_n_8,curr_off_fu_238_p2__1_carry__0_i_1_n_8}),
        .O({NLW_add_ln107_2_fu_279_p2__1_carry__2_O_UNCONNECTED[3],add_ln107_2_fu_279_p2[15:13]}),
        .S({1'b0,add_ln107_2_fu_279_p2__1_carry__2_i_1_n_8,add_ln107_2_fu_279_p2__1_carry__2_i_2_n_8,add_ln107_2_fu_279_p2__1_carry__2_i_3_n_8}));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln107_2_fu_279_p2__1_carry__2_i_1
       (.I0(p_shl2_fu_264_p4[14]),
        .I1(mot1_fu_180_p3[14]),
        .I2(p_shl2_fu_264_p4[12]),
        .I3(p_shl2_fu_264_p4[13]),
        .I4(p_shl2_fu_264_p4[15]),
        .I5(mot1_fu_180_p3[15]),
        .O(add_ln107_2_fu_279_p2__1_carry__2_i_1_n_8));
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln107_2_fu_279_p2__1_carry__2_i_2
       (.I0(curr_off_fu_238_p2__1_carry__1_i_4_n_8),
        .I1(p_shl2_fu_264_p4[12]),
        .I2(p_shl2_fu_264_p4[14]),
        .I3(mot1_fu_180_p3[14]),
        .O(add_ln107_2_fu_279_p2__1_carry__2_i_2_n_8));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln107_2_fu_279_p2__1_carry__2_i_3
       (.I0(p_shl2_fu_264_p4[11]),
        .I1(mot1_fu_180_p3[13]),
        .I2(p_shl2_fu_264_p4[13]),
        .I3(curr_off_fu_238_p2__1_carry__0_i_1_n_8),
        .O(add_ln107_2_fu_279_p2__1_carry__2_i_3_n_8));
  LUT1 #(
    .INIT(2'h1)) 
    add_ln107_2_fu_279_p2__1_carry_i_1
       (.I0(mot1_fu_180_p3[4]),
        .O(add_ln107_2_fu_279_p2__1_carry_i_1_n_8));
  LUT1 #(
    .INIT(2'h1)) 
    add_ln107_2_fu_279_p2__1_carry_i_2
       (.I0(mot1_fu_180_p3[2]),
        .O(add_ln107_2_fu_279_p2__1_carry_i_2_n_8));
  LUT5 #(
    .INIT(32'h00400000)) 
    \add_ln107_2_reg_393[15]_i_1 
       (.I0(icmp_ln60_fu_192_p2),
        .I1(ap_CS_fsm_state9),
        .I2(crc2fra_1_empty_n),
        .I3(icmp_ln51_fu_186_p2),
        .I4(icmp_ln96_fu_198_p2),
        .O(v_assign_reg_1330));
  FDRE \add_ln107_2_reg_393_reg[0] 
       (.C(clock),
        .CE(v_assign_reg_1330),
        .D(mot1_fu_180_p3[0]),
        .Q(add_ln107_2_reg_393[0]),
        .R(1'b0));
  FDRE \add_ln107_2_reg_393_reg[10] 
       (.C(clock),
        .CE(v_assign_reg_1330),
        .D(add_ln107_2_fu_279_p2[10]),
        .Q(add_ln107_2_reg_393[10]),
        .R(1'b0));
  FDRE \add_ln107_2_reg_393_reg[11] 
       (.C(clock),
        .CE(v_assign_reg_1330),
        .D(add_ln107_2_fu_279_p2[11]),
        .Q(add_ln107_2_reg_393[11]),
        .R(1'b0));
  FDRE \add_ln107_2_reg_393_reg[12] 
       (.C(clock),
        .CE(v_assign_reg_1330),
        .D(add_ln107_2_fu_279_p2[12]),
        .Q(add_ln107_2_reg_393[12]),
        .R(1'b0));
  FDRE \add_ln107_2_reg_393_reg[13] 
       (.C(clock),
        .CE(v_assign_reg_1330),
        .D(add_ln107_2_fu_279_p2[13]),
        .Q(add_ln107_2_reg_393[13]),
        .R(1'b0));
  FDRE \add_ln107_2_reg_393_reg[14] 
       (.C(clock),
        .CE(v_assign_reg_1330),
        .D(add_ln107_2_fu_279_p2[14]),
        .Q(add_ln107_2_reg_393[14]),
        .R(1'b0));
  FDRE \add_ln107_2_reg_393_reg[15] 
       (.C(clock),
        .CE(v_assign_reg_1330),
        .D(add_ln107_2_fu_279_p2[15]),
        .Q(add_ln107_2_reg_393[15]),
        .R(1'b0));
  FDRE \add_ln107_2_reg_393_reg[1] 
       (.C(clock),
        .CE(v_assign_reg_1330),
        .D(add_ln107_2_fu_279_p2[1]),
        .Q(add_ln107_2_reg_393[1]),
        .R(1'b0));
  FDRE \add_ln107_2_reg_393_reg[2] 
       (.C(clock),
        .CE(v_assign_reg_1330),
        .D(add_ln107_2_fu_279_p2[2]),
        .Q(add_ln107_2_reg_393[2]),
        .R(1'b0));
  FDRE \add_ln107_2_reg_393_reg[3] 
       (.C(clock),
        .CE(v_assign_reg_1330),
        .D(add_ln107_2_fu_279_p2[3]),
        .Q(add_ln107_2_reg_393[3]),
        .R(1'b0));
  FDRE \add_ln107_2_reg_393_reg[4] 
       (.C(clock),
        .CE(v_assign_reg_1330),
        .D(add_ln107_2_fu_279_p2[4]),
        .Q(add_ln107_2_reg_393[4]),
        .R(1'b0));
  FDRE \add_ln107_2_reg_393_reg[5] 
       (.C(clock),
        .CE(v_assign_reg_1330),
        .D(add_ln107_2_fu_279_p2[5]),
        .Q(add_ln107_2_reg_393[5]),
        .R(1'b0));
  FDRE \add_ln107_2_reg_393_reg[6] 
       (.C(clock),
        .CE(v_assign_reg_1330),
        .D(add_ln107_2_fu_279_p2[6]),
        .Q(add_ln107_2_reg_393[6]),
        .R(1'b0));
  FDRE \add_ln107_2_reg_393_reg[7] 
       (.C(clock),
        .CE(v_assign_reg_1330),
        .D(add_ln107_2_fu_279_p2[7]),
        .Q(add_ln107_2_reg_393[7]),
        .R(1'b0));
  FDRE \add_ln107_2_reg_393_reg[8] 
       (.C(clock),
        .CE(v_assign_reg_1330),
        .D(add_ln107_2_fu_279_p2[8]),
        .Q(add_ln107_2_reg_393[8]),
        .R(1'b0));
  FDRE \add_ln107_2_reg_393_reg[9] 
       (.C(clock),
        .CE(v_assign_reg_1330),
        .D(add_ln107_2_fu_279_p2[9]),
        .Q(add_ln107_2_reg_393[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h8F8F8880)) 
    \ap_CS_fsm[10]_i_1 
       (.I0(\reg_164[7]_i_2_n_8 ),
        .I1(ap_CS_fsm_state10),
        .I2(crc2fra_1_empty_n),
        .I3(\v_assign_cast_reg_406[25]_i_2_n_8 ),
        .I4(ap_CS_fsm_state11),
        .O(ap_NS_fsm[10]));
  LUT5 #(
    .INIT(32'hBFFFAA00)) 
    \ap_CS_fsm[11]_i_1 
       (.I0(ap_CS_fsm_state11),
        .I1(rgbv_full_n),
        .I2(addr_full_n),
        .I3(crc2fra_1_empty_n),
        .I4(ap_CS_fsm_state12),
        .O(ap_NS_fsm[11]));
  LUT4 #(
    .INIT(16'h4E0A)) 
    \ap_CS_fsm[1]_i_1__2 
       (.I0(Q[0]),
        .I1(ap_CS_fsm_state10),
        .I2(crc2fra_1_empty_n),
        .I3(\v_assign_cast_reg_406[25]_i_2_n_8 ),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \ap_CS_fsm[2]_i_1__2 
       (.I0(\ap_CS_fsm_reg[2]_0 ),
        .I1(\ap_CS_fsm[2]_i_3_n_8 ),
        .I2(ap_CS_fsm_state10),
        .I3(Q[1]),
        .I4(ap_CS_fsm_state12),
        .I5(Q[2]),
        .O(ap_NS_fsm[2]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ap_CS_fsm[2]_i_3 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(ap_CS_fsm_state11),
        .I3(ap_CS_fsm_state9),
        .I4(\ap_CS_fsm[2]_i_4_n_8 ),
        .O(\ap_CS_fsm[2]_i_3_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \ap_CS_fsm[2]_i_4 
       (.I0(ap_CS_fsm_state3),
        .I1(crc2fra_1_empty_n),
        .I2(ap_CS_fsm_state8),
        .I3(Q[4]),
        .O(\ap_CS_fsm[2]_i_4_n_8 ));
  LUT3 #(
    .INIT(8'hA4)) 
    \ap_CS_fsm[3]_i_1__3 
       (.I0(ap_CS_fsm_state3),
        .I1(Q[1]),
        .I2(crc2fra_1_empty_n),
        .O(ap_NS_fsm[3]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    \ap_CS_fsm[4]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(crc2fra_1_empty_n),
        .O(ap_NS_fsm[4]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    \ap_CS_fsm[5]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(crc2fra_1_empty_n),
        .O(ap_NS_fsm[5]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    \ap_CS_fsm[6]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(crc2fra_1_empty_n),
        .O(ap_NS_fsm[6]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    \ap_CS_fsm[7]_i_1__0 
       (.I0(Q[4]),
        .I1(ap_CS_fsm_state8),
        .I2(crc2fra_1_empty_n),
        .O(ap_NS_fsm[7]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    \ap_CS_fsm[8]_i_1 
       (.I0(ap_CS_fsm_state8),
        .I1(ap_CS_fsm_state9),
        .I2(crc2fra_1_empty_n),
        .O(ap_NS_fsm[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0FC004C)) 
    \ap_CS_fsm[9]_i_1 
       (.I0(\reg_164[7]_i_2_n_8 ),
        .I1(ap_CS_fsm_state10),
        .I2(crc2fra_1_empty_n),
        .I3(\v_assign_cast_reg_406[25]_i_2_n_8 ),
        .I4(ap_CS_fsm_state9),
        .I5(\ap_CS_fsm_reg[11]_0 ),
        .O(ap_NS_fsm[9]));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[10] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[10]),
        .Q(ap_CS_fsm_state11),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[11] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[11]),
        .Q(ap_CS_fsm_state12),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(Q[0]),
        .S(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(Q[1]),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(Q[2]),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(Q[3]),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[6]),
        .Q(Q[4]),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[7]),
        .Q(ap_CS_fsm_state8),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[8]),
        .Q(ap_CS_fsm_state9),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[9]),
        .Q(ap_CS_fsm_state10),
        .R(reset));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 ap_NS_fsm11_carry
       (.CI(1'b0),
        .CO({ap_NS_fsm11_carry_n_8,ap_NS_fsm11_carry_n_9,ap_NS_fsm11_carry_n_10,ap_NS_fsm11_carry_n_11}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ap_NS_fsm11_carry_O_UNCONNECTED[3:0]),
        .S({ap_NS_fsm11_carry_i_1_n_8,ap_NS_fsm11_carry_i_2_n_8,ap_NS_fsm11_carry_i_3_n_8,ap_NS_fsm11_carry_i_4_n_8}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 ap_NS_fsm11_carry__0
       (.CI(ap_NS_fsm11_carry_n_8),
        .CO({NLW_ap_NS_fsm11_carry__0_CO_UNCONNECTED[3:2],icmp_ln107_fu_305_p2,ap_NS_fsm11_carry__0_n_11}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ap_NS_fsm11_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,ap_NS_fsm11_carry__0_i_1_n_8,ap_NS_fsm11_carry__0_i_2_n_8}));
  LUT2 #(
    .INIT(4'h9)) 
    ap_NS_fsm11_carry__0_i_1
       (.I0(add_ln107_2_reg_393[15]),
        .I1(v_assign_cast_reg_406[15]),
        .O(ap_NS_fsm11_carry__0_i_1_n_8));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ap_NS_fsm11_carry__0_i_2
       (.I0(v_assign_cast_reg_406[14]),
        .I1(add_ln107_2_reg_393[14]),
        .I2(v_assign_cast_reg_406[12]),
        .I3(add_ln107_2_reg_393[12]),
        .I4(add_ln107_2_reg_393[13]),
        .I5(v_assign_cast_reg_406[13]),
        .O(ap_NS_fsm11_carry__0_i_2_n_8));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ap_NS_fsm11_carry_i_1
       (.I0(v_assign_cast_reg_406[9]),
        .I1(add_ln107_2_reg_393[9]),
        .I2(v_assign_cast_reg_406[10]),
        .I3(add_ln107_2_reg_393[10]),
        .I4(add_ln107_2_reg_393[11]),
        .I5(v_assign_cast_reg_406[11]),
        .O(ap_NS_fsm11_carry_i_1_n_8));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ap_NS_fsm11_carry_i_2
       (.I0(v_assign_cast_reg_406[6]),
        .I1(add_ln107_2_reg_393[6]),
        .I2(v_assign_cast_reg_406[7]),
        .I3(add_ln107_2_reg_393[7]),
        .I4(add_ln107_2_reg_393[8]),
        .I5(v_assign_cast_reg_406[8]),
        .O(ap_NS_fsm11_carry_i_2_n_8));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ap_NS_fsm11_carry_i_3
       (.I0(v_assign_cast_reg_406[3]),
        .I1(add_ln107_2_reg_393[3]),
        .I2(v_assign_cast_reg_406[4]),
        .I3(add_ln107_2_reg_393[4]),
        .I4(add_ln107_2_reg_393[5]),
        .I5(v_assign_cast_reg_406[5]),
        .O(ap_NS_fsm11_carry_i_3_n_8));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ap_NS_fsm11_carry_i_4
       (.I0(v_assign_cast_reg_406[0]),
        .I1(add_ln107_2_reg_393[0]),
        .I2(v_assign_cast_reg_406[1]),
        .I3(add_ln107_2_reg_393[1]),
        .I4(add_ln107_2_reg_393[2]),
        .I5(v_assign_cast_reg_406[2]),
        .O(ap_NS_fsm11_carry_i_4_n_8));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 curr_off_1_fu_310_p2_carry
       (.CI(1'b0),
        .CO({curr_off_1_fu_310_p2_carry_n_8,curr_off_1_fu_310_p2_carry_n_9,curr_off_1_fu_310_p2_carry_n_10,curr_off_1_fu_310_p2_carry_n_11}),
        .CYINIT(v_assign_cast_reg_406[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(curr_off_1_fu_310_p2[4:1]),
        .S(v_assign_cast_reg_406[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 curr_off_1_fu_310_p2_carry__0
       (.CI(curr_off_1_fu_310_p2_carry_n_8),
        .CO({curr_off_1_fu_310_p2_carry__0_n_8,curr_off_1_fu_310_p2_carry__0_n_9,curr_off_1_fu_310_p2_carry__0_n_10,curr_off_1_fu_310_p2_carry__0_n_11}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(curr_off_1_fu_310_p2[8:5]),
        .S(v_assign_cast_reg_406[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 curr_off_1_fu_310_p2_carry__1
       (.CI(curr_off_1_fu_310_p2_carry__0_n_8),
        .CO({curr_off_1_fu_310_p2_carry__1_n_8,curr_off_1_fu_310_p2_carry__1_n_9,curr_off_1_fu_310_p2_carry__1_n_10,curr_off_1_fu_310_p2_carry__1_n_11}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(curr_off_1_fu_310_p2[12:9]),
        .S(v_assign_cast_reg_406[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 curr_off_1_fu_310_p2_carry__2
       (.CI(curr_off_1_fu_310_p2_carry__1_n_8),
        .CO({curr_off_1_fu_310_p2_carry__2_n_8,curr_off_1_fu_310_p2_carry__2_n_9,curr_off_1_fu_310_p2_carry__2_n_10,curr_off_1_fu_310_p2_carry__2_n_11}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(curr_off_1_fu_310_p2[16:13]),
        .S(v_assign_cast_reg_406[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 curr_off_1_fu_310_p2_carry__3
       (.CI(curr_off_1_fu_310_p2_carry__2_n_8),
        .CO({curr_off_1_fu_310_p2_carry__3_n_8,curr_off_1_fu_310_p2_carry__3_n_9,curr_off_1_fu_310_p2_carry__3_n_10,curr_off_1_fu_310_p2_carry__3_n_11}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(curr_off_1_fu_310_p2[20:17]),
        .S(v_assign_cast_reg_406[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 curr_off_1_fu_310_p2_carry__4
       (.CI(curr_off_1_fu_310_p2_carry__3_n_8),
        .CO({curr_off_1_fu_310_p2_carry__4_n_8,curr_off_1_fu_310_p2_carry__4_n_9,curr_off_1_fu_310_p2_carry__4_n_10,curr_off_1_fu_310_p2_carry__4_n_11}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(curr_off_1_fu_310_p2[24:21]),
        .S(v_assign_cast_reg_406[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 curr_off_1_fu_310_p2_carry__5
       (.CI(curr_off_1_fu_310_p2_carry__4_n_8),
        .CO(NLW_curr_off_1_fu_310_p2_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_curr_off_1_fu_310_p2_carry__5_O_UNCONNECTED[3:1],curr_off_1_fu_310_p2[25]}),
        .S({1'b0,1'b0,1'b0,v_assign_cast_reg_406[25]}));
  LUT1 #(
    .INIT(2'h1)) 
    \curr_off_1_reg_414[0]_i_1 
       (.I0(v_assign_cast_reg_406[0]),
        .O(curr_off_1_fu_310_p2[0]));
  LUT4 #(
    .INIT(16'h8880)) 
    \curr_off_1_reg_414[25]_i_1 
       (.I0(\reg_164[7]_i_2_n_8 ),
        .I1(ap_CS_fsm_state10),
        .I2(crc2fra_1_empty_n),
        .I3(\v_assign_cast_reg_406[25]_i_2_n_8 ),
        .O(ap_NS_fsm1));
  FDRE \curr_off_1_reg_414_reg[0] 
       (.C(clock),
        .CE(ap_NS_fsm1),
        .D(curr_off_1_fu_310_p2[0]),
        .Q(curr_off_1_reg_414[0]),
        .R(1'b0));
  FDRE \curr_off_1_reg_414_reg[10] 
       (.C(clock),
        .CE(ap_NS_fsm1),
        .D(curr_off_1_fu_310_p2[10]),
        .Q(curr_off_1_reg_414[10]),
        .R(1'b0));
  FDRE \curr_off_1_reg_414_reg[11] 
       (.C(clock),
        .CE(ap_NS_fsm1),
        .D(curr_off_1_fu_310_p2[11]),
        .Q(curr_off_1_reg_414[11]),
        .R(1'b0));
  FDRE \curr_off_1_reg_414_reg[12] 
       (.C(clock),
        .CE(ap_NS_fsm1),
        .D(curr_off_1_fu_310_p2[12]),
        .Q(curr_off_1_reg_414[12]),
        .R(1'b0));
  FDRE \curr_off_1_reg_414_reg[13] 
       (.C(clock),
        .CE(ap_NS_fsm1),
        .D(curr_off_1_fu_310_p2[13]),
        .Q(curr_off_1_reg_414[13]),
        .R(1'b0));
  FDRE \curr_off_1_reg_414_reg[14] 
       (.C(clock),
        .CE(ap_NS_fsm1),
        .D(curr_off_1_fu_310_p2[14]),
        .Q(curr_off_1_reg_414[14]),
        .R(1'b0));
  FDRE \curr_off_1_reg_414_reg[15] 
       (.C(clock),
        .CE(ap_NS_fsm1),
        .D(curr_off_1_fu_310_p2[15]),
        .Q(curr_off_1_reg_414[15]),
        .R(1'b0));
  FDRE \curr_off_1_reg_414_reg[16] 
       (.C(clock),
        .CE(ap_NS_fsm1),
        .D(curr_off_1_fu_310_p2[16]),
        .Q(curr_off_1_reg_414[16]),
        .R(1'b0));
  FDRE \curr_off_1_reg_414_reg[17] 
       (.C(clock),
        .CE(ap_NS_fsm1),
        .D(curr_off_1_fu_310_p2[17]),
        .Q(curr_off_1_reg_414[17]),
        .R(1'b0));
  FDRE \curr_off_1_reg_414_reg[18] 
       (.C(clock),
        .CE(ap_NS_fsm1),
        .D(curr_off_1_fu_310_p2[18]),
        .Q(curr_off_1_reg_414[18]),
        .R(1'b0));
  FDRE \curr_off_1_reg_414_reg[19] 
       (.C(clock),
        .CE(ap_NS_fsm1),
        .D(curr_off_1_fu_310_p2[19]),
        .Q(curr_off_1_reg_414[19]),
        .R(1'b0));
  FDRE \curr_off_1_reg_414_reg[1] 
       (.C(clock),
        .CE(ap_NS_fsm1),
        .D(curr_off_1_fu_310_p2[1]),
        .Q(curr_off_1_reg_414[1]),
        .R(1'b0));
  FDRE \curr_off_1_reg_414_reg[20] 
       (.C(clock),
        .CE(ap_NS_fsm1),
        .D(curr_off_1_fu_310_p2[20]),
        .Q(curr_off_1_reg_414[20]),
        .R(1'b0));
  FDRE \curr_off_1_reg_414_reg[21] 
       (.C(clock),
        .CE(ap_NS_fsm1),
        .D(curr_off_1_fu_310_p2[21]),
        .Q(curr_off_1_reg_414[21]),
        .R(1'b0));
  FDRE \curr_off_1_reg_414_reg[22] 
       (.C(clock),
        .CE(ap_NS_fsm1),
        .D(curr_off_1_fu_310_p2[22]),
        .Q(curr_off_1_reg_414[22]),
        .R(1'b0));
  FDRE \curr_off_1_reg_414_reg[23] 
       (.C(clock),
        .CE(ap_NS_fsm1),
        .D(curr_off_1_fu_310_p2[23]),
        .Q(curr_off_1_reg_414[23]),
        .R(1'b0));
  FDRE \curr_off_1_reg_414_reg[24] 
       (.C(clock),
        .CE(ap_NS_fsm1),
        .D(curr_off_1_fu_310_p2[24]),
        .Q(curr_off_1_reg_414[24]),
        .R(1'b0));
  FDRE \curr_off_1_reg_414_reg[25] 
       (.C(clock),
        .CE(ap_NS_fsm1),
        .D(curr_off_1_fu_310_p2[25]),
        .Q(curr_off_1_reg_414[25]),
        .R(1'b0));
  FDRE \curr_off_1_reg_414_reg[2] 
       (.C(clock),
        .CE(ap_NS_fsm1),
        .D(curr_off_1_fu_310_p2[2]),
        .Q(curr_off_1_reg_414[2]),
        .R(1'b0));
  FDRE \curr_off_1_reg_414_reg[3] 
       (.C(clock),
        .CE(ap_NS_fsm1),
        .D(curr_off_1_fu_310_p2[3]),
        .Q(curr_off_1_reg_414[3]),
        .R(1'b0));
  FDRE \curr_off_1_reg_414_reg[4] 
       (.C(clock),
        .CE(ap_NS_fsm1),
        .D(curr_off_1_fu_310_p2[4]),
        .Q(curr_off_1_reg_414[4]),
        .R(1'b0));
  FDRE \curr_off_1_reg_414_reg[5] 
       (.C(clock),
        .CE(ap_NS_fsm1),
        .D(curr_off_1_fu_310_p2[5]),
        .Q(curr_off_1_reg_414[5]),
        .R(1'b0));
  FDRE \curr_off_1_reg_414_reg[6] 
       (.C(clock),
        .CE(ap_NS_fsm1),
        .D(curr_off_1_fu_310_p2[6]),
        .Q(curr_off_1_reg_414[6]),
        .R(1'b0));
  FDRE \curr_off_1_reg_414_reg[7] 
       (.C(clock),
        .CE(ap_NS_fsm1),
        .D(curr_off_1_fu_310_p2[7]),
        .Q(curr_off_1_reg_414[7]),
        .R(1'b0));
  FDRE \curr_off_1_reg_414_reg[8] 
       (.C(clock),
        .CE(ap_NS_fsm1),
        .D(curr_off_1_fu_310_p2[8]),
        .Q(curr_off_1_reg_414[8]),
        .R(1'b0));
  FDRE \curr_off_1_reg_414_reg[9] 
       (.C(clock),
        .CE(ap_NS_fsm1),
        .D(curr_off_1_fu_310_p2[9]),
        .Q(curr_off_1_reg_414[9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 curr_off_fu_238_p2__1_carry
       (.CI(1'b0),
        .CO({curr_off_fu_238_p2__1_carry_n_8,curr_off_fu_238_p2__1_carry_n_9,curr_off_fu_238_p2__1_carry_n_10,curr_off_fu_238_p2__1_carry_n_11}),
        .CYINIT(1'b0),
        .DI({p_shl2_fu_264_p4[9:7],1'b0}),
        .O(curr_off_fu_238_p2[9:6]),
        .S({curr_off_fu_238_p2__1_carry_i_1_n_8,curr_off_fu_238_p2__1_carry_i_2_n_8,curr_off_fu_238_p2__1_carry_i_3_n_8,mot1_fu_180_p3[6]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 curr_off_fu_238_p2__1_carry__0
       (.CI(curr_off_fu_238_p2__1_carry_n_8),
        .CO({curr_off_fu_238_p2__1_carry__0_n_8,curr_off_fu_238_p2__1_carry__0_n_9,curr_off_fu_238_p2__1_carry__0_n_10,curr_off_fu_238_p2__1_carry__0_n_11}),
        .CYINIT(1'b0),
        .DI({curr_off_fu_238_p2__1_carry__0_i_1_n_8,curr_off_fu_238_p2__1_carry__0_i_2_n_8,curr_off_fu_238_p2__1_carry__0_i_3_n_8,curr_off_fu_238_p2__1_carry__0_i_4_n_8}),
        .O(curr_off_fu_238_p2[13:10]),
        .S({curr_off_fu_238_p2__1_carry__0_i_5_n_8,curr_off_fu_238_p2__1_carry__0_i_6_n_8,curr_off_fu_238_p2__1_carry__0_i_7_n_8,curr_off_fu_238_p2__1_carry__0_i_8_n_8}));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    curr_off_fu_238_p2__1_carry__0_i_1
       (.I0(p_shl2_fu_264_p4[10]),
        .I1(mot1_fu_180_p3[12]),
        .I2(p_shl2_fu_264_p4[12]),
        .O(curr_off_fu_238_p2__1_carry__0_i_1_n_8));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    curr_off_fu_238_p2__1_carry__0_i_2
       (.I0(p_shl2_fu_264_p4[9]),
        .I1(mot1_fu_180_p3[11]),
        .I2(p_shl2_fu_264_p4[11]),
        .O(curr_off_fu_238_p2__1_carry__0_i_2_n_8));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    curr_off_fu_238_p2__1_carry__0_i_3
       (.I0(mot1_fu_180_p3[10]),
        .I1(p_shl2_fu_264_p4[8]),
        .I2(p_shl2_fu_264_p4[10]),
        .O(curr_off_fu_238_p2__1_carry__0_i_3_n_8));
  LUT3 #(
    .INIT(8'h96)) 
    curr_off_fu_238_p2__1_carry__0_i_4
       (.I0(p_shl2_fu_264_p4[10]),
        .I1(mot1_fu_180_p3[10]),
        .I2(p_shl2_fu_264_p4[8]),
        .O(curr_off_fu_238_p2__1_carry__0_i_4_n_8));
  LUT4 #(
    .INIT(16'h6996)) 
    curr_off_fu_238_p2__1_carry__0_i_5
       (.I0(curr_off_fu_238_p2__1_carry__0_i_1_n_8),
        .I1(p_shl2_fu_264_p4[11]),
        .I2(p_shl2_fu_264_p4[13]),
        .I3(mot1_fu_180_p3[13]),
        .O(curr_off_fu_238_p2__1_carry__0_i_5_n_8));
  LUT4 #(
    .INIT(16'h6996)) 
    curr_off_fu_238_p2__1_carry__0_i_6
       (.I0(curr_off_fu_238_p2__1_carry__0_i_2_n_8),
        .I1(p_shl2_fu_264_p4[10]),
        .I2(p_shl2_fu_264_p4[12]),
        .I3(mot1_fu_180_p3[12]),
        .O(curr_off_fu_238_p2__1_carry__0_i_6_n_8));
  LUT4 #(
    .INIT(16'h6996)) 
    curr_off_fu_238_p2__1_carry__0_i_7
       (.I0(curr_off_fu_238_p2__1_carry__0_i_3_n_8),
        .I1(p_shl2_fu_264_p4[9]),
        .I2(p_shl2_fu_264_p4[11]),
        .I3(mot1_fu_180_p3[11]),
        .O(curr_off_fu_238_p2__1_carry__0_i_7_n_8));
  LUT5 #(
    .INIT(32'h69969696)) 
    curr_off_fu_238_p2__1_carry__0_i_8
       (.I0(p_shl2_fu_264_p4[8]),
        .I1(mot1_fu_180_p3[10]),
        .I2(p_shl2_fu_264_p4[10]),
        .I3(p_shl2_fu_264_p4[7]),
        .I4(mot1_fu_180_p3[9]),
        .O(curr_off_fu_238_p2__1_carry__0_i_8_n_8));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 curr_off_fu_238_p2__1_carry__1
       (.CI(curr_off_fu_238_p2__1_carry__0_n_8),
        .CO({curr_off_fu_238_p2__1_carry__1_n_8,curr_off_fu_238_p2__1_carry__1_n_9,curr_off_fu_238_p2__1_carry__1_n_10,curr_off_fu_238_p2__1_carry__1_n_11}),
        .CYINIT(1'b0),
        .DI({curr_off_fu_238_p2__1_carry__1_i_1_n_8,curr_off_fu_238_p2__1_carry__1_i_2_n_8,curr_off_fu_238_p2__1_carry__1_i_3_n_8,curr_off_fu_238_p2__1_carry__1_i_4_n_8}),
        .O(curr_off_fu_238_p2[17:14]),
        .S({curr_off_fu_238_p2__1_carry__1_i_5_n_8,curr_off_fu_238_p2__1_carry__1_i_6_n_8,curr_off_fu_238_p2__1_carry__1_i_7_n_8,curr_off_fu_238_p2__1_carry__1_i_8_n_8}));
  LUT2 #(
    .INIT(4'h8)) 
    curr_off_fu_238_p2__1_carry__1_i_1
       (.I0(p_shl2_fu_264_p4[14]),
        .I1(\val_V_8_reg_369_reg_n_8_[1] ),
        .O(curr_off_fu_238_p2__1_carry__1_i_1_n_8));
  LUT3 #(
    .INIT(8'hE8)) 
    curr_off_fu_238_p2__1_carry__1_i_2
       (.I0(p_shl2_fu_264_p4[13]),
        .I1(mot1_fu_180_p3[15]),
        .I2(p_shl2_fu_264_p4[15]),
        .O(curr_off_fu_238_p2__1_carry__1_i_2_n_8));
  LUT3 #(
    .INIT(8'hE8)) 
    curr_off_fu_238_p2__1_carry__1_i_3
       (.I0(p_shl2_fu_264_p4[12]),
        .I1(mot1_fu_180_p3[14]),
        .I2(p_shl2_fu_264_p4[14]),
        .O(curr_off_fu_238_p2__1_carry__1_i_3_n_8));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    curr_off_fu_238_p2__1_carry__1_i_4
       (.I0(p_shl2_fu_264_p4[11]),
        .I1(mot1_fu_180_p3[13]),
        .I2(p_shl2_fu_264_p4[13]),
        .O(curr_off_fu_238_p2__1_carry__1_i_4_n_8));
  LUT4 #(
    .INIT(16'h8778)) 
    curr_off_fu_238_p2__1_carry__1_i_5
       (.I0(\val_V_8_reg_369_reg_n_8_[1] ),
        .I1(p_shl2_fu_264_p4[14]),
        .I2(\val_V_8_reg_369_reg_n_8_[2] ),
        .I3(p_shl2_fu_264_p4[15]),
        .O(curr_off_fu_238_p2__1_carry__1_i_5_n_8));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    curr_off_fu_238_p2__1_carry__1_i_6
       (.I0(p_shl2_fu_264_p4[15]),
        .I1(mot1_fu_180_p3[15]),
        .I2(p_shl2_fu_264_p4[13]),
        .I3(\val_V_8_reg_369_reg_n_8_[1] ),
        .I4(p_shl2_fu_264_p4[14]),
        .O(curr_off_fu_238_p2__1_carry__1_i_6_n_8));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    curr_off_fu_238_p2__1_carry__1_i_7
       (.I0(p_shl2_fu_264_p4[14]),
        .I1(mot1_fu_180_p3[14]),
        .I2(p_shl2_fu_264_p4[12]),
        .I3(p_shl2_fu_264_p4[13]),
        .I4(p_shl2_fu_264_p4[15]),
        .I5(mot1_fu_180_p3[15]),
        .O(curr_off_fu_238_p2__1_carry__1_i_7_n_8));
  LUT4 #(
    .INIT(16'h6996)) 
    curr_off_fu_238_p2__1_carry__1_i_8
       (.I0(curr_off_fu_238_p2__1_carry__1_i_4_n_8),
        .I1(p_shl2_fu_264_p4[12]),
        .I2(p_shl2_fu_264_p4[14]),
        .I3(mot1_fu_180_p3[14]),
        .O(curr_off_fu_238_p2__1_carry__1_i_8_n_8));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 curr_off_fu_238_p2__1_carry__2
       (.CI(curr_off_fu_238_p2__1_carry__1_n_8),
        .CO({curr_off_fu_238_p2__1_carry__2_n_8,curr_off_fu_238_p2__1_carry__2_n_9,curr_off_fu_238_p2__1_carry__2_n_10,curr_off_fu_238_p2__1_carry__2_n_11}),
        .CYINIT(1'b0),
        .DI({curr_off_fu_238_p2__1_carry__2_i_1_n_8,curr_off_fu_238_p2__1_carry__2_i_2_n_8,curr_off_fu_238_p2__1_carry__2_i_3_n_8,curr_off_fu_238_p2__1_carry__2_i_4_n_8}),
        .O(curr_off_fu_238_p2[21:18]),
        .S({curr_off_fu_238_p2__1_carry__2_i_5_n_8,curr_off_fu_238_p2__1_carry__2_i_6_n_8,curr_off_fu_238_p2__1_carry__2_i_7_n_8,curr_off_fu_238_p2__1_carry__2_i_8_n_8}));
  LUT2 #(
    .INIT(4'h8)) 
    curr_off_fu_238_p2__1_carry__2_i_1
       (.I0(\val_V_8_reg_369_reg_n_8_[3] ),
        .I1(\val_V_8_reg_369_reg_n_8_[5] ),
        .O(curr_off_fu_238_p2__1_carry__2_i_1_n_8));
  LUT2 #(
    .INIT(4'h8)) 
    curr_off_fu_238_p2__1_carry__2_i_2
       (.I0(\val_V_8_reg_369_reg_n_8_[2] ),
        .I1(\val_V_8_reg_369_reg_n_8_[4] ),
        .O(curr_off_fu_238_p2__1_carry__2_i_2_n_8));
  LUT2 #(
    .INIT(4'h8)) 
    curr_off_fu_238_p2__1_carry__2_i_3
       (.I0(\val_V_8_reg_369_reg_n_8_[1] ),
        .I1(\val_V_8_reg_369_reg_n_8_[3] ),
        .O(curr_off_fu_238_p2__1_carry__2_i_3_n_8));
  LUT2 #(
    .INIT(4'h8)) 
    curr_off_fu_238_p2__1_carry__2_i_4
       (.I0(p_shl2_fu_264_p4[15]),
        .I1(\val_V_8_reg_369_reg_n_8_[2] ),
        .O(curr_off_fu_238_p2__1_carry__2_i_4_n_8));
  LUT4 #(
    .INIT(16'h8778)) 
    curr_off_fu_238_p2__1_carry__2_i_5
       (.I0(\val_V_8_reg_369_reg_n_8_[5] ),
        .I1(\val_V_8_reg_369_reg_n_8_[3] ),
        .I2(\val_V_8_reg_369_reg_n_8_[6] ),
        .I3(\val_V_8_reg_369_reg_n_8_[4] ),
        .O(curr_off_fu_238_p2__1_carry__2_i_5_n_8));
  LUT4 #(
    .INIT(16'h8778)) 
    curr_off_fu_238_p2__1_carry__2_i_6
       (.I0(\val_V_8_reg_369_reg_n_8_[4] ),
        .I1(\val_V_8_reg_369_reg_n_8_[2] ),
        .I2(\val_V_8_reg_369_reg_n_8_[5] ),
        .I3(\val_V_8_reg_369_reg_n_8_[3] ),
        .O(curr_off_fu_238_p2__1_carry__2_i_6_n_8));
  LUT4 #(
    .INIT(16'h8778)) 
    curr_off_fu_238_p2__1_carry__2_i_7
       (.I0(\val_V_8_reg_369_reg_n_8_[3] ),
        .I1(\val_V_8_reg_369_reg_n_8_[1] ),
        .I2(\val_V_8_reg_369_reg_n_8_[4] ),
        .I3(\val_V_8_reg_369_reg_n_8_[2] ),
        .O(curr_off_fu_238_p2__1_carry__2_i_7_n_8));
  LUT4 #(
    .INIT(16'h8778)) 
    curr_off_fu_238_p2__1_carry__2_i_8
       (.I0(\val_V_8_reg_369_reg_n_8_[2] ),
        .I1(p_shl2_fu_264_p4[15]),
        .I2(\val_V_8_reg_369_reg_n_8_[3] ),
        .I3(\val_V_8_reg_369_reg_n_8_[1] ),
        .O(curr_off_fu_238_p2__1_carry__2_i_8_n_8));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 curr_off_fu_238_p2__1_carry__3
       (.CI(curr_off_fu_238_p2__1_carry__2_n_8),
        .CO({curr_off_fu_238_p2[25],NLW_curr_off_fu_238_p2__1_carry__3_CO_UNCONNECTED[2],curr_off_fu_238_p2__1_carry__3_n_10,curr_off_fu_238_p2__1_carry__3_n_11}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\val_V_8_reg_369_reg_n_8_[6] ,curr_off_fu_238_p2__1_carry__3_i_1_n_8}),
        .O({NLW_curr_off_fu_238_p2__1_carry__3_O_UNCONNECTED[3],curr_off_fu_238_p2[24:22]}),
        .S({1'b1,\val_V_8_reg_369_reg_n_8_[7] ,curr_off_fu_238_p2__1_carry__3_i_2_n_8,curr_off_fu_238_p2__1_carry__3_i_3_n_8}));
  LUT2 #(
    .INIT(4'h8)) 
    curr_off_fu_238_p2__1_carry__3_i_1
       (.I0(\val_V_8_reg_369_reg_n_8_[4] ),
        .I1(\val_V_8_reg_369_reg_n_8_[6] ),
        .O(curr_off_fu_238_p2__1_carry__3_i_1_n_8));
  LUT3 #(
    .INIT(8'h78)) 
    curr_off_fu_238_p2__1_carry__3_i_2
       (.I0(\val_V_8_reg_369_reg_n_8_[7] ),
        .I1(\val_V_8_reg_369_reg_n_8_[5] ),
        .I2(\val_V_8_reg_369_reg_n_8_[6] ),
        .O(curr_off_fu_238_p2__1_carry__3_i_2_n_8));
  LUT4 #(
    .INIT(16'h8778)) 
    curr_off_fu_238_p2__1_carry__3_i_3
       (.I0(\val_V_8_reg_369_reg_n_8_[6] ),
        .I1(\val_V_8_reg_369_reg_n_8_[4] ),
        .I2(\val_V_8_reg_369_reg_n_8_[7] ),
        .I3(\val_V_8_reg_369_reg_n_8_[5] ),
        .O(curr_off_fu_238_p2__1_carry__3_i_3_n_8));
  LUT3 #(
    .INIT(8'h96)) 
    curr_off_fu_238_p2__1_carry_i_1
       (.I0(p_shl2_fu_264_p4[7]),
        .I1(mot1_fu_180_p3[9]),
        .I2(p_shl2_fu_264_p4[9]),
        .O(curr_off_fu_238_p2__1_carry_i_1_n_8));
  LUT2 #(
    .INIT(4'h6)) 
    curr_off_fu_238_p2__1_carry_i_2
       (.I0(p_shl2_fu_264_p4[8]),
        .I1(mot1_fu_180_p3[8]),
        .O(curr_off_fu_238_p2__1_carry_i_2_n_8));
  LUT2 #(
    .INIT(4'h6)) 
    curr_off_fu_238_p2__1_carry_i_3
       (.I0(p_shl2_fu_264_p4[7]),
        .I1(mot1_fu_180_p3[7]),
        .O(curr_off_fu_238_p2__1_carry_i_3_n_8));
  LUT1 #(
    .INIT(2'h1)) 
    \i1_0_reg_142[0]_i_1 
       (.I0(i1_0_reg_142_reg[0]),
        .O(\i1_0_reg_142[0]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i1_0_reg_142[1]_i_1 
       (.I0(i1_0_reg_142_reg[1]),
        .I1(i1_0_reg_142_reg[0]),
        .O(i_3_fu_322_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i1_0_reg_142[2]_i_1 
       (.I0(i1_0_reg_142_reg[2]),
        .I1(i1_0_reg_142_reg[0]),
        .I2(i1_0_reg_142_reg[1]),
        .O(i_3_fu_322_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i1_0_reg_142[3]_i_1 
       (.I0(i1_0_reg_142_reg[3]),
        .I1(i1_0_reg_142_reg[1]),
        .I2(i1_0_reg_142_reg[0]),
        .I3(i1_0_reg_142_reg[2]),
        .O(i_3_fu_322_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i1_0_reg_142[4]_i_1 
       (.I0(i1_0_reg_142_reg[4]),
        .I1(i1_0_reg_142_reg[2]),
        .I2(i1_0_reg_142_reg[3]),
        .I3(i1_0_reg_142_reg[1]),
        .I4(i1_0_reg_142_reg[0]),
        .O(i_3_fu_322_p2[4]));
  LUT4 #(
    .INIT(16'h2000)) 
    \i1_0_reg_142[5]_i_1 
       (.I0(icmp_ln60_fu_192_p2),
        .I1(icmp_ln51_fu_186_p2),
        .I2(crc2fra_1_empty_n),
        .I3(ap_CS_fsm_state9),
        .O(i1_0_reg_1420));
  LUT4 #(
    .INIT(16'h00E0)) 
    \i1_0_reg_142[5]_i_2 
       (.I0(\v_assign_cast_reg_406[25]_i_2_n_8 ),
        .I1(crc2fra_1_empty_n),
        .I2(ap_CS_fsm_state10),
        .I3(\i1_0_reg_142[5]_i_4_n_8 ),
        .O(i1_0_reg_142010_out));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \i1_0_reg_142[5]_i_3 
       (.I0(i1_0_reg_142_reg[5]),
        .I1(i1_0_reg_142_reg[0]),
        .I2(i1_0_reg_142_reg[1]),
        .I3(i1_0_reg_142_reg[3]),
        .I4(i1_0_reg_142_reg[2]),
        .I5(i1_0_reg_142_reg[4]),
        .O(i_3_fu_322_p2[5]));
  LUT3 #(
    .INIT(8'hFB)) 
    \i1_0_reg_142[5]_i_4 
       (.I0(\i1_0_reg_142[5]_i_5_n_8 ),
        .I1(icmp_ln60_reg_380),
        .I2(\icmp_ln51_reg_376_reg_n_8_[0] ),
        .O(\i1_0_reg_142[5]_i_4_n_8 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \i1_0_reg_142[5]_i_5 
       (.I0(i1_0_reg_142_reg[5]),
        .I1(i1_0_reg_142_reg[4]),
        .I2(i1_0_reg_142_reg[2]),
        .I3(i1_0_reg_142_reg[3]),
        .I4(i1_0_reg_142_reg[1]),
        .I5(i1_0_reg_142_reg[0]),
        .O(\i1_0_reg_142[5]_i_5_n_8 ));
  FDRE \i1_0_reg_142_reg[0] 
       (.C(clock),
        .CE(i1_0_reg_142010_out),
        .D(\i1_0_reg_142[0]_i_1_n_8 ),
        .Q(i1_0_reg_142_reg[0]),
        .R(i1_0_reg_1420));
  FDRE \i1_0_reg_142_reg[1] 
       (.C(clock),
        .CE(i1_0_reg_142010_out),
        .D(i_3_fu_322_p2[1]),
        .Q(i1_0_reg_142_reg[1]),
        .R(i1_0_reg_1420));
  FDRE \i1_0_reg_142_reg[2] 
       (.C(clock),
        .CE(i1_0_reg_142010_out),
        .D(i_3_fu_322_p2[2]),
        .Q(i1_0_reg_142_reg[2]),
        .R(i1_0_reg_1420));
  FDRE \i1_0_reg_142_reg[3] 
       (.C(clock),
        .CE(i1_0_reg_142010_out),
        .D(i_3_fu_322_p2[3]),
        .Q(i1_0_reg_142_reg[3]),
        .R(i1_0_reg_1420));
  FDRE \i1_0_reg_142_reg[4] 
       (.C(clock),
        .CE(i1_0_reg_142010_out),
        .D(i_3_fu_322_p2[4]),
        .Q(i1_0_reg_142_reg[4]),
        .R(i1_0_reg_1420));
  FDRE \i1_0_reg_142_reg[5] 
       (.C(clock),
        .CE(i1_0_reg_142010_out),
        .D(i_3_fu_322_p2[5]),
        .Q(i1_0_reg_142_reg[5]),
        .R(i1_0_reg_1420));
  LUT1 #(
    .INIT(2'h1)) 
    \i3_0_reg_122[0]_i_1 
       (.I0(i3_0_reg_122_reg[0]),
        .O(i_4_fu_291_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i3_0_reg_122[1]_i_1 
       (.I0(i3_0_reg_122_reg[0]),
        .I1(i3_0_reg_122_reg[1]),
        .O(i_4_fu_291_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i3_0_reg_122[2]_i_1 
       (.I0(i3_0_reg_122_reg[2]),
        .I1(i3_0_reg_122_reg[1]),
        .I2(i3_0_reg_122_reg[0]),
        .O(i_4_fu_291_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i3_0_reg_122[3]_i_1 
       (.I0(i3_0_reg_122_reg[3]),
        .I1(i3_0_reg_122_reg[0]),
        .I2(i3_0_reg_122_reg[1]),
        .I3(i3_0_reg_122_reg[2]),
        .O(i_4_fu_291_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i3_0_reg_122[4]_i_1 
       (.I0(i3_0_reg_122_reg[4]),
        .I1(i3_0_reg_122_reg[2]),
        .I2(i3_0_reg_122_reg[1]),
        .I3(i3_0_reg_122_reg[0]),
        .I4(i3_0_reg_122_reg[3]),
        .O(i_4_fu_291_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \i3_0_reg_122[5]_i_1 
       (.I0(i3_0_reg_122_reg[5]),
        .I1(i3_0_reg_122_reg[3]),
        .I2(i3_0_reg_122_reg[0]),
        .I3(i3_0_reg_122_reg[1]),
        .I4(i3_0_reg_122_reg[2]),
        .I5(i3_0_reg_122_reg[4]),
        .O(i_4_fu_291_p2[5]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \i3_0_reg_122[6]_i_1 
       (.I0(icmp_ln60_fu_192_p2),
        .I1(ap_CS_fsm_state9),
        .I2(crc2fra_1_empty_n),
        .I3(icmp_ln51_fu_186_p2),
        .I4(icmp_ln96_fu_198_p2),
        .O(i3_0_reg_1220));
  LUT4 #(
    .INIT(16'hE000)) 
    \i3_0_reg_122[6]_i_2 
       (.I0(\v_assign_cast_reg_406[25]_i_2_n_8 ),
        .I1(crc2fra_1_empty_n),
        .I2(ap_CS_fsm_state10),
        .I3(\i3_0_reg_122[6]_i_4_n_8 ),
        .O(i3_0_reg_12208_out));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i3_0_reg_122[6]_i_3 
       (.I0(i3_0_reg_122_reg[6]),
        .I1(\i3_0_reg_122[6]_i_5_n_8 ),
        .I2(i3_0_reg_122_reg[5]),
        .O(i_4_fu_291_p2[6]));
  LUT6 #(
    .INIT(64'h000000000000FFEF)) 
    \i3_0_reg_122[6]_i_4 
       (.I0(\i3_0_reg_122[6]_i_6_n_8 ),
        .I1(i3_0_reg_122_reg[3]),
        .I2(i3_0_reg_122_reg[6]),
        .I3(i3_0_reg_122_reg[4]),
        .I4(\i3_0_reg_122[6]_i_7_n_8 ),
        .I5(icmp_ln96_reg_384),
        .O(\i3_0_reg_122[6]_i_4_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \i3_0_reg_122[6]_i_5 
       (.I0(i3_0_reg_122_reg[4]),
        .I1(i3_0_reg_122_reg[2]),
        .I2(i3_0_reg_122_reg[1]),
        .I3(i3_0_reg_122_reg[0]),
        .I4(i3_0_reg_122_reg[3]),
        .O(\i3_0_reg_122[6]_i_5_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \i3_0_reg_122[6]_i_6 
       (.I0(i3_0_reg_122_reg[1]),
        .I1(i3_0_reg_122_reg[0]),
        .I2(i3_0_reg_122_reg[5]),
        .I3(i3_0_reg_122_reg[2]),
        .O(\i3_0_reg_122[6]_i_6_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \i3_0_reg_122[6]_i_7 
       (.I0(icmp_ln60_reg_380),
        .I1(\icmp_ln51_reg_376_reg_n_8_[0] ),
        .O(\i3_0_reg_122[6]_i_7_n_8 ));
  FDRE \i3_0_reg_122_reg[0] 
       (.C(clock),
        .CE(i3_0_reg_12208_out),
        .D(i_4_fu_291_p2[0]),
        .Q(i3_0_reg_122_reg[0]),
        .R(i3_0_reg_1220));
  FDRE \i3_0_reg_122_reg[1] 
       (.C(clock),
        .CE(i3_0_reg_12208_out),
        .D(i_4_fu_291_p2[1]),
        .Q(i3_0_reg_122_reg[1]),
        .R(i3_0_reg_1220));
  FDRE \i3_0_reg_122_reg[2] 
       (.C(clock),
        .CE(i3_0_reg_12208_out),
        .D(i_4_fu_291_p2[2]),
        .Q(i3_0_reg_122_reg[2]),
        .R(i3_0_reg_1220));
  FDRE \i3_0_reg_122_reg[3] 
       (.C(clock),
        .CE(i3_0_reg_12208_out),
        .D(i_4_fu_291_p2[3]),
        .Q(i3_0_reg_122_reg[3]),
        .R(i3_0_reg_1220));
  FDRE \i3_0_reg_122_reg[4] 
       (.C(clock),
        .CE(i3_0_reg_12208_out),
        .D(i_4_fu_291_p2[4]),
        .Q(i3_0_reg_122_reg[4]),
        .R(i3_0_reg_1220));
  FDRE \i3_0_reg_122_reg[5] 
       (.C(clock),
        .CE(i3_0_reg_12208_out),
        .D(i_4_fu_291_p2[5]),
        .Q(i3_0_reg_122_reg[5]),
        .R(i3_0_reg_1220));
  FDRE \i3_0_reg_122_reg[6] 
       (.C(clock),
        .CE(i3_0_reg_12208_out),
        .D(i_4_fu_291_p2[6]),
        .Q(i3_0_reg_122_reg[6]),
        .R(i3_0_reg_1220));
  LUT1 #(
    .INIT(2'h1)) 
    \i_0_reg_153[0]_i_1 
       (.I0(i_0_reg_153_reg[0]),
        .O(\i_0_reg_153[0]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_0_reg_153[1]_i_1 
       (.I0(i_0_reg_153_reg[1]),
        .I1(i_0_reg_153_reg[0]),
        .O(i_fu_334_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_0_reg_153[2]_i_1 
       (.I0(i_0_reg_153_reg[2]),
        .I1(i_0_reg_153_reg[0]),
        .I2(i_0_reg_153_reg[1]),
        .O(i_fu_334_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_0_reg_153[3]_i_1 
       (.I0(i_0_reg_153_reg[3]),
        .I1(i_0_reg_153_reg[1]),
        .I2(i_0_reg_153_reg[0]),
        .I3(i_0_reg_153_reg[2]),
        .O(i_fu_334_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i_0_reg_153[4]_i_1 
       (.I0(i_0_reg_153_reg[4]),
        .I1(i_0_reg_153_reg[1]),
        .I2(i_0_reg_153_reg[0]),
        .I3(i_0_reg_153_reg[2]),
        .I4(i_0_reg_153_reg[3]),
        .O(i_fu_334_p2[4]));
  LUT3 #(
    .INIT(8'h80)) 
    \i_0_reg_153[5]_i_1 
       (.I0(icmp_ln51_fu_186_p2),
        .I1(ap_CS_fsm_state9),
        .I2(crc2fra_1_empty_n),
        .O(\i_0_reg_153[5]_i_1_n_8 ));
  LUT4 #(
    .INIT(16'hE000)) 
    \i_0_reg_153[5]_i_2 
       (.I0(\v_assign_cast_reg_406[25]_i_2_n_8 ),
        .I1(crc2fra_1_empty_n),
        .I2(ap_CS_fsm_state10),
        .I3(\i_0_reg_153[5]_i_4_n_8 ),
        .O(e_read1339_out));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \i_0_reg_153[5]_i_3 
       (.I0(i_0_reg_153_reg[5]),
        .I1(i_0_reg_153_reg[3]),
        .I2(i_0_reg_153_reg[2]),
        .I3(i_0_reg_153_reg[0]),
        .I4(i_0_reg_153_reg[1]),
        .I5(i_0_reg_153_reg[4]),
        .O(i_fu_334_p2[5]));
  LUT6 #(
    .INIT(64'hAAAAAA2AAAAAAAAA)) 
    \i_0_reg_153[5]_i_4 
       (.I0(\icmp_ln51_reg_376_reg_n_8_[0] ),
        .I1(i_0_reg_153_reg[5]),
        .I2(i_0_reg_153_reg[4]),
        .I3(i_0_reg_153_reg[0]),
        .I4(i_0_reg_153_reg[1]),
        .I5(\i_0_reg_153[5]_i_5_n_8 ),
        .O(\i_0_reg_153[5]_i_4_n_8 ));
  LUT2 #(
    .INIT(4'h8)) 
    \i_0_reg_153[5]_i_5 
       (.I0(i_0_reg_153_reg[2]),
        .I1(i_0_reg_153_reg[3]),
        .O(\i_0_reg_153[5]_i_5_n_8 ));
  FDRE \i_0_reg_153_reg[0] 
       (.C(clock),
        .CE(e_read1339_out),
        .D(\i_0_reg_153[0]_i_1_n_8 ),
        .Q(i_0_reg_153_reg[0]),
        .R(\i_0_reg_153[5]_i_1_n_8 ));
  FDRE \i_0_reg_153_reg[1] 
       (.C(clock),
        .CE(e_read1339_out),
        .D(i_fu_334_p2[1]),
        .Q(i_0_reg_153_reg[1]),
        .R(\i_0_reg_153[5]_i_1_n_8 ));
  FDRE \i_0_reg_153_reg[2] 
       (.C(clock),
        .CE(e_read1339_out),
        .D(i_fu_334_p2[2]),
        .Q(i_0_reg_153_reg[2]),
        .R(\i_0_reg_153[5]_i_1_n_8 ));
  FDRE \i_0_reg_153_reg[3] 
       (.C(clock),
        .CE(e_read1339_out),
        .D(i_fu_334_p2[3]),
        .Q(i_0_reg_153_reg[3]),
        .R(\i_0_reg_153[5]_i_1_n_8 ));
  FDRE \i_0_reg_153_reg[4] 
       (.C(clock),
        .CE(e_read1339_out),
        .D(i_fu_334_p2[4]),
        .Q(i_0_reg_153_reg[4]),
        .R(\i_0_reg_153[5]_i_1_n_8 ));
  FDRE \i_0_reg_153_reg[5] 
       (.C(clock),
        .CE(e_read1339_out),
        .D(i_fu_334_p2[5]),
        .Q(i_0_reg_153_reg[5]),
        .R(\i_0_reg_153[5]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \icmp_ln51_reg_376[0]_i_1 
       (.I0(icmp_ln51_fu_186_p2),
        .I1(crc2fra_1_empty_n),
        .I2(ap_CS_fsm_state9),
        .I3(\icmp_ln51_reg_376_reg_n_8_[0] ),
        .O(\icmp_ln51_reg_376[0]_i_1_n_8 ));
  FDRE \icmp_ln51_reg_376_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(\icmp_ln51_reg_376[0]_i_1_n_8 ),
        .Q(\icmp_ln51_reg_376_reg_n_8_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \icmp_ln60_reg_380[0]_i_1 
       (.I0(icmp_ln60_fu_192_p2),
        .I1(ap_CS_fsm_state9),
        .I2(crc2fra_1_empty_n),
        .I3(icmp_ln51_fu_186_p2),
        .I4(icmp_ln60_reg_380),
        .O(\icmp_ln60_reg_380[0]_i_1_n_8 ));
  FDRE \icmp_ln60_reg_380_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(\icmp_ln60_reg_380[0]_i_1_n_8 ),
        .Q(icmp_ln60_reg_380),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \icmp_ln96_reg_384[0]_i_1 
       (.I0(icmp_ln96_fu_198_p2),
        .I1(icmp_ln51_fu_186_p2),
        .I2(crc2fra_1_empty_n),
        .I3(ap_CS_fsm_state9),
        .I4(icmp_ln60_fu_192_p2),
        .I5(icmp_ln96_reg_384),
        .O(\icmp_ln96_reg_384[0]_i_1_n_8 ));
  FDRE \icmp_ln96_reg_384_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(\icmp_ln96_reg_384[0]_i_1_n_8 ),
        .Q(icmp_ln96_reg_384),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAFBFFFFFFFF)) 
    \mOutPtr[4]_i_2__2 
       (.I0(ce),
        .I1(ap_CS_fsm_state10),
        .I2(\v_assign_cast_reg_406[25]_i_2_n_8 ),
        .I3(\mOutPtr[4]_i_3_n_8 ),
        .I4(\mOutPtr[5]_i_5__0_n_8 ),
        .I5(crc2fra_1_empty_n),
        .O(\ap_CS_fsm_reg[9]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'hFF800000)) 
    \mOutPtr[4]_i_3 
       (.I0(rgbv_full_n),
        .I1(addr_full_n),
        .I2(ap_CS_fsm_state12),
        .I3(ap_CS_fsm_state9),
        .I4(crc2fra_1_empty_n),
        .O(\mOutPtr[4]_i_3_n_8 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \mOutPtr[5]_i_10 
       (.I0(i_0_reg_153_reg[3]),
        .I1(i_0_reg_153_reg[2]),
        .I2(i_0_reg_153_reg[1]),
        .I3(i_0_reg_153_reg[0]),
        .I4(i_0_reg_153_reg[4]),
        .I5(i_0_reg_153_reg[5]),
        .O(\mOutPtr[5]_i_10_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \mOutPtr[5]_i_11 
       (.I0(i3_0_reg_122_reg[3]),
        .I1(i3_0_reg_122_reg[6]),
        .I2(i3_0_reg_122_reg[4]),
        .O(\mOutPtr[5]_i_11_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'hF0F0F0E0)) 
    \mOutPtr[5]_i_12 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(crc2fra_1_empty_n),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\mOutPtr[5]_i_12_n_8 ));
  LUT6 #(
    .INIT(64'hCCC8CCCCCCC8CCC8)) 
    \mOutPtr[5]_i_3__2 
       (.I0(\mOutPtr[5]_i_5__0_n_8 ),
        .I1(crc2fra_1_empty_n),
        .I2(ap_CS_fsm_state9),
        .I3(\ap_CS_fsm_reg[11]_0 ),
        .I4(\v_assign_cast_reg_406[25]_i_2_n_8 ),
        .I5(ap_CS_fsm_state10),
        .O(internal_empty_n_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0F0F0E0)) 
    \mOutPtr[5]_i_5__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(crc2fra_1_empty_n),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\mOutPtr[5]_i_7_n_8 ),
        .O(\mOutPtr[5]_i_5__0_n_8 ));
  LUT6 #(
    .INIT(64'h000000005555FD55)) 
    \mOutPtr[5]_i_6 
       (.I0(ap_CS_fsm_state10),
        .I1(icmp_ln107_fu_305_p2),
        .I2(\v_assign_cast_reg_406[25]_i_3_n_8 ),
        .I3(\i1_0_reg_142[5]_i_4_n_8 ),
        .I4(\mOutPtr[5]_i_8_n_8 ),
        .I5(\mOutPtr[5]_i_9_n_8 ),
        .O(\ap_CS_fsm_reg[9]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \mOutPtr[5]_i_7 
       (.I0(ap_CS_fsm_state3),
        .I1(ap_CS_fsm_state11),
        .I2(Q[4]),
        .I3(ap_CS_fsm_state8),
        .I4(crc2fra_1_empty_n),
        .O(\mOutPtr[5]_i_7_n_8 ));
  LUT6 #(
    .INIT(64'h5053505350535050)) 
    \mOutPtr[5]_i_8 
       (.I0(\mOutPtr[5]_i_10_n_8 ),
        .I1(icmp_ln96_reg_384),
        .I2(\icmp_ln51_reg_376_reg_n_8_[0] ),
        .I3(icmp_ln60_reg_380),
        .I4(\mOutPtr[5]_i_11_n_8 ),
        .I5(\i3_0_reg_122[6]_i_6_n_8 ),
        .O(\mOutPtr[5]_i_8_n_8 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEAA)) 
    \mOutPtr[5]_i_9 
       (.I0(reg_1680),
        .I1(Q[4]),
        .I2(ap_CS_fsm_state8),
        .I3(crc2fra_1_empty_n),
        .I4(\mOutPtr[5]_i_12_n_8 ),
        .I5(\mOutPtr[4]_i_3_n_8 ),
        .O(\mOutPtr[5]_i_9_n_8 ));
  LUT5 #(
    .INIT(32'hF8F08880)) 
    \reg_164[7]_i_1 
       (.I0(\reg_164[7]_i_2_n_8 ),
        .I1(ap_CS_fsm_state10),
        .I2(crc2fra_1_empty_n),
        .I3(\v_assign_cast_reg_406[25]_i_2_n_8 ),
        .I4(Q[0]),
        .O(reg_1640));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \reg_164[7]_i_2 
       (.I0(icmp_ln107_fu_305_p2),
        .I1(icmp_ln96_reg_384),
        .I2(icmp_ln60_reg_380),
        .I3(\icmp_ln51_reg_376_reg_n_8_[0] ),
        .O(\reg_164[7]_i_2_n_8 ));
  FDRE \reg_164_reg[0] 
       (.C(clock),
        .CE(reg_1640),
        .D(D[0]),
        .Q(\reg_164_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \reg_164_reg[1] 
       (.C(clock),
        .CE(reg_1640),
        .D(D[1]),
        .Q(\reg_164_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \reg_164_reg[2] 
       (.C(clock),
        .CE(reg_1640),
        .D(D[2]),
        .Q(\reg_164_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \reg_164_reg[3] 
       (.C(clock),
        .CE(reg_1640),
        .D(D[3]),
        .Q(\reg_164_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \reg_164_reg[4] 
       (.C(clock),
        .CE(reg_1640),
        .D(D[4]),
        .Q(\reg_164_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \reg_164_reg[5] 
       (.C(clock),
        .CE(reg_1640),
        .D(D[5]),
        .Q(\reg_164_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \reg_164_reg[6] 
       (.C(clock),
        .CE(reg_1640),
        .D(D[6]),
        .Q(\reg_164_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \reg_164_reg[7] 
       (.C(clock),
        .CE(reg_1640),
        .D(D[7]),
        .Q(\reg_164_reg[7]_0 [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hE0)) 
    \reg_168[7]_i_1 
       (.I0(ap_CS_fsm_state11),
        .I1(ap_CS_fsm_state3),
        .I2(crc2fra_1_empty_n),
        .O(reg_1680));
  FDRE \reg_168_reg[0] 
       (.C(clock),
        .CE(reg_1680),
        .D(D[0]),
        .Q(\reg_168_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \reg_168_reg[1] 
       (.C(clock),
        .CE(reg_1680),
        .D(D[1]),
        .Q(\reg_168_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \reg_168_reg[2] 
       (.C(clock),
        .CE(reg_1680),
        .D(D[2]),
        .Q(\reg_168_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \reg_168_reg[3] 
       (.C(clock),
        .CE(reg_1680),
        .D(D[3]),
        .Q(\reg_168_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \reg_168_reg[4] 
       (.C(clock),
        .CE(reg_1680),
        .D(D[4]),
        .Q(\reg_168_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \reg_168_reg[5] 
       (.C(clock),
        .CE(reg_1680),
        .D(D[5]),
        .Q(\reg_168_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \reg_168_reg[6] 
       (.C(clock),
        .CE(reg_1680),
        .D(D[6]),
        .Q(\reg_168_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \reg_168_reg[7] 
       (.C(clock),
        .CE(reg_1680),
        .D(D[7]),
        .Q(\reg_168_reg[7]_0 [7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    rgbv_write_INST_0
       (.I0(ap_CS_fsm_state12),
        .I1(crc2fra_1_empty_n),
        .I2(addr_full_n),
        .I3(rgbv_full_n),
        .O(\ap_CS_fsm_reg[11]_0 ));
  LUT6 #(
    .INIT(64'h000000000000E000)) 
    \v_assign_cast_reg_406[25]_i_1 
       (.I0(\v_assign_cast_reg_406[25]_i_2_n_8 ),
        .I1(crc2fra_1_empty_n),
        .I2(ap_CS_fsm_state10),
        .I3(icmp_ln96_reg_384),
        .I4(icmp_ln60_reg_380),
        .I5(\icmp_ln51_reg_376_reg_n_8_[0] ),
        .O(v_assign_cast_reg_4061));
  LUT5 #(
    .INIT(32'h000000E0)) 
    \v_assign_cast_reg_406[25]_i_2 
       (.I0(icmp_ln107_fu_305_p2),
        .I1(\v_assign_cast_reg_406[25]_i_3_n_8 ),
        .I2(\i1_0_reg_142[5]_i_4_n_8 ),
        .I3(\i3_0_reg_122[6]_i_4_n_8 ),
        .I4(\i_0_reg_153[5]_i_4_n_8 ),
        .O(\v_assign_cast_reg_406[25]_i_2_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \v_assign_cast_reg_406[25]_i_3 
       (.I0(\icmp_ln51_reg_376_reg_n_8_[0] ),
        .I1(icmp_ln60_reg_380),
        .I2(icmp_ln96_reg_384),
        .O(\v_assign_cast_reg_406[25]_i_3_n_8 ));
  FDRE \v_assign_cast_reg_406_reg[0] 
       (.C(clock),
        .CE(v_assign_cast_reg_4061),
        .D(v_assign_cast_reg_406[0]),
        .Q(addr_din[0]),
        .R(1'b0));
  FDRE \v_assign_cast_reg_406_reg[10] 
       (.C(clock),
        .CE(v_assign_cast_reg_4061),
        .D(v_assign_cast_reg_406[10]),
        .Q(addr_din[10]),
        .R(1'b0));
  FDRE \v_assign_cast_reg_406_reg[11] 
       (.C(clock),
        .CE(v_assign_cast_reg_4061),
        .D(v_assign_cast_reg_406[11]),
        .Q(addr_din[11]),
        .R(1'b0));
  FDRE \v_assign_cast_reg_406_reg[12] 
       (.C(clock),
        .CE(v_assign_cast_reg_4061),
        .D(v_assign_cast_reg_406[12]),
        .Q(addr_din[12]),
        .R(1'b0));
  FDRE \v_assign_cast_reg_406_reg[13] 
       (.C(clock),
        .CE(v_assign_cast_reg_4061),
        .D(v_assign_cast_reg_406[13]),
        .Q(addr_din[13]),
        .R(1'b0));
  FDRE \v_assign_cast_reg_406_reg[14] 
       (.C(clock),
        .CE(v_assign_cast_reg_4061),
        .D(v_assign_cast_reg_406[14]),
        .Q(addr_din[14]),
        .R(1'b0));
  FDRE \v_assign_cast_reg_406_reg[15] 
       (.C(clock),
        .CE(v_assign_cast_reg_4061),
        .D(v_assign_cast_reg_406[15]),
        .Q(addr_din[15]),
        .R(1'b0));
  FDRE \v_assign_cast_reg_406_reg[16] 
       (.C(clock),
        .CE(v_assign_cast_reg_4061),
        .D(v_assign_cast_reg_406[16]),
        .Q(addr_din[16]),
        .R(1'b0));
  FDRE \v_assign_cast_reg_406_reg[17] 
       (.C(clock),
        .CE(v_assign_cast_reg_4061),
        .D(v_assign_cast_reg_406[17]),
        .Q(addr_din[17]),
        .R(1'b0));
  FDRE \v_assign_cast_reg_406_reg[18] 
       (.C(clock),
        .CE(v_assign_cast_reg_4061),
        .D(v_assign_cast_reg_406[18]),
        .Q(addr_din[18]),
        .R(1'b0));
  FDRE \v_assign_cast_reg_406_reg[19] 
       (.C(clock),
        .CE(v_assign_cast_reg_4061),
        .D(v_assign_cast_reg_406[19]),
        .Q(addr_din[19]),
        .R(1'b0));
  FDRE \v_assign_cast_reg_406_reg[1] 
       (.C(clock),
        .CE(v_assign_cast_reg_4061),
        .D(v_assign_cast_reg_406[1]),
        .Q(addr_din[1]),
        .R(1'b0));
  FDRE \v_assign_cast_reg_406_reg[20] 
       (.C(clock),
        .CE(v_assign_cast_reg_4061),
        .D(v_assign_cast_reg_406[20]),
        .Q(addr_din[20]),
        .R(1'b0));
  FDRE \v_assign_cast_reg_406_reg[21] 
       (.C(clock),
        .CE(v_assign_cast_reg_4061),
        .D(v_assign_cast_reg_406[21]),
        .Q(addr_din[21]),
        .R(1'b0));
  FDRE \v_assign_cast_reg_406_reg[22] 
       (.C(clock),
        .CE(v_assign_cast_reg_4061),
        .D(v_assign_cast_reg_406[22]),
        .Q(addr_din[22]),
        .R(1'b0));
  FDRE \v_assign_cast_reg_406_reg[23] 
       (.C(clock),
        .CE(v_assign_cast_reg_4061),
        .D(v_assign_cast_reg_406[23]),
        .Q(addr_din[23]),
        .R(1'b0));
  FDRE \v_assign_cast_reg_406_reg[24] 
       (.C(clock),
        .CE(v_assign_cast_reg_4061),
        .D(v_assign_cast_reg_406[24]),
        .Q(addr_din[24]),
        .R(1'b0));
  FDRE \v_assign_cast_reg_406_reg[25] 
       (.C(clock),
        .CE(v_assign_cast_reg_4061),
        .D(v_assign_cast_reg_406[25]),
        .Q(addr_din[25]),
        .R(1'b0));
  FDRE \v_assign_cast_reg_406_reg[2] 
       (.C(clock),
        .CE(v_assign_cast_reg_4061),
        .D(v_assign_cast_reg_406[2]),
        .Q(addr_din[2]),
        .R(1'b0));
  FDRE \v_assign_cast_reg_406_reg[3] 
       (.C(clock),
        .CE(v_assign_cast_reg_4061),
        .D(v_assign_cast_reg_406[3]),
        .Q(addr_din[3]),
        .R(1'b0));
  FDRE \v_assign_cast_reg_406_reg[4] 
       (.C(clock),
        .CE(v_assign_cast_reg_4061),
        .D(v_assign_cast_reg_406[4]),
        .Q(addr_din[4]),
        .R(1'b0));
  FDRE \v_assign_cast_reg_406_reg[5] 
       (.C(clock),
        .CE(v_assign_cast_reg_4061),
        .D(v_assign_cast_reg_406[5]),
        .Q(addr_din[5]),
        .R(1'b0));
  FDRE \v_assign_cast_reg_406_reg[6] 
       (.C(clock),
        .CE(v_assign_cast_reg_4061),
        .D(v_assign_cast_reg_406[6]),
        .Q(addr_din[6]),
        .R(1'b0));
  FDRE \v_assign_cast_reg_406_reg[7] 
       (.C(clock),
        .CE(v_assign_cast_reg_4061),
        .D(v_assign_cast_reg_406[7]),
        .Q(addr_din[7]),
        .R(1'b0));
  FDRE \v_assign_cast_reg_406_reg[8] 
       (.C(clock),
        .CE(v_assign_cast_reg_4061),
        .D(v_assign_cast_reg_406[8]),
        .Q(addr_din[8]),
        .R(1'b0));
  FDRE \v_assign_cast_reg_406_reg[9] 
       (.C(clock),
        .CE(v_assign_cast_reg_4061),
        .D(v_assign_cast_reg_406[9]),
        .Q(addr_din[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \v_assign_reg_133[0]_i_1 
       (.I0(curr_off_1_reg_414[0]),
        .I1(ap_CS_fsm_state12),
        .I2(crc2fra_1_empty_n),
        .I3(addr_full_n),
        .I4(rgbv_full_n),
        .I5(mot1_fu_180_p3[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \v_assign_reg_133[10]_i_1 
       (.I0(curr_off_1_reg_414[10]),
        .I1(ap_CS_fsm_state12),
        .I2(crc2fra_1_empty_n),
        .I3(addr_full_n),
        .I4(rgbv_full_n),
        .I5(curr_off_fu_238_p2[10]),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \v_assign_reg_133[11]_i_1 
       (.I0(curr_off_1_reg_414[11]),
        .I1(ap_CS_fsm_state12),
        .I2(crc2fra_1_empty_n),
        .I3(addr_full_n),
        .I4(rgbv_full_n),
        .I5(curr_off_fu_238_p2[11]),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \v_assign_reg_133[12]_i_1 
       (.I0(curr_off_1_reg_414[12]),
        .I1(ap_CS_fsm_state12),
        .I2(crc2fra_1_empty_n),
        .I3(addr_full_n),
        .I4(rgbv_full_n),
        .I5(curr_off_fu_238_p2[12]),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \v_assign_reg_133[13]_i_1 
       (.I0(curr_off_1_reg_414[13]),
        .I1(ap_CS_fsm_state12),
        .I2(crc2fra_1_empty_n),
        .I3(addr_full_n),
        .I4(rgbv_full_n),
        .I5(curr_off_fu_238_p2[13]),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \v_assign_reg_133[14]_i_1 
       (.I0(curr_off_1_reg_414[14]),
        .I1(ap_CS_fsm_state12),
        .I2(crc2fra_1_empty_n),
        .I3(addr_full_n),
        .I4(rgbv_full_n),
        .I5(curr_off_fu_238_p2[14]),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \v_assign_reg_133[15]_i_1 
       (.I0(curr_off_1_reg_414[15]),
        .I1(ap_CS_fsm_state12),
        .I2(crc2fra_1_empty_n),
        .I3(addr_full_n),
        .I4(rgbv_full_n),
        .I5(curr_off_fu_238_p2[15]),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \v_assign_reg_133[16]_i_1 
       (.I0(curr_off_1_reg_414[16]),
        .I1(ap_CS_fsm_state12),
        .I2(crc2fra_1_empty_n),
        .I3(addr_full_n),
        .I4(rgbv_full_n),
        .I5(curr_off_fu_238_p2[16]),
        .O(p_1_in[16]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \v_assign_reg_133[17]_i_1 
       (.I0(curr_off_1_reg_414[17]),
        .I1(ap_CS_fsm_state12),
        .I2(crc2fra_1_empty_n),
        .I3(addr_full_n),
        .I4(rgbv_full_n),
        .I5(curr_off_fu_238_p2[17]),
        .O(p_1_in[17]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \v_assign_reg_133[18]_i_1 
       (.I0(curr_off_1_reg_414[18]),
        .I1(ap_CS_fsm_state12),
        .I2(crc2fra_1_empty_n),
        .I3(addr_full_n),
        .I4(rgbv_full_n),
        .I5(curr_off_fu_238_p2[18]),
        .O(p_1_in[18]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \v_assign_reg_133[19]_i_1 
       (.I0(curr_off_1_reg_414[19]),
        .I1(ap_CS_fsm_state12),
        .I2(crc2fra_1_empty_n),
        .I3(addr_full_n),
        .I4(rgbv_full_n),
        .I5(curr_off_fu_238_p2[19]),
        .O(p_1_in[19]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \v_assign_reg_133[1]_i_1 
       (.I0(curr_off_1_reg_414[1]),
        .I1(ap_CS_fsm_state12),
        .I2(crc2fra_1_empty_n),
        .I3(addr_full_n),
        .I4(rgbv_full_n),
        .I5(mot1_fu_180_p3[1]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \v_assign_reg_133[20]_i_1 
       (.I0(curr_off_1_reg_414[20]),
        .I1(ap_CS_fsm_state12),
        .I2(crc2fra_1_empty_n),
        .I3(addr_full_n),
        .I4(rgbv_full_n),
        .I5(curr_off_fu_238_p2[20]),
        .O(p_1_in[20]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \v_assign_reg_133[21]_i_1 
       (.I0(curr_off_1_reg_414[21]),
        .I1(ap_CS_fsm_state12),
        .I2(crc2fra_1_empty_n),
        .I3(addr_full_n),
        .I4(rgbv_full_n),
        .I5(curr_off_fu_238_p2[21]),
        .O(p_1_in[21]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \v_assign_reg_133[22]_i_1 
       (.I0(curr_off_1_reg_414[22]),
        .I1(ap_CS_fsm_state12),
        .I2(crc2fra_1_empty_n),
        .I3(addr_full_n),
        .I4(rgbv_full_n),
        .I5(curr_off_fu_238_p2[22]),
        .O(p_1_in[22]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \v_assign_reg_133[23]_i_1 
       (.I0(curr_off_1_reg_414[23]),
        .I1(ap_CS_fsm_state12),
        .I2(crc2fra_1_empty_n),
        .I3(addr_full_n),
        .I4(rgbv_full_n),
        .I5(curr_off_fu_238_p2[23]),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \v_assign_reg_133[24]_i_1 
       (.I0(curr_off_1_reg_414[24]),
        .I1(ap_CS_fsm_state12),
        .I2(crc2fra_1_empty_n),
        .I3(addr_full_n),
        .I4(rgbv_full_n),
        .I5(curr_off_fu_238_p2[24]),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEAAAAAA)) 
    \v_assign_reg_133[25]_i_1 
       (.I0(\ap_CS_fsm_reg[11]_0 ),
        .I1(icmp_ln96_fu_198_p2),
        .I2(icmp_ln51_fu_186_p2),
        .I3(crc2fra_1_empty_n),
        .I4(ap_CS_fsm_state9),
        .I5(icmp_ln60_fu_192_p2),
        .O(\v_assign_reg_133[25]_i_1_n_8 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \v_assign_reg_133[25]_i_10 
       (.I0(\v_assign_reg_133[25]_i_6_n_8 ),
        .I1(\v_assign_reg_133[25]_i_9_n_8 ),
        .I2(\reg_168_reg[7]_0 [6]),
        .I3(\reg_168_reg[7]_0 [5]),
        .I4(\reg_164_reg[7]_0 [1]),
        .O(\v_assign_reg_133[25]_i_10_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \v_assign_reg_133[25]_i_11 
       (.I0(\reg_164_reg[7]_0 [2]),
        .I1(\reg_164_reg[7]_0 [0]),
        .I2(\reg_164_reg[7]_0 [1]),
        .O(\v_assign_reg_133[25]_i_11_n_8 ));
  LUT5 #(
    .INIT(32'hFFFFEEFE)) 
    \v_assign_reg_133[25]_i_12 
       (.I0(\reg_168_reg[7]_0 [6]),
        .I1(\reg_168_reg[7]_0 [3]),
        .I2(\reg_164_reg[7]_0 [6]),
        .I3(\reg_164_reg[7]_0 [7]),
        .I4(\reg_168_reg[7]_0 [0]),
        .O(\v_assign_reg_133[25]_i_12_n_8 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \v_assign_reg_133[25]_i_2 
       (.I0(curr_off_1_reg_414[25]),
        .I1(ap_CS_fsm_state12),
        .I2(crc2fra_1_empty_n),
        .I3(addr_full_n),
        .I4(rgbv_full_n),
        .I5(curr_off_fu_238_p2[25]),
        .O(p_1_in[25]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \v_assign_reg_133[25]_i_3 
       (.I0(\v_assign_reg_133[25]_i_6_n_8 ),
        .I1(\v_assign_reg_133[25]_i_7_n_8 ),
        .I2(\v_assign_reg_133[25]_i_8_n_8 ),
        .I3(\reg_168_reg[7]_0 [5]),
        .I4(\reg_168_reg[7]_0 [6]),
        .I5(\v_assign_reg_133[25]_i_9_n_8 ),
        .O(icmp_ln96_fu_198_p2));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \v_assign_reg_133[25]_i_4 
       (.I0(\v_assign_reg_133[25]_i_10_n_8 ),
        .I1(\reg_164_reg[7]_0 [5]),
        .I2(\reg_168_reg[7]_0 [7]),
        .I3(\reg_164_reg[7]_0 [3]),
        .I4(\reg_164_reg[7]_0 [4]),
        .I5(\v_assign_reg_133[25]_i_11_n_8 ),
        .O(icmp_ln51_fu_186_p2));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \v_assign_reg_133[25]_i_5 
       (.I0(\v_assign_reg_133[25]_i_10_n_8 ),
        .I1(\reg_164_reg[7]_0 [5]),
        .I2(\reg_168_reg[7]_0 [7]),
        .I3(\reg_164_reg[7]_0 [4]),
        .I4(\reg_164_reg[7]_0 [3]),
        .I5(\v_assign_reg_133[25]_i_11_n_8 ),
        .O(icmp_ln60_fu_192_p2));
  LUT5 #(
    .INIT(32'h0000D0DD)) 
    \v_assign_reg_133[25]_i_6 
       (.I0(\reg_168_reg[7]_0 [4]),
        .I1(\reg_168_reg[7]_0 [5]),
        .I2(\reg_168_reg[7]_0 [2]),
        .I3(\reg_168_reg[7]_0 [1]),
        .I4(\v_assign_reg_133[25]_i_12_n_8 ),
        .O(\v_assign_reg_133[25]_i_6_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \v_assign_reg_133[25]_i_7 
       (.I0(\reg_164_reg[7]_0 [0]),
        .I1(\reg_164_reg[7]_0 [1]),
        .I2(\reg_164_reg[7]_0 [5]),
        .I3(\reg_168_reg[7]_0 [7]),
        .O(\v_assign_reg_133[25]_i_7_n_8 ));
  LUT2 #(
    .INIT(4'hB)) 
    \v_assign_reg_133[25]_i_8 
       (.I0(\reg_164_reg[7]_0 [3]),
        .I1(\reg_164_reg[7]_0 [4]),
        .O(\v_assign_reg_133[25]_i_8_n_8 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \v_assign_reg_133[25]_i_9 
       (.I0(\reg_168_reg[7]_0 [2]),
        .I1(\reg_168_reg[7]_0 [0]),
        .I2(\reg_164_reg[7]_0 [2]),
        .I3(\reg_168_reg[7]_0 [3]),
        .I4(\reg_164_reg[7]_0 [7]),
        .O(\v_assign_reg_133[25]_i_9_n_8 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \v_assign_reg_133[2]_i_1 
       (.I0(curr_off_1_reg_414[2]),
        .I1(ap_CS_fsm_state12),
        .I2(crc2fra_1_empty_n),
        .I3(addr_full_n),
        .I4(rgbv_full_n),
        .I5(mot1_fu_180_p3[2]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \v_assign_reg_133[3]_i_1 
       (.I0(curr_off_1_reg_414[3]),
        .I1(ap_CS_fsm_state12),
        .I2(crc2fra_1_empty_n),
        .I3(addr_full_n),
        .I4(rgbv_full_n),
        .I5(mot1_fu_180_p3[3]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \v_assign_reg_133[4]_i_1 
       (.I0(curr_off_1_reg_414[4]),
        .I1(ap_CS_fsm_state12),
        .I2(crc2fra_1_empty_n),
        .I3(addr_full_n),
        .I4(rgbv_full_n),
        .I5(mot1_fu_180_p3[4]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \v_assign_reg_133[5]_i_1 
       (.I0(curr_off_1_reg_414[5]),
        .I1(ap_CS_fsm_state12),
        .I2(crc2fra_1_empty_n),
        .I3(addr_full_n),
        .I4(rgbv_full_n),
        .I5(mot1_fu_180_p3[5]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \v_assign_reg_133[6]_i_1 
       (.I0(curr_off_1_reg_414[6]),
        .I1(ap_CS_fsm_state12),
        .I2(crc2fra_1_empty_n),
        .I3(addr_full_n),
        .I4(rgbv_full_n),
        .I5(curr_off_fu_238_p2[6]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \v_assign_reg_133[7]_i_1 
       (.I0(curr_off_1_reg_414[7]),
        .I1(ap_CS_fsm_state12),
        .I2(crc2fra_1_empty_n),
        .I3(addr_full_n),
        .I4(rgbv_full_n),
        .I5(curr_off_fu_238_p2[7]),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \v_assign_reg_133[8]_i_1 
       (.I0(curr_off_1_reg_414[8]),
        .I1(ap_CS_fsm_state12),
        .I2(crc2fra_1_empty_n),
        .I3(addr_full_n),
        .I4(rgbv_full_n),
        .I5(curr_off_fu_238_p2[8]),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \v_assign_reg_133[9]_i_1 
       (.I0(curr_off_1_reg_414[9]),
        .I1(ap_CS_fsm_state12),
        .I2(crc2fra_1_empty_n),
        .I3(addr_full_n),
        .I4(rgbv_full_n),
        .I5(curr_off_fu_238_p2[9]),
        .O(p_1_in[9]));
  FDRE \v_assign_reg_133_reg[0] 
       (.C(clock),
        .CE(\v_assign_reg_133[25]_i_1_n_8 ),
        .D(p_1_in[0]),
        .Q(v_assign_cast_reg_406[0]),
        .R(1'b0));
  FDRE \v_assign_reg_133_reg[10] 
       (.C(clock),
        .CE(\v_assign_reg_133[25]_i_1_n_8 ),
        .D(p_1_in[10]),
        .Q(v_assign_cast_reg_406[10]),
        .R(1'b0));
  FDRE \v_assign_reg_133_reg[11] 
       (.C(clock),
        .CE(\v_assign_reg_133[25]_i_1_n_8 ),
        .D(p_1_in[11]),
        .Q(v_assign_cast_reg_406[11]),
        .R(1'b0));
  FDRE \v_assign_reg_133_reg[12] 
       (.C(clock),
        .CE(\v_assign_reg_133[25]_i_1_n_8 ),
        .D(p_1_in[12]),
        .Q(v_assign_cast_reg_406[12]),
        .R(1'b0));
  FDRE \v_assign_reg_133_reg[13] 
       (.C(clock),
        .CE(\v_assign_reg_133[25]_i_1_n_8 ),
        .D(p_1_in[13]),
        .Q(v_assign_cast_reg_406[13]),
        .R(1'b0));
  FDRE \v_assign_reg_133_reg[14] 
       (.C(clock),
        .CE(\v_assign_reg_133[25]_i_1_n_8 ),
        .D(p_1_in[14]),
        .Q(v_assign_cast_reg_406[14]),
        .R(1'b0));
  FDRE \v_assign_reg_133_reg[15] 
       (.C(clock),
        .CE(\v_assign_reg_133[25]_i_1_n_8 ),
        .D(p_1_in[15]),
        .Q(v_assign_cast_reg_406[15]),
        .R(1'b0));
  FDRE \v_assign_reg_133_reg[16] 
       (.C(clock),
        .CE(\v_assign_reg_133[25]_i_1_n_8 ),
        .D(p_1_in[16]),
        .Q(v_assign_cast_reg_406[16]),
        .R(1'b0));
  FDRE \v_assign_reg_133_reg[17] 
       (.C(clock),
        .CE(\v_assign_reg_133[25]_i_1_n_8 ),
        .D(p_1_in[17]),
        .Q(v_assign_cast_reg_406[17]),
        .R(1'b0));
  FDRE \v_assign_reg_133_reg[18] 
       (.C(clock),
        .CE(\v_assign_reg_133[25]_i_1_n_8 ),
        .D(p_1_in[18]),
        .Q(v_assign_cast_reg_406[18]),
        .R(1'b0));
  FDRE \v_assign_reg_133_reg[19] 
       (.C(clock),
        .CE(\v_assign_reg_133[25]_i_1_n_8 ),
        .D(p_1_in[19]),
        .Q(v_assign_cast_reg_406[19]),
        .R(1'b0));
  FDRE \v_assign_reg_133_reg[1] 
       (.C(clock),
        .CE(\v_assign_reg_133[25]_i_1_n_8 ),
        .D(p_1_in[1]),
        .Q(v_assign_cast_reg_406[1]),
        .R(1'b0));
  FDRE \v_assign_reg_133_reg[20] 
       (.C(clock),
        .CE(\v_assign_reg_133[25]_i_1_n_8 ),
        .D(p_1_in[20]),
        .Q(v_assign_cast_reg_406[20]),
        .R(1'b0));
  FDRE \v_assign_reg_133_reg[21] 
       (.C(clock),
        .CE(\v_assign_reg_133[25]_i_1_n_8 ),
        .D(p_1_in[21]),
        .Q(v_assign_cast_reg_406[21]),
        .R(1'b0));
  FDRE \v_assign_reg_133_reg[22] 
       (.C(clock),
        .CE(\v_assign_reg_133[25]_i_1_n_8 ),
        .D(p_1_in[22]),
        .Q(v_assign_cast_reg_406[22]),
        .R(1'b0));
  FDRE \v_assign_reg_133_reg[23] 
       (.C(clock),
        .CE(\v_assign_reg_133[25]_i_1_n_8 ),
        .D(p_1_in[23]),
        .Q(v_assign_cast_reg_406[23]),
        .R(1'b0));
  FDRE \v_assign_reg_133_reg[24] 
       (.C(clock),
        .CE(\v_assign_reg_133[25]_i_1_n_8 ),
        .D(p_1_in[24]),
        .Q(v_assign_cast_reg_406[24]),
        .R(1'b0));
  FDRE \v_assign_reg_133_reg[25] 
       (.C(clock),
        .CE(\v_assign_reg_133[25]_i_1_n_8 ),
        .D(p_1_in[25]),
        .Q(v_assign_cast_reg_406[25]),
        .R(1'b0));
  FDRE \v_assign_reg_133_reg[2] 
       (.C(clock),
        .CE(\v_assign_reg_133[25]_i_1_n_8 ),
        .D(p_1_in[2]),
        .Q(v_assign_cast_reg_406[2]),
        .R(1'b0));
  FDRE \v_assign_reg_133_reg[3] 
       (.C(clock),
        .CE(\v_assign_reg_133[25]_i_1_n_8 ),
        .D(p_1_in[3]),
        .Q(v_assign_cast_reg_406[3]),
        .R(1'b0));
  FDRE \v_assign_reg_133_reg[4] 
       (.C(clock),
        .CE(\v_assign_reg_133[25]_i_1_n_8 ),
        .D(p_1_in[4]),
        .Q(v_assign_cast_reg_406[4]),
        .R(1'b0));
  FDRE \v_assign_reg_133_reg[5] 
       (.C(clock),
        .CE(\v_assign_reg_133[25]_i_1_n_8 ),
        .D(p_1_in[5]),
        .Q(v_assign_cast_reg_406[5]),
        .R(1'b0));
  FDRE \v_assign_reg_133_reg[6] 
       (.C(clock),
        .CE(\v_assign_reg_133[25]_i_1_n_8 ),
        .D(p_1_in[6]),
        .Q(v_assign_cast_reg_406[6]),
        .R(1'b0));
  FDRE \v_assign_reg_133_reg[7] 
       (.C(clock),
        .CE(\v_assign_reg_133[25]_i_1_n_8 ),
        .D(p_1_in[7]),
        .Q(v_assign_cast_reg_406[7]),
        .R(1'b0));
  FDRE \v_assign_reg_133_reg[8] 
       (.C(clock),
        .CE(\v_assign_reg_133[25]_i_1_n_8 ),
        .D(p_1_in[8]),
        .Q(v_assign_cast_reg_406[8]),
        .R(1'b0));
  FDRE \v_assign_reg_133_reg[9] 
       (.C(clock),
        .CE(\v_assign_reg_133[25]_i_1_n_8 ),
        .D(p_1_in[9]),
        .Q(v_assign_cast_reg_406[9]),
        .R(1'b0));
  FDRE \val_V_5_reg_351_reg[0] 
       (.C(clock),
        .CE(\val_V_5_reg_351_reg[0]_0 ),
        .D(D[0]),
        .Q(mot1_fu_180_p3[0]),
        .R(1'b0));
  FDRE \val_V_5_reg_351_reg[1] 
       (.C(clock),
        .CE(\val_V_5_reg_351_reg[0]_0 ),
        .D(D[1]),
        .Q(mot1_fu_180_p3[1]),
        .R(1'b0));
  FDRE \val_V_5_reg_351_reg[2] 
       (.C(clock),
        .CE(\val_V_5_reg_351_reg[0]_0 ),
        .D(D[2]),
        .Q(mot1_fu_180_p3[2]),
        .R(1'b0));
  FDRE \val_V_5_reg_351_reg[3] 
       (.C(clock),
        .CE(\val_V_5_reg_351_reg[0]_0 ),
        .D(D[3]),
        .Q(mot1_fu_180_p3[3]),
        .R(1'b0));
  FDRE \val_V_5_reg_351_reg[4] 
       (.C(clock),
        .CE(\val_V_5_reg_351_reg[0]_0 ),
        .D(D[4]),
        .Q(mot1_fu_180_p3[4]),
        .R(1'b0));
  FDRE \val_V_5_reg_351_reg[5] 
       (.C(clock),
        .CE(\val_V_5_reg_351_reg[0]_0 ),
        .D(D[5]),
        .Q(mot1_fu_180_p3[5]),
        .R(1'b0));
  FDRE \val_V_5_reg_351_reg[6] 
       (.C(clock),
        .CE(\val_V_5_reg_351_reg[0]_0 ),
        .D(D[6]),
        .Q(mot1_fu_180_p3[6]),
        .R(1'b0));
  FDRE \val_V_5_reg_351_reg[7] 
       (.C(clock),
        .CE(\val_V_5_reg_351_reg[0]_0 ),
        .D(D[7]),
        .Q(mot1_fu_180_p3[7]),
        .R(1'b0));
  FDRE \val_V_6_reg_356_reg[0] 
       (.C(clock),
        .CE(\val_V_6_reg_356_reg[0]_0 ),
        .D(D[0]),
        .Q(mot1_fu_180_p3[8]),
        .R(1'b0));
  FDRE \val_V_6_reg_356_reg[1] 
       (.C(clock),
        .CE(\val_V_6_reg_356_reg[0]_0 ),
        .D(D[1]),
        .Q(mot1_fu_180_p3[9]),
        .R(1'b0));
  FDRE \val_V_6_reg_356_reg[2] 
       (.C(clock),
        .CE(\val_V_6_reg_356_reg[0]_0 ),
        .D(D[2]),
        .Q(mot1_fu_180_p3[10]),
        .R(1'b0));
  FDRE \val_V_6_reg_356_reg[3] 
       (.C(clock),
        .CE(\val_V_6_reg_356_reg[0]_0 ),
        .D(D[3]),
        .Q(mot1_fu_180_p3[11]),
        .R(1'b0));
  FDRE \val_V_6_reg_356_reg[4] 
       (.C(clock),
        .CE(\val_V_6_reg_356_reg[0]_0 ),
        .D(D[4]),
        .Q(mot1_fu_180_p3[12]),
        .R(1'b0));
  FDRE \val_V_6_reg_356_reg[5] 
       (.C(clock),
        .CE(\val_V_6_reg_356_reg[0]_0 ),
        .D(D[5]),
        .Q(mot1_fu_180_p3[13]),
        .R(1'b0));
  FDRE \val_V_6_reg_356_reg[6] 
       (.C(clock),
        .CE(\val_V_6_reg_356_reg[0]_0 ),
        .D(D[6]),
        .Q(mot1_fu_180_p3[14]),
        .R(1'b0));
  FDRE \val_V_6_reg_356_reg[7] 
       (.C(clock),
        .CE(\val_V_6_reg_356_reg[0]_0 ),
        .D(D[7]),
        .Q(mot1_fu_180_p3[15]),
        .R(1'b0));
  FDRE \val_V_7_reg_361_reg[0] 
       (.C(clock),
        .CE(E),
        .D(D[0]),
        .Q(p_shl2_fu_264_p4[7]),
        .R(1'b0));
  FDRE \val_V_7_reg_361_reg[1] 
       (.C(clock),
        .CE(E),
        .D(D[1]),
        .Q(p_shl2_fu_264_p4[8]),
        .R(1'b0));
  FDRE \val_V_7_reg_361_reg[2] 
       (.C(clock),
        .CE(E),
        .D(D[2]),
        .Q(p_shl2_fu_264_p4[9]),
        .R(1'b0));
  FDRE \val_V_7_reg_361_reg[3] 
       (.C(clock),
        .CE(E),
        .D(D[3]),
        .Q(p_shl2_fu_264_p4[10]),
        .R(1'b0));
  FDRE \val_V_7_reg_361_reg[4] 
       (.C(clock),
        .CE(E),
        .D(D[4]),
        .Q(p_shl2_fu_264_p4[11]),
        .R(1'b0));
  FDRE \val_V_7_reg_361_reg[5] 
       (.C(clock),
        .CE(E),
        .D(D[5]),
        .Q(p_shl2_fu_264_p4[12]),
        .R(1'b0));
  FDRE \val_V_7_reg_361_reg[6] 
       (.C(clock),
        .CE(E),
        .D(D[6]),
        .Q(p_shl2_fu_264_p4[13]),
        .R(1'b0));
  FDRE \val_V_7_reg_361_reg[7] 
       (.C(clock),
        .CE(E),
        .D(D[7]),
        .Q(p_shl2_fu_264_p4[14]),
        .R(1'b0));
  FDRE \val_V_8_reg_369_reg[0] 
       (.C(clock),
        .CE(\val_V_8_reg_369_reg[0]_0 ),
        .D(D[0]),
        .Q(p_shl2_fu_264_p4[15]),
        .R(1'b0));
  FDRE \val_V_8_reg_369_reg[1] 
       (.C(clock),
        .CE(\val_V_8_reg_369_reg[0]_0 ),
        .D(D[1]),
        .Q(\val_V_8_reg_369_reg_n_8_[1] ),
        .R(1'b0));
  FDRE \val_V_8_reg_369_reg[2] 
       (.C(clock),
        .CE(\val_V_8_reg_369_reg[0]_0 ),
        .D(D[2]),
        .Q(\val_V_8_reg_369_reg_n_8_[2] ),
        .R(1'b0));
  FDRE \val_V_8_reg_369_reg[3] 
       (.C(clock),
        .CE(\val_V_8_reg_369_reg[0]_0 ),
        .D(D[3]),
        .Q(\val_V_8_reg_369_reg_n_8_[3] ),
        .R(1'b0));
  FDRE \val_V_8_reg_369_reg[4] 
       (.C(clock),
        .CE(\val_V_8_reg_369_reg[0]_0 ),
        .D(D[4]),
        .Q(\val_V_8_reg_369_reg_n_8_[4] ),
        .R(1'b0));
  FDRE \val_V_8_reg_369_reg[5] 
       (.C(clock),
        .CE(\val_V_8_reg_369_reg[0]_0 ),
        .D(D[5]),
        .Q(\val_V_8_reg_369_reg_n_8_[5] ),
        .R(1'b0));
  FDRE \val_V_8_reg_369_reg[6] 
       (.C(clock),
        .CE(\val_V_8_reg_369_reg[0]_0 ),
        .D(D[6]),
        .Q(\val_V_8_reg_369_reg_n_8_[6] ),
        .R(1'b0));
  FDRE \val_V_8_reg_369_reg[7] 
       (.C(clock),
        .CE(\val_V_8_reg_369_reg[0]_0 ),
        .D(D[7]),
        .Q(\val_V_8_reg_369_reg_n_8_[7] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "ModuleCompute" *) 
module my_module2_0_ModuleCompute
   (e_read,
    push,
    Q,
    clock,
    e_dout,
    e_empty_n,
    mod2dbl_1_full_n,
    reset);
  output e_read;
  output push;
  output [7:0]Q;
  input clock;
  input [7:0]e_dout;
  input e_empty_n;
  input mod2dbl_1_full_n;
  input reset;

  wire [7:0]Q;
  wire clock;
  wire [7:0]e_dout;
  wire e_empty_n;
  wire e_read;
  wire mod2dbl_1_full_n;
  wire push;
  wire reset;

  my_module2_0_ModuleCompute_do_gen grp_ModuleCompute_do_gen_fu_58
       (.Q(Q),
        .clock(clock),
        .e_dout(e_dout),
        .e_empty_n(e_empty_n),
        .e_read(e_read),
        .mod2dbl_1_full_n(mod2dbl_1_full_n),
        .push(push),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "ModuleCompute_do_gen" *) 
module my_module2_0_ModuleCompute_do_gen
   (e_read,
    push,
    Q,
    clock,
    e_dout,
    e_empty_n,
    mod2dbl_1_full_n,
    reset);
  output e_read;
  output push;
  output [7:0]Q;
  input clock;
  input [7:0]e_dout;
  input e_empty_n;
  input mod2dbl_1_full_n;
  input reset;

  wire [7:0]Q;
  wire [7:0]add_0_i_reg_96;
  wire \add_0_i_reg_96[6]_i_1_n_8 ;
  wire \add_0_i_reg_96[7]_i_1_n_8 ;
  wire [6:0]add_1_reg_224;
  wire [15:0]add_ln99_reg_201;
  wire \ap_CS_fsm[4]_i_2_n_8 ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire ap_CS_fsm_state6;
  wire [5:1]ap_NS_fsm;
  wire clock;
  wire [7:0]e_dout;
  wire e_empty_n;
  wire e_read;
  wire [7:0]g2_fu_152_p0;
  wire [15:0]g2_fu_152_p2__0;
  wire [3:0]i_0_i_reg_107;
  wire i_0_i_reg_107_0;
  wire [3:0]i_fu_136_p2;
  wire [3:0]i_reg_209;
  wire i_reg_2090;
  wire icmp_ln74_fu_158_p2;
  wire icmp_ln74_reg_219;
  wire \icmp_ln74_reg_219[0]_i_10_n_8 ;
  wire \icmp_ln74_reg_219[0]_i_11_n_8 ;
  wire \icmp_ln74_reg_219[0]_i_12_n_8 ;
  wire \icmp_ln74_reg_219[0]_i_13_n_8 ;
  wire \icmp_ln74_reg_219[0]_i_14_n_8 ;
  wire \icmp_ln74_reg_219[0]_i_15_n_8 ;
  wire \icmp_ln74_reg_219[0]_i_16_n_8 ;
  wire \icmp_ln74_reg_219[0]_i_17_n_8 ;
  wire \icmp_ln74_reg_219[0]_i_18_n_8 ;
  wire \icmp_ln74_reg_219[0]_i_3_n_8 ;
  wire \icmp_ln74_reg_219[0]_i_4_n_8 ;
  wire \icmp_ln74_reg_219[0]_i_5_n_8 ;
  wire \icmp_ln74_reg_219[0]_i_6_n_8 ;
  wire \icmp_ln74_reg_219[0]_i_7_n_8 ;
  wire \icmp_ln74_reg_219[0]_i_8_n_8 ;
  wire \icmp_ln74_reg_219[0]_i_9_n_8 ;
  wire \icmp_ln74_reg_219_reg[0]_i_1_n_10 ;
  wire \icmp_ln74_reg_219_reg[0]_i_1_n_11 ;
  wire \icmp_ln74_reg_219_reg[0]_i_1_n_9 ;
  wire \icmp_ln74_reg_219_reg[0]_i_2_n_10 ;
  wire \icmp_ln74_reg_219_reg[0]_i_2_n_11 ;
  wire \icmp_ln74_reg_219_reg[0]_i_2_n_8 ;
  wire \icmp_ln74_reg_219_reg[0]_i_2_n_9 ;
  wire mod2dbl_1_full_n;
  wire p_i_10_n_8;
  wire p_i_11_n_8;
  wire p_i_12_n_8;
  wire p_i_13_n_8;
  wire p_i_14_n_8;
  wire p_i_15_n_8;
  wire p_i_16_n_8;
  wire p_i_17_n_8;
  wire p_i_18_n_8;
  wire p_i_19_n_8;
  wire p_i_20_n_8;
  wire p_i_21_n_8;
  wire p_i_22_n_8;
  wire p_i_23_n_8;
  wire p_i_24_n_8;
  wire p_i_25_n_8;
  wire p_i_26_n_8;
  wire p_i_27_n_8;
  wire p_i_28_n_8;
  wire p_i_29_n_8;
  wire p_i_2_n_15;
  wire p_i_30_n_8;
  wire p_i_31_n_8;
  wire p_i_32_n_8;
  wire p_i_33_n_8;
  wire p_i_34_n_8;
  wire p_i_35_n_10;
  wire p_i_35_n_11;
  wire p_i_35_n_12;
  wire p_i_35_n_13;
  wire p_i_35_n_14;
  wire p_i_35_n_15;
  wire p_i_35_n_8;
  wire p_i_35_n_9;
  wire p_i_36_n_8;
  wire p_i_37_n_11;
  wire p_i_37_n_14;
  wire p_i_37_n_15;
  wire p_i_37_n_9;
  wire p_i_38_n_10;
  wire p_i_38_n_11;
  wire p_i_38_n_12;
  wire p_i_38_n_13;
  wire p_i_38_n_14;
  wire p_i_38_n_15;
  wire p_i_38_n_8;
  wire p_i_38_n_9;
  wire p_i_39_n_10;
  wire p_i_39_n_15;
  wire p_i_3_n_10;
  wire p_i_3_n_11;
  wire p_i_3_n_12;
  wire p_i_3_n_13;
  wire p_i_3_n_14;
  wire p_i_3_n_15;
  wire p_i_3_n_8;
  wire p_i_3_n_9;
  wire p_i_40_n_10;
  wire p_i_40_n_11;
  wire p_i_40_n_12;
  wire p_i_40_n_13;
  wire p_i_40_n_14;
  wire p_i_40_n_15;
  wire p_i_40_n_8;
  wire p_i_40_n_9;
  wire p_i_41_n_10;
  wire p_i_41_n_11;
  wire p_i_41_n_12;
  wire p_i_41_n_13;
  wire p_i_41_n_14;
  wire p_i_41_n_15;
  wire p_i_41_n_8;
  wire p_i_41_n_9;
  wire p_i_42_n_10;
  wire p_i_42_n_11;
  wire p_i_42_n_12;
  wire p_i_42_n_13;
  wire p_i_42_n_14;
  wire p_i_42_n_15;
  wire p_i_42_n_8;
  wire p_i_42_n_9;
  wire p_i_43_n_8;
  wire p_i_44_n_8;
  wire p_i_45_n_8;
  wire p_i_46_n_8;
  wire p_i_47_n_8;
  wire p_i_48_n_8;
  wire p_i_49_n_8;
  wire p_i_4_n_10;
  wire p_i_4_n_11;
  wire p_i_4_n_12;
  wire p_i_4_n_13;
  wire p_i_4_n_14;
  wire p_i_4_n_15;
  wire p_i_4_n_8;
  wire p_i_4_n_9;
  wire p_i_50_n_8;
  wire p_i_51_n_8;
  wire p_i_52_n_8;
  wire p_i_53_n_8;
  wire p_i_54_n_8;
  wire p_i_55_n_8;
  wire p_i_56_n_8;
  wire p_i_57_n_8;
  wire p_i_58_n_8;
  wire p_i_59_n_8;
  wire p_i_5_n_10;
  wire p_i_5_n_11;
  wire p_i_5_n_12;
  wire p_i_5_n_13;
  wire p_i_5_n_14;
  wire p_i_5_n_15;
  wire p_i_5_n_8;
  wire p_i_5_n_9;
  wire p_i_60_n_8;
  wire p_i_61_n_8;
  wire p_i_62_n_8;
  wire p_i_63_n_8;
  wire p_i_64_n_8;
  wire p_i_65_n_8;
  wire p_i_66_n_8;
  wire p_i_67_n_8;
  wire p_i_68_n_8;
  wire p_i_69_n_8;
  wire p_i_6_n_10;
  wire p_i_6_n_11;
  wire p_i_6_n_12;
  wire p_i_6_n_13;
  wire p_i_6_n_14;
  wire p_i_6_n_8;
  wire p_i_6_n_9;
  wire p_i_70_n_8;
  wire p_i_71_n_8;
  wire p_i_72_n_8;
  wire p_i_73_n_8;
  wire p_i_74_n_8;
  wire p_i_75_n_8;
  wire p_i_76_n_8;
  wire p_i_77_n_8;
  wire p_i_78_n_8;
  wire p_i_79_n_8;
  wire p_i_7_n_11;
  wire p_i_7_n_14;
  wire p_i_7_n_15;
  wire p_i_80_n_8;
  wire p_i_81_n_8;
  wire p_i_82_n_8;
  wire p_i_83_n_8;
  wire p_i_84_n_8;
  wire p_i_85_n_8;
  wire p_i_86_n_8;
  wire p_i_8_n_8;
  wire p_i_9_n_8;
  wire push;
  wire rc_V_reg_83;
  wire [7:0]res_reg_214;
  wire reset;
  wire [7:0]val_V_3_reg_196;
  wire NLW_g2_fu_152_p2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_g2_fu_152_p2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_g2_fu_152_p2_OVERFLOW_UNCONNECTED;
  wire NLW_g2_fu_152_p2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_g2_fu_152_p2_PATTERNDETECT_UNCONNECTED;
  wire NLW_g2_fu_152_p2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_g2_fu_152_p2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_g2_fu_152_p2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_g2_fu_152_p2_CARRYOUT_UNCONNECTED;
  wire [47:16]NLW_g2_fu_152_p2_P_UNCONNECTED;
  wire [47:0]NLW_g2_fu_152_p2_PCOUT_UNCONNECTED;
  wire [3:0]\NLW_icmp_ln74_reg_219_reg[0]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_icmp_ln74_reg_219_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:0]NLW_p_i_2_CO_UNCONNECTED;
  wire [3:1]NLW_p_i_2_O_UNCONNECTED;
  wire [3:1]NLW_p_i_37_CO_UNCONNECTED;
  wire [3:2]NLW_p_i_37_O_UNCONNECTED;
  wire [3:0]NLW_p_i_39_CO_UNCONNECTED;
  wire [3:1]NLW_p_i_39_O_UNCONNECTED;
  wire [0:0]NLW_p_i_6_O_UNCONNECTED;
  wire [3:1]NLW_p_i_7_CO_UNCONNECTED;
  wire [3:2]NLW_p_i_7_O_UNCONNECTED;

  my_module2_0_ModuleCompute_macg8j ModuleCompute_macg8j_U51
       (.C({p_i_2_n_15,p_i_3_n_12,p_i_3_n_13,p_i_3_n_14,p_i_3_n_15,p_i_4_n_12,p_i_4_n_13,p_i_4_n_14,p_i_4_n_15,p_i_5_n_12,p_i_5_n_13,p_i_5_n_14,p_i_5_n_15,p_i_6_n_14,val_V_3_reg_196[0]}),
        .P(add_ln99_reg_201),
        .Q({ap_CS_fsm_state4,ap_CS_fsm_state2}),
        .clock(clock),
        .e_dout(e_dout),
        .e_empty_n(e_empty_n));
  LUT2 #(
    .INIT(4'hE)) 
    \add_0_i_reg_96[6]_i_1 
       (.I0(ap_CS_fsm_state6),
        .I1(ap_CS_fsm_state4),
        .O(\add_0_i_reg_96[6]_i_1_n_8 ));
  LUT3 #(
    .INIT(8'h54)) 
    \add_0_i_reg_96[7]_i_1 
       (.I0(ap_CS_fsm_state6),
        .I1(ap_CS_fsm_state4),
        .I2(add_0_i_reg_96[7]),
        .O(\add_0_i_reg_96[7]_i_1_n_8 ));
  FDRE \add_0_i_reg_96_reg[0] 
       (.C(clock),
        .CE(\add_0_i_reg_96[6]_i_1_n_8 ),
        .D(add_1_reg_224[0]),
        .Q(add_0_i_reg_96[0]),
        .R(i_0_i_reg_107_0));
  FDRE \add_0_i_reg_96_reg[1] 
       (.C(clock),
        .CE(\add_0_i_reg_96[6]_i_1_n_8 ),
        .D(add_1_reg_224[1]),
        .Q(add_0_i_reg_96[1]),
        .R(i_0_i_reg_107_0));
  FDRE \add_0_i_reg_96_reg[2] 
       (.C(clock),
        .CE(\add_0_i_reg_96[6]_i_1_n_8 ),
        .D(add_1_reg_224[2]),
        .Q(add_0_i_reg_96[2]),
        .R(i_0_i_reg_107_0));
  FDRE \add_0_i_reg_96_reg[3] 
       (.C(clock),
        .CE(\add_0_i_reg_96[6]_i_1_n_8 ),
        .D(add_1_reg_224[3]),
        .Q(add_0_i_reg_96[3]),
        .R(i_0_i_reg_107_0));
  FDRE \add_0_i_reg_96_reg[4] 
       (.C(clock),
        .CE(\add_0_i_reg_96[6]_i_1_n_8 ),
        .D(add_1_reg_224[4]),
        .Q(add_0_i_reg_96[4]),
        .R(i_0_i_reg_107_0));
  FDRE \add_0_i_reg_96_reg[5] 
       (.C(clock),
        .CE(\add_0_i_reg_96[6]_i_1_n_8 ),
        .D(add_1_reg_224[5]),
        .Q(add_0_i_reg_96[5]),
        .R(i_0_i_reg_107_0));
  FDRE \add_0_i_reg_96_reg[6] 
       (.C(clock),
        .CE(\add_0_i_reg_96[6]_i_1_n_8 ),
        .D(add_1_reg_224[6]),
        .Q(add_0_i_reg_96[6]),
        .R(i_0_i_reg_107_0));
  FDRE \add_0_i_reg_96_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(\add_0_i_reg_96[7]_i_1_n_8 ),
        .Q(add_0_i_reg_96[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    \add_1_reg_224[6]_i_1 
       (.I0(ap_CS_fsm_state5),
        .I1(i_0_i_reg_107[2]),
        .I2(i_0_i_reg_107[3]),
        .I3(i_0_i_reg_107[0]),
        .I4(i_0_i_reg_107[1]),
        .O(ap_NS_fsm[5]));
  FDRE \add_1_reg_224_reg[0] 
       (.C(clock),
        .CE(ap_NS_fsm[5]),
        .D(add_0_i_reg_96[1]),
        .Q(add_1_reg_224[0]),
        .R(1'b0));
  FDRE \add_1_reg_224_reg[1] 
       (.C(clock),
        .CE(ap_NS_fsm[5]),
        .D(add_0_i_reg_96[2]),
        .Q(add_1_reg_224[1]),
        .R(1'b0));
  FDRE \add_1_reg_224_reg[2] 
       (.C(clock),
        .CE(ap_NS_fsm[5]),
        .D(add_0_i_reg_96[3]),
        .Q(add_1_reg_224[2]),
        .R(1'b0));
  FDRE \add_1_reg_224_reg[3] 
       (.C(clock),
        .CE(ap_NS_fsm[5]),
        .D(add_0_i_reg_96[4]),
        .Q(add_1_reg_224[3]),
        .R(1'b0));
  FDRE \add_1_reg_224_reg[4] 
       (.C(clock),
        .CE(ap_NS_fsm[5]),
        .D(add_0_i_reg_96[5]),
        .Q(add_1_reg_224[4]),
        .R(1'b0));
  FDRE \add_1_reg_224_reg[5] 
       (.C(clock),
        .CE(ap_NS_fsm[5]),
        .D(add_0_i_reg_96[6]),
        .Q(add_1_reg_224[5]),
        .R(1'b0));
  FDRE \add_1_reg_224_reg[6] 
       (.C(clock),
        .CE(ap_NS_fsm[5]),
        .D(add_0_i_reg_96[7]),
        .Q(add_1_reg_224[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(push),
        .I1(e_empty_n),
        .I2(ap_CS_fsm_state2),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'h888888888888889D)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(e_empty_n),
        .I2(ap_CS_fsm_state3),
        .I3(ap_CS_fsm_state5),
        .I4(ap_CS_fsm_state4),
        .I5(ap_CS_fsm_state6),
        .O(ap_NS_fsm[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(ap_CS_fsm_state3),
        .I1(e_empty_n),
        .O(ap_NS_fsm[3]));
  LUT5 #(
    .INIT(32'hFFF2FFF0)) 
    \ap_CS_fsm[4]_i_1__0 
       (.I0(\ap_CS_fsm[4]_i_2_n_8 ),
        .I1(mod2dbl_1_full_n),
        .I2(ap_CS_fsm_state6),
        .I3(ap_CS_fsm_state4),
        .I4(ap_CS_fsm_state5),
        .O(ap_NS_fsm[4]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \ap_CS_fsm[4]_i_2 
       (.I0(i_0_i_reg_107[1]),
        .I1(i_0_i_reg_107[0]),
        .I2(i_0_i_reg_107[3]),
        .I3(i_0_i_reg_107[2]),
        .O(\ap_CS_fsm[4]_i_2_n_8 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .S(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_state5),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(ap_CS_fsm_state6),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    e_read_INST_0
       (.I0(ap_CS_fsm_state2),
        .I1(e_empty_n),
        .I2(ap_CS_fsm_state3),
        .O(e_read));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    g2_fu_152_p2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,g2_fu_152_p0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_g2_fu_152_p2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,g2_fu_152_p0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_g2_fu_152_p2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_g2_fu_152_p2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_g2_fu_152_p2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_g2_fu_152_p2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_g2_fu_152_p2_OVERFLOW_UNCONNECTED),
        .P({NLW_g2_fu_152_p2_P_UNCONNECTED[47:16],g2_fu_152_p2__0}),
        .PATTERNBDETECT(NLW_g2_fu_152_p2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_g2_fu_152_p2_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_g2_fu_152_p2_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_g2_fu_152_p2_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'hE)) 
    g2_fu_152_p2_i_1
       (.I0(Q[7]),
        .I1(add_0_i_reg_96[7]),
        .O(g2_fu_152_p0[7]));
  LUT2 #(
    .INIT(4'hE)) 
    g2_fu_152_p2_i_2
       (.I0(Q[6]),
        .I1(add_0_i_reg_96[6]),
        .O(g2_fu_152_p0[6]));
  LUT2 #(
    .INIT(4'hE)) 
    g2_fu_152_p2_i_3
       (.I0(Q[5]),
        .I1(add_0_i_reg_96[5]),
        .O(g2_fu_152_p0[5]));
  LUT2 #(
    .INIT(4'hE)) 
    g2_fu_152_p2_i_4
       (.I0(Q[4]),
        .I1(add_0_i_reg_96[4]),
        .O(g2_fu_152_p0[4]));
  LUT2 #(
    .INIT(4'hE)) 
    g2_fu_152_p2_i_5
       (.I0(Q[3]),
        .I1(add_0_i_reg_96[3]),
        .O(g2_fu_152_p0[3]));
  LUT2 #(
    .INIT(4'hE)) 
    g2_fu_152_p2_i_6
       (.I0(Q[2]),
        .I1(add_0_i_reg_96[2]),
        .O(g2_fu_152_p0[2]));
  LUT2 #(
    .INIT(4'hE)) 
    g2_fu_152_p2_i_7
       (.I0(Q[1]),
        .I1(add_0_i_reg_96[1]),
        .O(g2_fu_152_p0[1]));
  LUT2 #(
    .INIT(4'hE)) 
    g2_fu_152_p2_i_8
       (.I0(Q[0]),
        .I1(add_0_i_reg_96[0]),
        .O(g2_fu_152_p0[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \i_0_i_reg_107[3]_i_1 
       (.I0(ap_CS_fsm_state4),
        .I1(ap_CS_fsm_state6),
        .O(i_0_i_reg_107_0));
  FDRE \i_0_i_reg_107_reg[0] 
       (.C(clock),
        .CE(ap_CS_fsm_state6),
        .D(i_reg_209[0]),
        .Q(i_0_i_reg_107[0]),
        .R(i_0_i_reg_107_0));
  FDRE \i_0_i_reg_107_reg[1] 
       (.C(clock),
        .CE(ap_CS_fsm_state6),
        .D(i_reg_209[1]),
        .Q(i_0_i_reg_107[1]),
        .R(i_0_i_reg_107_0));
  FDRE \i_0_i_reg_107_reg[2] 
       (.C(clock),
        .CE(ap_CS_fsm_state6),
        .D(i_reg_209[2]),
        .Q(i_0_i_reg_107[2]),
        .R(i_0_i_reg_107_0));
  FDRE \i_0_i_reg_107_reg[3] 
       (.C(clock),
        .CE(ap_CS_fsm_state6),
        .D(i_reg_209[3]),
        .Q(i_0_i_reg_107[3]),
        .R(i_0_i_reg_107_0));
  LUT1 #(
    .INIT(2'h1)) 
    \i_reg_209[0]_i_1 
       (.I0(i_0_i_reg_107[0]),
        .O(i_fu_136_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_reg_209[1]_i_1 
       (.I0(i_0_i_reg_107[0]),
        .I1(i_0_i_reg_107[1]),
        .O(i_fu_136_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_reg_209[2]_i_1 
       (.I0(i_0_i_reg_107[2]),
        .I1(i_0_i_reg_107[1]),
        .I2(i_0_i_reg_107[0]),
        .O(i_fu_136_p2[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA8AAAA)) 
    \i_reg_209[3]_i_1 
       (.I0(ap_CS_fsm_state5),
        .I1(mod2dbl_1_full_n),
        .I2(i_0_i_reg_107[1]),
        .I3(i_0_i_reg_107[0]),
        .I4(i_0_i_reg_107[3]),
        .I5(i_0_i_reg_107[2]),
        .O(i_reg_2090));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_reg_209[3]_i_2 
       (.I0(i_0_i_reg_107[3]),
        .I1(i_0_i_reg_107[0]),
        .I2(i_0_i_reg_107[1]),
        .I3(i_0_i_reg_107[2]),
        .O(i_fu_136_p2[3]));
  FDRE \i_reg_209_reg[0] 
       (.C(clock),
        .CE(i_reg_2090),
        .D(i_fu_136_p2[0]),
        .Q(i_reg_209[0]),
        .R(1'b0));
  FDRE \i_reg_209_reg[1] 
       (.C(clock),
        .CE(i_reg_2090),
        .D(i_fu_136_p2[1]),
        .Q(i_reg_209[1]),
        .R(1'b0));
  FDRE \i_reg_209_reg[2] 
       (.C(clock),
        .CE(i_reg_2090),
        .D(i_fu_136_p2[2]),
        .Q(i_reg_209[2]),
        .R(1'b0));
  FDRE \i_reg_209_reg[3] 
       (.C(clock),
        .CE(i_reg_2090),
        .D(i_fu_136_p2[3]),
        .Q(i_reg_209[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h9009)) 
    \icmp_ln74_reg_219[0]_i_10 
       (.I0(g2_fu_152_p2__0[8]),
        .I1(add_ln99_reg_201[8]),
        .I2(g2_fu_152_p2__0[9]),
        .I3(add_ln99_reg_201[9]),
        .O(\icmp_ln74_reg_219[0]_i_10_n_8 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \icmp_ln74_reg_219[0]_i_11 
       (.I0(g2_fu_152_p2__0[6]),
        .I1(add_ln99_reg_201[6]),
        .I2(add_ln99_reg_201[7]),
        .I3(g2_fu_152_p2__0[7]),
        .O(\icmp_ln74_reg_219[0]_i_11_n_8 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \icmp_ln74_reg_219[0]_i_12 
       (.I0(g2_fu_152_p2__0[4]),
        .I1(add_ln99_reg_201[4]),
        .I2(add_ln99_reg_201[5]),
        .I3(g2_fu_152_p2__0[5]),
        .O(\icmp_ln74_reg_219[0]_i_12_n_8 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \icmp_ln74_reg_219[0]_i_13 
       (.I0(g2_fu_152_p2__0[2]),
        .I1(add_ln99_reg_201[2]),
        .I2(add_ln99_reg_201[3]),
        .I3(g2_fu_152_p2__0[3]),
        .O(\icmp_ln74_reg_219[0]_i_13_n_8 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \icmp_ln74_reg_219[0]_i_14 
       (.I0(g2_fu_152_p2__0[0]),
        .I1(add_ln99_reg_201[0]),
        .I2(add_ln99_reg_201[1]),
        .I3(g2_fu_152_p2__0[1]),
        .O(\icmp_ln74_reg_219[0]_i_14_n_8 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \icmp_ln74_reg_219[0]_i_15 
       (.I0(g2_fu_152_p2__0[6]),
        .I1(add_ln99_reg_201[6]),
        .I2(g2_fu_152_p2__0[7]),
        .I3(add_ln99_reg_201[7]),
        .O(\icmp_ln74_reg_219[0]_i_15_n_8 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \icmp_ln74_reg_219[0]_i_16 
       (.I0(g2_fu_152_p2__0[4]),
        .I1(add_ln99_reg_201[4]),
        .I2(g2_fu_152_p2__0[5]),
        .I3(add_ln99_reg_201[5]),
        .O(\icmp_ln74_reg_219[0]_i_16_n_8 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \icmp_ln74_reg_219[0]_i_17 
       (.I0(g2_fu_152_p2__0[2]),
        .I1(add_ln99_reg_201[2]),
        .I2(g2_fu_152_p2__0[3]),
        .I3(add_ln99_reg_201[3]),
        .O(\icmp_ln74_reg_219[0]_i_17_n_8 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \icmp_ln74_reg_219[0]_i_18 
       (.I0(g2_fu_152_p2__0[0]),
        .I1(add_ln99_reg_201[0]),
        .I2(g2_fu_152_p2__0[1]),
        .I3(add_ln99_reg_201[1]),
        .O(\icmp_ln74_reg_219[0]_i_18_n_8 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \icmp_ln74_reg_219[0]_i_3 
       (.I0(g2_fu_152_p2__0[14]),
        .I1(add_ln99_reg_201[14]),
        .I2(add_ln99_reg_201[15]),
        .I3(g2_fu_152_p2__0[15]),
        .O(\icmp_ln74_reg_219[0]_i_3_n_8 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \icmp_ln74_reg_219[0]_i_4 
       (.I0(g2_fu_152_p2__0[12]),
        .I1(add_ln99_reg_201[12]),
        .I2(add_ln99_reg_201[13]),
        .I3(g2_fu_152_p2__0[13]),
        .O(\icmp_ln74_reg_219[0]_i_4_n_8 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \icmp_ln74_reg_219[0]_i_5 
       (.I0(g2_fu_152_p2__0[10]),
        .I1(add_ln99_reg_201[10]),
        .I2(add_ln99_reg_201[11]),
        .I3(g2_fu_152_p2__0[11]),
        .O(\icmp_ln74_reg_219[0]_i_5_n_8 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \icmp_ln74_reg_219[0]_i_6 
       (.I0(g2_fu_152_p2__0[8]),
        .I1(add_ln99_reg_201[8]),
        .I2(add_ln99_reg_201[9]),
        .I3(g2_fu_152_p2__0[9]),
        .O(\icmp_ln74_reg_219[0]_i_6_n_8 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \icmp_ln74_reg_219[0]_i_7 
       (.I0(g2_fu_152_p2__0[14]),
        .I1(add_ln99_reg_201[14]),
        .I2(g2_fu_152_p2__0[15]),
        .I3(add_ln99_reg_201[15]),
        .O(\icmp_ln74_reg_219[0]_i_7_n_8 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \icmp_ln74_reg_219[0]_i_8 
       (.I0(g2_fu_152_p2__0[12]),
        .I1(add_ln99_reg_201[12]),
        .I2(g2_fu_152_p2__0[13]),
        .I3(add_ln99_reg_201[13]),
        .O(\icmp_ln74_reg_219[0]_i_8_n_8 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \icmp_ln74_reg_219[0]_i_9 
       (.I0(g2_fu_152_p2__0[10]),
        .I1(add_ln99_reg_201[10]),
        .I2(g2_fu_152_p2__0[11]),
        .I3(add_ln99_reg_201[11]),
        .O(\icmp_ln74_reg_219[0]_i_9_n_8 ));
  FDRE \icmp_ln74_reg_219_reg[0] 
       (.C(clock),
        .CE(ap_NS_fsm[5]),
        .D(icmp_ln74_fu_158_p2),
        .Q(icmp_ln74_reg_219),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \icmp_ln74_reg_219_reg[0]_i_1 
       (.CI(\icmp_ln74_reg_219_reg[0]_i_2_n_8 ),
        .CO({icmp_ln74_fu_158_p2,\icmp_ln74_reg_219_reg[0]_i_1_n_9 ,\icmp_ln74_reg_219_reg[0]_i_1_n_10 ,\icmp_ln74_reg_219_reg[0]_i_1_n_11 }),
        .CYINIT(1'b0),
        .DI({\icmp_ln74_reg_219[0]_i_3_n_8 ,\icmp_ln74_reg_219[0]_i_4_n_8 ,\icmp_ln74_reg_219[0]_i_5_n_8 ,\icmp_ln74_reg_219[0]_i_6_n_8 }),
        .O(\NLW_icmp_ln74_reg_219_reg[0]_i_1_O_UNCONNECTED [3:0]),
        .S({\icmp_ln74_reg_219[0]_i_7_n_8 ,\icmp_ln74_reg_219[0]_i_8_n_8 ,\icmp_ln74_reg_219[0]_i_9_n_8 ,\icmp_ln74_reg_219[0]_i_10_n_8 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \icmp_ln74_reg_219_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\icmp_ln74_reg_219_reg[0]_i_2_n_8 ,\icmp_ln74_reg_219_reg[0]_i_2_n_9 ,\icmp_ln74_reg_219_reg[0]_i_2_n_10 ,\icmp_ln74_reg_219_reg[0]_i_2_n_11 }),
        .CYINIT(1'b0),
        .DI({\icmp_ln74_reg_219[0]_i_11_n_8 ,\icmp_ln74_reg_219[0]_i_12_n_8 ,\icmp_ln74_reg_219[0]_i_13_n_8 ,\icmp_ln74_reg_219[0]_i_14_n_8 }),
        .O(\NLW_icmp_ln74_reg_219_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({\icmp_ln74_reg_219[0]_i_15_n_8 ,\icmp_ln74_reg_219[0]_i_16_n_8 ,\icmp_ln74_reg_219[0]_i_17_n_8 ,\icmp_ln74_reg_219[0]_i_18_n_8 }));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    mem_reg_i_11
       (.I0(i_0_i_reg_107[2]),
        .I1(i_0_i_reg_107[3]),
        .I2(i_0_i_reg_107[0]),
        .I3(i_0_i_reg_107[1]),
        .I4(mod2dbl_1_full_n),
        .I5(ap_CS_fsm_state5),
        .O(push));
  LUT3 #(
    .INIT(8'hE8)) 
    p_i_10
       (.I0(p_i_35_n_15),
        .I1(p_i_38_n_12),
        .I2(p_i_39_n_10),
        .O(p_i_10_n_8));
  LUT3 #(
    .INIT(8'h78)) 
    p_i_11
       (.I0(p_i_37_n_9),
        .I1(p_i_35_n_12),
        .I2(p_i_7_n_15),
        .O(p_i_11_n_8));
  LUT4 #(
    .INIT(16'h8778)) 
    p_i_12
       (.I0(p_i_37_n_14),
        .I1(p_i_35_n_13),
        .I2(p_i_35_n_12),
        .I3(p_i_37_n_9),
        .O(p_i_12_n_8));
  LUT4 #(
    .INIT(16'h8778)) 
    p_i_13
       (.I0(p_i_37_n_15),
        .I1(p_i_35_n_14),
        .I2(p_i_35_n_13),
        .I3(p_i_37_n_14),
        .O(p_i_13_n_8));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    p_i_14
       (.I0(p_i_39_n_10),
        .I1(p_i_38_n_12),
        .I2(p_i_35_n_15),
        .I3(p_i_35_n_14),
        .I4(p_i_37_n_15),
        .O(p_i_14_n_8));
  LUT3 #(
    .INIT(8'hE8)) 
    p_i_15
       (.I0(p_i_40_n_12),
        .I1(p_i_38_n_13),
        .I2(p_i_39_n_15),
        .O(p_i_15_n_8));
  LUT3 #(
    .INIT(8'hE8)) 
    p_i_16
       (.I0(p_i_40_n_13),
        .I1(p_i_38_n_14),
        .I2(p_i_41_n_12),
        .O(p_i_16_n_8));
  LUT3 #(
    .INIT(8'hE8)) 
    p_i_17
       (.I0(p_i_40_n_14),
        .I1(p_i_38_n_15),
        .I2(p_i_41_n_13),
        .O(p_i_17_n_8));
  LUT3 #(
    .INIT(8'hE8)) 
    p_i_18
       (.I0(p_i_40_n_15),
        .I1(p_i_42_n_12),
        .I2(p_i_41_n_14),
        .O(p_i_18_n_8));
  LUT4 #(
    .INIT(16'h6996)) 
    p_i_19
       (.I0(p_i_15_n_8),
        .I1(p_i_38_n_12),
        .I2(p_i_35_n_15),
        .I3(p_i_39_n_10),
        .O(p_i_19_n_8));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 p_i_2
       (.CI(p_i_3_n_8),
        .CO(NLW_p_i_2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_p_i_2_O_UNCONNECTED[3:1],p_i_2_n_15}),
        .S({1'b0,1'b0,1'b0,p_i_7_n_14}));
  LUT4 #(
    .INIT(16'h6996)) 
    p_i_20
       (.I0(p_i_40_n_12),
        .I1(p_i_38_n_13),
        .I2(p_i_39_n_15),
        .I3(p_i_16_n_8),
        .O(p_i_20_n_8));
  LUT4 #(
    .INIT(16'h6996)) 
    p_i_21
       (.I0(p_i_40_n_13),
        .I1(p_i_38_n_14),
        .I2(p_i_41_n_12),
        .I3(p_i_17_n_8),
        .O(p_i_21_n_8));
  LUT4 #(
    .INIT(16'h6996)) 
    p_i_22
       (.I0(p_i_40_n_14),
        .I1(p_i_38_n_15),
        .I2(p_i_41_n_13),
        .I3(p_i_18_n_8),
        .O(p_i_22_n_8));
  LUT2 #(
    .INIT(4'h8)) 
    p_i_23
       (.I0(p_i_42_n_13),
        .I1(p_i_41_n_15),
        .O(p_i_23_n_8));
  LUT2 #(
    .INIT(4'h8)) 
    p_i_24
       (.I0(p_i_6_n_12),
        .I1(p_i_42_n_14),
        .O(p_i_24_n_8));
  LUT2 #(
    .INIT(4'h8)) 
    p_i_25
       (.I0(p_i_6_n_13),
        .I1(p_i_42_n_15),
        .O(p_i_25_n_8));
  LUT4 #(
    .INIT(16'h6996)) 
    p_i_26
       (.I0(p_i_40_n_15),
        .I1(p_i_42_n_12),
        .I2(p_i_41_n_14),
        .I3(p_i_23_n_8),
        .O(p_i_26_n_8));
  LUT4 #(
    .INIT(16'h9666)) 
    p_i_27
       (.I0(p_i_42_n_13),
        .I1(p_i_41_n_15),
        .I2(p_i_6_n_12),
        .I3(p_i_42_n_14),
        .O(p_i_27_n_8));
  LUT4 #(
    .INIT(16'h8778)) 
    p_i_28
       (.I0(p_i_6_n_13),
        .I1(p_i_42_n_15),
        .I2(p_i_42_n_14),
        .I3(p_i_6_n_12),
        .O(p_i_28_n_8));
  LUT2 #(
    .INIT(4'h6)) 
    p_i_29
       (.I0(p_i_6_n_13),
        .I1(p_i_42_n_15),
        .O(p_i_29_n_8));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 p_i_3
       (.CI(p_i_4_n_8),
        .CO({p_i_3_n_8,p_i_3_n_9,p_i_3_n_10,p_i_3_n_11}),
        .CYINIT(1'b0),
        .DI({p_i_7_n_15,p_i_8_n_8,p_i_9_n_8,p_i_10_n_8}),
        .O({p_i_3_n_12,p_i_3_n_13,p_i_3_n_14,p_i_3_n_15}),
        .S({p_i_11_n_8,p_i_12_n_8,p_i_13_n_8,p_i_14_n_8}));
  LUT3 #(
    .INIT(8'hAC)) 
    p_i_30
       (.I0(val_V_3_reg_196[3]),
        .I1(val_V_3_reg_196[2]),
        .I2(val_V_3_reg_196[1]),
        .O(p_i_30_n_8));
  LUT2 #(
    .INIT(4'h8)) 
    p_i_31
       (.I0(val_V_3_reg_196[0]),
        .I1(val_V_3_reg_196[3]),
        .O(p_i_31_n_8));
  LUT5 #(
    .INIT(32'h1BE4E4E4)) 
    p_i_32
       (.I0(val_V_3_reg_196[1]),
        .I1(val_V_3_reg_196[2]),
        .I2(val_V_3_reg_196[3]),
        .I3(val_V_3_reg_196[0]),
        .I4(val_V_3_reg_196[4]),
        .O(p_i_32_n_8));
  LUT3 #(
    .INIT(8'h48)) 
    p_i_33
       (.I0(val_V_3_reg_196[3]),
        .I1(val_V_3_reg_196[0]),
        .I2(val_V_3_reg_196[2]),
        .O(p_i_33_n_8));
  LUT2 #(
    .INIT(4'h4)) 
    p_i_34
       (.I0(val_V_3_reg_196[0]),
        .I1(val_V_3_reg_196[1]),
        .O(p_i_34_n_8));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 p_i_35
       (.CI(p_i_40_n_8),
        .CO({p_i_35_n_8,p_i_35_n_9,p_i_35_n_10,p_i_35_n_11}),
        .CYINIT(1'b0),
        .DI({1'b0,p_i_43_n_8,p_i_44_n_8,p_i_45_n_8}),
        .O({p_i_35_n_12,p_i_35_n_13,p_i_35_n_14,p_i_35_n_15}),
        .S({p_i_46_n_8,p_i_47_n_8,p_i_48_n_8,p_i_49_n_8}));
  LUT2 #(
    .INIT(4'hB)) 
    p_i_36
       (.I0(val_V_3_reg_196[6]),
        .I1(val_V_3_reg_196[7]),
        .O(p_i_36_n_8));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 p_i_37
       (.CI(p_i_38_n_8),
        .CO({NLW_p_i_37_CO_UNCONNECTED[3],p_i_37_n_9,NLW_p_i_37_CO_UNCONNECTED[1],p_i_37_n_11}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,p_i_50_n_8,p_i_51_n_8}),
        .O({NLW_p_i_37_O_UNCONNECTED[3:2],p_i_37_n_14,p_i_37_n_15}),
        .S({1'b0,1'b1,p_i_52_n_8,p_i_53_n_8}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 p_i_38
       (.CI(p_i_42_n_8),
        .CO({p_i_38_n_8,p_i_38_n_9,p_i_38_n_10,p_i_38_n_11}),
        .CYINIT(1'b0),
        .DI({p_i_54_n_8,p_i_55_n_8,val_V_3_reg_196[4],p_i_56_n_8}),
        .O({p_i_38_n_12,p_i_38_n_13,p_i_38_n_14,p_i_38_n_15}),
        .S({p_i_57_n_8,p_i_58_n_8,p_i_59_n_8,p_i_60_n_8}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 p_i_39
       (.CI(p_i_41_n_8),
        .CO({NLW_p_i_39_CO_UNCONNECTED[3:2],p_i_39_n_10,NLW_p_i_39_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_i_61_n_8}),
        .O({NLW_p_i_39_O_UNCONNECTED[3:1],p_i_39_n_15}),
        .S({1'b0,1'b0,1'b1,p_i_62_n_8}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 p_i_4
       (.CI(p_i_5_n_8),
        .CO({p_i_4_n_8,p_i_4_n_9,p_i_4_n_10,p_i_4_n_11}),
        .CYINIT(1'b0),
        .DI({p_i_15_n_8,p_i_16_n_8,p_i_17_n_8,p_i_18_n_8}),
        .O({p_i_4_n_12,p_i_4_n_13,p_i_4_n_14,p_i_4_n_15}),
        .S({p_i_19_n_8,p_i_20_n_8,p_i_21_n_8,p_i_22_n_8}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 p_i_40
       (.CI(1'b0),
        .CO({p_i_40_n_8,p_i_40_n_9,p_i_40_n_10,p_i_40_n_11}),
        .CYINIT(1'b0),
        .DI({p_i_63_n_8,p_i_64_n_8,p_i_65_n_8,1'b0}),
        .O({p_i_40_n_12,p_i_40_n_13,p_i_40_n_14,p_i_40_n_15}),
        .S({p_i_66_n_8,p_i_67_n_8,p_i_68_n_8,p_i_69_n_8}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 p_i_41
       (.CI(p_i_6_n_8),
        .CO({p_i_41_n_8,p_i_41_n_9,p_i_41_n_10,p_i_41_n_11}),
        .CYINIT(1'b0),
        .DI({p_i_70_n_8,p_i_71_n_8,p_i_72_n_8,p_i_73_n_8}),
        .O({p_i_41_n_12,p_i_41_n_13,p_i_41_n_14,p_i_41_n_15}),
        .S({p_i_74_n_8,p_i_75_n_8,p_i_76_n_8,p_i_77_n_8}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 p_i_42
       (.CI(1'b0),
        .CO({p_i_42_n_8,p_i_42_n_9,p_i_42_n_10,p_i_42_n_11}),
        .CYINIT(1'b0),
        .DI({p_i_78_n_8,p_i_79_n_8,p_i_80_n_8,1'b0}),
        .O({p_i_42_n_12,p_i_42_n_13,p_i_42_n_14,p_i_42_n_15}),
        .S({p_i_81_n_8,p_i_82_n_8,p_i_83_n_8,p_i_84_n_8}));
  LUT4 #(
    .INIT(16'h7000)) 
    p_i_43
       (.I0(val_V_3_reg_196[4]),
        .I1(val_V_3_reg_196[7]),
        .I2(val_V_3_reg_196[5]),
        .I3(val_V_3_reg_196[6]),
        .O(p_i_43_n_8));
  LUT4 #(
    .INIT(16'h7000)) 
    p_i_44
       (.I0(val_V_3_reg_196[3]),
        .I1(val_V_3_reg_196[7]),
        .I2(val_V_3_reg_196[4]),
        .I3(val_V_3_reg_196[6]),
        .O(p_i_44_n_8));
  LUT4 #(
    .INIT(16'h7000)) 
    p_i_45
       (.I0(val_V_3_reg_196[2]),
        .I1(val_V_3_reg_196[7]),
        .I2(val_V_3_reg_196[3]),
        .I3(val_V_3_reg_196[6]),
        .O(p_i_45_n_8));
  LUT3 #(
    .INIT(8'h70)) 
    p_i_46
       (.I0(val_V_3_reg_196[5]),
        .I1(val_V_3_reg_196[7]),
        .I2(val_V_3_reg_196[6]),
        .O(p_i_46_n_8));
  LUT4 #(
    .INIT(16'hB03F)) 
    p_i_47
       (.I0(val_V_3_reg_196[4]),
        .I1(val_V_3_reg_196[7]),
        .I2(val_V_3_reg_196[5]),
        .I3(val_V_3_reg_196[6]),
        .O(p_i_47_n_8));
  LUT5 #(
    .INIT(32'hB03F4F3F)) 
    p_i_48
       (.I0(val_V_3_reg_196[3]),
        .I1(val_V_3_reg_196[7]),
        .I2(val_V_3_reg_196[4]),
        .I3(val_V_3_reg_196[6]),
        .I4(val_V_3_reg_196[5]),
        .O(p_i_48_n_8));
  LUT5 #(
    .INIT(32'hB03F4F3F)) 
    p_i_49
       (.I0(val_V_3_reg_196[2]),
        .I1(val_V_3_reg_196[7]),
        .I2(val_V_3_reg_196[3]),
        .I3(val_V_3_reg_196[6]),
        .I4(val_V_3_reg_196[4]),
        .O(p_i_49_n_8));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 p_i_5
       (.CI(1'b0),
        .CO({p_i_5_n_8,p_i_5_n_9,p_i_5_n_10,p_i_5_n_11}),
        .CYINIT(1'b0),
        .DI({p_i_23_n_8,p_i_24_n_8,p_i_25_n_8,1'b0}),
        .O({p_i_5_n_12,p_i_5_n_13,p_i_5_n_14,p_i_5_n_15}),
        .S({p_i_26_n_8,p_i_27_n_8,p_i_28_n_8,p_i_29_n_8}));
  LUT4 #(
    .INIT(16'h7000)) 
    p_i_50
       (.I0(val_V_3_reg_196[4]),
        .I1(val_V_3_reg_196[7]),
        .I2(val_V_3_reg_196[5]),
        .I3(val_V_3_reg_196[6]),
        .O(p_i_50_n_8));
  LUT2 #(
    .INIT(4'h8)) 
    p_i_51
       (.I0(val_V_3_reg_196[4]),
        .I1(val_V_3_reg_196[5]),
        .O(p_i_51_n_8));
  LUT4 #(
    .INIT(16'h2F5F)) 
    p_i_52
       (.I0(val_V_3_reg_196[6]),
        .I1(val_V_3_reg_196[4]),
        .I2(val_V_3_reg_196[5]),
        .I3(val_V_3_reg_196[7]),
        .O(p_i_52_n_8));
  LUT4 #(
    .INIT(16'h4B77)) 
    p_i_53
       (.I0(val_V_3_reg_196[6]),
        .I1(val_V_3_reg_196[5]),
        .I2(val_V_3_reg_196[7]),
        .I3(val_V_3_reg_196[4]),
        .O(p_i_53_n_8));
  LUT3 #(
    .INIT(8'hAC)) 
    p_i_54
       (.I0(val_V_3_reg_196[6]),
        .I1(val_V_3_reg_196[5]),
        .I2(val_V_3_reg_196[4]),
        .O(p_i_54_n_8));
  LUT2 #(
    .INIT(4'h8)) 
    p_i_55
       (.I0(val_V_3_reg_196[3]),
        .I1(val_V_3_reg_196[6]),
        .O(p_i_55_n_8));
  LUT5 #(
    .INIT(32'hF8888000)) 
    p_i_56
       (.I0(val_V_3_reg_196[1]),
        .I1(val_V_3_reg_196[5]),
        .I2(val_V_3_reg_196[2]),
        .I3(val_V_3_reg_196[4]),
        .I4(val_V_3_reg_196[3]),
        .O(p_i_56_n_8));
  LUT5 #(
    .INIT(32'hE41B1B1B)) 
    p_i_57
       (.I0(val_V_3_reg_196[4]),
        .I1(val_V_3_reg_196[5]),
        .I2(val_V_3_reg_196[6]),
        .I3(val_V_3_reg_196[3]),
        .I4(val_V_3_reg_196[7]),
        .O(p_i_57_n_8));
  LUT3 #(
    .INIT(8'h48)) 
    p_i_58
       (.I0(val_V_3_reg_196[6]),
        .I1(val_V_3_reg_196[3]),
        .I2(val_V_3_reg_196[5]),
        .O(p_i_58_n_8));
  LUT2 #(
    .INIT(4'h4)) 
    p_i_59
       (.I0(val_V_3_reg_196[3]),
        .I1(val_V_3_reg_196[4]),
        .O(p_i_59_n_8));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 p_i_6
       (.CI(1'b0),
        .CO({p_i_6_n_8,p_i_6_n_9,p_i_6_n_10,p_i_6_n_11}),
        .CYINIT(1'b0),
        .DI({p_i_30_n_8,p_i_31_n_8,val_V_3_reg_196[1],1'b0}),
        .O({p_i_6_n_12,p_i_6_n_13,p_i_6_n_14,NLW_p_i_6_O_UNCONNECTED[0]}),
        .S({p_i_32_n_8,p_i_33_n_8,p_i_34_n_8,1'b0}));
  LUT5 #(
    .INIT(32'h17A08800)) 
    p_i_60
       (.I0(val_V_3_reg_196[3]),
        .I1(val_V_3_reg_196[4]),
        .I2(val_V_3_reg_196[1]),
        .I3(val_V_3_reg_196[2]),
        .I4(val_V_3_reg_196[5]),
        .O(p_i_60_n_8));
  LUT4 #(
    .INIT(16'h7000)) 
    p_i_61
       (.I0(val_V_3_reg_196[1]),
        .I1(val_V_3_reg_196[7]),
        .I2(val_V_3_reg_196[2]),
        .I3(val_V_3_reg_196[6]),
        .O(p_i_61_n_8));
  LUT4 #(
    .INIT(16'h2F5F)) 
    p_i_62
       (.I0(val_V_3_reg_196[6]),
        .I1(val_V_3_reg_196[1]),
        .I2(val_V_3_reg_196[2]),
        .I3(val_V_3_reg_196[7]),
        .O(p_i_62_n_8));
  LUT2 #(
    .INIT(4'h7)) 
    p_i_63
       (.I0(val_V_3_reg_196[7]),
        .I1(val_V_3_reg_196[1]),
        .O(p_i_63_n_8));
  LUT2 #(
    .INIT(4'h8)) 
    p_i_64
       (.I0(val_V_3_reg_196[1]),
        .I1(val_V_3_reg_196[7]),
        .O(p_i_64_n_8));
  LUT2 #(
    .INIT(4'h7)) 
    p_i_65
       (.I0(val_V_3_reg_196[7]),
        .I1(val_V_3_reg_196[0]),
        .O(p_i_65_n_8));
  LUT5 #(
    .INIT(32'hB7484848)) 
    p_i_66
       (.I0(val_V_3_reg_196[1]),
        .I1(val_V_3_reg_196[7]),
        .I2(val_V_3_reg_196[2]),
        .I3(val_V_3_reg_196[6]),
        .I4(val_V_3_reg_196[3]),
        .O(p_i_66_n_8));
  LUT4 #(
    .INIT(16'h7888)) 
    p_i_67
       (.I0(val_V_3_reg_196[1]),
        .I1(val_V_3_reg_196[7]),
        .I2(val_V_3_reg_196[2]),
        .I3(val_V_3_reg_196[6]),
        .O(p_i_67_n_8));
  LUT4 #(
    .INIT(16'h8777)) 
    p_i_68
       (.I0(val_V_3_reg_196[0]),
        .I1(val_V_3_reg_196[7]),
        .I2(val_V_3_reg_196[1]),
        .I3(val_V_3_reg_196[6]),
        .O(p_i_68_n_8));
  LUT2 #(
    .INIT(4'h8)) 
    p_i_69
       (.I0(val_V_3_reg_196[0]),
        .I1(val_V_3_reg_196[6]),
        .O(p_i_69_n_8));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 8x8}}" *) 
  CARRY4 p_i_7
       (.CI(p_i_35_n_8),
        .CO({NLW_p_i_7_CO_UNCONNECTED[3:1],p_i_7_n_11}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,val_V_3_reg_196[7]}),
        .O({NLW_p_i_7_O_UNCONNECTED[3:2],p_i_7_n_14,p_i_7_n_15}),
        .S({1'b0,1'b0,1'b1,p_i_36_n_8}));
  LUT6 #(
    .INIT(64'h8000F888F888F888)) 
    p_i_70
       (.I0(val_V_3_reg_196[2]),
        .I1(val_V_3_reg_196[5]),
        .I2(val_V_3_reg_196[1]),
        .I3(val_V_3_reg_196[6]),
        .I4(val_V_3_reg_196[0]),
        .I5(val_V_3_reg_196[7]),
        .O(p_i_70_n_8));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    p_i_71
       (.I0(val_V_3_reg_196[2]),
        .I1(val_V_3_reg_196[4]),
        .I2(val_V_3_reg_196[1]),
        .I3(val_V_3_reg_196[5]),
        .I4(val_V_3_reg_196[0]),
        .I5(val_V_3_reg_196[6]),
        .O(p_i_71_n_8));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    p_i_72
       (.I0(val_V_3_reg_196[2]),
        .I1(val_V_3_reg_196[3]),
        .I2(val_V_3_reg_196[1]),
        .I3(val_V_3_reg_196[4]),
        .I4(val_V_3_reg_196[0]),
        .I5(val_V_3_reg_196[5]),
        .O(p_i_72_n_8));
  LUT2 #(
    .INIT(4'h8)) 
    p_i_73
       (.I0(val_V_3_reg_196[1]),
        .I1(val_V_3_reg_196[2]),
        .O(p_i_73_n_8));
  LUT6 #(
    .INIT(64'h2450F30F4BFFC3FF)) 
    p_i_74
       (.I0(val_V_3_reg_196[0]),
        .I1(val_V_3_reg_196[5]),
        .I2(val_V_3_reg_196[6]),
        .I3(val_V_3_reg_196[2]),
        .I4(val_V_3_reg_196[7]),
        .I5(val_V_3_reg_196[1]),
        .O(p_i_74_n_8));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    p_i_75
       (.I0(p_i_71_n_8),
        .I1(val_V_3_reg_196[1]),
        .I2(val_V_3_reg_196[6]),
        .I3(val_V_3_reg_196[2]),
        .I4(val_V_3_reg_196[5]),
        .I5(p_i_85_n_8),
        .O(p_i_75_n_8));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    p_i_76
       (.I0(p_i_72_n_8),
        .I1(val_V_3_reg_196[1]),
        .I2(val_V_3_reg_196[5]),
        .I3(p_i_86_n_8),
        .I4(val_V_3_reg_196[6]),
        .I5(val_V_3_reg_196[0]),
        .O(p_i_76_n_8));
  LUT6 #(
    .INIT(64'h27D7D828D828D828)) 
    p_i_77
       (.I0(val_V_3_reg_196[1]),
        .I1(val_V_3_reg_196[4]),
        .I2(val_V_3_reg_196[2]),
        .I3(val_V_3_reg_196[3]),
        .I4(val_V_3_reg_196[5]),
        .I5(val_V_3_reg_196[0]),
        .O(p_i_77_n_8));
  LUT5 #(
    .INIT(32'h956A6A6A)) 
    p_i_78
       (.I0(val_V_3_reg_196[3]),
        .I1(val_V_3_reg_196[5]),
        .I2(val_V_3_reg_196[1]),
        .I3(val_V_3_reg_196[4]),
        .I4(val_V_3_reg_196[2]),
        .O(p_i_78_n_8));
  LUT4 #(
    .INIT(16'h7888)) 
    p_i_79
       (.I0(val_V_3_reg_196[1]),
        .I1(val_V_3_reg_196[4]),
        .I2(val_V_3_reg_196[0]),
        .I3(val_V_3_reg_196[5]),
        .O(p_i_79_n_8));
  LUT2 #(
    .INIT(4'h8)) 
    p_i_8
       (.I0(p_i_37_n_14),
        .I1(p_i_35_n_13),
        .O(p_i_8_n_8));
  LUT2 #(
    .INIT(4'h8)) 
    p_i_80
       (.I0(val_V_3_reg_196[1]),
        .I1(val_V_3_reg_196[3]),
        .O(p_i_80_n_8));
  LUT6 #(
    .INIT(64'h636C6C6C936C6C6C)) 
    p_i_81
       (.I0(val_V_3_reg_196[2]),
        .I1(val_V_3_reg_196[3]),
        .I2(val_V_3_reg_196[4]),
        .I3(val_V_3_reg_196[1]),
        .I4(val_V_3_reg_196[5]),
        .I5(val_V_3_reg_196[0]),
        .O(p_i_81_n_8));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    p_i_82
       (.I0(val_V_3_reg_196[5]),
        .I1(val_V_3_reg_196[0]),
        .I2(val_V_3_reg_196[4]),
        .I3(val_V_3_reg_196[1]),
        .I4(val_V_3_reg_196[2]),
        .I5(val_V_3_reg_196[3]),
        .O(p_i_82_n_8));
  LUT4 #(
    .INIT(16'h7888)) 
    p_i_83
       (.I0(val_V_3_reg_196[1]),
        .I1(val_V_3_reg_196[3]),
        .I2(val_V_3_reg_196[0]),
        .I3(val_V_3_reg_196[4]),
        .O(p_i_83_n_8));
  LUT2 #(
    .INIT(4'h8)) 
    p_i_84
       (.I0(val_V_3_reg_196[0]),
        .I1(val_V_3_reg_196[3]),
        .O(p_i_84_n_8));
  LUT2 #(
    .INIT(4'h7)) 
    p_i_85
       (.I0(val_V_3_reg_196[7]),
        .I1(val_V_3_reg_196[0]),
        .O(p_i_85_n_8));
  LUT2 #(
    .INIT(4'h7)) 
    p_i_86
       (.I0(val_V_3_reg_196[4]),
        .I1(val_V_3_reg_196[2]),
        .O(p_i_86_n_8));
  LUT2 #(
    .INIT(4'h8)) 
    p_i_9
       (.I0(p_i_37_n_15),
        .I1(p_i_35_n_14),
        .O(p_i_9_n_8));
  LUT2 #(
    .INIT(4'h2)) 
    \rc_V_reg_83[7]_i_1 
       (.I0(ap_CS_fsm_state6),
        .I1(icmp_ln74_reg_219),
        .O(rc_V_reg_83));
  FDRE \rc_V_reg_83_reg[0] 
       (.C(clock),
        .CE(rc_V_reg_83),
        .D(res_reg_214[0]),
        .Q(Q[0]),
        .R(i_0_i_reg_107_0));
  FDRE \rc_V_reg_83_reg[1] 
       (.C(clock),
        .CE(rc_V_reg_83),
        .D(res_reg_214[1]),
        .Q(Q[1]),
        .R(i_0_i_reg_107_0));
  FDRE \rc_V_reg_83_reg[2] 
       (.C(clock),
        .CE(rc_V_reg_83),
        .D(res_reg_214[2]),
        .Q(Q[2]),
        .R(i_0_i_reg_107_0));
  FDRE \rc_V_reg_83_reg[3] 
       (.C(clock),
        .CE(rc_V_reg_83),
        .D(res_reg_214[3]),
        .Q(Q[3]),
        .R(i_0_i_reg_107_0));
  FDRE \rc_V_reg_83_reg[4] 
       (.C(clock),
        .CE(rc_V_reg_83),
        .D(res_reg_214[4]),
        .Q(Q[4]),
        .R(i_0_i_reg_107_0));
  FDRE \rc_V_reg_83_reg[5] 
       (.C(clock),
        .CE(rc_V_reg_83),
        .D(res_reg_214[5]),
        .Q(Q[5]),
        .R(i_0_i_reg_107_0));
  FDRE \rc_V_reg_83_reg[6] 
       (.C(clock),
        .CE(rc_V_reg_83),
        .D(res_reg_214[6]),
        .Q(Q[6]),
        .R(i_0_i_reg_107_0));
  FDRE \rc_V_reg_83_reg[7] 
       (.C(clock),
        .CE(rc_V_reg_83),
        .D(res_reg_214[7]),
        .Q(Q[7]),
        .R(i_0_i_reg_107_0));
  FDRE \res_reg_214_reg[0] 
       (.C(clock),
        .CE(ap_NS_fsm[5]),
        .D(g2_fu_152_p0[0]),
        .Q(res_reg_214[0]),
        .R(1'b0));
  FDRE \res_reg_214_reg[1] 
       (.C(clock),
        .CE(ap_NS_fsm[5]),
        .D(g2_fu_152_p0[1]),
        .Q(res_reg_214[1]),
        .R(1'b0));
  FDRE \res_reg_214_reg[2] 
       (.C(clock),
        .CE(ap_NS_fsm[5]),
        .D(g2_fu_152_p0[2]),
        .Q(res_reg_214[2]),
        .R(1'b0));
  FDRE \res_reg_214_reg[3] 
       (.C(clock),
        .CE(ap_NS_fsm[5]),
        .D(g2_fu_152_p0[3]),
        .Q(res_reg_214[3]),
        .R(1'b0));
  FDRE \res_reg_214_reg[4] 
       (.C(clock),
        .CE(ap_NS_fsm[5]),
        .D(g2_fu_152_p0[4]),
        .Q(res_reg_214[4]),
        .R(1'b0));
  FDRE \res_reg_214_reg[5] 
       (.C(clock),
        .CE(ap_NS_fsm[5]),
        .D(g2_fu_152_p0[5]),
        .Q(res_reg_214[5]),
        .R(1'b0));
  FDRE \res_reg_214_reg[6] 
       (.C(clock),
        .CE(ap_NS_fsm[5]),
        .D(g2_fu_152_p0[6]),
        .Q(res_reg_214[6]),
        .R(1'b0));
  FDRE \res_reg_214_reg[7] 
       (.C(clock),
        .CE(ap_NS_fsm[5]),
        .D(g2_fu_152_p0[7]),
        .Q(res_reg_214[7]),
        .R(1'b0));
  FDRE \val_V_3_reg_196_reg[0] 
       (.C(clock),
        .CE(ap_NS_fsm[3]),
        .D(e_dout[0]),
        .Q(val_V_3_reg_196[0]),
        .R(1'b0));
  FDRE \val_V_3_reg_196_reg[1] 
       (.C(clock),
        .CE(ap_NS_fsm[3]),
        .D(e_dout[1]),
        .Q(val_V_3_reg_196[1]),
        .R(1'b0));
  FDRE \val_V_3_reg_196_reg[2] 
       (.C(clock),
        .CE(ap_NS_fsm[3]),
        .D(e_dout[2]),
        .Q(val_V_3_reg_196[2]),
        .R(1'b0));
  FDRE \val_V_3_reg_196_reg[3] 
       (.C(clock),
        .CE(ap_NS_fsm[3]),
        .D(e_dout[3]),
        .Q(val_V_3_reg_196[3]),
        .R(1'b0));
  FDRE \val_V_3_reg_196_reg[4] 
       (.C(clock),
        .CE(ap_NS_fsm[3]),
        .D(e_dout[4]),
        .Q(val_V_3_reg_196[4]),
        .R(1'b0));
  FDRE \val_V_3_reg_196_reg[5] 
       (.C(clock),
        .CE(ap_NS_fsm[3]),
        .D(e_dout[5]),
        .Q(val_V_3_reg_196[5]),
        .R(1'b0));
  FDRE \val_V_3_reg_196_reg[6] 
       (.C(clock),
        .CE(ap_NS_fsm[3]),
        .D(e_dout[6]),
        .Q(val_V_3_reg_196[6]),
        .R(1'b0));
  FDRE \val_V_3_reg_196_reg[7] 
       (.C(clock),
        .CE(ap_NS_fsm[3]),
        .D(e_dout[7]),
        .Q(val_V_3_reg_196[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "ModuleCompute_macg8j" *) 
module my_module2_0_ModuleCompute_macg8j
   (P,
    Q,
    clock,
    e_dout,
    C,
    e_empty_n);
  output [15:0]P;
  input [1:0]Q;
  input clock;
  input [7:0]e_dout;
  input [14:0]C;
  input e_empty_n;

  wire [14:0]C;
  wire [15:0]P;
  wire [1:0]Q;
  wire clock;
  wire [7:0]e_dout;
  wire e_empty_n;

  my_module2_0_ModuleCompute_macg8j_DSP48_3 ModuleCompute_macg8j_DSP48_3_U
       (.C(C),
        .P(P),
        .Q(Q),
        .clock(clock),
        .e_dout(e_dout),
        .e_empty_n(e_empty_n));
endmodule

(* ORIG_REF_NAME = "ModuleCompute_macg8j_DSP48_3" *) 
module my_module2_0_ModuleCompute_macg8j_DSP48_3
   (P,
    Q,
    clock,
    e_dout,
    C,
    e_empty_n);
  output [15:0]P;
  input [1:0]Q;
  input clock;
  input [7:0]e_dout;
  input [14:0]C;
  input e_empty_n;

  wire [14:0]C;
  wire [15:0]P;
  wire [1:0]Q;
  wire ap_NS_fsm11_out;
  wire clock;
  wire [7:0]e_dout;
  wire e_empty_n;
  wire NLW_p_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_OVERFLOW_UNCONNECTED;
  wire NLW_p_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_CARRYOUT_UNCONNECTED;
  wire [47:16]NLW_p_P_UNCONNECTED;
  wire [47:0]NLW_p_PCOUT_UNCONNECTED;

  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p
       (.A({e_dout[7],e_dout[7],e_dout[7],e_dout[7],e_dout[7],e_dout[7],e_dout[7],e_dout[7],e_dout[7],e_dout[7],e_dout[7],e_dout[7],e_dout[7],e_dout[7],e_dout[7],e_dout[7],e_dout[7],e_dout[7],e_dout[7],e_dout[7],e_dout[7],e_dout[7],e_dout}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({e_dout[7],e_dout[7],e_dout[7],e_dout[7],e_dout[7],e_dout[7],e_dout[7],e_dout[7],e_dout[7],e_dout[7],e_dout}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_BCOUT_UNCONNECTED[17:0]),
        .C({C[14],C[14],C[14],C[14],C[14],C[14],C[14],C[14],C[14],C[14],C[14],C[14],C[14],C[14],C[14],C[14],C[14],C[14],C[14],C[14],C[14],C[14],C[14],C[14],C[14],C[14],C[14],C[14],C[14],C[14],C[14],C[14],C[14:1],1'b0,C[0]}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(ap_NS_fsm11_out),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(ap_NS_fsm11_out),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(Q[1]),
        .CLK(clock),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_OVERFLOW_UNCONNECTED),
        .P({NLW_p_P_UNCONNECTED[47:16],P}),
        .PATTERNBDETECT(NLW_p_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    p_i_1
       (.I0(e_empty_n),
        .I1(Q[0]),
        .O(ap_NS_fsm11_out));
endmodule

(* ORIG_REF_NAME = "Seuil_calc2" *) 
module my_module2_0_Seuil_calc2
   (ap_CS_fsm_pp0_stage0,
    ap_block_pp0_stage0_110010_in,
    ap_enable_reg_pp0_iter0,
    full_n_reg,
    pop,
    ce,
    \ap_CS_fsm_reg[0] ,
    \ap_CS_fsm_reg[1] ,
    in,
    clock,
    reset,
    D,
    dbl2scalc_1_empty_n,
    detect_1_full_n,
    dbl2scalc_1_full_n,
    dbl2tsep_1_full_n,
    mod2dbl_1_empty_n,
    \dout_buf_reg[7] ,
    \ap_CS_fsm_reg[1]_0 );
  output ap_CS_fsm_pp0_stage0;
  output ap_block_pp0_stage0_110010_in;
  output ap_enable_reg_pp0_iter0;
  output [0:0]full_n_reg;
  output pop;
  output ce;
  output [0:0]\ap_CS_fsm_reg[0] ;
  output \ap_CS_fsm_reg[1] ;
  output [0:0]in;
  input clock;
  input reset;
  input [7:0]D;
  input dbl2scalc_1_empty_n;
  input detect_1_full_n;
  input dbl2scalc_1_full_n;
  input dbl2tsep_1_full_n;
  input mod2dbl_1_empty_n;
  input \dout_buf_reg[7] ;
  input [0:0]\ap_CS_fsm_reg[1]_0 ;

  wire [7:0]D;
  wire ap_CS_fsm_pp0_stage0;
  wire [0:0]\ap_CS_fsm_reg[0] ;
  wire \ap_CS_fsm_reg[1] ;
  wire [0:0]\ap_CS_fsm_reg[1]_0 ;
  wire ap_block_pp0_stage0_110010_in;
  wire ap_enable_reg_pp0_iter0;
  wire ce;
  wire clock;
  wire dbl2scalc_1_empty_n;
  wire dbl2scalc_1_full_n;
  wire dbl2tsep_1_full_n;
  wire detect_1_full_n;
  wire \dout_buf_reg[7] ;
  wire [0:0]full_n_reg;
  wire [0:0]in;
  wire mod2dbl_1_empty_n;
  wire pop;
  wire reset;

  my_module2_0_Seuil_calc2_do_gen grp_Seuil_calc2_do_gen_fu_56
       (.D(D),
        .\ap_CS_fsm_reg[0]_0 (\ap_CS_fsm_reg[0] ),
        .\ap_CS_fsm_reg[1]_0 (ap_CS_fsm_pp0_stage0),
        .\ap_CS_fsm_reg[1]_1 (\ap_CS_fsm_reg[1] ),
        .\ap_CS_fsm_reg[1]_2 (\ap_CS_fsm_reg[1]_0 ),
        .ap_enable_reg_pp0_iter0_reg_0(ap_enable_reg_pp0_iter0),
        .ce(ce),
        .clock(clock),
        .dbl2scalc_1_empty_n(dbl2scalc_1_empty_n),
        .dbl2scalc_1_full_n(dbl2scalc_1_full_n),
        .dbl2tsep_1_full_n(dbl2tsep_1_full_n),
        .detect_1_full_n(detect_1_full_n),
        .\dout_buf_reg[7] (\dout_buf_reg[7] ),
        .dout_valid_reg(ap_block_pp0_stage0_110010_in),
        .full_n_reg(full_n_reg),
        .in(in),
        .mod2dbl_1_empty_n(mod2dbl_1_empty_n),
        .pop(pop),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "Seuil_calc2_do_gen" *) 
module my_module2_0_Seuil_calc2_do_gen
   (\ap_CS_fsm_reg[1]_0 ,
    dout_valid_reg,
    ap_enable_reg_pp0_iter0_reg_0,
    full_n_reg,
    pop,
    ce,
    \ap_CS_fsm_reg[0]_0 ,
    \ap_CS_fsm_reg[1]_1 ,
    in,
    clock,
    reset,
    D,
    dbl2scalc_1_empty_n,
    detect_1_full_n,
    dbl2scalc_1_full_n,
    dbl2tsep_1_full_n,
    mod2dbl_1_empty_n,
    \dout_buf_reg[7] ,
    \ap_CS_fsm_reg[1]_2 );
  output \ap_CS_fsm_reg[1]_0 ;
  output dout_valid_reg;
  output ap_enable_reg_pp0_iter0_reg_0;
  output [0:0]full_n_reg;
  output pop;
  output ce;
  output [0:0]\ap_CS_fsm_reg[0]_0 ;
  output \ap_CS_fsm_reg[1]_1 ;
  output [0:0]in;
  input clock;
  input reset;
  input [7:0]D;
  input dbl2scalc_1_empty_n;
  input detect_1_full_n;
  input dbl2scalc_1_full_n;
  input dbl2tsep_1_full_n;
  input mod2dbl_1_empty_n;
  input \dout_buf_reg[7] ;
  input [0:0]\ap_CS_fsm_reg[1]_2 ;

  wire [7:0]D;
  wire RESIZE0;
  wire Seuil_calc2_mac_mdEe_U22_n_26;
  wire Seuil_calc2_mac_mdEe_U22_n_27;
  wire Seuil_calc2_mac_mdEe_U22_n_28;
  wire Seuil_calc2_mac_mdEe_U22_n_29;
  wire Seuil_calc2_mac_mdEe_U22_n_30;
  wire Seuil_calc2_mac_mdEe_U22_n_31;
  wire Seuil_calc2_mac_mdEe_U22_n_32;
  wire Seuil_calc2_mac_mdEe_U22_n_33;
  wire Seuil_calc2_mac_mdEe_U22_n_34;
  wire Seuil_calc2_mac_mdEe_U22_n_35;
  wire Seuil_calc2_mac_mdEe_U22_n_36;
  wire Seuil_calc2_mac_mdEe_U22_n_37;
  wire Seuil_calc2_mac_mdEe_U22_n_38;
  wire Seuil_calc2_mac_mdEe_U22_n_39;
  wire Seuil_calc2_mac_mdEe_U22_n_40;
  wire Seuil_calc2_mac_mdEe_U22_n_41;
  wire Seuil_calc2_mac_mdEe_U22_n_42;
  wire Seuil_calc2_mac_mdEe_U22_n_43;
  wire Seuil_calc2_mac_mdEe_U22_n_44;
  wire Seuil_calc2_mac_mdEe_U22_n_45;
  wire Seuil_calc2_mac_mdEe_U22_n_46;
  wire Seuil_calc2_mac_mdEe_U22_n_47;
  wire Seuil_calc2_mac_mdEe_U22_n_48;
  wire Seuil_calc2_mac_mdEe_U22_n_49;
  wire Seuil_calc2_mac_mdEe_U22_n_50;
  wire Seuil_calc2_mac_mdEe_U22_n_51;
  wire Seuil_calc2_mac_mdEe_U22_n_52;
  wire Seuil_calc2_mac_mdEe_U22_n_53;
  wire Seuil_calc2_mac_mdEe_U22_n_54;
  wire Seuil_calc2_mac_mdEe_U22_n_55;
  wire Seuil_calc2_mac_mdEe_U22_n_56;
  wire Seuil_calc2_mac_mdEe_U22_n_57;
  wire Seuil_calc2_mac_mdEe_U22_n_58;
  wire Seuil_calc2_mac_mdEe_U22_n_59;
  wire Seuil_calc2_mac_mdEe_U22_n_60;
  wire Seuil_calc2_mac_mdEe_U22_n_61;
  wire Seuil_calc2_mac_mdEe_U22_n_62;
  wire Seuil_calc2_mac_mdEe_U22_n_63;
  wire [0:0]\ap_CS_fsm_reg[0]_0 ;
  wire \ap_CS_fsm_reg[1]_0 ;
  wire \ap_CS_fsm_reg[1]_1 ;
  wire [0:0]\ap_CS_fsm_reg[1]_2 ;
  wire ap_CS_fsm_state1;
  wire ap_enable_reg_pp0_iter0_i_1__0_n_8;
  wire ap_enable_reg_pp0_iter0_reg_0;
  wire ap_enable_reg_pp0_iter1_reg_n_8;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter4;
  wire ap_enable_reg_pp0_iter4_reg_n_8;
  wire [2:2]ap_phi_mux_p_0108_0_phi_fu_225_p4;
  wire buffer_10_V_fu_1240;
  wire [7:0]buffer_14_V_fu_140;
  wire [7:0]buffer_15_V_fu_144;
  wire \buffer_16_V_fu_148_reg[0]_srl2_n_8 ;
  wire \buffer_16_V_fu_148_reg[1]_srl2_n_8 ;
  wire \buffer_16_V_fu_148_reg[2]_srl2_n_8 ;
  wire \buffer_16_V_fu_148_reg[3]_srl2_n_8 ;
  wire \buffer_16_V_fu_148_reg[4]_srl2_n_8 ;
  wire \buffer_16_V_fu_148_reg[5]_srl2_n_8 ;
  wire \buffer_16_V_fu_148_reg[6]_srl2_n_8 ;
  wire \buffer_16_V_fu_148_reg[7]_srl2_n_8 ;
  wire [7:0]buffer_18_V_fu_156;
  wire [7:0]buffer_19_V_fu_160;
  wire [7:0]buffer_1_V_fu_88;
  wire \buffer_20_V_fu_164_reg[0]_srl11_n_8 ;
  wire \buffer_20_V_fu_164_reg[1]_srl11_n_8 ;
  wire \buffer_20_V_fu_164_reg[2]_srl11_n_8 ;
  wire \buffer_20_V_fu_164_reg[3]_srl11_n_8 ;
  wire \buffer_20_V_fu_164_reg[4]_srl11_n_8 ;
  wire \buffer_20_V_fu_164_reg[5]_srl11_n_8 ;
  wire \buffer_20_V_fu_164_reg[6]_srl11_n_8 ;
  wire \buffer_20_V_fu_164_reg[7]_srl11_n_8 ;
  wire \buffer_2_V_fu_92_reg[0]_srl2_n_8 ;
  wire \buffer_2_V_fu_92_reg[1]_srl2_n_8 ;
  wire \buffer_2_V_fu_92_reg[2]_srl2_n_8 ;
  wire \buffer_2_V_fu_92_reg[3]_srl2_n_8 ;
  wire \buffer_2_V_fu_92_reg[4]_srl2_n_8 ;
  wire \buffer_2_V_fu_92_reg[5]_srl2_n_8 ;
  wire \buffer_2_V_fu_92_reg[6]_srl2_n_8 ;
  wire \buffer_2_V_fu_92_reg[7]_srl2_n_8 ;
  wire [7:0]buffer_4_V_fu_100;
  wire [7:0]buffer_5_V_fu_104;
  wire \buffer_6_V_fu_108_reg[0]_srl8_n_8 ;
  wire \buffer_6_V_fu_108_reg[1]_srl8_n_8 ;
  wire \buffer_6_V_fu_108_reg[2]_srl8_n_8 ;
  wire \buffer_6_V_fu_108_reg[3]_srl8_n_8 ;
  wire \buffer_6_V_fu_108_reg[4]_srl8_n_8 ;
  wire \buffer_6_V_fu_108_reg[5]_srl8_n_8 ;
  wire \buffer_6_V_fu_108_reg[6]_srl8_n_8 ;
  wire \buffer_6_V_fu_108_reg[7]_srl8_n_8 ;
  wire ce;
  wire clock;
  wire dbl2scalc_1_empty_n;
  wire dbl2scalc_1_full_n;
  wire dbl2tsep_1_full_n;
  wire detect_1_full_n;
  wire detect_din0_carry__0_i_1_n_8;
  wire detect_din0_carry__0_i_2_n_8;
  wire detect_din0_carry__0_i_3_n_8;
  wire detect_din0_carry__0_i_4_n_8;
  wire detect_din0_carry__0_i_5_n_8;
  wire detect_din0_carry__0_i_6_n_8;
  wire detect_din0_carry__0_i_7_n_8;
  wire detect_din0_carry__0_i_8_n_8;
  wire detect_din0_carry__0_n_10;
  wire detect_din0_carry__0_n_11;
  wire detect_din0_carry__0_n_8;
  wire detect_din0_carry__0_n_9;
  wire detect_din0_carry__1_i_1_n_8;
  wire detect_din0_carry__1_i_2_n_8;
  wire detect_din0_carry__1_i_3_n_8;
  wire detect_din0_carry__1_i_4_n_8;
  wire detect_din0_carry__1_i_5_n_8;
  wire detect_din0_carry__1_i_6_n_8;
  wire detect_din0_carry__1_n_10;
  wire detect_din0_carry__1_n_11;
  wire detect_din0_carry_i_1_n_8;
  wire detect_din0_carry_i_2_n_8;
  wire detect_din0_carry_i_3_n_8;
  wire detect_din0_carry_i_4_n_8;
  wire detect_din0_carry_i_5_n_8;
  wire detect_din0_carry_i_6_n_8;
  wire detect_din0_carry_i_7_n_8;
  wire detect_din0_carry_i_8_n_8;
  wire detect_din0_carry_n_10;
  wire detect_din0_carry_n_11;
  wire detect_din0_carry_n_8;
  wire detect_din0_carry_n_9;
  wire \dout_buf_reg[7] ;
  wire dout_valid_reg;
  wire [0:0]full_n_reg;
  wire [15:0]grp_fu_664_p3;
  wire [0:0]in;
  wire mod2dbl_1_empty_n;
  wire mul_ln895_reg_907_reg_n_100;
  wire mul_ln895_reg_907_reg_n_101;
  wire mul_ln895_reg_907_reg_n_102;
  wire mul_ln895_reg_907_reg_n_103;
  wire mul_ln895_reg_907_reg_n_104;
  wire mul_ln895_reg_907_reg_n_105;
  wire mul_ln895_reg_907_reg_n_106;
  wire mul_ln895_reg_907_reg_n_107;
  wire mul_ln895_reg_907_reg_n_108;
  wire mul_ln895_reg_907_reg_n_109;
  wire mul_ln895_reg_907_reg_n_110;
  wire mul_ln895_reg_907_reg_n_111;
  wire mul_ln895_reg_907_reg_n_112;
  wire mul_ln895_reg_907_reg_n_113;
  wire mul_ln895_reg_907_reg_n_92;
  wire mul_ln895_reg_907_reg_n_93;
  wire mul_ln895_reg_907_reg_n_94;
  wire mul_ln895_reg_907_reg_n_95;
  wire mul_ln895_reg_907_reg_n_96;
  wire mul_ln895_reg_907_reg_n_97;
  wire mul_ln895_reg_907_reg_n_98;
  wire mul_ln895_reg_907_reg_n_99;
  wire [21:2]p_0108_0_reg_221;
  wire p_0108_0_reg_2210;
  wire p_0108_0_reg_221_0;
  wire [7:0]p_0343_0_fu_80;
  wire p_0_in;
  wire pop;
  wire [10:0]ps_V_fu_437_p2;
  wire ps_V_fu_437_p2__0_carry__0_i_1_n_8;
  wire ps_V_fu_437_p2__0_carry__0_i_2_n_8;
  wire ps_V_fu_437_p2__0_carry__0_i_3_n_8;
  wire ps_V_fu_437_p2__0_carry__0_i_4_n_8;
  wire ps_V_fu_437_p2__0_carry__0_i_5_n_8;
  wire ps_V_fu_437_p2__0_carry__0_i_6_n_8;
  wire ps_V_fu_437_p2__0_carry__0_i_7_n_8;
  wire ps_V_fu_437_p2__0_carry__0_i_8_n_8;
  wire ps_V_fu_437_p2__0_carry__0_n_10;
  wire ps_V_fu_437_p2__0_carry__0_n_11;
  wire ps_V_fu_437_p2__0_carry__0_n_12;
  wire ps_V_fu_437_p2__0_carry__0_n_13;
  wire ps_V_fu_437_p2__0_carry__0_n_14;
  wire ps_V_fu_437_p2__0_carry__0_n_15;
  wire ps_V_fu_437_p2__0_carry__0_n_8;
  wire ps_V_fu_437_p2__0_carry__0_n_9;
  wire ps_V_fu_437_p2__0_carry__1_i_1_n_8;
  wire ps_V_fu_437_p2__0_carry__1_n_10;
  wire ps_V_fu_437_p2__0_carry__1_n_15;
  wire ps_V_fu_437_p2__0_carry_i_1_n_8;
  wire ps_V_fu_437_p2__0_carry_i_2_n_8;
  wire ps_V_fu_437_p2__0_carry_i_3_n_8;
  wire ps_V_fu_437_p2__0_carry_i_4_n_8;
  wire ps_V_fu_437_p2__0_carry_i_5_n_8;
  wire ps_V_fu_437_p2__0_carry_i_6_n_8;
  wire ps_V_fu_437_p2__0_carry_i_7_n_8;
  wire ps_V_fu_437_p2__0_carry_n_10;
  wire ps_V_fu_437_p2__0_carry_n_11;
  wire ps_V_fu_437_p2__0_carry_n_12;
  wire ps_V_fu_437_p2__0_carry_n_13;
  wire ps_V_fu_437_p2__0_carry_n_14;
  wire ps_V_fu_437_p2__0_carry_n_15;
  wire ps_V_fu_437_p2__0_carry_n_8;
  wire ps_V_fu_437_p2__0_carry_n_9;
  wire ps_V_fu_437_p2__26_carry__0_i_1_n_8;
  wire ps_V_fu_437_p2__26_carry__0_i_2_n_8;
  wire ps_V_fu_437_p2__26_carry__0_i_3_n_8;
  wire ps_V_fu_437_p2__26_carry__0_i_4_n_8;
  wire ps_V_fu_437_p2__26_carry__0_i_5_n_8;
  wire ps_V_fu_437_p2__26_carry__0_i_6_n_8;
  wire ps_V_fu_437_p2__26_carry__0_i_7_n_8;
  wire ps_V_fu_437_p2__26_carry__0_i_8_n_8;
  wire ps_V_fu_437_p2__26_carry__0_n_10;
  wire ps_V_fu_437_p2__26_carry__0_n_11;
  wire ps_V_fu_437_p2__26_carry__0_n_12;
  wire ps_V_fu_437_p2__26_carry__0_n_13;
  wire ps_V_fu_437_p2__26_carry__0_n_14;
  wire ps_V_fu_437_p2__26_carry__0_n_15;
  wire ps_V_fu_437_p2__26_carry__0_n_8;
  wire ps_V_fu_437_p2__26_carry__0_n_9;
  wire ps_V_fu_437_p2__26_carry__1_i_1_n_8;
  wire ps_V_fu_437_p2__26_carry__1_n_10;
  wire ps_V_fu_437_p2__26_carry__1_n_15;
  wire ps_V_fu_437_p2__26_carry_i_1_n_8;
  wire ps_V_fu_437_p2__26_carry_i_2_n_8;
  wire ps_V_fu_437_p2__26_carry_i_3_n_8;
  wire ps_V_fu_437_p2__26_carry_i_4_n_8;
  wire ps_V_fu_437_p2__26_carry_i_5_n_8;
  wire ps_V_fu_437_p2__26_carry_i_6_n_8;
  wire ps_V_fu_437_p2__26_carry_i_7_n_8;
  wire ps_V_fu_437_p2__26_carry_n_10;
  wire ps_V_fu_437_p2__26_carry_n_11;
  wire ps_V_fu_437_p2__26_carry_n_12;
  wire ps_V_fu_437_p2__26_carry_n_13;
  wire ps_V_fu_437_p2__26_carry_n_14;
  wire ps_V_fu_437_p2__26_carry_n_15;
  wire ps_V_fu_437_p2__26_carry_n_8;
  wire ps_V_fu_437_p2__26_carry_n_9;
  wire ps_V_fu_437_p2__54_carry__0_i_10_n_8;
  wire ps_V_fu_437_p2__54_carry__0_i_11_n_8;
  wire ps_V_fu_437_p2__54_carry__0_i_12_n_8;
  wire ps_V_fu_437_p2__54_carry__0_i_13_n_8;
  wire ps_V_fu_437_p2__54_carry__0_i_14_n_8;
  wire ps_V_fu_437_p2__54_carry__0_i_15_n_8;
  wire ps_V_fu_437_p2__54_carry__0_i_1_n_8;
  wire ps_V_fu_437_p2__54_carry__0_i_2_n_8;
  wire ps_V_fu_437_p2__54_carry__0_i_3_n_8;
  wire ps_V_fu_437_p2__54_carry__0_i_4_n_8;
  wire ps_V_fu_437_p2__54_carry__0_i_5_n_8;
  wire ps_V_fu_437_p2__54_carry__0_i_6_n_8;
  wire ps_V_fu_437_p2__54_carry__0_i_7_n_8;
  wire ps_V_fu_437_p2__54_carry__0_i_8_n_8;
  wire ps_V_fu_437_p2__54_carry__0_i_9_n_8;
  wire ps_V_fu_437_p2__54_carry__0_n_10;
  wire ps_V_fu_437_p2__54_carry__0_n_11;
  wire ps_V_fu_437_p2__54_carry__0_n_8;
  wire ps_V_fu_437_p2__54_carry__0_n_9;
  wire ps_V_fu_437_p2__54_carry__1_i_1_n_8;
  wire ps_V_fu_437_p2__54_carry__1_i_2_n_8;
  wire ps_V_fu_437_p2__54_carry__1_i_3_n_8;
  wire ps_V_fu_437_p2__54_carry__1_i_4_n_8;
  wire ps_V_fu_437_p2__54_carry__1_i_5_n_8;
  wire ps_V_fu_437_p2__54_carry__1_i_6_n_8;
  wire ps_V_fu_437_p2__54_carry__1_n_10;
  wire ps_V_fu_437_p2__54_carry__1_n_11;
  wire ps_V_fu_437_p2__54_carry_i_1_n_8;
  wire ps_V_fu_437_p2__54_carry_i_2_n_8;
  wire ps_V_fu_437_p2__54_carry_i_3_n_8;
  wire ps_V_fu_437_p2__54_carry_i_4_n_8;
  wire ps_V_fu_437_p2__54_carry_i_5_n_8;
  wire ps_V_fu_437_p2__54_carry_i_6_n_8;
  wire ps_V_fu_437_p2__54_carry_i_7_n_8;
  wire ps_V_fu_437_p2__54_carry_i_8_n_8;
  wire ps_V_fu_437_p2__54_carry_i_9_n_8;
  wire ps_V_fu_437_p2__54_carry_n_10;
  wire ps_V_fu_437_p2__54_carry_n_11;
  wire ps_V_fu_437_p2__54_carry_n_8;
  wire ps_V_fu_437_p2__54_carry_n_9;
  wire res_2_V_reg_897;
  wire \res_2_V_reg_897[16]_i_2_n_8 ;
  wire \res_2_V_reg_897[16]_i_3_n_8 ;
  wire \res_2_V_reg_897[16]_i_4_n_8 ;
  wire \res_2_V_reg_897_reg_n_8_[0] ;
  wire \res_2_V_reg_897_reg_n_8_[10] ;
  wire \res_2_V_reg_897_reg_n_8_[11] ;
  wire \res_2_V_reg_897_reg_n_8_[12] ;
  wire \res_2_V_reg_897_reg_n_8_[13] ;
  wire \res_2_V_reg_897_reg_n_8_[14] ;
  wire \res_2_V_reg_897_reg_n_8_[15] ;
  wire \res_2_V_reg_897_reg_n_8_[16] ;
  wire \res_2_V_reg_897_reg_n_8_[1] ;
  wire \res_2_V_reg_897_reg_n_8_[2] ;
  wire \res_2_V_reg_897_reg_n_8_[3] ;
  wire \res_2_V_reg_897_reg_n_8_[4] ;
  wire \res_2_V_reg_897_reg_n_8_[5] ;
  wire \res_2_V_reg_897_reg_n_8_[6] ;
  wire \res_2_V_reg_897_reg_n_8_[7] ;
  wire \res_2_V_reg_897_reg_n_8_[8] ;
  wire \res_2_V_reg_897_reg_n_8_[9] ;
  wire reset;
  wire ret_V_5_fu_242_p2_n_100;
  wire ret_V_5_fu_242_p2_n_101;
  wire ret_V_5_fu_242_p2_n_102;
  wire ret_V_5_fu_242_p2_n_103;
  wire ret_V_5_fu_242_p2_n_104;
  wire ret_V_5_fu_242_p2_n_105;
  wire ret_V_5_fu_242_p2_n_106;
  wire ret_V_5_fu_242_p2_n_107;
  wire ret_V_5_fu_242_p2_n_108;
  wire ret_V_5_fu_242_p2_n_109;
  wire ret_V_5_fu_242_p2_n_110;
  wire ret_V_5_fu_242_p2_n_111;
  wire ret_V_5_fu_242_p2_n_112;
  wire ret_V_5_fu_242_p2_n_113;
  wire ret_V_5_fu_242_p2_n_98;
  wire ret_V_5_fu_242_p2_n_99;
  wire ret_V_6_reg_902_reg_n_100;
  wire ret_V_6_reg_902_reg_n_101;
  wire ret_V_6_reg_902_reg_n_102;
  wire ret_V_6_reg_902_reg_n_103;
  wire ret_V_6_reg_902_reg_n_104;
  wire ret_V_6_reg_902_reg_n_105;
  wire ret_V_6_reg_902_reg_n_106;
  wire ret_V_6_reg_902_reg_n_107;
  wire ret_V_6_reg_902_reg_n_108;
  wire ret_V_6_reg_902_reg_n_109;
  wire ret_V_6_reg_902_reg_n_110;
  wire ret_V_6_reg_902_reg_n_111;
  wire ret_V_6_reg_902_reg_n_112;
  wire ret_V_6_reg_902_reg_n_113;
  wire ret_V_6_reg_902_reg_n_92;
  wire ret_V_6_reg_902_reg_n_93;
  wire ret_V_6_reg_902_reg_n_94;
  wire ret_V_6_reg_902_reg_n_95;
  wire ret_V_6_reg_902_reg_n_96;
  wire ret_V_6_reg_902_reg_n_97;
  wire ret_V_6_reg_902_reg_n_98;
  wire ret_V_6_reg_902_reg_n_99;
  wire sum_V_fu_454_p2_carry__0_n_10;
  wire sum_V_fu_454_p2_carry__0_n_11;
  wire sum_V_fu_454_p2_carry__0_n_8;
  wire sum_V_fu_454_p2_carry__0_n_9;
  wire sum_V_fu_454_p2_carry__1_n_10;
  wire sum_V_fu_454_p2_carry__1_n_11;
  wire sum_V_fu_454_p2_carry__1_n_8;
  wire sum_V_fu_454_p2_carry__1_n_9;
  wire sum_V_fu_454_p2_carry__2_n_10;
  wire sum_V_fu_454_p2_carry__2_n_11;
  wire sum_V_fu_454_p2_carry__2_n_8;
  wire sum_V_fu_454_p2_carry__2_n_9;
  wire sum_V_fu_454_p2_carry__3_i_1_n_8;
  wire sum_V_fu_454_p2_carry__3_i_2_n_8;
  wire sum_V_fu_454_p2_carry__3_n_10;
  wire sum_V_fu_454_p2_carry__3_n_11;
  wire sum_V_fu_454_p2_carry__3_n_9;
  wire sum_V_fu_454_p2_carry_n_10;
  wire sum_V_fu_454_p2_carry_n_11;
  wire sum_V_fu_454_p2_carry_n_8;
  wire sum_V_fu_454_p2_carry_n_9;
  wire \sum_V_reg_892[2]_i_5_n_8 ;
  wire [21:2]sum_V_reg_892_reg;
  wire [16:0]trunc_ln_fu_460_p4;
  wire val_V_reg_8760;
  wire [7:0]val_V_reg_876_pp0_iter1_reg;
  wire \val_V_reg_876_reg_n_8_[0] ;
  wire \val_V_reg_876_reg_n_8_[1] ;
  wire \val_V_reg_876_reg_n_8_[2] ;
  wire \val_V_reg_876_reg_n_8_[3] ;
  wire \val_V_reg_876_reg_n_8_[4] ;
  wire \val_V_reg_876_reg_n_8_[5] ;
  wire \val_V_reg_876_reg_n_8_[6] ;
  wire \val_V_reg_876_reg_n_8_[7] ;
  wire [7:0]x0_V_fu_84;
  wire [3:0]NLW_detect_din0_carry_O_UNCONNECTED;
  wire [3:0]NLW_detect_din0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_detect_din0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_detect_din0_carry__1_O_UNCONNECTED;
  wire NLW_mul_ln895_reg_907_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_ln895_reg_907_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_ln895_reg_907_reg_OVERFLOW_UNCONNECTED;
  wire NLW_mul_ln895_reg_907_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_ln895_reg_907_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_ln895_reg_907_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_ln895_reg_907_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_ln895_reg_907_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_ln895_reg_907_reg_CARRYOUT_UNCONNECTED;
  wire [47:22]NLW_mul_ln895_reg_907_reg_P_UNCONNECTED;
  wire [47:0]NLW_mul_ln895_reg_907_reg_PCOUT_UNCONNECTED;
  wire [3:0]NLW_ps_V_fu_437_p2__0_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_ps_V_fu_437_p2__0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_ps_V_fu_437_p2__26_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_ps_V_fu_437_p2__26_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_ps_V_fu_437_p2__54_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_ps_V_fu_437_p2__54_carry__1_O_UNCONNECTED;
  wire NLW_ret_V_5_fu_242_p2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_ret_V_5_fu_242_p2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_ret_V_5_fu_242_p2_OVERFLOW_UNCONNECTED;
  wire NLW_ret_V_5_fu_242_p2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_ret_V_5_fu_242_p2_PATTERNDETECT_UNCONNECTED;
  wire NLW_ret_V_5_fu_242_p2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_ret_V_5_fu_242_p2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_ret_V_5_fu_242_p2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_ret_V_5_fu_242_p2_CARRYOUT_UNCONNECTED;
  wire [47:16]NLW_ret_V_5_fu_242_p2_P_UNCONNECTED;
  wire [47:0]NLW_ret_V_5_fu_242_p2_PCOUT_UNCONNECTED;
  wire NLW_ret_V_6_reg_902_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_ret_V_6_reg_902_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_ret_V_6_reg_902_reg_OVERFLOW_UNCONNECTED;
  wire NLW_ret_V_6_reg_902_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_ret_V_6_reg_902_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_ret_V_6_reg_902_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_ret_V_6_reg_902_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_ret_V_6_reg_902_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_ret_V_6_reg_902_reg_CARRYOUT_UNCONNECTED;
  wire [47:22]NLW_ret_V_6_reg_902_reg_P_UNCONNECTED;
  wire [47:0]NLW_ret_V_6_reg_902_reg_PCOUT_UNCONNECTED;
  wire [2:0]NLW_sum_V_fu_454_p2_carry_O_UNCONNECTED;
  wire [3:3]NLW_sum_V_fu_454_p2_carry__3_CO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \SRL_SIG_reg[1023][0]_srl32_i_1 
       (.I0(ap_enable_reg_pp0_iter4_reg_n_8),
        .I1(detect_1_full_n),
        .I2(ap_enable_reg_pp0_iter0_reg_0),
        .I3(dbl2scalc_1_empty_n),
        .O(ce));
  my_module2_0_Seuil_calc2_mac_mdEe Seuil_calc2_mac_mdEe_U22
       (.D({trunc_ln_fu_460_p4[15],trunc_ln_fu_460_p4[13],trunc_ln_fu_460_p4[6]}),
        .O({Seuil_calc2_mac_mdEe_U22_n_26,Seuil_calc2_mac_mdEe_U22_n_27,Seuil_calc2_mac_mdEe_U22_n_28,Seuil_calc2_mac_mdEe_U22_n_29}),
        .P({RESIZE0,grp_fu_664_p3}),
        .Q(p_0108_0_reg_221[21:3]),
        .S(\sum_V_reg_892[2]_i_5_n_8 ),
        .SR(res_2_V_reg_897),
        .ap_enable_reg_pp0_iter2(ap_enable_reg_pp0_iter2),
        .ap_enable_reg_pp0_iter3(ap_enable_reg_pp0_iter3),
        .clock(clock),
        .dbl2scalc_1_empty_n(dbl2scalc_1_empty_n),
        .detect_1_full_n(detect_1_full_n),
        .p({Seuil_calc2_mac_mdEe_U22_n_30,Seuil_calc2_mac_mdEe_U22_n_31,Seuil_calc2_mac_mdEe_U22_n_32,Seuil_calc2_mac_mdEe_U22_n_33}),
        .p_0({Seuil_calc2_mac_mdEe_U22_n_34,Seuil_calc2_mac_mdEe_U22_n_35,Seuil_calc2_mac_mdEe_U22_n_36,Seuil_calc2_mac_mdEe_U22_n_37}),
        .\p_0108_0_reg_221_reg[13] ({Seuil_calc2_mac_mdEe_U22_n_53,Seuil_calc2_mac_mdEe_U22_n_54,Seuil_calc2_mac_mdEe_U22_n_55,Seuil_calc2_mac_mdEe_U22_n_56}),
        .\p_0108_0_reg_221_reg[17] ({Seuil_calc2_mac_mdEe_U22_n_57,Seuil_calc2_mac_mdEe_U22_n_58,Seuil_calc2_mac_mdEe_U22_n_59,Seuil_calc2_mac_mdEe_U22_n_60}),
        .\p_0108_0_reg_221_reg[5] ({Seuil_calc2_mac_mdEe_U22_n_46,Seuil_calc2_mac_mdEe_U22_n_47,Seuil_calc2_mac_mdEe_U22_n_48}),
        .\p_0108_0_reg_221_reg[9] ({Seuil_calc2_mac_mdEe_U22_n_49,Seuil_calc2_mac_mdEe_U22_n_50,Seuil_calc2_mac_mdEe_U22_n_51,Seuil_calc2_mac_mdEe_U22_n_52}),
        .p_1({Seuil_calc2_mac_mdEe_U22_n_38,Seuil_calc2_mac_mdEe_U22_n_39,Seuil_calc2_mac_mdEe_U22_n_40,Seuil_calc2_mac_mdEe_U22_n_41}),
        .p_10(p_0343_0_fu_80),
        .p_2({Seuil_calc2_mac_mdEe_U22_n_42,Seuil_calc2_mac_mdEe_U22_n_43,Seuil_calc2_mac_mdEe_U22_n_44,Seuil_calc2_mac_mdEe_U22_n_45}),
        .p_3({Seuil_calc2_mac_mdEe_U22_n_61,Seuil_calc2_mac_mdEe_U22_n_62,Seuil_calc2_mac_mdEe_U22_n_63}),
        .p_4({ret_V_5_fu_242_p2_n_98,ret_V_5_fu_242_p2_n_99,ret_V_5_fu_242_p2_n_100,ret_V_5_fu_242_p2_n_101,ret_V_5_fu_242_p2_n_102,ret_V_5_fu_242_p2_n_103,ret_V_5_fu_242_p2_n_104,ret_V_5_fu_242_p2_n_105,ret_V_5_fu_242_p2_n_106,ret_V_5_fu_242_p2_n_107,ret_V_5_fu_242_p2_n_108,ret_V_5_fu_242_p2_n_109,ret_V_5_fu_242_p2_n_110,ret_V_5_fu_242_p2_n_111,ret_V_5_fu_242_p2_n_112,ret_V_5_fu_242_p2_n_113}),
        .p_5(ap_enable_reg_pp0_iter1_reg_n_8),
        .p_6(ap_enable_reg_pp0_iter0_reg_0),
        .p_7(ap_enable_reg_pp0_iter4_reg_n_8),
        .p_8(\ap_CS_fsm_reg[1]_0 ),
        .p_9(x0_V_fu_84),
        .\res_2_V_reg_897_reg[5] (\res_2_V_reg_897[16]_i_2_n_8 ),
        .\res_2_V_reg_897_reg[5]_0 (dout_valid_reg),
        .\res_2_V_reg_897_reg[5]_1 (\res_2_V_reg_897[16]_i_3_n_8 ),
        .\sum_V_reg_892_reg[21] (sum_V_reg_892_reg[21:3]));
  LUT2 #(
    .INIT(4'hE)) 
    \ap_CS_fsm[1]_i_1__5 
       (.I0(ap_CS_fsm_state1),
        .I1(\ap_CS_fsm_reg[1]_2 ),
        .O(\ap_CS_fsm_reg[0]_0 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(1'b0),
        .Q(ap_CS_fsm_state1),
        .S(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(1'b1),
        .Q(\ap_CS_fsm_reg[1]_0 ),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'hE)) 
    ap_enable_reg_pp0_iter0_i_1__0
       (.I0(ap_CS_fsm_state1),
        .I1(ap_enable_reg_pp0_iter0_reg_0),
        .O(ap_enable_reg_pp0_iter0_i_1__0_n_8));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(clock),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1__0_n_8),
        .Q(ap_enable_reg_pp0_iter0_reg_0),
        .R(reset));
  LUT6 #(
    .INIT(64'hBAFFBABAAAAAAAAA)) 
    ap_enable_reg_pp0_iter1_i_1__0
       (.I0(reset),
        .I1(dbl2scalc_1_empty_n),
        .I2(ap_enable_reg_pp0_iter0_reg_0),
        .I3(detect_1_full_n),
        .I4(ap_enable_reg_pp0_iter4_reg_n_8),
        .I5(ap_CS_fsm_state1),
        .O(ap_enable_reg_pp0_iter4));
  LUT4 #(
    .INIT(16'hB0BB)) 
    ap_enable_reg_pp0_iter1_i_2
       (.I0(dbl2scalc_1_empty_n),
        .I1(ap_enable_reg_pp0_iter0_reg_0),
        .I2(detect_1_full_n),
        .I3(ap_enable_reg_pp0_iter4_reg_n_8),
        .O(dout_valid_reg));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(clock),
        .CE(dout_valid_reg),
        .D(ap_enable_reg_pp0_iter0_reg_0),
        .Q(ap_enable_reg_pp0_iter1_reg_n_8),
        .R(ap_enable_reg_pp0_iter4));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(clock),
        .CE(dout_valid_reg),
        .D(ap_enable_reg_pp0_iter1_reg_n_8),
        .Q(ap_enable_reg_pp0_iter2),
        .R(ap_enable_reg_pp0_iter4));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter3_reg
       (.C(clock),
        .CE(dout_valid_reg),
        .D(ap_enable_reg_pp0_iter2),
        .Q(ap_enable_reg_pp0_iter3),
        .R(ap_enable_reg_pp0_iter4));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter4_reg
       (.C(clock),
        .CE(dout_valid_reg),
        .D(ap_enable_reg_pp0_iter3),
        .Q(ap_enable_reg_pp0_iter4_reg_n_8),
        .R(ap_enable_reg_pp0_iter4));
  FDRE \buffer_14_V_fu_140_reg[0] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_15_V_fu_144[0]),
        .Q(buffer_14_V_fu_140[0]),
        .R(1'b0));
  FDRE \buffer_14_V_fu_140_reg[1] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_15_V_fu_144[1]),
        .Q(buffer_14_V_fu_140[1]),
        .R(1'b0));
  FDRE \buffer_14_V_fu_140_reg[2] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_15_V_fu_144[2]),
        .Q(buffer_14_V_fu_140[2]),
        .R(1'b0));
  FDRE \buffer_14_V_fu_140_reg[3] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_15_V_fu_144[3]),
        .Q(buffer_14_V_fu_140[3]),
        .R(1'b0));
  FDRE \buffer_14_V_fu_140_reg[4] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_15_V_fu_144[4]),
        .Q(buffer_14_V_fu_140[4]),
        .R(1'b0));
  FDRE \buffer_14_V_fu_140_reg[5] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_15_V_fu_144[5]),
        .Q(buffer_14_V_fu_140[5]),
        .R(1'b0));
  FDRE \buffer_14_V_fu_140_reg[6] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_15_V_fu_144[6]),
        .Q(buffer_14_V_fu_140[6]),
        .R(1'b0));
  FDRE \buffer_14_V_fu_140_reg[7] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_15_V_fu_144[7]),
        .Q(buffer_14_V_fu_140[7]),
        .R(1'b0));
  FDRE \buffer_15_V_fu_144_reg[0]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_16_V_fu_148_reg[0]_srl2_n_8 ),
        .Q(buffer_15_V_fu_144[0]),
        .R(1'b0));
  FDRE \buffer_15_V_fu_144_reg[1]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_16_V_fu_148_reg[1]_srl2_n_8 ),
        .Q(buffer_15_V_fu_144[1]),
        .R(1'b0));
  FDRE \buffer_15_V_fu_144_reg[2]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_16_V_fu_148_reg[2]_srl2_n_8 ),
        .Q(buffer_15_V_fu_144[2]),
        .R(1'b0));
  FDRE \buffer_15_V_fu_144_reg[3]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_16_V_fu_148_reg[3]_srl2_n_8 ),
        .Q(buffer_15_V_fu_144[3]),
        .R(1'b0));
  FDRE \buffer_15_V_fu_144_reg[4]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_16_V_fu_148_reg[4]_srl2_n_8 ),
        .Q(buffer_15_V_fu_144[4]),
        .R(1'b0));
  FDRE \buffer_15_V_fu_144_reg[5]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_16_V_fu_148_reg[5]_srl2_n_8 ),
        .Q(buffer_15_V_fu_144[5]),
        .R(1'b0));
  FDRE \buffer_15_V_fu_144_reg[6]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_16_V_fu_148_reg[6]_srl2_n_8 ),
        .Q(buffer_15_V_fu_144[6]),
        .R(1'b0));
  FDRE \buffer_15_V_fu_144_reg[7]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_16_V_fu_148_reg[7]_srl2_n_8 ),
        .Q(buffer_15_V_fu_144[7]),
        .R(1'b0));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg[0]_srl2 " *) 
  SRL16E \buffer_16_V_fu_148_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(buffer_18_V_fu_156[0]),
        .Q(\buffer_16_V_fu_148_reg[0]_srl2_n_8 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg[1]_srl2 " *) 
  SRL16E \buffer_16_V_fu_148_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(buffer_18_V_fu_156[1]),
        .Q(\buffer_16_V_fu_148_reg[1]_srl2_n_8 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg[2]_srl2 " *) 
  SRL16E \buffer_16_V_fu_148_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(buffer_18_V_fu_156[2]),
        .Q(\buffer_16_V_fu_148_reg[2]_srl2_n_8 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg[3]_srl2 " *) 
  SRL16E \buffer_16_V_fu_148_reg[3]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(buffer_18_V_fu_156[3]),
        .Q(\buffer_16_V_fu_148_reg[3]_srl2_n_8 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg[4]_srl2 " *) 
  SRL16E \buffer_16_V_fu_148_reg[4]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(buffer_18_V_fu_156[4]),
        .Q(\buffer_16_V_fu_148_reg[4]_srl2_n_8 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg[5]_srl2 " *) 
  SRL16E \buffer_16_V_fu_148_reg[5]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(buffer_18_V_fu_156[5]),
        .Q(\buffer_16_V_fu_148_reg[5]_srl2_n_8 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg[6]_srl2 " *) 
  SRL16E \buffer_16_V_fu_148_reg[6]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(buffer_18_V_fu_156[6]),
        .Q(\buffer_16_V_fu_148_reg[6]_srl2_n_8 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg[7]_srl2 " *) 
  SRL16E \buffer_16_V_fu_148_reg[7]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(buffer_18_V_fu_156[7]),
        .Q(\buffer_16_V_fu_148_reg[7]_srl2_n_8 ));
  LUT5 #(
    .INIT(32'hA2A200A2)) 
    \buffer_18_V_fu_156[7]_i_1 
       (.I0(ap_enable_reg_pp0_iter2),
        .I1(ap_enable_reg_pp0_iter4_reg_n_8),
        .I2(detect_1_full_n),
        .I3(ap_enable_reg_pp0_iter0_reg_0),
        .I4(dbl2scalc_1_empty_n),
        .O(buffer_10_V_fu_1240));
  FDRE \buffer_18_V_fu_156_reg[0] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_19_V_fu_160[0]),
        .Q(buffer_18_V_fu_156[0]),
        .R(1'b0));
  FDRE \buffer_18_V_fu_156_reg[1] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_19_V_fu_160[1]),
        .Q(buffer_18_V_fu_156[1]),
        .R(1'b0));
  FDRE \buffer_18_V_fu_156_reg[2] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_19_V_fu_160[2]),
        .Q(buffer_18_V_fu_156[2]),
        .R(1'b0));
  FDRE \buffer_18_V_fu_156_reg[3] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_19_V_fu_160[3]),
        .Q(buffer_18_V_fu_156[3]),
        .R(1'b0));
  FDRE \buffer_18_V_fu_156_reg[4] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_19_V_fu_160[4]),
        .Q(buffer_18_V_fu_156[4]),
        .R(1'b0));
  FDRE \buffer_18_V_fu_156_reg[5] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_19_V_fu_160[5]),
        .Q(buffer_18_V_fu_156[5]),
        .R(1'b0));
  FDRE \buffer_18_V_fu_156_reg[6] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_19_V_fu_160[6]),
        .Q(buffer_18_V_fu_156[6]),
        .R(1'b0));
  FDRE \buffer_18_V_fu_156_reg[7] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_19_V_fu_160[7]),
        .Q(buffer_18_V_fu_156[7]),
        .R(1'b0));
  FDRE \buffer_19_V_fu_160_reg[0]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_20_V_fu_164_reg[0]_srl11_n_8 ),
        .Q(buffer_19_V_fu_160[0]),
        .R(1'b0));
  FDRE \buffer_19_V_fu_160_reg[1]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_20_V_fu_164_reg[1]_srl11_n_8 ),
        .Q(buffer_19_V_fu_160[1]),
        .R(1'b0));
  FDRE \buffer_19_V_fu_160_reg[2]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_20_V_fu_164_reg[2]_srl11_n_8 ),
        .Q(buffer_19_V_fu_160[2]),
        .R(1'b0));
  FDRE \buffer_19_V_fu_160_reg[3]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_20_V_fu_164_reg[3]_srl11_n_8 ),
        .Q(buffer_19_V_fu_160[3]),
        .R(1'b0));
  FDRE \buffer_19_V_fu_160_reg[4]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_20_V_fu_164_reg[4]_srl11_n_8 ),
        .Q(buffer_19_V_fu_160[4]),
        .R(1'b0));
  FDRE \buffer_19_V_fu_160_reg[5]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_20_V_fu_164_reg[5]_srl11_n_8 ),
        .Q(buffer_19_V_fu_160[5]),
        .R(1'b0));
  FDRE \buffer_19_V_fu_160_reg[6]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_20_V_fu_164_reg[6]_srl11_n_8 ),
        .Q(buffer_19_V_fu_160[6]),
        .R(1'b0));
  FDRE \buffer_19_V_fu_160_reg[7]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_20_V_fu_164_reg[7]_srl11_n_8 ),
        .Q(buffer_19_V_fu_160[7]),
        .R(1'b0));
  FDRE \buffer_1_V_fu_88_reg[0]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_2_V_fu_92_reg[0]_srl2_n_8 ),
        .Q(buffer_1_V_fu_88[0]),
        .R(1'b0));
  FDRE \buffer_1_V_fu_88_reg[1]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_2_V_fu_92_reg[1]_srl2_n_8 ),
        .Q(buffer_1_V_fu_88[1]),
        .R(1'b0));
  FDRE \buffer_1_V_fu_88_reg[2]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_2_V_fu_92_reg[2]_srl2_n_8 ),
        .Q(buffer_1_V_fu_88[2]),
        .R(1'b0));
  FDRE \buffer_1_V_fu_88_reg[3]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_2_V_fu_92_reg[3]_srl2_n_8 ),
        .Q(buffer_1_V_fu_88[3]),
        .R(1'b0));
  FDRE \buffer_1_V_fu_88_reg[4]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_2_V_fu_92_reg[4]_srl2_n_8 ),
        .Q(buffer_1_V_fu_88[4]),
        .R(1'b0));
  FDRE \buffer_1_V_fu_88_reg[5]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_2_V_fu_92_reg[5]_srl2_n_8 ),
        .Q(buffer_1_V_fu_88[5]),
        .R(1'b0));
  FDRE \buffer_1_V_fu_88_reg[6]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_2_V_fu_92_reg[6]_srl2_n_8 ),
        .Q(buffer_1_V_fu_88[6]),
        .R(1'b0));
  FDRE \buffer_1_V_fu_88_reg[7]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_2_V_fu_92_reg[7]_srl2_n_8 ),
        .Q(buffer_1_V_fu_88[7]),
        .R(1'b0));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg[0]_srl11 " *) 
  SRL16E \buffer_20_V_fu_164_reg[0]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(val_V_reg_876_pp0_iter1_reg[0]),
        .Q(\buffer_20_V_fu_164_reg[0]_srl11_n_8 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg[1]_srl11 " *) 
  SRL16E \buffer_20_V_fu_164_reg[1]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(val_V_reg_876_pp0_iter1_reg[1]),
        .Q(\buffer_20_V_fu_164_reg[1]_srl11_n_8 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg[2]_srl11 " *) 
  SRL16E \buffer_20_V_fu_164_reg[2]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(val_V_reg_876_pp0_iter1_reg[2]),
        .Q(\buffer_20_V_fu_164_reg[2]_srl11_n_8 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg[3]_srl11 " *) 
  SRL16E \buffer_20_V_fu_164_reg[3]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(val_V_reg_876_pp0_iter1_reg[3]),
        .Q(\buffer_20_V_fu_164_reg[3]_srl11_n_8 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg[4]_srl11 " *) 
  SRL16E \buffer_20_V_fu_164_reg[4]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(val_V_reg_876_pp0_iter1_reg[4]),
        .Q(\buffer_20_V_fu_164_reg[4]_srl11_n_8 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg[5]_srl11 " *) 
  SRL16E \buffer_20_V_fu_164_reg[5]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(val_V_reg_876_pp0_iter1_reg[5]),
        .Q(\buffer_20_V_fu_164_reg[5]_srl11_n_8 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg[6]_srl11 " *) 
  SRL16E \buffer_20_V_fu_164_reg[6]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(val_V_reg_876_pp0_iter1_reg[6]),
        .Q(\buffer_20_V_fu_164_reg[6]_srl11_n_8 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg[7]_srl11 " *) 
  SRL16E \buffer_20_V_fu_164_reg[7]_srl11 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(val_V_reg_876_pp0_iter1_reg[7]),
        .Q(\buffer_20_V_fu_164_reg[7]_srl11_n_8 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg[0]_srl2 " *) 
  SRL16E \buffer_2_V_fu_92_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(buffer_4_V_fu_100[0]),
        .Q(\buffer_2_V_fu_92_reg[0]_srl2_n_8 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg[1]_srl2 " *) 
  SRL16E \buffer_2_V_fu_92_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(buffer_4_V_fu_100[1]),
        .Q(\buffer_2_V_fu_92_reg[1]_srl2_n_8 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg[2]_srl2 " *) 
  SRL16E \buffer_2_V_fu_92_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(buffer_4_V_fu_100[2]),
        .Q(\buffer_2_V_fu_92_reg[2]_srl2_n_8 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg[3]_srl2 " *) 
  SRL16E \buffer_2_V_fu_92_reg[3]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(buffer_4_V_fu_100[3]),
        .Q(\buffer_2_V_fu_92_reg[3]_srl2_n_8 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg[4]_srl2 " *) 
  SRL16E \buffer_2_V_fu_92_reg[4]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(buffer_4_V_fu_100[4]),
        .Q(\buffer_2_V_fu_92_reg[4]_srl2_n_8 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg[5]_srl2 " *) 
  SRL16E \buffer_2_V_fu_92_reg[5]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(buffer_4_V_fu_100[5]),
        .Q(\buffer_2_V_fu_92_reg[5]_srl2_n_8 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg[6]_srl2 " *) 
  SRL16E \buffer_2_V_fu_92_reg[6]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(buffer_4_V_fu_100[6]),
        .Q(\buffer_2_V_fu_92_reg[6]_srl2_n_8 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg[7]_srl2 " *) 
  SRL16E \buffer_2_V_fu_92_reg[7]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(buffer_4_V_fu_100[7]),
        .Q(\buffer_2_V_fu_92_reg[7]_srl2_n_8 ));
  FDRE \buffer_4_V_fu_100_reg[0] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_5_V_fu_104[0]),
        .Q(buffer_4_V_fu_100[0]),
        .R(1'b0));
  FDRE \buffer_4_V_fu_100_reg[1] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_5_V_fu_104[1]),
        .Q(buffer_4_V_fu_100[1]),
        .R(1'b0));
  FDRE \buffer_4_V_fu_100_reg[2] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_5_V_fu_104[2]),
        .Q(buffer_4_V_fu_100[2]),
        .R(1'b0));
  FDRE \buffer_4_V_fu_100_reg[3] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_5_V_fu_104[3]),
        .Q(buffer_4_V_fu_100[3]),
        .R(1'b0));
  FDRE \buffer_4_V_fu_100_reg[4] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_5_V_fu_104[4]),
        .Q(buffer_4_V_fu_100[4]),
        .R(1'b0));
  FDRE \buffer_4_V_fu_100_reg[5] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_5_V_fu_104[5]),
        .Q(buffer_4_V_fu_100[5]),
        .R(1'b0));
  FDRE \buffer_4_V_fu_100_reg[6] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_5_V_fu_104[6]),
        .Q(buffer_4_V_fu_100[6]),
        .R(1'b0));
  FDRE \buffer_4_V_fu_100_reg[7] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_5_V_fu_104[7]),
        .Q(buffer_4_V_fu_100[7]),
        .R(1'b0));
  FDRE \buffer_5_V_fu_104_reg[0]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_6_V_fu_108_reg[0]_srl8_n_8 ),
        .Q(buffer_5_V_fu_104[0]),
        .R(1'b0));
  FDRE \buffer_5_V_fu_104_reg[1]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_6_V_fu_108_reg[1]_srl8_n_8 ),
        .Q(buffer_5_V_fu_104[1]),
        .R(1'b0));
  FDRE \buffer_5_V_fu_104_reg[2]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_6_V_fu_108_reg[2]_srl8_n_8 ),
        .Q(buffer_5_V_fu_104[2]),
        .R(1'b0));
  FDRE \buffer_5_V_fu_104_reg[3]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_6_V_fu_108_reg[3]_srl8_n_8 ),
        .Q(buffer_5_V_fu_104[3]),
        .R(1'b0));
  FDRE \buffer_5_V_fu_104_reg[4]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_6_V_fu_108_reg[4]_srl8_n_8 ),
        .Q(buffer_5_V_fu_104[4]),
        .R(1'b0));
  FDRE \buffer_5_V_fu_104_reg[5]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_6_V_fu_108_reg[5]_srl8_n_8 ),
        .Q(buffer_5_V_fu_104[5]),
        .R(1'b0));
  FDRE \buffer_5_V_fu_104_reg[6]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_6_V_fu_108_reg[6]_srl8_n_8 ),
        .Q(buffer_5_V_fu_104[6]),
        .R(1'b0));
  FDRE \buffer_5_V_fu_104_reg[7]__0 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(\buffer_6_V_fu_108_reg[7]_srl8_n_8 ),
        .Q(buffer_5_V_fu_104[7]),
        .R(1'b0));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg[0]_srl8 " *) 
  SRL16E \buffer_6_V_fu_108_reg[0]_srl8 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(buffer_14_V_fu_140[0]),
        .Q(\buffer_6_V_fu_108_reg[0]_srl8_n_8 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg[1]_srl8 " *) 
  SRL16E \buffer_6_V_fu_108_reg[1]_srl8 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(buffer_14_V_fu_140[1]),
        .Q(\buffer_6_V_fu_108_reg[1]_srl8_n_8 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg[2]_srl8 " *) 
  SRL16E \buffer_6_V_fu_108_reg[2]_srl8 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(buffer_14_V_fu_140[2]),
        .Q(\buffer_6_V_fu_108_reg[2]_srl8_n_8 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg[3]_srl8 " *) 
  SRL16E \buffer_6_V_fu_108_reg[3]_srl8 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(buffer_14_V_fu_140[3]),
        .Q(\buffer_6_V_fu_108_reg[3]_srl8_n_8 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg[4]_srl8 " *) 
  SRL16E \buffer_6_V_fu_108_reg[4]_srl8 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(buffer_14_V_fu_140[4]),
        .Q(\buffer_6_V_fu_108_reg[4]_srl8_n_8 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg[5]_srl8 " *) 
  SRL16E \buffer_6_V_fu_108_reg[5]_srl8 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(buffer_14_V_fu_140[5]),
        .Q(\buffer_6_V_fu_108_reg[5]_srl8_n_8 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg[6]_srl8 " *) 
  SRL16E \buffer_6_V_fu_108_reg[6]_srl8 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(buffer_14_V_fu_140[6]),
        .Q(\buffer_6_V_fu_108_reg[6]_srl8_n_8 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg[7]_srl8 " *) 
  SRL16E \buffer_6_V_fu_108_reg[7]_srl8 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(buffer_10_V_fu_1240),
        .CLK(clock),
        .D(buffer_14_V_fu_140[7]),
        .Q(\buffer_6_V_fu_108_reg[7]_srl8_n_8 ));
  CARRY4 detect_din0_carry
       (.CI(1'b0),
        .CO({detect_din0_carry_n_8,detect_din0_carry_n_9,detect_din0_carry_n_10,detect_din0_carry_n_11}),
        .CYINIT(1'b0),
        .DI({detect_din0_carry_i_1_n_8,detect_din0_carry_i_2_n_8,detect_din0_carry_i_3_n_8,detect_din0_carry_i_4_n_8}),
        .O(NLW_detect_din0_carry_O_UNCONNECTED[3:0]),
        .S({detect_din0_carry_i_5_n_8,detect_din0_carry_i_6_n_8,detect_din0_carry_i_7_n_8,detect_din0_carry_i_8_n_8}));
  CARRY4 detect_din0_carry__0
       (.CI(detect_din0_carry_n_8),
        .CO({detect_din0_carry__0_n_8,detect_din0_carry__0_n_9,detect_din0_carry__0_n_10,detect_din0_carry__0_n_11}),
        .CYINIT(1'b0),
        .DI({detect_din0_carry__0_i_1_n_8,detect_din0_carry__0_i_2_n_8,detect_din0_carry__0_i_3_n_8,detect_din0_carry__0_i_4_n_8}),
        .O(NLW_detect_din0_carry__0_O_UNCONNECTED[3:0]),
        .S({detect_din0_carry__0_i_5_n_8,detect_din0_carry__0_i_6_n_8,detect_din0_carry__0_i_7_n_8,detect_din0_carry__0_i_8_n_8}));
  LUT4 #(
    .INIT(16'h2F02)) 
    detect_din0_carry__0_i_1
       (.I0(mul_ln895_reg_907_reg_n_99),
        .I1(ret_V_6_reg_902_reg_n_99),
        .I2(ret_V_6_reg_902_reg_n_98),
        .I3(mul_ln895_reg_907_reg_n_98),
        .O(detect_din0_carry__0_i_1_n_8));
  LUT4 #(
    .INIT(16'h2F02)) 
    detect_din0_carry__0_i_2
       (.I0(mul_ln895_reg_907_reg_n_101),
        .I1(ret_V_6_reg_902_reg_n_101),
        .I2(ret_V_6_reg_902_reg_n_100),
        .I3(mul_ln895_reg_907_reg_n_100),
        .O(detect_din0_carry__0_i_2_n_8));
  LUT4 #(
    .INIT(16'h2F02)) 
    detect_din0_carry__0_i_3
       (.I0(mul_ln895_reg_907_reg_n_103),
        .I1(ret_V_6_reg_902_reg_n_103),
        .I2(ret_V_6_reg_902_reg_n_102),
        .I3(mul_ln895_reg_907_reg_n_102),
        .O(detect_din0_carry__0_i_3_n_8));
  LUT4 #(
    .INIT(16'h2F02)) 
    detect_din0_carry__0_i_4
       (.I0(mul_ln895_reg_907_reg_n_105),
        .I1(ret_V_6_reg_902_reg_n_105),
        .I2(ret_V_6_reg_902_reg_n_104),
        .I3(mul_ln895_reg_907_reg_n_104),
        .O(detect_din0_carry__0_i_4_n_8));
  LUT4 #(
    .INIT(16'h9009)) 
    detect_din0_carry__0_i_5
       (.I0(mul_ln895_reg_907_reg_n_99),
        .I1(ret_V_6_reg_902_reg_n_99),
        .I2(mul_ln895_reg_907_reg_n_98),
        .I3(ret_V_6_reg_902_reg_n_98),
        .O(detect_din0_carry__0_i_5_n_8));
  LUT4 #(
    .INIT(16'h9009)) 
    detect_din0_carry__0_i_6
       (.I0(mul_ln895_reg_907_reg_n_101),
        .I1(ret_V_6_reg_902_reg_n_101),
        .I2(mul_ln895_reg_907_reg_n_100),
        .I3(ret_V_6_reg_902_reg_n_100),
        .O(detect_din0_carry__0_i_6_n_8));
  LUT4 #(
    .INIT(16'h9009)) 
    detect_din0_carry__0_i_7
       (.I0(mul_ln895_reg_907_reg_n_103),
        .I1(ret_V_6_reg_902_reg_n_103),
        .I2(mul_ln895_reg_907_reg_n_102),
        .I3(ret_V_6_reg_902_reg_n_102),
        .O(detect_din0_carry__0_i_7_n_8));
  LUT4 #(
    .INIT(16'h9009)) 
    detect_din0_carry__0_i_8
       (.I0(mul_ln895_reg_907_reg_n_105),
        .I1(ret_V_6_reg_902_reg_n_105),
        .I2(mul_ln895_reg_907_reg_n_104),
        .I3(ret_V_6_reg_902_reg_n_104),
        .O(detect_din0_carry__0_i_8_n_8));
  CARRY4 detect_din0_carry__1
       (.CI(detect_din0_carry__0_n_8),
        .CO({NLW_detect_din0_carry__1_CO_UNCONNECTED[3],p_0_in,detect_din0_carry__1_n_10,detect_din0_carry__1_n_11}),
        .CYINIT(1'b0),
        .DI({1'b0,detect_din0_carry__1_i_1_n_8,detect_din0_carry__1_i_2_n_8,detect_din0_carry__1_i_3_n_8}),
        .O({in,NLW_detect_din0_carry__1_O_UNCONNECTED[2:0]}),
        .S({1'b1,detect_din0_carry__1_i_4_n_8,detect_din0_carry__1_i_5_n_8,detect_din0_carry__1_i_6_n_8}));
  LUT4 #(
    .INIT(16'h2F02)) 
    detect_din0_carry__1_i_1
       (.I0(mul_ln895_reg_907_reg_n_93),
        .I1(ret_V_6_reg_902_reg_n_93),
        .I2(ret_V_6_reg_902_reg_n_92),
        .I3(mul_ln895_reg_907_reg_n_92),
        .O(detect_din0_carry__1_i_1_n_8));
  LUT4 #(
    .INIT(16'h2F02)) 
    detect_din0_carry__1_i_2
       (.I0(mul_ln895_reg_907_reg_n_95),
        .I1(ret_V_6_reg_902_reg_n_95),
        .I2(ret_V_6_reg_902_reg_n_94),
        .I3(mul_ln895_reg_907_reg_n_94),
        .O(detect_din0_carry__1_i_2_n_8));
  LUT4 #(
    .INIT(16'h2F02)) 
    detect_din0_carry__1_i_3
       (.I0(mul_ln895_reg_907_reg_n_97),
        .I1(ret_V_6_reg_902_reg_n_97),
        .I2(ret_V_6_reg_902_reg_n_96),
        .I3(mul_ln895_reg_907_reg_n_96),
        .O(detect_din0_carry__1_i_3_n_8));
  LUT4 #(
    .INIT(16'h9009)) 
    detect_din0_carry__1_i_4
       (.I0(mul_ln895_reg_907_reg_n_93),
        .I1(ret_V_6_reg_902_reg_n_93),
        .I2(mul_ln895_reg_907_reg_n_92),
        .I3(ret_V_6_reg_902_reg_n_92),
        .O(detect_din0_carry__1_i_4_n_8));
  LUT4 #(
    .INIT(16'h9009)) 
    detect_din0_carry__1_i_5
       (.I0(mul_ln895_reg_907_reg_n_95),
        .I1(ret_V_6_reg_902_reg_n_95),
        .I2(mul_ln895_reg_907_reg_n_94),
        .I3(ret_V_6_reg_902_reg_n_94),
        .O(detect_din0_carry__1_i_5_n_8));
  LUT4 #(
    .INIT(16'h9009)) 
    detect_din0_carry__1_i_6
       (.I0(mul_ln895_reg_907_reg_n_97),
        .I1(ret_V_6_reg_902_reg_n_97),
        .I2(mul_ln895_reg_907_reg_n_96),
        .I3(ret_V_6_reg_902_reg_n_96),
        .O(detect_din0_carry__1_i_6_n_8));
  LUT4 #(
    .INIT(16'h2F02)) 
    detect_din0_carry_i_1
       (.I0(mul_ln895_reg_907_reg_n_107),
        .I1(ret_V_6_reg_902_reg_n_107),
        .I2(ret_V_6_reg_902_reg_n_106),
        .I3(mul_ln895_reg_907_reg_n_106),
        .O(detect_din0_carry_i_1_n_8));
  LUT4 #(
    .INIT(16'h2F02)) 
    detect_din0_carry_i_2
       (.I0(mul_ln895_reg_907_reg_n_109),
        .I1(ret_V_6_reg_902_reg_n_109),
        .I2(ret_V_6_reg_902_reg_n_108),
        .I3(mul_ln895_reg_907_reg_n_108),
        .O(detect_din0_carry_i_2_n_8));
  LUT4 #(
    .INIT(16'h2F02)) 
    detect_din0_carry_i_3
       (.I0(mul_ln895_reg_907_reg_n_111),
        .I1(ret_V_6_reg_902_reg_n_111),
        .I2(ret_V_6_reg_902_reg_n_110),
        .I3(mul_ln895_reg_907_reg_n_110),
        .O(detect_din0_carry_i_3_n_8));
  LUT4 #(
    .INIT(16'h2F02)) 
    detect_din0_carry_i_4
       (.I0(mul_ln895_reg_907_reg_n_113),
        .I1(ret_V_6_reg_902_reg_n_113),
        .I2(ret_V_6_reg_902_reg_n_112),
        .I3(mul_ln895_reg_907_reg_n_112),
        .O(detect_din0_carry_i_4_n_8));
  LUT4 #(
    .INIT(16'h9009)) 
    detect_din0_carry_i_5
       (.I0(mul_ln895_reg_907_reg_n_107),
        .I1(ret_V_6_reg_902_reg_n_107),
        .I2(mul_ln895_reg_907_reg_n_106),
        .I3(ret_V_6_reg_902_reg_n_106),
        .O(detect_din0_carry_i_5_n_8));
  LUT4 #(
    .INIT(16'h9009)) 
    detect_din0_carry_i_6
       (.I0(mul_ln895_reg_907_reg_n_109),
        .I1(ret_V_6_reg_902_reg_n_109),
        .I2(mul_ln895_reg_907_reg_n_108),
        .I3(ret_V_6_reg_902_reg_n_108),
        .O(detect_din0_carry_i_6_n_8));
  LUT4 #(
    .INIT(16'h9009)) 
    detect_din0_carry_i_7
       (.I0(mul_ln895_reg_907_reg_n_111),
        .I1(ret_V_6_reg_902_reg_n_111),
        .I2(mul_ln895_reg_907_reg_n_110),
        .I3(ret_V_6_reg_902_reg_n_110),
        .O(detect_din0_carry_i_7_n_8));
  LUT4 #(
    .INIT(16'h9009)) 
    detect_din0_carry_i_8
       (.I0(mul_ln895_reg_907_reg_n_113),
        .I1(ret_V_6_reg_902_reg_n_113),
        .I2(mul_ln895_reg_907_reg_n_112),
        .I3(ret_V_6_reg_902_reg_n_112),
        .O(detect_din0_carry_i_8_n_8));
  LUT6 #(
    .INIT(64'hA222A2A222222222)) 
    \dout_buf[7]_i_1 
       (.I0(\dout_buf_reg[7] ),
        .I1(dbl2scalc_1_empty_n),
        .I2(ap_enable_reg_pp0_iter0_reg_0),
        .I3(detect_1_full_n),
        .I4(ap_enable_reg_pp0_iter4_reg_n_8),
        .I5(\ap_CS_fsm_reg[1]_0 ),
        .O(pop));
  LUT6 #(
    .INIT(64'hFFFFFFFF5DFF0000)) 
    dout_valid_i_1
       (.I0(\ap_CS_fsm_reg[1]_0 ),
        .I1(ap_enable_reg_pp0_iter4_reg_n_8),
        .I2(detect_1_full_n),
        .I3(ap_enable_reg_pp0_iter0_reg_0),
        .I4(dbl2scalc_1_empty_n),
        .I5(\dout_buf_reg[7] ),
        .O(\ap_CS_fsm_reg[1]_1 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    empty_n_i_1__0
       (.I0(pop),
        .I1(dbl2scalc_1_full_n),
        .I2(dbl2tsep_1_full_n),
        .I3(mod2dbl_1_empty_n),
        .O(full_n_reg));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mul_ln895_reg_907_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\res_2_V_reg_897_reg_n_8_[16] ,\res_2_V_reg_897_reg_n_8_[15] ,\res_2_V_reg_897_reg_n_8_[14] ,\res_2_V_reg_897_reg_n_8_[13] ,\res_2_V_reg_897_reg_n_8_[12] ,\res_2_V_reg_897_reg_n_8_[11] ,\res_2_V_reg_897_reg_n_8_[10] ,\res_2_V_reg_897_reg_n_8_[9] ,\res_2_V_reg_897_reg_n_8_[8] ,\res_2_V_reg_897_reg_n_8_[7] ,\res_2_V_reg_897_reg_n_8_[6] ,\res_2_V_reg_897_reg_n_8_[5] ,\res_2_V_reg_897_reg_n_8_[4] ,\res_2_V_reg_897_reg_n_8_[3] ,\res_2_V_reg_897_reg_n_8_[2] ,\res_2_V_reg_897_reg_n_8_[1] ,\res_2_V_reg_897_reg_n_8_[0] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_ln895_reg_907_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_ln895_reg_907_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_ln895_reg_907_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_ln895_reg_907_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(dout_valid_reg),
        .CLK(clock),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_ln895_reg_907_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_ln895_reg_907_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_mul_ln895_reg_907_reg_P_UNCONNECTED[47:22],mul_ln895_reg_907_reg_n_92,mul_ln895_reg_907_reg_n_93,mul_ln895_reg_907_reg_n_94,mul_ln895_reg_907_reg_n_95,mul_ln895_reg_907_reg_n_96,mul_ln895_reg_907_reg_n_97,mul_ln895_reg_907_reg_n_98,mul_ln895_reg_907_reg_n_99,mul_ln895_reg_907_reg_n_100,mul_ln895_reg_907_reg_n_101,mul_ln895_reg_907_reg_n_102,mul_ln895_reg_907_reg_n_103,mul_ln895_reg_907_reg_n_104,mul_ln895_reg_907_reg_n_105,mul_ln895_reg_907_reg_n_106,mul_ln895_reg_907_reg_n_107,mul_ln895_reg_907_reg_n_108,mul_ln895_reg_907_reg_n_109,mul_ln895_reg_907_reg_n_110,mul_ln895_reg_907_reg_n_111,mul_ln895_reg_907_reg_n_112,mul_ln895_reg_907_reg_n_113}),
        .PATTERNBDETECT(NLW_mul_ln895_reg_907_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_ln895_reg_907_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mul_ln895_reg_907_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mul_ln895_reg_907_reg_UNDERFLOW_UNCONNECTED));
  LUT6 #(
    .INIT(64'h20AA2020AAAAAAAA)) 
    \p_0108_0_reg_221[21]_i_1 
       (.I0(ap_CS_fsm_state1),
        .I1(dbl2scalc_1_empty_n),
        .I2(ap_enable_reg_pp0_iter0_reg_0),
        .I3(detect_1_full_n),
        .I4(ap_enable_reg_pp0_iter4_reg_n_8),
        .I5(ap_enable_reg_pp0_iter3),
        .O(p_0108_0_reg_221_0));
  LUT5 #(
    .INIT(32'hA2A200A2)) 
    \p_0108_0_reg_221[21]_i_2 
       (.I0(ap_enable_reg_pp0_iter3),
        .I1(ap_enable_reg_pp0_iter4_reg_n_8),
        .I2(detect_1_full_n),
        .I3(ap_enable_reg_pp0_iter0_reg_0),
        .I4(dbl2scalc_1_empty_n),
        .O(p_0108_0_reg_2210));
  FDRE \p_0108_0_reg_221_reg[10] 
       (.C(clock),
        .CE(p_0108_0_reg_2210),
        .D(sum_V_reg_892_reg[10]),
        .Q(p_0108_0_reg_221[10]),
        .R(p_0108_0_reg_221_0));
  FDRE \p_0108_0_reg_221_reg[11] 
       (.C(clock),
        .CE(p_0108_0_reg_2210),
        .D(sum_V_reg_892_reg[11]),
        .Q(p_0108_0_reg_221[11]),
        .R(p_0108_0_reg_221_0));
  FDRE \p_0108_0_reg_221_reg[12] 
       (.C(clock),
        .CE(p_0108_0_reg_2210),
        .D(sum_V_reg_892_reg[12]),
        .Q(p_0108_0_reg_221[12]),
        .R(p_0108_0_reg_221_0));
  FDRE \p_0108_0_reg_221_reg[13] 
       (.C(clock),
        .CE(p_0108_0_reg_2210),
        .D(sum_V_reg_892_reg[13]),
        .Q(p_0108_0_reg_221[13]),
        .R(p_0108_0_reg_221_0));
  FDRE \p_0108_0_reg_221_reg[14] 
       (.C(clock),
        .CE(p_0108_0_reg_2210),
        .D(sum_V_reg_892_reg[14]),
        .Q(p_0108_0_reg_221[14]),
        .R(p_0108_0_reg_221_0));
  FDRE \p_0108_0_reg_221_reg[15] 
       (.C(clock),
        .CE(p_0108_0_reg_2210),
        .D(sum_V_reg_892_reg[15]),
        .Q(p_0108_0_reg_221[15]),
        .R(p_0108_0_reg_221_0));
  FDRE \p_0108_0_reg_221_reg[16] 
       (.C(clock),
        .CE(p_0108_0_reg_2210),
        .D(sum_V_reg_892_reg[16]),
        .Q(p_0108_0_reg_221[16]),
        .R(p_0108_0_reg_221_0));
  FDRE \p_0108_0_reg_221_reg[17] 
       (.C(clock),
        .CE(p_0108_0_reg_2210),
        .D(sum_V_reg_892_reg[17]),
        .Q(p_0108_0_reg_221[17]),
        .R(p_0108_0_reg_221_0));
  FDRE \p_0108_0_reg_221_reg[18] 
       (.C(clock),
        .CE(p_0108_0_reg_2210),
        .D(sum_V_reg_892_reg[18]),
        .Q(p_0108_0_reg_221[18]),
        .R(p_0108_0_reg_221_0));
  FDRE \p_0108_0_reg_221_reg[19] 
       (.C(clock),
        .CE(p_0108_0_reg_2210),
        .D(sum_V_reg_892_reg[19]),
        .Q(p_0108_0_reg_221[19]),
        .R(p_0108_0_reg_221_0));
  FDRE \p_0108_0_reg_221_reg[20] 
       (.C(clock),
        .CE(p_0108_0_reg_2210),
        .D(sum_V_reg_892_reg[20]),
        .Q(p_0108_0_reg_221[20]),
        .R(p_0108_0_reg_221_0));
  FDRE \p_0108_0_reg_221_reg[21] 
       (.C(clock),
        .CE(p_0108_0_reg_2210),
        .D(sum_V_reg_892_reg[21]),
        .Q(p_0108_0_reg_221[21]),
        .R(p_0108_0_reg_221_0));
  FDRE \p_0108_0_reg_221_reg[2] 
       (.C(clock),
        .CE(p_0108_0_reg_2210),
        .D(sum_V_reg_892_reg[2]),
        .Q(p_0108_0_reg_221[2]),
        .R(p_0108_0_reg_221_0));
  FDRE \p_0108_0_reg_221_reg[3] 
       (.C(clock),
        .CE(p_0108_0_reg_2210),
        .D(sum_V_reg_892_reg[3]),
        .Q(p_0108_0_reg_221[3]),
        .R(p_0108_0_reg_221_0));
  FDRE \p_0108_0_reg_221_reg[4] 
       (.C(clock),
        .CE(p_0108_0_reg_2210),
        .D(sum_V_reg_892_reg[4]),
        .Q(p_0108_0_reg_221[4]),
        .R(p_0108_0_reg_221_0));
  FDRE \p_0108_0_reg_221_reg[5] 
       (.C(clock),
        .CE(p_0108_0_reg_2210),
        .D(sum_V_reg_892_reg[5]),
        .Q(p_0108_0_reg_221[5]),
        .R(p_0108_0_reg_221_0));
  FDRE \p_0108_0_reg_221_reg[6] 
       (.C(clock),
        .CE(p_0108_0_reg_2210),
        .D(sum_V_reg_892_reg[6]),
        .Q(p_0108_0_reg_221[6]),
        .R(p_0108_0_reg_221_0));
  FDRE \p_0108_0_reg_221_reg[7] 
       (.C(clock),
        .CE(p_0108_0_reg_2210),
        .D(sum_V_reg_892_reg[7]),
        .Q(p_0108_0_reg_221[7]),
        .R(p_0108_0_reg_221_0));
  FDRE \p_0108_0_reg_221_reg[8] 
       (.C(clock),
        .CE(p_0108_0_reg_2210),
        .D(sum_V_reg_892_reg[8]),
        .Q(p_0108_0_reg_221[8]),
        .R(p_0108_0_reg_221_0));
  FDRE \p_0108_0_reg_221_reg[9] 
       (.C(clock),
        .CE(p_0108_0_reg_2210),
        .D(sum_V_reg_892_reg[9]),
        .Q(p_0108_0_reg_221[9]),
        .R(p_0108_0_reg_221_0));
  FDRE \p_0343_0_fu_80_reg[0] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(x0_V_fu_84[0]),
        .Q(p_0343_0_fu_80[0]),
        .R(1'b0));
  FDRE \p_0343_0_fu_80_reg[1] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(x0_V_fu_84[1]),
        .Q(p_0343_0_fu_80[1]),
        .R(1'b0));
  FDRE \p_0343_0_fu_80_reg[2] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(x0_V_fu_84[2]),
        .Q(p_0343_0_fu_80[2]),
        .R(1'b0));
  FDRE \p_0343_0_fu_80_reg[3] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(x0_V_fu_84[3]),
        .Q(p_0343_0_fu_80[3]),
        .R(1'b0));
  FDRE \p_0343_0_fu_80_reg[4] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(x0_V_fu_84[4]),
        .Q(p_0343_0_fu_80[4]),
        .R(1'b0));
  FDRE \p_0343_0_fu_80_reg[5] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(x0_V_fu_84[5]),
        .Q(p_0343_0_fu_80[5]),
        .R(1'b0));
  FDRE \p_0343_0_fu_80_reg[6] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(x0_V_fu_84[6]),
        .Q(p_0343_0_fu_80[6]),
        .R(1'b0));
  FDRE \p_0343_0_fu_80_reg[7] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(x0_V_fu_84[7]),
        .Q(p_0343_0_fu_80[7]),
        .R(1'b0));
  CARRY4 ps_V_fu_437_p2__0_carry
       (.CI(1'b0),
        .CO({ps_V_fu_437_p2__0_carry_n_8,ps_V_fu_437_p2__0_carry_n_9,ps_V_fu_437_p2__0_carry_n_10,ps_V_fu_437_p2__0_carry_n_11}),
        .CYINIT(1'b0),
        .DI({ps_V_fu_437_p2__0_carry_i_1_n_8,ps_V_fu_437_p2__0_carry_i_2_n_8,ps_V_fu_437_p2__0_carry_i_3_n_8,1'b0}),
        .O({ps_V_fu_437_p2__0_carry_n_12,ps_V_fu_437_p2__0_carry_n_13,ps_V_fu_437_p2__0_carry_n_14,ps_V_fu_437_p2__0_carry_n_15}),
        .S({ps_V_fu_437_p2__0_carry_i_4_n_8,ps_V_fu_437_p2__0_carry_i_5_n_8,ps_V_fu_437_p2__0_carry_i_6_n_8,ps_V_fu_437_p2__0_carry_i_7_n_8}));
  CARRY4 ps_V_fu_437_p2__0_carry__0
       (.CI(ps_V_fu_437_p2__0_carry_n_8),
        .CO({ps_V_fu_437_p2__0_carry__0_n_8,ps_V_fu_437_p2__0_carry__0_n_9,ps_V_fu_437_p2__0_carry__0_n_10,ps_V_fu_437_p2__0_carry__0_n_11}),
        .CYINIT(1'b0),
        .DI({ps_V_fu_437_p2__0_carry__0_i_1_n_8,ps_V_fu_437_p2__0_carry__0_i_2_n_8,ps_V_fu_437_p2__0_carry__0_i_3_n_8,ps_V_fu_437_p2__0_carry__0_i_4_n_8}),
        .O({ps_V_fu_437_p2__0_carry__0_n_12,ps_V_fu_437_p2__0_carry__0_n_13,ps_V_fu_437_p2__0_carry__0_n_14,ps_V_fu_437_p2__0_carry__0_n_15}),
        .S({ps_V_fu_437_p2__0_carry__0_i_5_n_8,ps_V_fu_437_p2__0_carry__0_i_6_n_8,ps_V_fu_437_p2__0_carry__0_i_7_n_8,ps_V_fu_437_p2__0_carry__0_i_8_n_8}));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    ps_V_fu_437_p2__0_carry__0_i_1
       (.I0(buffer_5_V_fu_104[6]),
        .I1(x0_V_fu_84[6]),
        .I2(buffer_15_V_fu_144[6]),
        .O(ps_V_fu_437_p2__0_carry__0_i_1_n_8));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    ps_V_fu_437_p2__0_carry__0_i_2
       (.I0(buffer_5_V_fu_104[5]),
        .I1(x0_V_fu_84[5]),
        .I2(buffer_15_V_fu_144[5]),
        .O(ps_V_fu_437_p2__0_carry__0_i_2_n_8));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    ps_V_fu_437_p2__0_carry__0_i_3
       (.I0(buffer_5_V_fu_104[4]),
        .I1(x0_V_fu_84[4]),
        .I2(buffer_15_V_fu_144[4]),
        .O(ps_V_fu_437_p2__0_carry__0_i_3_n_8));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    ps_V_fu_437_p2__0_carry__0_i_4
       (.I0(buffer_5_V_fu_104[3]),
        .I1(x0_V_fu_84[3]),
        .I2(buffer_15_V_fu_144[3]),
        .O(ps_V_fu_437_p2__0_carry__0_i_4_n_8));
  LUT4 #(
    .INIT(16'h6996)) 
    ps_V_fu_437_p2__0_carry__0_i_5
       (.I0(ps_V_fu_437_p2__0_carry__0_i_1_n_8),
        .I1(buffer_5_V_fu_104[7]),
        .I2(x0_V_fu_84[7]),
        .I3(buffer_15_V_fu_144[7]),
        .O(ps_V_fu_437_p2__0_carry__0_i_5_n_8));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    ps_V_fu_437_p2__0_carry__0_i_6
       (.I0(buffer_5_V_fu_104[6]),
        .I1(x0_V_fu_84[6]),
        .I2(buffer_15_V_fu_144[6]),
        .I3(ps_V_fu_437_p2__0_carry__0_i_2_n_8),
        .O(ps_V_fu_437_p2__0_carry__0_i_6_n_8));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    ps_V_fu_437_p2__0_carry__0_i_7
       (.I0(buffer_5_V_fu_104[5]),
        .I1(x0_V_fu_84[5]),
        .I2(buffer_15_V_fu_144[5]),
        .I3(ps_V_fu_437_p2__0_carry__0_i_3_n_8),
        .O(ps_V_fu_437_p2__0_carry__0_i_7_n_8));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    ps_V_fu_437_p2__0_carry__0_i_8
       (.I0(buffer_5_V_fu_104[4]),
        .I1(x0_V_fu_84[4]),
        .I2(buffer_15_V_fu_144[4]),
        .I3(ps_V_fu_437_p2__0_carry__0_i_4_n_8),
        .O(ps_V_fu_437_p2__0_carry__0_i_8_n_8));
  CARRY4 ps_V_fu_437_p2__0_carry__1
       (.CI(ps_V_fu_437_p2__0_carry__0_n_8),
        .CO({NLW_ps_V_fu_437_p2__0_carry__1_CO_UNCONNECTED[3:2],ps_V_fu_437_p2__0_carry__1_n_10,NLW_ps_V_fu_437_p2__0_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_ps_V_fu_437_p2__0_carry__1_O_UNCONNECTED[3:1],ps_V_fu_437_p2__0_carry__1_n_15}),
        .S({1'b0,1'b0,1'b1,ps_V_fu_437_p2__0_carry__1_i_1_n_8}));
  LUT3 #(
    .INIT(8'hE8)) 
    ps_V_fu_437_p2__0_carry__1_i_1
       (.I0(buffer_5_V_fu_104[7]),
        .I1(x0_V_fu_84[7]),
        .I2(buffer_15_V_fu_144[7]),
        .O(ps_V_fu_437_p2__0_carry__1_i_1_n_8));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    ps_V_fu_437_p2__0_carry_i_1
       (.I0(buffer_5_V_fu_104[2]),
        .I1(x0_V_fu_84[2]),
        .I2(buffer_15_V_fu_144[2]),
        .O(ps_V_fu_437_p2__0_carry_i_1_n_8));
  LUT3 #(
    .INIT(8'hE8)) 
    ps_V_fu_437_p2__0_carry_i_2
       (.I0(buffer_5_V_fu_104[1]),
        .I1(x0_V_fu_84[1]),
        .I2(buffer_15_V_fu_144[1]),
        .O(ps_V_fu_437_p2__0_carry_i_2_n_8));
  LUT3 #(
    .INIT(8'hE8)) 
    ps_V_fu_437_p2__0_carry_i_3
       (.I0(x0_V_fu_84[0]),
        .I1(buffer_5_V_fu_104[0]),
        .I2(buffer_15_V_fu_144[0]),
        .O(ps_V_fu_437_p2__0_carry_i_3_n_8));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    ps_V_fu_437_p2__0_carry_i_4
       (.I0(buffer_5_V_fu_104[3]),
        .I1(x0_V_fu_84[3]),
        .I2(buffer_15_V_fu_144[3]),
        .I3(ps_V_fu_437_p2__0_carry_i_1_n_8),
        .O(ps_V_fu_437_p2__0_carry_i_4_n_8));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    ps_V_fu_437_p2__0_carry_i_5
       (.I0(buffer_5_V_fu_104[2]),
        .I1(x0_V_fu_84[2]),
        .I2(buffer_15_V_fu_144[2]),
        .I3(ps_V_fu_437_p2__0_carry_i_2_n_8),
        .O(ps_V_fu_437_p2__0_carry_i_5_n_8));
  LUT4 #(
    .INIT(16'h6996)) 
    ps_V_fu_437_p2__0_carry_i_6
       (.I0(buffer_5_V_fu_104[1]),
        .I1(x0_V_fu_84[1]),
        .I2(buffer_15_V_fu_144[1]),
        .I3(ps_V_fu_437_p2__0_carry_i_3_n_8),
        .O(ps_V_fu_437_p2__0_carry_i_6_n_8));
  LUT3 #(
    .INIT(8'h96)) 
    ps_V_fu_437_p2__0_carry_i_7
       (.I0(x0_V_fu_84[0]),
        .I1(buffer_5_V_fu_104[0]),
        .I2(buffer_15_V_fu_144[0]),
        .O(ps_V_fu_437_p2__0_carry_i_7_n_8));
  CARRY4 ps_V_fu_437_p2__26_carry
       (.CI(1'b0),
        .CO({ps_V_fu_437_p2__26_carry_n_8,ps_V_fu_437_p2__26_carry_n_9,ps_V_fu_437_p2__26_carry_n_10,ps_V_fu_437_p2__26_carry_n_11}),
        .CYINIT(1'b0),
        .DI({ps_V_fu_437_p2__26_carry_i_1_n_8,ps_V_fu_437_p2__26_carry_i_2_n_8,ps_V_fu_437_p2__26_carry_i_3_n_8,1'b0}),
        .O({ps_V_fu_437_p2__26_carry_n_12,ps_V_fu_437_p2__26_carry_n_13,ps_V_fu_437_p2__26_carry_n_14,ps_V_fu_437_p2__26_carry_n_15}),
        .S({ps_V_fu_437_p2__26_carry_i_4_n_8,ps_V_fu_437_p2__26_carry_i_5_n_8,ps_V_fu_437_p2__26_carry_i_6_n_8,ps_V_fu_437_p2__26_carry_i_7_n_8}));
  CARRY4 ps_V_fu_437_p2__26_carry__0
       (.CI(ps_V_fu_437_p2__26_carry_n_8),
        .CO({ps_V_fu_437_p2__26_carry__0_n_8,ps_V_fu_437_p2__26_carry__0_n_9,ps_V_fu_437_p2__26_carry__0_n_10,ps_V_fu_437_p2__26_carry__0_n_11}),
        .CYINIT(1'b0),
        .DI({ps_V_fu_437_p2__26_carry__0_i_1_n_8,ps_V_fu_437_p2__26_carry__0_i_2_n_8,ps_V_fu_437_p2__26_carry__0_i_3_n_8,ps_V_fu_437_p2__26_carry__0_i_4_n_8}),
        .O({ps_V_fu_437_p2__26_carry__0_n_12,ps_V_fu_437_p2__26_carry__0_n_13,ps_V_fu_437_p2__26_carry__0_n_14,ps_V_fu_437_p2__26_carry__0_n_15}),
        .S({ps_V_fu_437_p2__26_carry__0_i_5_n_8,ps_V_fu_437_p2__26_carry__0_i_6_n_8,ps_V_fu_437_p2__26_carry__0_i_7_n_8,ps_V_fu_437_p2__26_carry__0_i_8_n_8}));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    ps_V_fu_437_p2__26_carry__0_i_1
       (.I0(buffer_19_V_fu_160[6]),
        .I1(buffer_1_V_fu_88[6]),
        .I2(buffer_4_V_fu_100[6]),
        .O(ps_V_fu_437_p2__26_carry__0_i_1_n_8));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    ps_V_fu_437_p2__26_carry__0_i_2
       (.I0(buffer_19_V_fu_160[5]),
        .I1(buffer_1_V_fu_88[5]),
        .I2(buffer_4_V_fu_100[5]),
        .O(ps_V_fu_437_p2__26_carry__0_i_2_n_8));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    ps_V_fu_437_p2__26_carry__0_i_3
       (.I0(buffer_19_V_fu_160[4]),
        .I1(buffer_1_V_fu_88[4]),
        .I2(buffer_4_V_fu_100[4]),
        .O(ps_V_fu_437_p2__26_carry__0_i_3_n_8));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    ps_V_fu_437_p2__26_carry__0_i_4
       (.I0(buffer_19_V_fu_160[3]),
        .I1(buffer_1_V_fu_88[3]),
        .I2(buffer_4_V_fu_100[3]),
        .O(ps_V_fu_437_p2__26_carry__0_i_4_n_8));
  LUT4 #(
    .INIT(16'h6996)) 
    ps_V_fu_437_p2__26_carry__0_i_5
       (.I0(ps_V_fu_437_p2__26_carry__0_i_1_n_8),
        .I1(buffer_19_V_fu_160[7]),
        .I2(buffer_1_V_fu_88[7]),
        .I3(buffer_4_V_fu_100[7]),
        .O(ps_V_fu_437_p2__26_carry__0_i_5_n_8));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    ps_V_fu_437_p2__26_carry__0_i_6
       (.I0(buffer_19_V_fu_160[6]),
        .I1(buffer_1_V_fu_88[6]),
        .I2(buffer_4_V_fu_100[6]),
        .I3(ps_V_fu_437_p2__26_carry__0_i_2_n_8),
        .O(ps_V_fu_437_p2__26_carry__0_i_6_n_8));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    ps_V_fu_437_p2__26_carry__0_i_7
       (.I0(buffer_19_V_fu_160[5]),
        .I1(buffer_1_V_fu_88[5]),
        .I2(buffer_4_V_fu_100[5]),
        .I3(ps_V_fu_437_p2__26_carry__0_i_3_n_8),
        .O(ps_V_fu_437_p2__26_carry__0_i_7_n_8));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    ps_V_fu_437_p2__26_carry__0_i_8
       (.I0(buffer_19_V_fu_160[4]),
        .I1(buffer_1_V_fu_88[4]),
        .I2(buffer_4_V_fu_100[4]),
        .I3(ps_V_fu_437_p2__26_carry__0_i_4_n_8),
        .O(ps_V_fu_437_p2__26_carry__0_i_8_n_8));
  CARRY4 ps_V_fu_437_p2__26_carry__1
       (.CI(ps_V_fu_437_p2__26_carry__0_n_8),
        .CO({NLW_ps_V_fu_437_p2__26_carry__1_CO_UNCONNECTED[3:2],ps_V_fu_437_p2__26_carry__1_n_10,NLW_ps_V_fu_437_p2__26_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_ps_V_fu_437_p2__26_carry__1_O_UNCONNECTED[3:1],ps_V_fu_437_p2__26_carry__1_n_15}),
        .S({1'b0,1'b0,1'b1,ps_V_fu_437_p2__26_carry__1_i_1_n_8}));
  LUT3 #(
    .INIT(8'hE8)) 
    ps_V_fu_437_p2__26_carry__1_i_1
       (.I0(buffer_19_V_fu_160[7]),
        .I1(buffer_1_V_fu_88[7]),
        .I2(buffer_4_V_fu_100[7]),
        .O(ps_V_fu_437_p2__26_carry__1_i_1_n_8));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    ps_V_fu_437_p2__26_carry_i_1
       (.I0(buffer_19_V_fu_160[2]),
        .I1(buffer_1_V_fu_88[2]),
        .I2(buffer_4_V_fu_100[2]),
        .O(ps_V_fu_437_p2__26_carry_i_1_n_8));
  LUT3 #(
    .INIT(8'hE8)) 
    ps_V_fu_437_p2__26_carry_i_2
       (.I0(buffer_19_V_fu_160[1]),
        .I1(buffer_1_V_fu_88[1]),
        .I2(buffer_4_V_fu_100[1]),
        .O(ps_V_fu_437_p2__26_carry_i_2_n_8));
  LUT3 #(
    .INIT(8'hE8)) 
    ps_V_fu_437_p2__26_carry_i_3
       (.I0(buffer_1_V_fu_88[0]),
        .I1(buffer_19_V_fu_160[0]),
        .I2(buffer_4_V_fu_100[0]),
        .O(ps_V_fu_437_p2__26_carry_i_3_n_8));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    ps_V_fu_437_p2__26_carry_i_4
       (.I0(buffer_19_V_fu_160[3]),
        .I1(buffer_1_V_fu_88[3]),
        .I2(buffer_4_V_fu_100[3]),
        .I3(ps_V_fu_437_p2__26_carry_i_1_n_8),
        .O(ps_V_fu_437_p2__26_carry_i_4_n_8));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    ps_V_fu_437_p2__26_carry_i_5
       (.I0(buffer_19_V_fu_160[2]),
        .I1(buffer_1_V_fu_88[2]),
        .I2(buffer_4_V_fu_100[2]),
        .I3(ps_V_fu_437_p2__26_carry_i_2_n_8),
        .O(ps_V_fu_437_p2__26_carry_i_5_n_8));
  LUT4 #(
    .INIT(16'h6996)) 
    ps_V_fu_437_p2__26_carry_i_6
       (.I0(buffer_19_V_fu_160[1]),
        .I1(buffer_1_V_fu_88[1]),
        .I2(buffer_4_V_fu_100[1]),
        .I3(ps_V_fu_437_p2__26_carry_i_3_n_8),
        .O(ps_V_fu_437_p2__26_carry_i_6_n_8));
  LUT3 #(
    .INIT(8'h96)) 
    ps_V_fu_437_p2__26_carry_i_7
       (.I0(buffer_1_V_fu_88[0]),
        .I1(buffer_19_V_fu_160[0]),
        .I2(buffer_4_V_fu_100[0]),
        .O(ps_V_fu_437_p2__26_carry_i_7_n_8));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ps_V_fu_437_p2__54_carry
       (.CI(1'b0),
        .CO({ps_V_fu_437_p2__54_carry_n_8,ps_V_fu_437_p2__54_carry_n_9,ps_V_fu_437_p2__54_carry_n_10,ps_V_fu_437_p2__54_carry_n_11}),
        .CYINIT(1'b0),
        .DI({ps_V_fu_437_p2__54_carry_i_1_n_8,ps_V_fu_437_p2__54_carry_i_2_n_8,ps_V_fu_437_p2__54_carry_i_3_n_8,buffer_14_V_fu_140[0]}),
        .O(ps_V_fu_437_p2[3:0]),
        .S({ps_V_fu_437_p2__54_carry_i_4_n_8,ps_V_fu_437_p2__54_carry_i_5_n_8,ps_V_fu_437_p2__54_carry_i_6_n_8,ps_V_fu_437_p2__54_carry_i_7_n_8}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ps_V_fu_437_p2__54_carry__0
       (.CI(ps_V_fu_437_p2__54_carry_n_8),
        .CO({ps_V_fu_437_p2__54_carry__0_n_8,ps_V_fu_437_p2__54_carry__0_n_9,ps_V_fu_437_p2__54_carry__0_n_10,ps_V_fu_437_p2__54_carry__0_n_11}),
        .CYINIT(1'b0),
        .DI({ps_V_fu_437_p2__54_carry__0_i_1_n_8,ps_V_fu_437_p2__54_carry__0_i_2_n_8,ps_V_fu_437_p2__54_carry__0_i_3_n_8,ps_V_fu_437_p2__54_carry__0_i_4_n_8}),
        .O(ps_V_fu_437_p2[7:4]),
        .S({ps_V_fu_437_p2__54_carry__0_i_5_n_8,ps_V_fu_437_p2__54_carry__0_i_6_n_8,ps_V_fu_437_p2__54_carry__0_i_7_n_8,ps_V_fu_437_p2__54_carry__0_i_8_n_8}));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    ps_V_fu_437_p2__54_carry__0_i_1
       (.I0(ps_V_fu_437_p2__26_carry__0_n_14),
        .I1(buffer_18_V_fu_156[5]),
        .I2(ps_V_fu_437_p2__0_carry__0_n_14),
        .I3(buffer_14_V_fu_140[6]),
        .I4(ps_V_fu_437_p2__54_carry__0_i_9_n_8),
        .O(ps_V_fu_437_p2__54_carry__0_i_1_n_8));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h96)) 
    ps_V_fu_437_p2__54_carry__0_i_10
       (.I0(ps_V_fu_437_p2__0_carry__0_n_14),
        .I1(buffer_18_V_fu_156[5]),
        .I2(ps_V_fu_437_p2__26_carry__0_n_14),
        .O(ps_V_fu_437_p2__54_carry__0_i_10_n_8));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h96)) 
    ps_V_fu_437_p2__54_carry__0_i_11
       (.I0(ps_V_fu_437_p2__0_carry__0_n_15),
        .I1(buffer_18_V_fu_156[4]),
        .I2(ps_V_fu_437_p2__26_carry__0_n_15),
        .O(ps_V_fu_437_p2__54_carry__0_i_11_n_8));
  LUT3 #(
    .INIT(8'h96)) 
    ps_V_fu_437_p2__54_carry__0_i_12
       (.I0(ps_V_fu_437_p2__0_carry_n_12),
        .I1(buffer_18_V_fu_156[3]),
        .I2(ps_V_fu_437_p2__26_carry_n_12),
        .O(ps_V_fu_437_p2__54_carry__0_i_12_n_8));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h17)) 
    ps_V_fu_437_p2__54_carry__0_i_13
       (.I0(ps_V_fu_437_p2__26_carry__0_n_13),
        .I1(buffer_18_V_fu_156[6]),
        .I2(ps_V_fu_437_p2__0_carry__0_n_13),
        .O(ps_V_fu_437_p2__54_carry__0_i_13_n_8));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h17)) 
    ps_V_fu_437_p2__54_carry__0_i_14
       (.I0(ps_V_fu_437_p2__26_carry__0_n_14),
        .I1(buffer_18_V_fu_156[5]),
        .I2(ps_V_fu_437_p2__0_carry__0_n_14),
        .O(ps_V_fu_437_p2__54_carry__0_i_14_n_8));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h17)) 
    ps_V_fu_437_p2__54_carry__0_i_15
       (.I0(ps_V_fu_437_p2__26_carry__0_n_15),
        .I1(buffer_18_V_fu_156[4]),
        .I2(ps_V_fu_437_p2__0_carry__0_n_15),
        .O(ps_V_fu_437_p2__54_carry__0_i_15_n_8));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    ps_V_fu_437_p2__54_carry__0_i_2
       (.I0(ps_V_fu_437_p2__26_carry__0_n_15),
        .I1(buffer_18_V_fu_156[4]),
        .I2(ps_V_fu_437_p2__0_carry__0_n_15),
        .I3(buffer_14_V_fu_140[5]),
        .I4(ps_V_fu_437_p2__54_carry__0_i_10_n_8),
        .O(ps_V_fu_437_p2__54_carry__0_i_2_n_8));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    ps_V_fu_437_p2__54_carry__0_i_3
       (.I0(ps_V_fu_437_p2__26_carry_n_12),
        .I1(buffer_18_V_fu_156[3]),
        .I2(ps_V_fu_437_p2__0_carry_n_12),
        .I3(ps_V_fu_437_p2__54_carry__0_i_11_n_8),
        .I4(buffer_14_V_fu_140[4]),
        .O(ps_V_fu_437_p2__54_carry__0_i_3_n_8));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    ps_V_fu_437_p2__54_carry__0_i_4
       (.I0(ps_V_fu_437_p2__26_carry_n_13),
        .I1(buffer_18_V_fu_156[2]),
        .I2(ps_V_fu_437_p2__0_carry_n_13),
        .I3(buffer_14_V_fu_140[3]),
        .I4(ps_V_fu_437_p2__54_carry__0_i_12_n_8),
        .O(ps_V_fu_437_p2__54_carry__0_i_4_n_8));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    ps_V_fu_437_p2__54_carry__0_i_5
       (.I0(ps_V_fu_437_p2__54_carry__0_i_1_n_8),
        .I1(ps_V_fu_437_p2__54_carry__0_i_13_n_8),
        .I2(ps_V_fu_437_p2__0_carry__0_n_12),
        .I3(buffer_18_V_fu_156[7]),
        .I4(ps_V_fu_437_p2__26_carry__0_n_12),
        .I5(buffer_14_V_fu_140[7]),
        .O(ps_V_fu_437_p2__54_carry__0_i_5_n_8));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    ps_V_fu_437_p2__54_carry__0_i_6
       (.I0(ps_V_fu_437_p2__54_carry__0_i_2_n_8),
        .I1(ps_V_fu_437_p2__54_carry__0_i_14_n_8),
        .I2(ps_V_fu_437_p2__0_carry__0_n_13),
        .I3(buffer_18_V_fu_156[6]),
        .I4(ps_V_fu_437_p2__26_carry__0_n_13),
        .I5(buffer_14_V_fu_140[6]),
        .O(ps_V_fu_437_p2__54_carry__0_i_6_n_8));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    ps_V_fu_437_p2__54_carry__0_i_7
       (.I0(ps_V_fu_437_p2__54_carry__0_i_3_n_8),
        .I1(ps_V_fu_437_p2__54_carry__0_i_15_n_8),
        .I2(ps_V_fu_437_p2__0_carry__0_n_14),
        .I3(buffer_18_V_fu_156[5]),
        .I4(ps_V_fu_437_p2__26_carry__0_n_14),
        .I5(buffer_14_V_fu_140[5]),
        .O(ps_V_fu_437_p2__54_carry__0_i_7_n_8));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    ps_V_fu_437_p2__54_carry__0_i_8
       (.I0(ps_V_fu_437_p2__54_carry__0_i_4_n_8),
        .I1(buffer_14_V_fu_140[4]),
        .I2(ps_V_fu_437_p2__54_carry__0_i_11_n_8),
        .I3(ps_V_fu_437_p2__26_carry_n_12),
        .I4(buffer_18_V_fu_156[3]),
        .I5(ps_V_fu_437_p2__0_carry_n_12),
        .O(ps_V_fu_437_p2__54_carry__0_i_8_n_8));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h96)) 
    ps_V_fu_437_p2__54_carry__0_i_9
       (.I0(ps_V_fu_437_p2__0_carry__0_n_13),
        .I1(buffer_18_V_fu_156[6]),
        .I2(ps_V_fu_437_p2__26_carry__0_n_13),
        .O(ps_V_fu_437_p2__54_carry__0_i_9_n_8));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 ps_V_fu_437_p2__54_carry__1
       (.CI(ps_V_fu_437_p2__54_carry__0_n_8),
        .CO({NLW_ps_V_fu_437_p2__54_carry__1_CO_UNCONNECTED[3:2],ps_V_fu_437_p2__54_carry__1_n_10,ps_V_fu_437_p2__54_carry__1_n_11}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,ps_V_fu_437_p2__54_carry__1_i_1_n_8,ps_V_fu_437_p2__54_carry__1_i_2_n_8}),
        .O({NLW_ps_V_fu_437_p2__54_carry__1_O_UNCONNECTED[3],ps_V_fu_437_p2[10:8]}),
        .S({1'b0,ps_V_fu_437_p2__54_carry__1_i_3_n_8,ps_V_fu_437_p2__54_carry__1_i_4_n_8,ps_V_fu_437_p2__54_carry__1_i_5_n_8}));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    ps_V_fu_437_p2__54_carry__1_i_1
       (.I0(ps_V_fu_437_p2__26_carry__0_n_12),
        .I1(buffer_18_V_fu_156[7]),
        .I2(ps_V_fu_437_p2__0_carry__0_n_12),
        .I3(ps_V_fu_437_p2__26_carry__1_n_15),
        .I4(ps_V_fu_437_p2__0_carry__1_n_15),
        .O(ps_V_fu_437_p2__54_carry__1_i_1_n_8));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    ps_V_fu_437_p2__54_carry__1_i_2
       (.I0(ps_V_fu_437_p2__26_carry__0_n_13),
        .I1(buffer_18_V_fu_156[6]),
        .I2(ps_V_fu_437_p2__0_carry__0_n_13),
        .I3(buffer_14_V_fu_140[7]),
        .I4(ps_V_fu_437_p2__54_carry__1_i_6_n_8),
        .O(ps_V_fu_437_p2__54_carry__1_i_2_n_8));
  LUT2 #(
    .INIT(4'h8)) 
    ps_V_fu_437_p2__54_carry__1_i_3
       (.I0(ps_V_fu_437_p2__26_carry__1_n_10),
        .I1(ps_V_fu_437_p2__0_carry__1_n_10),
        .O(ps_V_fu_437_p2__54_carry__1_i_3_n_8));
  LUT3 #(
    .INIT(8'h96)) 
    ps_V_fu_437_p2__54_carry__1_i_4
       (.I0(ps_V_fu_437_p2__54_carry__1_i_1_n_8),
        .I1(ps_V_fu_437_p2__0_carry__1_n_10),
        .I2(ps_V_fu_437_p2__26_carry__1_n_10),
        .O(ps_V_fu_437_p2__54_carry__1_i_4_n_8));
  LUT6 #(
    .INIT(64'h566AA995A995566A)) 
    ps_V_fu_437_p2__54_carry__1_i_5
       (.I0(ps_V_fu_437_p2__54_carry__1_i_2_n_8),
        .I1(ps_V_fu_437_p2__26_carry__0_n_12),
        .I2(buffer_18_V_fu_156[7]),
        .I3(ps_V_fu_437_p2__0_carry__0_n_12),
        .I4(ps_V_fu_437_p2__0_carry__1_n_15),
        .I5(ps_V_fu_437_p2__26_carry__1_n_15),
        .O(ps_V_fu_437_p2__54_carry__1_i_5_n_8));
  LUT3 #(
    .INIT(8'h96)) 
    ps_V_fu_437_p2__54_carry__1_i_6
       (.I0(ps_V_fu_437_p2__0_carry__0_n_12),
        .I1(buffer_18_V_fu_156[7]),
        .I2(ps_V_fu_437_p2__26_carry__0_n_12),
        .O(ps_V_fu_437_p2__54_carry__1_i_6_n_8));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    ps_V_fu_437_p2__54_carry_i_1
       (.I0(buffer_14_V_fu_140[2]),
        .I1(ps_V_fu_437_p2__54_carry_i_8_n_8),
        .I2(ps_V_fu_437_p2__26_carry_n_14),
        .I3(buffer_18_V_fu_156[1]),
        .I4(ps_V_fu_437_p2__0_carry_n_14),
        .O(ps_V_fu_437_p2__54_carry_i_1_n_8));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    ps_V_fu_437_p2__54_carry_i_2
       (.I0(ps_V_fu_437_p2__0_carry_n_14),
        .I1(buffer_18_V_fu_156[1]),
        .I2(ps_V_fu_437_p2__26_carry_n_14),
        .I3(ps_V_fu_437_p2__54_carry_i_8_n_8),
        .I4(buffer_14_V_fu_140[2]),
        .O(ps_V_fu_437_p2__54_carry_i_2_n_8));
  LUT4 #(
    .INIT(16'h6996)) 
    ps_V_fu_437_p2__54_carry_i_3
       (.I0(ps_V_fu_437_p2__26_carry_n_14),
        .I1(buffer_18_V_fu_156[1]),
        .I2(ps_V_fu_437_p2__0_carry_n_14),
        .I3(buffer_14_V_fu_140[1]),
        .O(ps_V_fu_437_p2__54_carry_i_3_n_8));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    ps_V_fu_437_p2__54_carry_i_4
       (.I0(ps_V_fu_437_p2__54_carry_i_1_n_8),
        .I1(ps_V_fu_437_p2__54_carry_i_9_n_8),
        .I2(ps_V_fu_437_p2__0_carry_n_12),
        .I3(buffer_18_V_fu_156[3]),
        .I4(ps_V_fu_437_p2__26_carry_n_12),
        .I5(buffer_14_V_fu_140[3]),
        .O(ps_V_fu_437_p2__54_carry_i_4_n_8));
  LUT6 #(
    .INIT(64'h6999999699969666)) 
    ps_V_fu_437_p2__54_carry_i_5
       (.I0(buffer_14_V_fu_140[2]),
        .I1(ps_V_fu_437_p2__54_carry_i_8_n_8),
        .I2(ps_V_fu_437_p2__0_carry_n_14),
        .I3(buffer_18_V_fu_156[1]),
        .I4(ps_V_fu_437_p2__26_carry_n_14),
        .I5(buffer_14_V_fu_140[1]),
        .O(ps_V_fu_437_p2__54_carry_i_5_n_8));
  LUT4 #(
    .INIT(16'h566A)) 
    ps_V_fu_437_p2__54_carry_i_6
       (.I0(ps_V_fu_437_p2__54_carry_i_3_n_8),
        .I1(ps_V_fu_437_p2__0_carry_n_15),
        .I2(ps_V_fu_437_p2__26_carry_n_15),
        .I3(buffer_18_V_fu_156[0]),
        .O(ps_V_fu_437_p2__54_carry_i_6_n_8));
  LUT4 #(
    .INIT(16'h6996)) 
    ps_V_fu_437_p2__54_carry_i_7
       (.I0(ps_V_fu_437_p2__26_carry_n_15),
        .I1(ps_V_fu_437_p2__0_carry_n_15),
        .I2(buffer_18_V_fu_156[0]),
        .I3(buffer_14_V_fu_140[0]),
        .O(ps_V_fu_437_p2__54_carry_i_7_n_8));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h96)) 
    ps_V_fu_437_p2__54_carry_i_8
       (.I0(ps_V_fu_437_p2__0_carry_n_13),
        .I1(buffer_18_V_fu_156[2]),
        .I2(ps_V_fu_437_p2__26_carry_n_13),
        .O(ps_V_fu_437_p2__54_carry_i_8_n_8));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h17)) 
    ps_V_fu_437_p2__54_carry_i_9
       (.I0(ps_V_fu_437_p2__26_carry_n_13),
        .I1(buffer_18_V_fu_156[2]),
        .I2(ps_V_fu_437_p2__0_carry_n_13),
        .O(ps_V_fu_437_p2__54_carry_i_9_n_8));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \res_2_V_reg_897[16]_i_2 
       (.I0(trunc_ln_fu_460_p4[12]),
        .I1(trunc_ln_fu_460_p4[2]),
        .I2(trunc_ln_fu_460_p4[1]),
        .I3(trunc_ln_fu_460_p4[8]),
        .I4(trunc_ln_fu_460_p4[5]),
        .I5(trunc_ln_fu_460_p4[14]),
        .O(\res_2_V_reg_897[16]_i_2_n_8 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \res_2_V_reg_897[16]_i_3 
       (.I0(trunc_ln_fu_460_p4[9]),
        .I1(trunc_ln_fu_460_p4[10]),
        .I2(trunc_ln_fu_460_p4[3]),
        .I3(trunc_ln_fu_460_p4[4]),
        .I4(\res_2_V_reg_897[16]_i_4_n_8 ),
        .O(\res_2_V_reg_897[16]_i_3_n_8 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \res_2_V_reg_897[16]_i_4 
       (.I0(trunc_ln_fu_460_p4[16]),
        .I1(trunc_ln_fu_460_p4[7]),
        .I2(trunc_ln_fu_460_p4[11]),
        .I3(trunc_ln_fu_460_p4[0]),
        .O(\res_2_V_reg_897[16]_i_4_n_8 ));
  FDSE \res_2_V_reg_897_reg[0] 
       (.C(clock),
        .CE(dout_valid_reg),
        .D(trunc_ln_fu_460_p4[0]),
        .Q(\res_2_V_reg_897_reg_n_8_[0] ),
        .S(res_2_V_reg_897));
  FDRE \res_2_V_reg_897_reg[10] 
       (.C(clock),
        .CE(dout_valid_reg),
        .D(trunc_ln_fu_460_p4[10]),
        .Q(\res_2_V_reg_897_reg_n_8_[10] ),
        .R(res_2_V_reg_897));
  FDRE \res_2_V_reg_897_reg[11] 
       (.C(clock),
        .CE(dout_valid_reg),
        .D(trunc_ln_fu_460_p4[11]),
        .Q(\res_2_V_reg_897_reg_n_8_[11] ),
        .R(res_2_V_reg_897));
  FDRE \res_2_V_reg_897_reg[12] 
       (.C(clock),
        .CE(dout_valid_reg),
        .D(trunc_ln_fu_460_p4[12]),
        .Q(\res_2_V_reg_897_reg_n_8_[12] ),
        .R(res_2_V_reg_897));
  FDRE \res_2_V_reg_897_reg[13] 
       (.C(clock),
        .CE(dout_valid_reg),
        .D(trunc_ln_fu_460_p4[13]),
        .Q(\res_2_V_reg_897_reg_n_8_[13] ),
        .R(res_2_V_reg_897));
  FDRE \res_2_V_reg_897_reg[14] 
       (.C(clock),
        .CE(dout_valid_reg),
        .D(trunc_ln_fu_460_p4[14]),
        .Q(\res_2_V_reg_897_reg_n_8_[14] ),
        .R(res_2_V_reg_897));
  FDRE \res_2_V_reg_897_reg[15] 
       (.C(clock),
        .CE(dout_valid_reg),
        .D(trunc_ln_fu_460_p4[15]),
        .Q(\res_2_V_reg_897_reg_n_8_[15] ),
        .R(res_2_V_reg_897));
  FDRE \res_2_V_reg_897_reg[16] 
       (.C(clock),
        .CE(dout_valid_reg),
        .D(trunc_ln_fu_460_p4[16]),
        .Q(\res_2_V_reg_897_reg_n_8_[16] ),
        .R(res_2_V_reg_897));
  FDSE \res_2_V_reg_897_reg[1] 
       (.C(clock),
        .CE(dout_valid_reg),
        .D(trunc_ln_fu_460_p4[1]),
        .Q(\res_2_V_reg_897_reg_n_8_[1] ),
        .S(res_2_V_reg_897));
  FDSE \res_2_V_reg_897_reg[2] 
       (.C(clock),
        .CE(dout_valid_reg),
        .D(trunc_ln_fu_460_p4[2]),
        .Q(\res_2_V_reg_897_reg_n_8_[2] ),
        .S(res_2_V_reg_897));
  FDSE \res_2_V_reg_897_reg[3] 
       (.C(clock),
        .CE(dout_valid_reg),
        .D(trunc_ln_fu_460_p4[3]),
        .Q(\res_2_V_reg_897_reg_n_8_[3] ),
        .S(res_2_V_reg_897));
  FDSE \res_2_V_reg_897_reg[4] 
       (.C(clock),
        .CE(dout_valid_reg),
        .D(trunc_ln_fu_460_p4[4]),
        .Q(\res_2_V_reg_897_reg_n_8_[4] ),
        .S(res_2_V_reg_897));
  FDRE \res_2_V_reg_897_reg[5] 
       (.C(clock),
        .CE(dout_valid_reg),
        .D(trunc_ln_fu_460_p4[5]),
        .Q(\res_2_V_reg_897_reg_n_8_[5] ),
        .R(res_2_V_reg_897));
  FDRE \res_2_V_reg_897_reg[6] 
       (.C(clock),
        .CE(dout_valid_reg),
        .D(trunc_ln_fu_460_p4[6]),
        .Q(\res_2_V_reg_897_reg_n_8_[6] ),
        .R(res_2_V_reg_897));
  FDRE \res_2_V_reg_897_reg[7] 
       (.C(clock),
        .CE(dout_valid_reg),
        .D(trunc_ln_fu_460_p4[7]),
        .Q(\res_2_V_reg_897_reg_n_8_[7] ),
        .R(res_2_V_reg_897));
  FDRE \res_2_V_reg_897_reg[8] 
       (.C(clock),
        .CE(dout_valid_reg),
        .D(trunc_ln_fu_460_p4[8]),
        .Q(\res_2_V_reg_897_reg_n_8_[8] ),
        .R(res_2_V_reg_897));
  FDRE \res_2_V_reg_897_reg[9] 
       (.C(clock),
        .CE(dout_valid_reg),
        .D(trunc_ln_fu_460_p4[9]),
        .Q(\res_2_V_reg_897_reg_n_8_[9] ),
        .R(res_2_V_reg_897));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    ret_V_5_fu_242_p2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,D}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_ret_V_5_fu_242_p2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,D}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_ret_V_5_fu_242_p2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_ret_V_5_fu_242_p2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_ret_V_5_fu_242_p2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(val_V_reg_8760),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(val_V_reg_8760),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clock),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_ret_V_5_fu_242_p2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_ret_V_5_fu_242_p2_OVERFLOW_UNCONNECTED),
        .P({NLW_ret_V_5_fu_242_p2_P_UNCONNECTED[47:16],ret_V_5_fu_242_p2_n_98,ret_V_5_fu_242_p2_n_99,ret_V_5_fu_242_p2_n_100,ret_V_5_fu_242_p2_n_101,ret_V_5_fu_242_p2_n_102,ret_V_5_fu_242_p2_n_103,ret_V_5_fu_242_p2_n_104,ret_V_5_fu_242_p2_n_105,ret_V_5_fu_242_p2_n_106,ret_V_5_fu_242_p2_n_107,ret_V_5_fu_242_p2_n_108,ret_V_5_fu_242_p2_n_109,ret_V_5_fu_242_p2_n_110,ret_V_5_fu_242_p2_n_111,ret_V_5_fu_242_p2_n_112,ret_V_5_fu_242_p2_n_113}),
        .PATTERNBDETECT(NLW_ret_V_5_fu_242_p2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_ret_V_5_fu_242_p2_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_ret_V_5_fu_242_p2_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_ret_V_5_fu_242_p2_UNDERFLOW_UNCONNECTED));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    ret_V_6_reg_902_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ps_V_fu_437_p2}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_ret_V_6_reg_902_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ps_V_fu_437_p2}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_ret_V_6_reg_902_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_ret_V_6_reg_902_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_ret_V_6_reg_902_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(dout_valid_reg),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(dout_valid_reg),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(dout_valid_reg),
        .CLK(clock),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_ret_V_6_reg_902_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_ret_V_6_reg_902_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_ret_V_6_reg_902_reg_P_UNCONNECTED[47:22],ret_V_6_reg_902_reg_n_92,ret_V_6_reg_902_reg_n_93,ret_V_6_reg_902_reg_n_94,ret_V_6_reg_902_reg_n_95,ret_V_6_reg_902_reg_n_96,ret_V_6_reg_902_reg_n_97,ret_V_6_reg_902_reg_n_98,ret_V_6_reg_902_reg_n_99,ret_V_6_reg_902_reg_n_100,ret_V_6_reg_902_reg_n_101,ret_V_6_reg_902_reg_n_102,ret_V_6_reg_902_reg_n_103,ret_V_6_reg_902_reg_n_104,ret_V_6_reg_902_reg_n_105,ret_V_6_reg_902_reg_n_106,ret_V_6_reg_902_reg_n_107,ret_V_6_reg_902_reg_n_108,ret_V_6_reg_902_reg_n_109,ret_V_6_reg_902_reg_n_110,ret_V_6_reg_902_reg_n_111,ret_V_6_reg_902_reg_n_112,ret_V_6_reg_902_reg_n_113}),
        .PATTERNBDETECT(NLW_ret_V_6_reg_902_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_ret_V_6_reg_902_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_ret_V_6_reg_902_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_ret_V_6_reg_902_reg_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_V_fu_454_p2_carry
       (.CI(1'b0),
        .CO({sum_V_fu_454_p2_carry_n_8,sum_V_fu_454_p2_carry_n_9,sum_V_fu_454_p2_carry_n_10,sum_V_fu_454_p2_carry_n_11}),
        .CYINIT(1'b0),
        .DI({grp_fu_664_p3[2:0],1'b0}),
        .O({trunc_ln_fu_460_p4[0],NLW_sum_V_fu_454_p2_carry_O_UNCONNECTED[2:0]}),
        .S({Seuil_calc2_mac_mdEe_U22_n_46,Seuil_calc2_mac_mdEe_U22_n_47,Seuil_calc2_mac_mdEe_U22_n_48,ap_phi_mux_p_0108_0_phi_fu_225_p4}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_V_fu_454_p2_carry__0
       (.CI(sum_V_fu_454_p2_carry_n_8),
        .CO({sum_V_fu_454_p2_carry__0_n_8,sum_V_fu_454_p2_carry__0_n_9,sum_V_fu_454_p2_carry__0_n_10,sum_V_fu_454_p2_carry__0_n_11}),
        .CYINIT(1'b0),
        .DI(grp_fu_664_p3[6:3]),
        .O(trunc_ln_fu_460_p4[4:1]),
        .S({Seuil_calc2_mac_mdEe_U22_n_49,Seuil_calc2_mac_mdEe_U22_n_50,Seuil_calc2_mac_mdEe_U22_n_51,Seuil_calc2_mac_mdEe_U22_n_52}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_V_fu_454_p2_carry__1
       (.CI(sum_V_fu_454_p2_carry__0_n_8),
        .CO({sum_V_fu_454_p2_carry__1_n_8,sum_V_fu_454_p2_carry__1_n_9,sum_V_fu_454_p2_carry__1_n_10,sum_V_fu_454_p2_carry__1_n_11}),
        .CYINIT(1'b0),
        .DI(grp_fu_664_p3[10:7]),
        .O(trunc_ln_fu_460_p4[8:5]),
        .S({Seuil_calc2_mac_mdEe_U22_n_53,Seuil_calc2_mac_mdEe_U22_n_54,Seuil_calc2_mac_mdEe_U22_n_55,Seuil_calc2_mac_mdEe_U22_n_56}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_V_fu_454_p2_carry__2
       (.CI(sum_V_fu_454_p2_carry__1_n_8),
        .CO({sum_V_fu_454_p2_carry__2_n_8,sum_V_fu_454_p2_carry__2_n_9,sum_V_fu_454_p2_carry__2_n_10,sum_V_fu_454_p2_carry__2_n_11}),
        .CYINIT(1'b0),
        .DI(grp_fu_664_p3[14:11]),
        .O(trunc_ln_fu_460_p4[12:9]),
        .S({Seuil_calc2_mac_mdEe_U22_n_57,Seuil_calc2_mac_mdEe_U22_n_58,Seuil_calc2_mac_mdEe_U22_n_59,Seuil_calc2_mac_mdEe_U22_n_60}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_V_fu_454_p2_carry__3
       (.CI(sum_V_fu_454_p2_carry__2_n_8),
        .CO({NLW_sum_V_fu_454_p2_carry__3_CO_UNCONNECTED[3],sum_V_fu_454_p2_carry__3_n_9,sum_V_fu_454_p2_carry__3_n_10,sum_V_fu_454_p2_carry__3_n_11}),
        .CYINIT(1'b0),
        .DI({1'b0,sum_V_fu_454_p2_carry__3_i_1_n_8,RESIZE0,grp_fu_664_p3[15]}),
        .O(trunc_ln_fu_460_p4[16:13]),
        .S({sum_V_fu_454_p2_carry__3_i_2_n_8,Seuil_calc2_mac_mdEe_U22_n_61,Seuil_calc2_mac_mdEe_U22_n_62,Seuil_calc2_mac_mdEe_U22_n_63}));
  LUT3 #(
    .INIT(8'h1D)) 
    sum_V_fu_454_p2_carry__3_i_1
       (.I0(p_0108_0_reg_221[20]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(sum_V_reg_892_reg[20]),
        .O(sum_V_fu_454_p2_carry__3_i_1_n_8));
  LUT5 #(
    .INIT(32'hCCA533A5)) 
    sum_V_fu_454_p2_carry__3_i_2
       (.I0(p_0108_0_reg_221[20]),
        .I1(sum_V_reg_892_reg[20]),
        .I2(p_0108_0_reg_221[21]),
        .I3(ap_enable_reg_pp0_iter3),
        .I4(sum_V_reg_892_reg[21]),
        .O(sum_V_fu_454_p2_carry__3_i_2_n_8));
  LUT3 #(
    .INIT(8'hB8)) 
    sum_V_fu_454_p2_carry_i_4
       (.I0(sum_V_reg_892_reg[2]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(p_0108_0_reg_221[2]),
        .O(ap_phi_mux_p_0108_0_phi_fu_225_p4));
  LUT3 #(
    .INIT(8'hB8)) 
    \sum_V_reg_892[2]_i_5 
       (.I0(sum_V_reg_892_reg[2]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(p_0108_0_reg_221[2]),
        .O(\sum_V_reg_892[2]_i_5_n_8 ));
  FDRE \sum_V_reg_892_reg[10] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(Seuil_calc2_mac_mdEe_U22_n_37),
        .Q(sum_V_reg_892_reg[10]),
        .R(1'b0));
  FDRE \sum_V_reg_892_reg[11] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(Seuil_calc2_mac_mdEe_U22_n_36),
        .Q(sum_V_reg_892_reg[11]),
        .R(1'b0));
  FDRE \sum_V_reg_892_reg[12] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(Seuil_calc2_mac_mdEe_U22_n_35),
        .Q(sum_V_reg_892_reg[12]),
        .R(1'b0));
  FDRE \sum_V_reg_892_reg[13] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(Seuil_calc2_mac_mdEe_U22_n_34),
        .Q(sum_V_reg_892_reg[13]),
        .R(1'b0));
  FDRE \sum_V_reg_892_reg[14] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(Seuil_calc2_mac_mdEe_U22_n_41),
        .Q(sum_V_reg_892_reg[14]),
        .R(1'b0));
  FDRE \sum_V_reg_892_reg[15] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(Seuil_calc2_mac_mdEe_U22_n_40),
        .Q(sum_V_reg_892_reg[15]),
        .R(1'b0));
  FDRE \sum_V_reg_892_reg[16] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(Seuil_calc2_mac_mdEe_U22_n_39),
        .Q(sum_V_reg_892_reg[16]),
        .R(1'b0));
  FDRE \sum_V_reg_892_reg[17] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(Seuil_calc2_mac_mdEe_U22_n_38),
        .Q(sum_V_reg_892_reg[17]),
        .R(1'b0));
  FDRE \sum_V_reg_892_reg[18] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(Seuil_calc2_mac_mdEe_U22_n_45),
        .Q(sum_V_reg_892_reg[18]),
        .R(1'b0));
  FDRE \sum_V_reg_892_reg[19] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(Seuil_calc2_mac_mdEe_U22_n_44),
        .Q(sum_V_reg_892_reg[19]),
        .R(1'b0));
  FDRE \sum_V_reg_892_reg[20] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(Seuil_calc2_mac_mdEe_U22_n_43),
        .Q(sum_V_reg_892_reg[20]),
        .R(1'b0));
  FDRE \sum_V_reg_892_reg[21] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(Seuil_calc2_mac_mdEe_U22_n_42),
        .Q(sum_V_reg_892_reg[21]),
        .R(1'b0));
  FDRE \sum_V_reg_892_reg[2] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(Seuil_calc2_mac_mdEe_U22_n_29),
        .Q(sum_V_reg_892_reg[2]),
        .R(1'b0));
  FDRE \sum_V_reg_892_reg[3] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(Seuil_calc2_mac_mdEe_U22_n_28),
        .Q(sum_V_reg_892_reg[3]),
        .R(1'b0));
  FDRE \sum_V_reg_892_reg[4] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(Seuil_calc2_mac_mdEe_U22_n_27),
        .Q(sum_V_reg_892_reg[4]),
        .R(1'b0));
  FDRE \sum_V_reg_892_reg[5] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(Seuil_calc2_mac_mdEe_U22_n_26),
        .Q(sum_V_reg_892_reg[5]),
        .R(1'b0));
  FDRE \sum_V_reg_892_reg[6] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(Seuil_calc2_mac_mdEe_U22_n_33),
        .Q(sum_V_reg_892_reg[6]),
        .R(1'b0));
  FDRE \sum_V_reg_892_reg[7] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(Seuil_calc2_mac_mdEe_U22_n_32),
        .Q(sum_V_reg_892_reg[7]),
        .R(1'b0));
  FDRE \sum_V_reg_892_reg[8] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(Seuil_calc2_mac_mdEe_U22_n_31),
        .Q(sum_V_reg_892_reg[8]),
        .R(1'b0));
  FDRE \sum_V_reg_892_reg[9] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(Seuil_calc2_mac_mdEe_U22_n_30),
        .Q(sum_V_reg_892_reg[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hA2A200A2)) 
    \val_V_reg_876[7]_i_1 
       (.I0(\ap_CS_fsm_reg[1]_0 ),
        .I1(ap_enable_reg_pp0_iter4_reg_n_8),
        .I2(detect_1_full_n),
        .I3(ap_enable_reg_pp0_iter0_reg_0),
        .I4(dbl2scalc_1_empty_n),
        .O(val_V_reg_8760));
  FDRE \val_V_reg_876_pp0_iter1_reg_reg[0] 
       (.C(clock),
        .CE(val_V_reg_8760),
        .D(\val_V_reg_876_reg_n_8_[0] ),
        .Q(val_V_reg_876_pp0_iter1_reg[0]),
        .R(1'b0));
  FDRE \val_V_reg_876_pp0_iter1_reg_reg[1] 
       (.C(clock),
        .CE(val_V_reg_8760),
        .D(\val_V_reg_876_reg_n_8_[1] ),
        .Q(val_V_reg_876_pp0_iter1_reg[1]),
        .R(1'b0));
  FDRE \val_V_reg_876_pp0_iter1_reg_reg[2] 
       (.C(clock),
        .CE(val_V_reg_8760),
        .D(\val_V_reg_876_reg_n_8_[2] ),
        .Q(val_V_reg_876_pp0_iter1_reg[2]),
        .R(1'b0));
  FDRE \val_V_reg_876_pp0_iter1_reg_reg[3] 
       (.C(clock),
        .CE(val_V_reg_8760),
        .D(\val_V_reg_876_reg_n_8_[3] ),
        .Q(val_V_reg_876_pp0_iter1_reg[3]),
        .R(1'b0));
  FDRE \val_V_reg_876_pp0_iter1_reg_reg[4] 
       (.C(clock),
        .CE(val_V_reg_8760),
        .D(\val_V_reg_876_reg_n_8_[4] ),
        .Q(val_V_reg_876_pp0_iter1_reg[4]),
        .R(1'b0));
  FDRE \val_V_reg_876_pp0_iter1_reg_reg[5] 
       (.C(clock),
        .CE(val_V_reg_8760),
        .D(\val_V_reg_876_reg_n_8_[5] ),
        .Q(val_V_reg_876_pp0_iter1_reg[5]),
        .R(1'b0));
  FDRE \val_V_reg_876_pp0_iter1_reg_reg[6] 
       (.C(clock),
        .CE(val_V_reg_8760),
        .D(\val_V_reg_876_reg_n_8_[6] ),
        .Q(val_V_reg_876_pp0_iter1_reg[6]),
        .R(1'b0));
  FDRE \val_V_reg_876_pp0_iter1_reg_reg[7] 
       (.C(clock),
        .CE(val_V_reg_8760),
        .D(\val_V_reg_876_reg_n_8_[7] ),
        .Q(val_V_reg_876_pp0_iter1_reg[7]),
        .R(1'b0));
  FDRE \val_V_reg_876_reg[0] 
       (.C(clock),
        .CE(val_V_reg_8760),
        .D(D[0]),
        .Q(\val_V_reg_876_reg_n_8_[0] ),
        .R(1'b0));
  FDRE \val_V_reg_876_reg[1] 
       (.C(clock),
        .CE(val_V_reg_8760),
        .D(D[1]),
        .Q(\val_V_reg_876_reg_n_8_[1] ),
        .R(1'b0));
  FDRE \val_V_reg_876_reg[2] 
       (.C(clock),
        .CE(val_V_reg_8760),
        .D(D[2]),
        .Q(\val_V_reg_876_reg_n_8_[2] ),
        .R(1'b0));
  FDRE \val_V_reg_876_reg[3] 
       (.C(clock),
        .CE(val_V_reg_8760),
        .D(D[3]),
        .Q(\val_V_reg_876_reg_n_8_[3] ),
        .R(1'b0));
  FDRE \val_V_reg_876_reg[4] 
       (.C(clock),
        .CE(val_V_reg_8760),
        .D(D[4]),
        .Q(\val_V_reg_876_reg_n_8_[4] ),
        .R(1'b0));
  FDRE \val_V_reg_876_reg[5] 
       (.C(clock),
        .CE(val_V_reg_8760),
        .D(D[5]),
        .Q(\val_V_reg_876_reg_n_8_[5] ),
        .R(1'b0));
  FDRE \val_V_reg_876_reg[6] 
       (.C(clock),
        .CE(val_V_reg_8760),
        .D(D[6]),
        .Q(\val_V_reg_876_reg_n_8_[6] ),
        .R(1'b0));
  FDRE \val_V_reg_876_reg[7] 
       (.C(clock),
        .CE(val_V_reg_8760),
        .D(D[7]),
        .Q(\val_V_reg_876_reg_n_8_[7] ),
        .R(1'b0));
  FDRE \x0_V_fu_84_reg[0] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_1_V_fu_88[0]),
        .Q(x0_V_fu_84[0]),
        .R(1'b0));
  FDRE \x0_V_fu_84_reg[1] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_1_V_fu_88[1]),
        .Q(x0_V_fu_84[1]),
        .R(1'b0));
  FDRE \x0_V_fu_84_reg[2] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_1_V_fu_88[2]),
        .Q(x0_V_fu_84[2]),
        .R(1'b0));
  FDRE \x0_V_fu_84_reg[3] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_1_V_fu_88[3]),
        .Q(x0_V_fu_84[3]),
        .R(1'b0));
  FDRE \x0_V_fu_84_reg[4] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_1_V_fu_88[4]),
        .Q(x0_V_fu_84[4]),
        .R(1'b0));
  FDRE \x0_V_fu_84_reg[5] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_1_V_fu_88[5]),
        .Q(x0_V_fu_84[5]),
        .R(1'b0));
  FDRE \x0_V_fu_84_reg[6] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_1_V_fu_88[6]),
        .Q(x0_V_fu_84[6]),
        .R(1'b0));
  FDRE \x0_V_fu_84_reg[7] 
       (.C(clock),
        .CE(buffer_10_V_fu_1240),
        .D(buffer_1_V_fu_88[7]),
        .Q(x0_V_fu_84[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Seuil_calc2_mac_mdEe" *) 
module my_module2_0_Seuil_calc2_mac_mdEe
   (P,
    SR,
    O,
    p,
    p_0,
    p_1,
    p_2,
    \p_0108_0_reg_221_reg[5] ,
    \p_0108_0_reg_221_reg[9] ,
    \p_0108_0_reg_221_reg[13] ,
    \p_0108_0_reg_221_reg[17] ,
    p_3,
    clock,
    p_4,
    p_5,
    dbl2scalc_1_empty_n,
    p_6,
    detect_1_full_n,
    p_7,
    p_8,
    \res_2_V_reg_897_reg[5] ,
    \res_2_V_reg_897_reg[5]_0 ,
    D,
    \res_2_V_reg_897_reg[5]_1 ,
    Q,
    ap_enable_reg_pp0_iter3,
    \sum_V_reg_892_reg[21] ,
    p_9,
    ap_enable_reg_pp0_iter2,
    p_10,
    S);
  output [16:0]P;
  output [0:0]SR;
  output [3:0]O;
  output [3:0]p;
  output [3:0]p_0;
  output [3:0]p_1;
  output [3:0]p_2;
  output [2:0]\p_0108_0_reg_221_reg[5] ;
  output [3:0]\p_0108_0_reg_221_reg[9] ;
  output [3:0]\p_0108_0_reg_221_reg[13] ;
  output [3:0]\p_0108_0_reg_221_reg[17] ;
  output [2:0]p_3;
  input clock;
  input [15:0]p_4;
  input p_5;
  input dbl2scalc_1_empty_n;
  input p_6;
  input detect_1_full_n;
  input p_7;
  input p_8;
  input \res_2_V_reg_897_reg[5] ;
  input \res_2_V_reg_897_reg[5]_0 ;
  input [2:0]D;
  input \res_2_V_reg_897_reg[5]_1 ;
  input [18:0]Q;
  input ap_enable_reg_pp0_iter3;
  input [18:0]\sum_V_reg_892_reg[21] ;
  input [7:0]p_9;
  input ap_enable_reg_pp0_iter2;
  input [7:0]p_10;
  input [0:0]S;

  wire [2:0]D;
  wire [3:0]O;
  wire [16:0]P;
  wire [18:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter3;
  wire clock;
  wire dbl2scalc_1_empty_n;
  wire detect_1_full_n;
  wire [3:0]p;
  wire [3:0]p_0;
  wire [3:0]\p_0108_0_reg_221_reg[13] ;
  wire [3:0]\p_0108_0_reg_221_reg[17] ;
  wire [2:0]\p_0108_0_reg_221_reg[5] ;
  wire [3:0]\p_0108_0_reg_221_reg[9] ;
  wire [3:0]p_1;
  wire [7:0]p_10;
  wire [3:0]p_2;
  wire [2:0]p_3;
  wire [15:0]p_4;
  wire p_5;
  wire p_6;
  wire p_7;
  wire p_8;
  wire [7:0]p_9;
  wire \res_2_V_reg_897_reg[5] ;
  wire \res_2_V_reg_897_reg[5]_0 ;
  wire \res_2_V_reg_897_reg[5]_1 ;
  wire [18:0]\sum_V_reg_892_reg[21] ;

  my_module2_0_Seuil_calc2_mac_mdEe_DSP48_0 Seuil_calc2_mac_mdEe_DSP48_0_U
       (.D(D),
        .O(O),
        .P(P),
        .Q(Q),
        .S(S),
        .SR(SR),
        .ap_enable_reg_pp0_iter2(ap_enable_reg_pp0_iter2),
        .ap_enable_reg_pp0_iter3(ap_enable_reg_pp0_iter3),
        .clock(clock),
        .dbl2scalc_1_empty_n(dbl2scalc_1_empty_n),
        .detect_1_full_n(detect_1_full_n),
        .p_0(p),
        .\p_0108_0_reg_221_reg[13] (\p_0108_0_reg_221_reg[13] ),
        .\p_0108_0_reg_221_reg[17] (\p_0108_0_reg_221_reg[17] ),
        .\p_0108_0_reg_221_reg[5] (\p_0108_0_reg_221_reg[5] ),
        .\p_0108_0_reg_221_reg[9] (\p_0108_0_reg_221_reg[9] ),
        .p_1(p_0),
        .p_10(p_9),
        .p_11(p_10),
        .p_2(p_1),
        .p_3(p_2),
        .p_4(p_3),
        .p_5(p_4),
        .p_6(p_5),
        .p_7(p_6),
        .p_8(p_7),
        .p_9(p_8),
        .\res_2_V_reg_897_reg[5] (\res_2_V_reg_897_reg[5] ),
        .\res_2_V_reg_897_reg[5]_0 (\res_2_V_reg_897_reg[5]_0 ),
        .\res_2_V_reg_897_reg[5]_1 (\res_2_V_reg_897_reg[5]_1 ),
        .\sum_V_reg_892_reg[21] (\sum_V_reg_892_reg[21] ));
endmodule

(* ORIG_REF_NAME = "Seuil_calc2_mac_mdEe_DSP48_0" *) 
module my_module2_0_Seuil_calc2_mac_mdEe_DSP48_0
   (P,
    SR,
    O,
    p_0,
    p_1,
    p_2,
    p_3,
    \p_0108_0_reg_221_reg[5] ,
    \p_0108_0_reg_221_reg[9] ,
    \p_0108_0_reg_221_reg[13] ,
    \p_0108_0_reg_221_reg[17] ,
    p_4,
    clock,
    p_5,
    p_6,
    dbl2scalc_1_empty_n,
    p_7,
    detect_1_full_n,
    p_8,
    p_9,
    \res_2_V_reg_897_reg[5] ,
    \res_2_V_reg_897_reg[5]_0 ,
    D,
    \res_2_V_reg_897_reg[5]_1 ,
    Q,
    ap_enable_reg_pp0_iter3,
    \sum_V_reg_892_reg[21] ,
    p_10,
    ap_enable_reg_pp0_iter2,
    p_11,
    S);
  output [16:0]P;
  output [0:0]SR;
  output [3:0]O;
  output [3:0]p_0;
  output [3:0]p_1;
  output [3:0]p_2;
  output [3:0]p_3;
  output [2:0]\p_0108_0_reg_221_reg[5] ;
  output [3:0]\p_0108_0_reg_221_reg[9] ;
  output [3:0]\p_0108_0_reg_221_reg[13] ;
  output [3:0]\p_0108_0_reg_221_reg[17] ;
  output [2:0]p_4;
  input clock;
  input [15:0]p_5;
  input p_6;
  input dbl2scalc_1_empty_n;
  input p_7;
  input detect_1_full_n;
  input p_8;
  input p_9;
  input \res_2_V_reg_897_reg[5] ;
  input \res_2_V_reg_897_reg[5]_0 ;
  input [2:0]D;
  input \res_2_V_reg_897_reg[5]_1 ;
  input [18:0]Q;
  input ap_enable_reg_pp0_iter3;
  input [18:0]\sum_V_reg_892_reg[21] ;
  input [7:0]p_10;
  input ap_enable_reg_pp0_iter2;
  input [7:0]p_11;
  input [0:0]S;

  wire [2:0]D;
  wire [3:0]O;
  wire [16:0]P;
  wire [18:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter3;
  wire clock;
  wire dbl2scalc_1_empty_n;
  wire detect_1_full_n;
  wire [7:0]grp_fu_664_p0;
  wire [3:0]p_0;
  wire [3:0]\p_0108_0_reg_221_reg[13] ;
  wire [3:0]\p_0108_0_reg_221_reg[17] ;
  wire [2:0]\p_0108_0_reg_221_reg[5] ;
  wire [3:0]\p_0108_0_reg_221_reg[9] ;
  wire [3:0]p_1;
  wire [7:0]p_10;
  wire [7:0]p_11;
  wire [3:0]p_2;
  wire [3:0]p_3;
  wire [2:0]p_4;
  wire [15:0]p_5;
  wire p_6;
  wire p_7;
  wire p_8;
  wire p_9;
  wire \res_2_V_reg_897_reg[5] ;
  wire \res_2_V_reg_897_reg[5]_0 ;
  wire \res_2_V_reg_897_reg[5]_1 ;
  wire ret_V_reg_8820;
  wire \sum_V_reg_892[10]_i_2_n_8 ;
  wire \sum_V_reg_892[10]_i_3_n_8 ;
  wire \sum_V_reg_892[10]_i_4_n_8 ;
  wire \sum_V_reg_892[10]_i_5_n_8 ;
  wire \sum_V_reg_892[14]_i_2_n_8 ;
  wire \sum_V_reg_892[14]_i_3_n_8 ;
  wire \sum_V_reg_892[14]_i_4_n_8 ;
  wire \sum_V_reg_892[14]_i_5_n_8 ;
  wire \sum_V_reg_892[18]_i_2_n_8 ;
  wire \sum_V_reg_892[18]_i_3_n_8 ;
  wire \sum_V_reg_892[18]_i_4_n_8 ;
  wire \sum_V_reg_892[18]_i_5_n_8 ;
  wire \sum_V_reg_892[2]_i_2_n_8 ;
  wire \sum_V_reg_892[2]_i_3_n_8 ;
  wire \sum_V_reg_892[2]_i_4_n_8 ;
  wire \sum_V_reg_892[6]_i_2_n_8 ;
  wire \sum_V_reg_892[6]_i_3_n_8 ;
  wire \sum_V_reg_892[6]_i_4_n_8 ;
  wire \sum_V_reg_892[6]_i_5_n_8 ;
  wire \sum_V_reg_892_reg[10]_i_1_n_10 ;
  wire \sum_V_reg_892_reg[10]_i_1_n_11 ;
  wire \sum_V_reg_892_reg[10]_i_1_n_8 ;
  wire \sum_V_reg_892_reg[10]_i_1_n_9 ;
  wire \sum_V_reg_892_reg[14]_i_1_n_10 ;
  wire \sum_V_reg_892_reg[14]_i_1_n_11 ;
  wire \sum_V_reg_892_reg[14]_i_1_n_8 ;
  wire \sum_V_reg_892_reg[14]_i_1_n_9 ;
  wire \sum_V_reg_892_reg[18]_i_1_n_10 ;
  wire \sum_V_reg_892_reg[18]_i_1_n_11 ;
  wire \sum_V_reg_892_reg[18]_i_1_n_9 ;
  wire [18:0]\sum_V_reg_892_reg[21] ;
  wire \sum_V_reg_892_reg[2]_i_1_n_10 ;
  wire \sum_V_reg_892_reg[2]_i_1_n_11 ;
  wire \sum_V_reg_892_reg[2]_i_1_n_8 ;
  wire \sum_V_reg_892_reg[2]_i_1_n_9 ;
  wire \sum_V_reg_892_reg[6]_i_1_n_10 ;
  wire \sum_V_reg_892_reg[6]_i_1_n_11 ;
  wire \sum_V_reg_892_reg[6]_i_1_n_8 ;
  wire \sum_V_reg_892_reg[6]_i_1_n_9 ;
  wire NLW_p_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_OVERFLOW_UNCONNECTED;
  wire NLW_p_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_p_P_UNCONNECTED;
  wire [47:0]NLW_p_PCOUT_UNCONNECTED;
  wire [3:3]\NLW_sum_V_reg_892_reg[18]_i_1_CO_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,grp_fu_664_p0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b1,1'b1}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,grp_fu_664_p0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_5}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(ret_V_reg_8820),
        .CLK(clock),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_OVERFLOW_UNCONNECTED),
        .P({NLW_p_P_UNCONNECTED[47:17],P}),
        .PATTERNBDETECT(NLW_p_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_UNDERFLOW_UNCONNECTED));
  LUT6 #(
    .INIT(64'h8A008A8A00000000)) 
    p_i_1__0
       (.I0(p_6),
        .I1(dbl2scalc_1_empty_n),
        .I2(p_7),
        .I3(detect_1_full_n),
        .I4(p_8),
        .I5(p_9),
        .O(ret_V_reg_8820));
  LUT3 #(
    .INIT(8'hB8)) 
    p_i_2
       (.I0(p_10[7]),
        .I1(ap_enable_reg_pp0_iter2),
        .I2(p_11[7]),
        .O(grp_fu_664_p0[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_i_3
       (.I0(p_10[6]),
        .I1(ap_enable_reg_pp0_iter2),
        .I2(p_11[6]),
        .O(grp_fu_664_p0[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_i_4
       (.I0(p_10[5]),
        .I1(ap_enable_reg_pp0_iter2),
        .I2(p_11[5]),
        .O(grp_fu_664_p0[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_i_5
       (.I0(p_10[4]),
        .I1(ap_enable_reg_pp0_iter2),
        .I2(p_11[4]),
        .O(grp_fu_664_p0[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_i_6
       (.I0(p_10[3]),
        .I1(ap_enable_reg_pp0_iter2),
        .I2(p_11[3]),
        .O(grp_fu_664_p0[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_i_7
       (.I0(p_10[2]),
        .I1(ap_enable_reg_pp0_iter2),
        .I2(p_11[2]),
        .O(grp_fu_664_p0[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_i_8
       (.I0(p_10[1]),
        .I1(ap_enable_reg_pp0_iter2),
        .I2(p_11[1]),
        .O(grp_fu_664_p0[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    p_i_9
       (.I0(p_10[0]),
        .I1(ap_enable_reg_pp0_iter2),
        .I2(p_11[0]),
        .O(grp_fu_664_p0[0]));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \res_2_V_reg_897[16]_i_1 
       (.I0(\res_2_V_reg_897_reg[5] ),
        .I1(\res_2_V_reg_897_reg[5]_0 ),
        .I2(D[0]),
        .I3(D[1]),
        .I4(D[2]),
        .I5(\res_2_V_reg_897_reg[5]_1 ),
        .O(SR));
  LUT4 #(
    .INIT(16'h1DE2)) 
    sum_V_fu_454_p2_carry__0_i_1
       (.I0(Q[6]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\sum_V_reg_892_reg[21] [6]),
        .I3(P[6]),
        .O(\p_0108_0_reg_221_reg[9] [3]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    sum_V_fu_454_p2_carry__0_i_2
       (.I0(Q[5]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\sum_V_reg_892_reg[21] [5]),
        .I3(P[5]),
        .O(\p_0108_0_reg_221_reg[9] [2]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    sum_V_fu_454_p2_carry__0_i_3
       (.I0(Q[4]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\sum_V_reg_892_reg[21] [4]),
        .I3(P[4]),
        .O(\p_0108_0_reg_221_reg[9] [1]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    sum_V_fu_454_p2_carry__0_i_4
       (.I0(Q[3]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\sum_V_reg_892_reg[21] [3]),
        .I3(P[3]),
        .O(\p_0108_0_reg_221_reg[9] [0]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    sum_V_fu_454_p2_carry__1_i_1
       (.I0(Q[10]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\sum_V_reg_892_reg[21] [10]),
        .I3(P[10]),
        .O(\p_0108_0_reg_221_reg[13] [3]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    sum_V_fu_454_p2_carry__1_i_2
       (.I0(Q[9]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\sum_V_reg_892_reg[21] [9]),
        .I3(P[9]),
        .O(\p_0108_0_reg_221_reg[13] [2]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    sum_V_fu_454_p2_carry__1_i_3
       (.I0(Q[8]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\sum_V_reg_892_reg[21] [8]),
        .I3(P[8]),
        .O(\p_0108_0_reg_221_reg[13] [1]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    sum_V_fu_454_p2_carry__1_i_4
       (.I0(Q[7]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\sum_V_reg_892_reg[21] [7]),
        .I3(P[7]),
        .O(\p_0108_0_reg_221_reg[13] [0]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    sum_V_fu_454_p2_carry__2_i_1
       (.I0(Q[14]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\sum_V_reg_892_reg[21] [14]),
        .I3(P[14]),
        .O(\p_0108_0_reg_221_reg[17] [3]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    sum_V_fu_454_p2_carry__2_i_2
       (.I0(Q[13]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\sum_V_reg_892_reg[21] [13]),
        .I3(P[13]),
        .O(\p_0108_0_reg_221_reg[17] [2]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    sum_V_fu_454_p2_carry__2_i_3
       (.I0(Q[12]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\sum_V_reg_892_reg[21] [12]),
        .I3(P[12]),
        .O(\p_0108_0_reg_221_reg[17] [1]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    sum_V_fu_454_p2_carry__2_i_4
       (.I0(Q[11]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\sum_V_reg_892_reg[21] [11]),
        .I3(P[11]),
        .O(\p_0108_0_reg_221_reg[17] [0]));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum_V_fu_454_p2_carry__3_i_3
       (.I0(P[16]),
        .I1(Q[17]),
        .I2(ap_enable_reg_pp0_iter3),
        .I3(\sum_V_reg_892_reg[21] [17]),
        .O(p_4[2]));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum_V_fu_454_p2_carry__3_i_4
       (.I0(P[16]),
        .I1(Q[16]),
        .I2(ap_enable_reg_pp0_iter3),
        .I3(\sum_V_reg_892_reg[21] [16]),
        .O(p_4[1]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    sum_V_fu_454_p2_carry__3_i_5
       (.I0(Q[15]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\sum_V_reg_892_reg[21] [15]),
        .I3(P[15]),
        .O(p_4[0]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    sum_V_fu_454_p2_carry_i_1
       (.I0(Q[2]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\sum_V_reg_892_reg[21] [2]),
        .I3(P[2]),
        .O(\p_0108_0_reg_221_reg[5] [2]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    sum_V_fu_454_p2_carry_i_2
       (.I0(Q[1]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\sum_V_reg_892_reg[21] [1]),
        .I3(P[1]),
        .O(\p_0108_0_reg_221_reg[5] [1]));
  LUT4 #(
    .INIT(16'h1DE2)) 
    sum_V_fu_454_p2_carry_i_3
       (.I0(Q[0]),
        .I1(ap_enable_reg_pp0_iter3),
        .I2(\sum_V_reg_892_reg[21] [0]),
        .I3(P[0]),
        .O(\p_0108_0_reg_221_reg[5] [0]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \sum_V_reg_892[10]_i_2 
       (.I0(P[10]),
        .I1(Q[10]),
        .I2(ap_enable_reg_pp0_iter3),
        .I3(\sum_V_reg_892_reg[21] [10]),
        .O(\sum_V_reg_892[10]_i_2_n_8 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \sum_V_reg_892[10]_i_3 
       (.I0(P[9]),
        .I1(Q[9]),
        .I2(ap_enable_reg_pp0_iter3),
        .I3(\sum_V_reg_892_reg[21] [9]),
        .O(\sum_V_reg_892[10]_i_3_n_8 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \sum_V_reg_892[10]_i_4 
       (.I0(P[8]),
        .I1(Q[8]),
        .I2(ap_enable_reg_pp0_iter3),
        .I3(\sum_V_reg_892_reg[21] [8]),
        .O(\sum_V_reg_892[10]_i_4_n_8 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \sum_V_reg_892[10]_i_5 
       (.I0(P[7]),
        .I1(Q[7]),
        .I2(ap_enable_reg_pp0_iter3),
        .I3(\sum_V_reg_892_reg[21] [7]),
        .O(\sum_V_reg_892[10]_i_5_n_8 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \sum_V_reg_892[14]_i_2 
       (.I0(P[14]),
        .I1(Q[14]),
        .I2(ap_enable_reg_pp0_iter3),
        .I3(\sum_V_reg_892_reg[21] [14]),
        .O(\sum_V_reg_892[14]_i_2_n_8 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \sum_V_reg_892[14]_i_3 
       (.I0(P[13]),
        .I1(Q[13]),
        .I2(ap_enable_reg_pp0_iter3),
        .I3(\sum_V_reg_892_reg[21] [13]),
        .O(\sum_V_reg_892[14]_i_3_n_8 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \sum_V_reg_892[14]_i_4 
       (.I0(P[12]),
        .I1(Q[12]),
        .I2(ap_enable_reg_pp0_iter3),
        .I3(\sum_V_reg_892_reg[21] [12]),
        .O(\sum_V_reg_892[14]_i_4_n_8 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \sum_V_reg_892[14]_i_5 
       (.I0(P[11]),
        .I1(Q[11]),
        .I2(ap_enable_reg_pp0_iter3),
        .I3(\sum_V_reg_892_reg[21] [11]),
        .O(\sum_V_reg_892[14]_i_5_n_8 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \sum_V_reg_892[18]_i_2 
       (.I0(P[16]),
        .I1(Q[18]),
        .I2(ap_enable_reg_pp0_iter3),
        .I3(\sum_V_reg_892_reg[21] [18]),
        .O(\sum_V_reg_892[18]_i_2_n_8 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \sum_V_reg_892[18]_i_3 
       (.I0(P[16]),
        .I1(Q[17]),
        .I2(ap_enable_reg_pp0_iter3),
        .I3(\sum_V_reg_892_reg[21] [17]),
        .O(\sum_V_reg_892[18]_i_3_n_8 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \sum_V_reg_892[18]_i_4 
       (.I0(P[16]),
        .I1(Q[16]),
        .I2(ap_enable_reg_pp0_iter3),
        .I3(\sum_V_reg_892_reg[21] [16]),
        .O(\sum_V_reg_892[18]_i_4_n_8 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \sum_V_reg_892[18]_i_5 
       (.I0(P[15]),
        .I1(Q[15]),
        .I2(ap_enable_reg_pp0_iter3),
        .I3(\sum_V_reg_892_reg[21] [15]),
        .O(\sum_V_reg_892[18]_i_5_n_8 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \sum_V_reg_892[2]_i_2 
       (.I0(P[2]),
        .I1(Q[2]),
        .I2(ap_enable_reg_pp0_iter3),
        .I3(\sum_V_reg_892_reg[21] [2]),
        .O(\sum_V_reg_892[2]_i_2_n_8 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \sum_V_reg_892[2]_i_3 
       (.I0(P[1]),
        .I1(Q[1]),
        .I2(ap_enable_reg_pp0_iter3),
        .I3(\sum_V_reg_892_reg[21] [1]),
        .O(\sum_V_reg_892[2]_i_3_n_8 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \sum_V_reg_892[2]_i_4 
       (.I0(P[0]),
        .I1(Q[0]),
        .I2(ap_enable_reg_pp0_iter3),
        .I3(\sum_V_reg_892_reg[21] [0]),
        .O(\sum_V_reg_892[2]_i_4_n_8 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \sum_V_reg_892[6]_i_2 
       (.I0(P[6]),
        .I1(Q[6]),
        .I2(ap_enable_reg_pp0_iter3),
        .I3(\sum_V_reg_892_reg[21] [6]),
        .O(\sum_V_reg_892[6]_i_2_n_8 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \sum_V_reg_892[6]_i_3 
       (.I0(P[5]),
        .I1(Q[5]),
        .I2(ap_enable_reg_pp0_iter3),
        .I3(\sum_V_reg_892_reg[21] [5]),
        .O(\sum_V_reg_892[6]_i_3_n_8 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \sum_V_reg_892[6]_i_4 
       (.I0(P[4]),
        .I1(Q[4]),
        .I2(ap_enable_reg_pp0_iter3),
        .I3(\sum_V_reg_892_reg[21] [4]),
        .O(\sum_V_reg_892[6]_i_4_n_8 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \sum_V_reg_892[6]_i_5 
       (.I0(P[3]),
        .I1(Q[3]),
        .I2(ap_enable_reg_pp0_iter3),
        .I3(\sum_V_reg_892_reg[21] [3]),
        .O(\sum_V_reg_892[6]_i_5_n_8 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sum_V_reg_892_reg[10]_i_1 
       (.CI(\sum_V_reg_892_reg[6]_i_1_n_8 ),
        .CO({\sum_V_reg_892_reg[10]_i_1_n_8 ,\sum_V_reg_892_reg[10]_i_1_n_9 ,\sum_V_reg_892_reg[10]_i_1_n_10 ,\sum_V_reg_892_reg[10]_i_1_n_11 }),
        .CYINIT(1'b0),
        .DI(P[10:7]),
        .O(p_1),
        .S({\sum_V_reg_892[10]_i_2_n_8 ,\sum_V_reg_892[10]_i_3_n_8 ,\sum_V_reg_892[10]_i_4_n_8 ,\sum_V_reg_892[10]_i_5_n_8 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sum_V_reg_892_reg[14]_i_1 
       (.CI(\sum_V_reg_892_reg[10]_i_1_n_8 ),
        .CO({\sum_V_reg_892_reg[14]_i_1_n_8 ,\sum_V_reg_892_reg[14]_i_1_n_9 ,\sum_V_reg_892_reg[14]_i_1_n_10 ,\sum_V_reg_892_reg[14]_i_1_n_11 }),
        .CYINIT(1'b0),
        .DI(P[14:11]),
        .O(p_2),
        .S({\sum_V_reg_892[14]_i_2_n_8 ,\sum_V_reg_892[14]_i_3_n_8 ,\sum_V_reg_892[14]_i_4_n_8 ,\sum_V_reg_892[14]_i_5_n_8 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sum_V_reg_892_reg[18]_i_1 
       (.CI(\sum_V_reg_892_reg[14]_i_1_n_8 ),
        .CO({\NLW_sum_V_reg_892_reg[18]_i_1_CO_UNCONNECTED [3],\sum_V_reg_892_reg[18]_i_1_n_9 ,\sum_V_reg_892_reg[18]_i_1_n_10 ,\sum_V_reg_892_reg[18]_i_1_n_11 }),
        .CYINIT(1'b0),
        .DI({1'b0,P[16],P[16:15]}),
        .O(p_3),
        .S({\sum_V_reg_892[18]_i_2_n_8 ,\sum_V_reg_892[18]_i_3_n_8 ,\sum_V_reg_892[18]_i_4_n_8 ,\sum_V_reg_892[18]_i_5_n_8 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sum_V_reg_892_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\sum_V_reg_892_reg[2]_i_1_n_8 ,\sum_V_reg_892_reg[2]_i_1_n_9 ,\sum_V_reg_892_reg[2]_i_1_n_10 ,\sum_V_reg_892_reg[2]_i_1_n_11 }),
        .CYINIT(1'b0),
        .DI({P[2:0],1'b0}),
        .O(O),
        .S({\sum_V_reg_892[2]_i_2_n_8 ,\sum_V_reg_892[2]_i_3_n_8 ,\sum_V_reg_892[2]_i_4_n_8 ,S}));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \sum_V_reg_892_reg[6]_i_1 
       (.CI(\sum_V_reg_892_reg[2]_i_1_n_8 ),
        .CO({\sum_V_reg_892_reg[6]_i_1_n_8 ,\sum_V_reg_892_reg[6]_i_1_n_9 ,\sum_V_reg_892_reg[6]_i_1_n_10 ,\sum_V_reg_892_reg[6]_i_1_n_11 }),
        .CYINIT(1'b0),
        .DI(P[6:3]),
        .O(p_0),
        .S({\sum_V_reg_892[6]_i_2_n_8 ,\sum_V_reg_892[6]_i_3_n_8 ,\sum_V_reg_892[6]_i_4_n_8 ,\sum_V_reg_892[6]_i_5_n_8 }));
endmodule

(* ORIG_REF_NAME = "fifo_w1_d1024_A" *) 
module my_module2_0_fifo_w1_d1024_A
   (detect_1_full_n,
    detect_1_empty_n,
    SR,
    detect_1_dout,
    \mOutPtr_reg[8]_0 ,
    \ap_CS_fsm_reg[1] ,
    S,
    \mOutPtr_reg[7]_0 ,
    \mOutPtr_reg[9]_0 ,
    clock,
    dbl2tsep_1_empty_n,
    Q,
    reset,
    internal_full_n_reg_0,
    ce,
    tmp_reg_173,
    \mOutPtr_reg[4]_0 ,
    E,
    D,
    in);
  output detect_1_full_n;
  output detect_1_empty_n;
  output [0:0]SR;
  output detect_1_dout;
  output [8:0]\mOutPtr_reg[8]_0 ;
  output \ap_CS_fsm_reg[1] ;
  output [3:0]S;
  output [3:0]\mOutPtr_reg[7]_0 ;
  output [1:0]\mOutPtr_reg[9]_0 ;
  input clock;
  input dbl2tsep_1_empty_n;
  input [0:0]Q;
  input reset;
  input internal_full_n_reg_0;
  input ce;
  input tmp_reg_173;
  input \mOutPtr_reg[4]_0 ;
  input [0:0]E;
  input [9:0]D;
  input [0:0]in;

  wire [9:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [8:5]a;
  wire \ap_CS_fsm_reg[1] ;
  wire ce;
  wire clock;
  wire dbl2tsep_1_empty_n;
  wire detect_1_dout;
  wire detect_1_empty_n;
  wire detect_1_full_n;
  wire [0:0]in;
  wire internal_empty_n_i_1_n_8;
  wire internal_empty_n_i_2__0_n_8;
  wire internal_empty_n_i_3__0_n_8;
  wire internal_empty_n_i_4_n_8;
  wire internal_full_n_i_1_n_8;
  wire internal_full_n_i_2__4_n_8;
  wire internal_full_n_i_4_n_8;
  wire internal_full_n_i_5_n_8;
  wire internal_full_n_reg_0;
  wire \mOutPtr[0]_i_1_n_8 ;
  wire [10:9]mOutPtr_reg;
  wire \mOutPtr_reg[4]_0 ;
  wire [3:0]\mOutPtr_reg[7]_0 ;
  wire [8:0]\mOutPtr_reg[8]_0 ;
  wire [1:0]\mOutPtr_reg[9]_0 ;
  wire reset;
  wire tmp_reg_173;

  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[1023][0]_mux__15_i_1 
       (.I0(\mOutPtr_reg[8]_0 [6]),
        .I1(mOutPtr_reg[10]),
        .O(a[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[1023][0]_mux_i_1 
       (.I0(\mOutPtr_reg[8]_0 [5]),
        .I1(mOutPtr_reg[10]),
        .O(a[5]));
  my_module2_0_fifo_w1_d1024_A_shiftReg U_fifo_w1_d1024_A_shiftReg
       (.Q(Q),
        .SR(SR),
        .\ap_CS_fsm[4]_i_3_0 (a),
        .\ap_CS_fsm_reg[1] (\ap_CS_fsm_reg[1] ),
        .ce(ce),
        .clock(clock),
        .dbl2tsep_1_empty_n(dbl2tsep_1_empty_n),
        .detect_1_dout(detect_1_dout),
        .in(in),
        .tmp_reg_173(tmp_reg_173),
        .\tmp_reg_173_reg[0] (detect_1_empty_n),
        .\tmp_reg_173_reg[0]_0 ({mOutPtr_reg,\mOutPtr_reg[8]_0 [4:0]}));
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[4]_i_6 
       (.I0(\mOutPtr_reg[8]_0 [8]),
        .I1(mOutPtr_reg[10]),
        .O(a[8]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[4]_i_7 
       (.I0(\mOutPtr_reg[8]_0 [7]),
        .I1(mOutPtr_reg[10]),
        .O(a[7]));
  LUT5 #(
    .INIT(32'h0000FB30)) 
    internal_empty_n_i_1
       (.I0(internal_empty_n_i_2__0_n_8),
        .I1(internal_full_n_reg_0),
        .I2(ce),
        .I3(detect_1_empty_n),
        .I4(reset),
        .O(internal_empty_n_i_1_n_8));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    internal_empty_n_i_2__0
       (.I0(\mOutPtr_reg[8]_0 [2]),
        .I1(\mOutPtr_reg[8]_0 [7]),
        .I2(\mOutPtr_reg[8]_0 [0]),
        .I3(internal_empty_n_i_3__0_n_8),
        .I4(internal_empty_n_i_4_n_8),
        .O(internal_empty_n_i_2__0_n_8));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    internal_empty_n_i_3__0
       (.I0(mOutPtr_reg[10]),
        .I1(mOutPtr_reg[9]),
        .I2(\mOutPtr_reg[8]_0 [8]),
        .I3(\mOutPtr_reg[8]_0 [3]),
        .O(internal_empty_n_i_3__0_n_8));
  LUT4 #(
    .INIT(16'hFFFE)) 
    internal_empty_n_i_4
       (.I0(\mOutPtr_reg[8]_0 [5]),
        .I1(\mOutPtr_reg[8]_0 [4]),
        .I2(\mOutPtr_reg[8]_0 [6]),
        .I3(\mOutPtr_reg[8]_0 [1]),
        .O(internal_empty_n_i_4_n_8));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(clock),
        .CE(1'b1),
        .D(internal_empty_n_i_1_n_8),
        .Q(detect_1_empty_n),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFAF8FFFA)) 
    internal_full_n_i_1
       (.I0(detect_1_full_n),
        .I1(internal_full_n_i_2__4_n_8),
        .I2(reset),
        .I3(internal_full_n_reg_0),
        .I4(ce),
        .O(internal_full_n_i_1_n_8));
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    internal_full_n_i_2__4
       (.I0(\mOutPtr_reg[8]_0 [6]),
        .I1(\mOutPtr_reg[8]_0 [0]),
        .I2(\mOutPtr_reg[8]_0 [1]),
        .I3(internal_full_n_i_4_n_8),
        .I4(internal_full_n_i_5_n_8),
        .O(internal_full_n_i_2__4_n_8));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    internal_full_n_i_4
       (.I0(mOutPtr_reg[10]),
        .I1(\mOutPtr_reg[8]_0 [8]),
        .I2(mOutPtr_reg[9]),
        .I3(\mOutPtr_reg[8]_0 [3]),
        .O(internal_full_n_i_4_n_8));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    internal_full_n_i_5
       (.I0(\mOutPtr_reg[8]_0 [4]),
        .I1(\mOutPtr_reg[8]_0 [2]),
        .I2(\mOutPtr_reg[8]_0 [7]),
        .I3(\mOutPtr_reg[8]_0 [5]),
        .O(internal_full_n_i_5_n_8));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(clock),
        .CE(1'b1),
        .D(internal_full_n_i_1_n_8),
        .Q(detect_1_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1 
       (.I0(\mOutPtr_reg[8]_0 [0]),
        .O(\mOutPtr[0]_i_1_n_8 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(clock),
        .CE(E),
        .D(\mOutPtr[0]_i_1_n_8 ),
        .Q(\mOutPtr_reg[8]_0 [0]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[10] 
       (.C(clock),
        .CE(E),
        .D(D[9]),
        .Q(mOutPtr_reg[10]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(clock),
        .CE(E),
        .D(D[0]),
        .Q(\mOutPtr_reg[8]_0 [1]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[2] 
       (.C(clock),
        .CE(E),
        .D(D[1]),
        .Q(\mOutPtr_reg[8]_0 [2]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[3] 
       (.C(clock),
        .CE(E),
        .D(D[2]),
        .Q(\mOutPtr_reg[8]_0 [3]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[4] 
       (.C(clock),
        .CE(E),
        .D(D[3]),
        .Q(\mOutPtr_reg[8]_0 [4]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[5] 
       (.C(clock),
        .CE(E),
        .D(D[4]),
        .Q(\mOutPtr_reg[8]_0 [5]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[6] 
       (.C(clock),
        .CE(E),
        .D(D[5]),
        .Q(\mOutPtr_reg[8]_0 [6]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[7] 
       (.C(clock),
        .CE(E),
        .D(D[6]),
        .Q(\mOutPtr_reg[8]_0 [7]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[8] 
       (.C(clock),
        .CE(E),
        .D(D[7]),
        .Q(\mOutPtr_reg[8]_0 [8]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[9] 
       (.C(clock),
        .CE(E),
        .D(D[8]),
        .Q(mOutPtr_reg[9]),
        .S(reset));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out__49_carry__0_i_1
       (.I0(\mOutPtr_reg[8]_0 [7]),
        .I1(\mOutPtr_reg[8]_0 [8]),
        .O(\mOutPtr_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out__49_carry__0_i_2
       (.I0(\mOutPtr_reg[8]_0 [6]),
        .I1(\mOutPtr_reg[8]_0 [7]),
        .O(\mOutPtr_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out__49_carry__0_i_3
       (.I0(\mOutPtr_reg[8]_0 [5]),
        .I1(\mOutPtr_reg[8]_0 [6]),
        .O(\mOutPtr_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out__49_carry__0_i_4
       (.I0(\mOutPtr_reg[8]_0 [4]),
        .I1(\mOutPtr_reg[8]_0 [5]),
        .O(\mOutPtr_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out__49_carry__1_i_1
       (.I0(mOutPtr_reg[9]),
        .I1(mOutPtr_reg[10]),
        .O(\mOutPtr_reg[9]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out__49_carry__1_i_2
       (.I0(\mOutPtr_reg[8]_0 [8]),
        .I1(mOutPtr_reg[9]),
        .O(\mOutPtr_reg[9]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out__49_carry_i_2
       (.I0(\mOutPtr_reg[8]_0 [3]),
        .I1(\mOutPtr_reg[8]_0 [4]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out__49_carry_i_3
       (.I0(\mOutPtr_reg[8]_0 [2]),
        .I1(\mOutPtr_reg[8]_0 [3]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out__49_carry_i_4
       (.I0(\mOutPtr_reg[8]_0 [1]),
        .I1(\mOutPtr_reg[8]_0 [2]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAA55556AAA)) 
    p_0_out__49_carry_i_5
       (.I0(\mOutPtr_reg[8]_0 [1]),
        .I1(dbl2tsep_1_empty_n),
        .I2(detect_1_empty_n),
        .I3(Q),
        .I4(\mOutPtr_reg[4]_0 ),
        .I5(ce),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "fifo_w1_d1024_A_shiftReg" *) 
module my_module2_0_fifo_w1_d1024_A_shiftReg
   (SR,
    detect_1_dout,
    \ap_CS_fsm_reg[1] ,
    dbl2tsep_1_empty_n,
    \tmp_reg_173_reg[0] ,
    Q,
    \ap_CS_fsm[4]_i_3_0 ,
    \tmp_reg_173_reg[0]_0 ,
    tmp_reg_173,
    ce,
    in,
    clock);
  output [0:0]SR;
  output detect_1_dout;
  output \ap_CS_fsm_reg[1] ;
  input dbl2tsep_1_empty_n;
  input \tmp_reg_173_reg[0] ;
  input [0:0]Q;
  input [3:0]\ap_CS_fsm[4]_i_3_0 ;
  input [6:0]\tmp_reg_173_reg[0]_0 ;
  input tmp_reg_173;
  input ce;
  input [0:0]in;
  input clock;

  wire [0:0]Q;
  wire [0:0]SR;
  wire \SRL_SIG_reg[1023][0]_mux__0_n_8 ;
  wire \SRL_SIG_reg[1023][0]_mux__10_n_8 ;
  wire \SRL_SIG_reg[1023][0]_mux__11_n_8 ;
  wire \SRL_SIG_reg[1023][0]_mux__12_n_8 ;
  wire \SRL_SIG_reg[1023][0]_mux__13_n_8 ;
  wire \SRL_SIG_reg[1023][0]_mux__14_n_8 ;
  wire \SRL_SIG_reg[1023][0]_mux__15_n_8 ;
  wire \SRL_SIG_reg[1023][0]_mux__16_n_8 ;
  wire \SRL_SIG_reg[1023][0]_mux__17_n_8 ;
  wire \SRL_SIG_reg[1023][0]_mux__18_n_8 ;
  wire \SRL_SIG_reg[1023][0]_mux__19_n_8 ;
  wire \SRL_SIG_reg[1023][0]_mux__1_n_8 ;
  wire \SRL_SIG_reg[1023][0]_mux__20_n_8 ;
  wire \SRL_SIG_reg[1023][0]_mux__21_n_8 ;
  wire \SRL_SIG_reg[1023][0]_mux__22_n_8 ;
  wire \SRL_SIG_reg[1023][0]_mux__2_n_8 ;
  wire \SRL_SIG_reg[1023][0]_mux__3_n_8 ;
  wire \SRL_SIG_reg[1023][0]_mux__4_n_8 ;
  wire \SRL_SIG_reg[1023][0]_mux__5_n_8 ;
  wire \SRL_SIG_reg[1023][0]_mux__6_n_8 ;
  wire \SRL_SIG_reg[1023][0]_mux__7_n_8 ;
  wire \SRL_SIG_reg[1023][0]_mux__8_n_8 ;
  wire \SRL_SIG_reg[1023][0]_mux__9_n_8 ;
  wire \SRL_SIG_reg[1023][0]_mux_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__0_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__0_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32__10_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__10_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32__11_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__11_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32__12_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__12_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32__13_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__13_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32__14_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__14_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32__15_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__15_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32__16_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__16_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32__17_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__17_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32__18_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__18_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32__19_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__19_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32__1_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__1_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32__20_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__20_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32__21_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__21_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32__22_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__22_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32__23_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__23_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32__24_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__24_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32__25_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__25_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32__26_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__26_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32__27_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__27_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32__28_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__28_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32__29_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__29_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32__2_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__2_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32__30_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__3_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__3_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32__4_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__4_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32__5_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__5_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32__6_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__6_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32__7_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__7_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32__8_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__8_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32__9_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32__9_n_9 ;
  wire \SRL_SIG_reg[1023][0]_srl32_n_8 ;
  wire \SRL_SIG_reg[1023][0]_srl32_n_9 ;
  wire [4:0]a;
  wire [3:0]\ap_CS_fsm[4]_i_3_0 ;
  wire \ap_CS_fsm[4]_i_4_n_8 ;
  wire \ap_CS_fsm[4]_i_5_n_8 ;
  wire \ap_CS_fsm_reg[1] ;
  wire ce;
  wire clock;
  wire dbl2tsep_1_empty_n;
  wire detect_1_dout;
  wire [0:0]in;
  wire tmp_reg_173;
  wire \tmp_reg_173_reg[0] ;
  wire [6:0]\tmp_reg_173_reg[0]_0 ;
  wire \NLW_SRL_SIG_reg[1023][0]_srl32__30_Q31_UNCONNECTED ;

  MUXF7 \SRL_SIG_reg[1023][0]_mux 
       (.I0(\SRL_SIG_reg[1023][0]_srl32_n_8 ),
        .I1(\SRL_SIG_reg[1023][0]_srl32__0_n_8 ),
        .O(\SRL_SIG_reg[1023][0]_mux_n_8 ),
        .S(\ap_CS_fsm[4]_i_3_0 [0]));
  MUXF7 \SRL_SIG_reg[1023][0]_mux__0 
       (.I0(\SRL_SIG_reg[1023][0]_srl32__1_n_8 ),
        .I1(\SRL_SIG_reg[1023][0]_srl32__2_n_8 ),
        .O(\SRL_SIG_reg[1023][0]_mux__0_n_8 ),
        .S(\ap_CS_fsm[4]_i_3_0 [0]));
  MUXF7 \SRL_SIG_reg[1023][0]_mux__1 
       (.I0(\SRL_SIG_reg[1023][0]_srl32__3_n_8 ),
        .I1(\SRL_SIG_reg[1023][0]_srl32__4_n_8 ),
        .O(\SRL_SIG_reg[1023][0]_mux__1_n_8 ),
        .S(\ap_CS_fsm[4]_i_3_0 [0]));
  MUXF7 \SRL_SIG_reg[1023][0]_mux__10 
       (.I0(\SRL_SIG_reg[1023][0]_srl32__21_n_8 ),
        .I1(\SRL_SIG_reg[1023][0]_srl32__22_n_8 ),
        .O(\SRL_SIG_reg[1023][0]_mux__10_n_8 ),
        .S(\ap_CS_fsm[4]_i_3_0 [0]));
  MUXF7 \SRL_SIG_reg[1023][0]_mux__11 
       (.I0(\SRL_SIG_reg[1023][0]_srl32__23_n_8 ),
        .I1(\SRL_SIG_reg[1023][0]_srl32__24_n_8 ),
        .O(\SRL_SIG_reg[1023][0]_mux__11_n_8 ),
        .S(\ap_CS_fsm[4]_i_3_0 [0]));
  MUXF7 \SRL_SIG_reg[1023][0]_mux__12 
       (.I0(\SRL_SIG_reg[1023][0]_srl32__25_n_8 ),
        .I1(\SRL_SIG_reg[1023][0]_srl32__26_n_8 ),
        .O(\SRL_SIG_reg[1023][0]_mux__12_n_8 ),
        .S(\ap_CS_fsm[4]_i_3_0 [0]));
  MUXF7 \SRL_SIG_reg[1023][0]_mux__13 
       (.I0(\SRL_SIG_reg[1023][0]_srl32__27_n_8 ),
        .I1(\SRL_SIG_reg[1023][0]_srl32__28_n_8 ),
        .O(\SRL_SIG_reg[1023][0]_mux__13_n_8 ),
        .S(\ap_CS_fsm[4]_i_3_0 [0]));
  MUXF7 \SRL_SIG_reg[1023][0]_mux__14 
       (.I0(\SRL_SIG_reg[1023][0]_srl32__29_n_8 ),
        .I1(\SRL_SIG_reg[1023][0]_srl32__30_n_8 ),
        .O(\SRL_SIG_reg[1023][0]_mux__14_n_8 ),
        .S(\ap_CS_fsm[4]_i_3_0 [0]));
  MUXF8 \SRL_SIG_reg[1023][0]_mux__15 
       (.I0(\SRL_SIG_reg[1023][0]_mux_n_8 ),
        .I1(\SRL_SIG_reg[1023][0]_mux__0_n_8 ),
        .O(\SRL_SIG_reg[1023][0]_mux__15_n_8 ),
        .S(\ap_CS_fsm[4]_i_3_0 [1]));
  MUXF8 \SRL_SIG_reg[1023][0]_mux__16 
       (.I0(\SRL_SIG_reg[1023][0]_mux__1_n_8 ),
        .I1(\SRL_SIG_reg[1023][0]_mux__2_n_8 ),
        .O(\SRL_SIG_reg[1023][0]_mux__16_n_8 ),
        .S(\ap_CS_fsm[4]_i_3_0 [1]));
  MUXF8 \SRL_SIG_reg[1023][0]_mux__17 
       (.I0(\SRL_SIG_reg[1023][0]_mux__3_n_8 ),
        .I1(\SRL_SIG_reg[1023][0]_mux__4_n_8 ),
        .O(\SRL_SIG_reg[1023][0]_mux__17_n_8 ),
        .S(\ap_CS_fsm[4]_i_3_0 [1]));
  MUXF8 \SRL_SIG_reg[1023][0]_mux__18 
       (.I0(\SRL_SIG_reg[1023][0]_mux__5_n_8 ),
        .I1(\SRL_SIG_reg[1023][0]_mux__6_n_8 ),
        .O(\SRL_SIG_reg[1023][0]_mux__18_n_8 ),
        .S(\ap_CS_fsm[4]_i_3_0 [1]));
  MUXF8 \SRL_SIG_reg[1023][0]_mux__19 
       (.I0(\SRL_SIG_reg[1023][0]_mux__7_n_8 ),
        .I1(\SRL_SIG_reg[1023][0]_mux__8_n_8 ),
        .O(\SRL_SIG_reg[1023][0]_mux__19_n_8 ),
        .S(\ap_CS_fsm[4]_i_3_0 [1]));
  MUXF7 \SRL_SIG_reg[1023][0]_mux__2 
       (.I0(\SRL_SIG_reg[1023][0]_srl32__5_n_8 ),
        .I1(\SRL_SIG_reg[1023][0]_srl32__6_n_8 ),
        .O(\SRL_SIG_reg[1023][0]_mux__2_n_8 ),
        .S(\ap_CS_fsm[4]_i_3_0 [0]));
  MUXF8 \SRL_SIG_reg[1023][0]_mux__20 
       (.I0(\SRL_SIG_reg[1023][0]_mux__9_n_8 ),
        .I1(\SRL_SIG_reg[1023][0]_mux__10_n_8 ),
        .O(\SRL_SIG_reg[1023][0]_mux__20_n_8 ),
        .S(\ap_CS_fsm[4]_i_3_0 [1]));
  MUXF8 \SRL_SIG_reg[1023][0]_mux__21 
       (.I0(\SRL_SIG_reg[1023][0]_mux__11_n_8 ),
        .I1(\SRL_SIG_reg[1023][0]_mux__12_n_8 ),
        .O(\SRL_SIG_reg[1023][0]_mux__21_n_8 ),
        .S(\ap_CS_fsm[4]_i_3_0 [1]));
  MUXF8 \SRL_SIG_reg[1023][0]_mux__22 
       (.I0(\SRL_SIG_reg[1023][0]_mux__13_n_8 ),
        .I1(\SRL_SIG_reg[1023][0]_mux__14_n_8 ),
        .O(\SRL_SIG_reg[1023][0]_mux__22_n_8 ),
        .S(\ap_CS_fsm[4]_i_3_0 [1]));
  MUXF7 \SRL_SIG_reg[1023][0]_mux__3 
       (.I0(\SRL_SIG_reg[1023][0]_srl32__7_n_8 ),
        .I1(\SRL_SIG_reg[1023][0]_srl32__8_n_8 ),
        .O(\SRL_SIG_reg[1023][0]_mux__3_n_8 ),
        .S(\ap_CS_fsm[4]_i_3_0 [0]));
  MUXF7 \SRL_SIG_reg[1023][0]_mux__4 
       (.I0(\SRL_SIG_reg[1023][0]_srl32__9_n_8 ),
        .I1(\SRL_SIG_reg[1023][0]_srl32__10_n_8 ),
        .O(\SRL_SIG_reg[1023][0]_mux__4_n_8 ),
        .S(\ap_CS_fsm[4]_i_3_0 [0]));
  MUXF7 \SRL_SIG_reg[1023][0]_mux__5 
       (.I0(\SRL_SIG_reg[1023][0]_srl32__11_n_8 ),
        .I1(\SRL_SIG_reg[1023][0]_srl32__12_n_8 ),
        .O(\SRL_SIG_reg[1023][0]_mux__5_n_8 ),
        .S(\ap_CS_fsm[4]_i_3_0 [0]));
  MUXF7 \SRL_SIG_reg[1023][0]_mux__6 
       (.I0(\SRL_SIG_reg[1023][0]_srl32__13_n_8 ),
        .I1(\SRL_SIG_reg[1023][0]_srl32__14_n_8 ),
        .O(\SRL_SIG_reg[1023][0]_mux__6_n_8 ),
        .S(\ap_CS_fsm[4]_i_3_0 [0]));
  MUXF7 \SRL_SIG_reg[1023][0]_mux__7 
       (.I0(\SRL_SIG_reg[1023][0]_srl32__15_n_8 ),
        .I1(\SRL_SIG_reg[1023][0]_srl32__16_n_8 ),
        .O(\SRL_SIG_reg[1023][0]_mux__7_n_8 ),
        .S(\ap_CS_fsm[4]_i_3_0 [0]));
  MUXF7 \SRL_SIG_reg[1023][0]_mux__8 
       (.I0(\SRL_SIG_reg[1023][0]_srl32__17_n_8 ),
        .I1(\SRL_SIG_reg[1023][0]_srl32__18_n_8 ),
        .O(\SRL_SIG_reg[1023][0]_mux__8_n_8 ),
        .S(\ap_CS_fsm[4]_i_3_0 [0]));
  MUXF7 \SRL_SIG_reg[1023][0]_mux__9 
       (.I0(\SRL_SIG_reg[1023][0]_srl32__19_n_8 ),
        .I1(\SRL_SIG_reg[1023][0]_srl32__20_n_8 ),
        .O(\SRL_SIG_reg[1023][0]_mux__9_n_8 ),
        .S(\ap_CS_fsm[4]_i_3_0 [0]));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(in),
        .Q(\SRL_SIG_reg[1023][0]_srl32_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__0 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__0 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__0_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__0_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__1 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__1 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__0_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__1_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__1_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__10 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__10 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__9_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__10_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__10_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__11 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__11 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__10_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__11_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__11_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__12 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__12 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__11_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__12_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__12_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__13 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__13 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__12_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__13_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__13_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__14 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__14 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__13_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__14_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__14_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__15 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__15 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__14_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__15_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__15_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__16 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__16 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__15_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__16_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__16_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__17 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__17 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__16_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__17_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__17_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__18 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__18 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__17_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__18_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__18_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__19 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__19 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__18_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__19_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__19_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__2 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__2 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__1_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__2_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__2_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__20 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__20 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__19_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__20_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__20_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__21 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__21 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__20_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__21_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__21_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__22 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__22 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__21_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__22_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__22_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__23 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__23 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__22_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__23_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__23_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__24 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__24 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__23_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__24_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__24_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__25 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__25 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__24_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__25_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__25_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__26 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__26 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__25_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__26_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__26_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__27 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__27 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__26_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__27_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__27_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__28 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__27_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__28_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__28_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__29 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__29 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__28_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__29_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__29_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__3 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__3 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__2_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__3_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__3_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__30 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__30 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__29_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__30_n_8 ),
        .Q31(\NLW_SRL_SIG_reg[1023][0]_srl32__30_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__4 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__4 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__3_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__4_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__4_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__5 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__5 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__4_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__5_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__5_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__6 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__6 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__5_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__6_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__6_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__7 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__7 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__6_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__7_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__7_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__8 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__8 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__7_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__8_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__8_n_9 ));
  (* srl_bus_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] " *) 
  (* srl_name = "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__9 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[1023][0]_srl32__9 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\SRL_SIG_reg[1023][0]_srl32__8_n_9 ),
        .Q(\SRL_SIG_reg[1023][0]_srl32__9_n_8 ),
        .Q31(\SRL_SIG_reg[1023][0]_srl32__9_n_9 ));
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[1023][0]_srl32_i_2 
       (.I0(\tmp_reg_173_reg[0]_0 [4]),
        .I1(\tmp_reg_173_reg[0]_0 [6]),
        .O(a[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[1023][0]_srl32_i_3 
       (.I0(\tmp_reg_173_reg[0]_0 [3]),
        .I1(\tmp_reg_173_reg[0]_0 [6]),
        .O(a[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[1023][0]_srl32_i_4 
       (.I0(\tmp_reg_173_reg[0]_0 [2]),
        .I1(\tmp_reg_173_reg[0]_0 [6]),
        .O(a[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[1023][0]_srl32_i_5 
       (.I0(\tmp_reg_173_reg[0]_0 [1]),
        .I1(\tmp_reg_173_reg[0]_0 [6]),
        .O(a[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[1023][0]_srl32_i_6 
       (.I0(\tmp_reg_173_reg[0]_0 [0]),
        .I1(\tmp_reg_173_reg[0]_0 [6]),
        .O(a[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \ap_CS_fsm[4]_i_3 
       (.I0(\ap_CS_fsm[4]_i_4_n_8 ),
        .I1(\tmp_reg_173_reg[0]_0 [5]),
        .I2(\tmp_reg_173_reg[0]_0 [6]),
        .I3(\ap_CS_fsm[4]_i_5_n_8 ),
        .O(detect_1_dout));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ap_CS_fsm[4]_i_4 
       (.I0(\SRL_SIG_reg[1023][0]_mux__22_n_8 ),
        .I1(\SRL_SIG_reg[1023][0]_mux__21_n_8 ),
        .I2(\ap_CS_fsm[4]_i_3_0 [3]),
        .I3(\SRL_SIG_reg[1023][0]_mux__20_n_8 ),
        .I4(\ap_CS_fsm[4]_i_3_0 [2]),
        .I5(\SRL_SIG_reg[1023][0]_mux__19_n_8 ),
        .O(\ap_CS_fsm[4]_i_4_n_8 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ap_CS_fsm[4]_i_5 
       (.I0(\SRL_SIG_reg[1023][0]_mux__18_n_8 ),
        .I1(\SRL_SIG_reg[1023][0]_mux__17_n_8 ),
        .I2(\ap_CS_fsm[4]_i_3_0 [3]),
        .I3(\SRL_SIG_reg[1023][0]_mux__16_n_8 ),
        .I4(\ap_CS_fsm[4]_i_3_0 [2]),
        .I5(\SRL_SIG_reg[1023][0]_mux__15_n_8 ),
        .O(\ap_CS_fsm[4]_i_5_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \i_0_reg_104[8]_i_1 
       (.I0(detect_1_dout),
        .I1(dbl2tsep_1_empty_n),
        .I2(\tmp_reg_173_reg[0] ),
        .I3(Q),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \tmp_reg_173[0]_i_1 
       (.I0(detect_1_dout),
        .I1(Q),
        .I2(\tmp_reg_173_reg[0] ),
        .I3(dbl2tsep_1_empty_n),
        .I4(tmp_reg_173),
        .O(\ap_CS_fsm_reg[1] ));
endmodule

(* ORIG_REF_NAME = "fifo_w1_d32_A" *) 
module my_module2_0_fifo_w1_d32_A
   (bit2byt_1_dout,
    bit2byt_1_full_n,
    bit2byt_1_empty_n,
    grp_BitDecider_fu_292_s_din,
    clock,
    Q,
    grp_BitsToBytes_fu_306_e_read,
    reset,
    internal_empty_n3_out,
    \mOutPtr_reg[4]_0 ,
    E);
  output bit2byt_1_dout;
  output bit2byt_1_full_n;
  output bit2byt_1_empty_n;
  input grp_BitDecider_fu_292_s_din;
  input clock;
  input [0:0]Q;
  input grp_BitsToBytes_fu_306_e_read;
  input reset;
  input internal_empty_n3_out;
  input \mOutPtr_reg[4]_0 ;
  input [0:0]E;

  wire [0:0]E;
  wire [0:0]Q;
  wire bit2byt_1_dout;
  wire bit2byt_1_empty_n;
  wire bit2byt_1_full_n;
  wire clock;
  wire grp_BitDecider_fu_292_s_din;
  wire grp_BitsToBytes_fu_306_e_read;
  wire internal_empty_n3_out;
  wire internal_empty_n_i_1__2_n_8;
  wire internal_empty_n_i_2__2_n_8;
  wire internal_full_n_i_1__2_n_8;
  wire internal_full_n_i_2__1_n_8;
  wire \mOutPtr[0]_i_1__2_n_8 ;
  wire \mOutPtr[1]_i_1__1_n_8 ;
  wire \mOutPtr[2]_i_1__2_n_8 ;
  wire \mOutPtr[3]_i_1__1_n_8 ;
  wire \mOutPtr[4]_i_1__1_n_8 ;
  wire \mOutPtr[5]_i_2__1_n_8 ;
  wire \mOutPtr[5]_i_3__1_n_8 ;
  wire [5:0]mOutPtr_reg;
  wire \mOutPtr_reg[4]_0 ;
  wire reset;

  my_module2_0_fifo_w1_d32_A_shiftReg U_fifo_w1_d32_A_shiftReg
       (.Q(Q),
        .bit2byt_1_dout(bit2byt_1_dout),
        .clock(clock),
        .grp_BitDecider_fu_292_s_din(grp_BitDecider_fu_292_s_din),
        .\v_assign_reg_81_reg[0] (bit2byt_1_full_n),
        .\v_assign_reg_81_reg[0]_0 (mOutPtr_reg));
  LUT6 #(
    .INIT(64'h00000000EFEFEF00)) 
    internal_empty_n_i_1__2
       (.I0(mOutPtr_reg[4]),
        .I1(mOutPtr_reg[5]),
        .I2(internal_empty_n_i_2__2_n_8),
        .I3(internal_empty_n3_out),
        .I4(bit2byt_1_empty_n),
        .I5(reset),
        .O(internal_empty_n_i_1__2_n_8));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    internal_empty_n_i_2__2
       (.I0(mOutPtr_reg[1]),
        .I1(mOutPtr_reg[0]),
        .I2(\mOutPtr_reg[4]_0 ),
        .I3(mOutPtr_reg[3]),
        .I4(mOutPtr_reg[2]),
        .O(internal_empty_n_i_2__2_n_8));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(clock),
        .CE(1'b1),
        .D(internal_empty_n_i_1__2_n_8),
        .Q(bit2byt_1_empty_n),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFFB0)) 
    internal_full_n_i_1__2
       (.I0(internal_full_n_i_2__1_n_8),
        .I1(Q),
        .I2(bit2byt_1_full_n),
        .I3(grp_BitsToBytes_fu_306_e_read),
        .I4(reset),
        .O(internal_full_n_i_1__2_n_8));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    internal_full_n_i_2__1
       (.I0(mOutPtr_reg[5]),
        .I1(mOutPtr_reg[4]),
        .I2(mOutPtr_reg[0]),
        .I3(mOutPtr_reg[1]),
        .I4(mOutPtr_reg[2]),
        .I5(mOutPtr_reg[3]),
        .O(internal_full_n_i_2__1_n_8));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(clock),
        .CE(1'b1),
        .D(internal_full_n_i_1__2_n_8),
        .Q(bit2byt_1_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__2 
       (.I0(mOutPtr_reg[0]),
        .O(\mOutPtr[0]_i_1__2_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h708F8F70)) 
    \mOutPtr[1]_i_1__1 
       (.I0(bit2byt_1_full_n),
        .I1(Q),
        .I2(grp_BitsToBytes_fu_306_e_read),
        .I3(mOutPtr_reg[0]),
        .I4(mOutPtr_reg[1]),
        .O(\mOutPtr[1]_i_1__1_n_8 ));
  LUT6 #(
    .INIT(64'h6AA9A9A96A6A6A6A)) 
    \mOutPtr[2]_i_1__2 
       (.I0(mOutPtr_reg[2]),
        .I1(mOutPtr_reg[0]),
        .I2(mOutPtr_reg[1]),
        .I3(bit2byt_1_full_n),
        .I4(Q),
        .I5(grp_BitsToBytes_fu_306_e_read),
        .O(\mOutPtr[2]_i_1__2_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hBF40FD02)) 
    \mOutPtr[3]_i_1__1 
       (.I0(\mOutPtr_reg[4]_0 ),
        .I1(mOutPtr_reg[1]),
        .I2(mOutPtr_reg[0]),
        .I3(mOutPtr_reg[3]),
        .I4(mOutPtr_reg[2]),
        .O(\mOutPtr[3]_i_1__1_n_8 ));
  LUT6 #(
    .INIT(64'hAAAAAAA96AAAAAAA)) 
    \mOutPtr[4]_i_1__1 
       (.I0(mOutPtr_reg[4]),
        .I1(mOutPtr_reg[2]),
        .I2(mOutPtr_reg[3]),
        .I3(mOutPtr_reg[0]),
        .I4(mOutPtr_reg[1]),
        .I5(\mOutPtr_reg[4]_0 ),
        .O(\mOutPtr[4]_i_1__1_n_8 ));
  LUT3 #(
    .INIT(8'h69)) 
    \mOutPtr[5]_i_2__1 
       (.I0(\mOutPtr[5]_i_3__1_n_8 ),
        .I1(mOutPtr_reg[5]),
        .I2(mOutPtr_reg[4]),
        .O(\mOutPtr[5]_i_2__1_n_8 ));
  LUT6 #(
    .INIT(64'h55555554D5555555)) 
    \mOutPtr[5]_i_3__1 
       (.I0(mOutPtr_reg[4]),
        .I1(mOutPtr_reg[2]),
        .I2(mOutPtr_reg[3]),
        .I3(mOutPtr_reg[0]),
        .I4(mOutPtr_reg[1]),
        .I5(\mOutPtr_reg[4]_0 ),
        .O(\mOutPtr[5]_i_3__1_n_8 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(clock),
        .CE(E),
        .D(\mOutPtr[0]_i_1__2_n_8 ),
        .Q(mOutPtr_reg[0]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(clock),
        .CE(E),
        .D(\mOutPtr[1]_i_1__1_n_8 ),
        .Q(mOutPtr_reg[1]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[2] 
       (.C(clock),
        .CE(E),
        .D(\mOutPtr[2]_i_1__2_n_8 ),
        .Q(mOutPtr_reg[2]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[3] 
       (.C(clock),
        .CE(E),
        .D(\mOutPtr[3]_i_1__1_n_8 ),
        .Q(mOutPtr_reg[3]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[4] 
       (.C(clock),
        .CE(E),
        .D(\mOutPtr[4]_i_1__1_n_8 ),
        .Q(mOutPtr_reg[4]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[5] 
       (.C(clock),
        .CE(E),
        .D(\mOutPtr[5]_i_2__1_n_8 ),
        .Q(mOutPtr_reg[5]),
        .S(reset));
endmodule

(* ORIG_REF_NAME = "fifo_w1_d32_A_shiftReg" *) 
module my_module2_0_fifo_w1_d32_A_shiftReg
   (bit2byt_1_dout,
    grp_BitDecider_fu_292_s_din,
    clock,
    \v_assign_reg_81_reg[0] ,
    Q,
    \v_assign_reg_81_reg[0]_0 );
  output bit2byt_1_dout;
  input grp_BitDecider_fu_292_s_din;
  input clock;
  input \v_assign_reg_81_reg[0] ;
  input [0:0]Q;
  input [5:0]\v_assign_reg_81_reg[0]_0 ;

  wire [0:0]Q;
  wire [4:0]a;
  wire bit2byt_1_dout;
  wire ce;
  wire clock;
  wire grp_BitDecider_fu_292_s_din;
  wire \v_assign_reg_81_reg[0] ;
  wire [5:0]\v_assign_reg_81_reg[0]_0 ;
  wire \NLW_SRL_SIG_reg[31][0]_srl32_Q31_UNCONNECTED ;

  (* srl_bus_name = "U0/\bit2byt_1_fifo_U/U_fifo_w1_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\bit2byt_1_fifo_U/U_fifo_w1_d32_A_shiftReg/SRL_SIG_reg[31][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][0]_srl32 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(grp_BitDecider_fu_292_s_din),
        .Q(bit2byt_1_dout),
        .Q31(\NLW_SRL_SIG_reg[31][0]_srl32_Q31_UNCONNECTED ));
  LUT2 #(
    .INIT(4'h8)) 
    \SRL_SIG_reg[31][0]_srl32_i_1__1 
       (.I0(\v_assign_reg_81_reg[0] ),
        .I1(Q),
        .O(ce));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[31][0]_srl32_i_2__1 
       (.I0(\v_assign_reg_81_reg[0]_0 [4]),
        .I1(\v_assign_reg_81_reg[0]_0 [5]),
        .O(a[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[31][0]_srl32_i_3__1 
       (.I0(\v_assign_reg_81_reg[0]_0 [3]),
        .I1(\v_assign_reg_81_reg[0]_0 [5]),
        .O(a[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[31][0]_srl32_i_4__1 
       (.I0(\v_assign_reg_81_reg[0]_0 [2]),
        .I1(\v_assign_reg_81_reg[0]_0 [5]),
        .O(a[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[31][0]_srl32_i_5__1 
       (.I0(\v_assign_reg_81_reg[0]_0 [1]),
        .I1(\v_assign_reg_81_reg[0]_0 [5]),
        .O(a[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[31][0]_srl32_i_6__1 
       (.I0(\v_assign_reg_81_reg[0]_0 [0]),
        .I1(\v_assign_reg_81_reg[0]_0 [5]),
        .O(a[0]));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d1024_A" *) 
module my_module2_0_fifo_w8_d1024_A
   (full_n_reg_0,
    empty_n_reg_0,
    dbl2scalc_1_empty_n,
    \usedw_reg[7]_0 ,
    DI,
    full_n_reg_1,
    full_n_reg_2,
    S,
    \usedw_reg[7]_1 ,
    \usedw_reg[8]_0 ,
    \dout_buf_reg[7]_0 ,
    clock,
    Q,
    E,
    reset,
    empty_n_reg_1,
    dout_valid_reg_0,
    pop,
    mod2dbl_1_empty_n,
    empty_n_reg_2,
    ap_CS_fsm_pp0_stage0,
    ap_block_pp0_stage0_110010_in,
    ap_enable_reg_pp0_iter0,
    pop_0,
    \dout_buf_reg[0]_0 ,
    \dout_buf_reg[1]_0 ,
    \dout_buf_reg[2]_0 ,
    \dout_buf_reg[3]_0 ,
    \dout_buf_reg[4]_0 ,
    \dout_buf_reg[5]_0 ,
    \dout_buf_reg[6]_0 ,
    \dout_buf_reg[7]_1 ,
    D);
  output full_n_reg_0;
  output empty_n_reg_0;
  output dbl2scalc_1_empty_n;
  output [7:0]\usedw_reg[7]_0 ;
  output [0:0]DI;
  output [0:0]full_n_reg_1;
  output [0:0]full_n_reg_2;
  output [3:0]S;
  output [3:0]\usedw_reg[7]_1 ;
  output [0:0]\usedw_reg[8]_0 ;
  output [7:0]\dout_buf_reg[7]_0 ;
  input clock;
  input [7:0]Q;
  input [0:0]E;
  input reset;
  input [0:0]empty_n_reg_1;
  input dout_valid_reg_0;
  input pop;
  input mod2dbl_1_empty_n;
  input empty_n_reg_2;
  input ap_CS_fsm_pp0_stage0;
  input ap_block_pp0_stage0_110010_in;
  input ap_enable_reg_pp0_iter0;
  input pop_0;
  input \dout_buf_reg[0]_0 ;
  input \dout_buf_reg[1]_0 ;
  input \dout_buf_reg[2]_0 ;
  input \dout_buf_reg[3]_0 ;
  input \dout_buf_reg[4]_0 ;
  input \dout_buf_reg[5]_0 ;
  input \dout_buf_reg[6]_0 ;
  input \dout_buf_reg[7]_1 ;
  input [8:0]D;

  wire [8:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire [7:0]Q;
  wire [3:0]S;
  wire ap_CS_fsm_pp0_stage0;
  wire ap_block_pp0_stage0_110010_in;
  wire ap_enable_reg_pp0_iter0;
  wire clock;
  wire dbl2scalc_1_empty_n;
  wire \dout_buf[0]_i_1_n_8 ;
  wire \dout_buf[1]_i_1_n_8 ;
  wire \dout_buf[2]_i_1_n_8 ;
  wire \dout_buf[3]_i_1_n_8 ;
  wire \dout_buf[4]_i_1_n_8 ;
  wire \dout_buf[5]_i_1_n_8 ;
  wire \dout_buf[6]_i_1_n_8 ;
  wire \dout_buf[7]_i_2_n_8 ;
  wire \dout_buf_reg[0]_0 ;
  wire \dout_buf_reg[1]_0 ;
  wire \dout_buf_reg[2]_0 ;
  wire \dout_buf_reg[3]_0 ;
  wire \dout_buf_reg[4]_0 ;
  wire \dout_buf_reg[5]_0 ;
  wire \dout_buf_reg[6]_0 ;
  wire [7:0]\dout_buf_reg[7]_0 ;
  wire \dout_buf_reg[7]_1 ;
  wire dout_valid_reg_0;
  wire empty_n0;
  wire empty_n_reg_0;
  wire [0:0]empty_n_reg_1;
  wire empty_n_reg_2;
  wire full_n0;
  wire full_n_i_2_n_8;
  wire full_n_i_3_n_8;
  wire full_n_reg_0;
  wire [0:0]full_n_reg_1;
  wire [0:0]full_n_reg_2;
  wire mem_reg_i_10_n_8;
  wire mem_reg_i_12_n_8;
  wire mem_reg_i_13_n_8;
  wire mem_reg_i_1_n_8;
  wire mem_reg_i_2_n_8;
  wire mem_reg_i_3_n_8;
  wire mem_reg_i_4_n_8;
  wire mem_reg_i_5_n_8;
  wire mem_reg_i_6_n_8;
  wire mem_reg_i_7_n_8;
  wire mem_reg_i_8_n_8;
  wire mem_reg_i_9_n_8;
  wire mod2dbl_1_empty_n;
  wire pop;
  wire pop_0;
  wire [7:0]q_buf;
  wire [9:0]raddr;
  wire reset;
  wire show_ahead;
  wire show_ahead0;
  wire show_ahead_i_2_n_8;
  wire show_ahead_i_3_n_8;
  wire \usedw[0]_i_1_n_8 ;
  wire [9:8]usedw_reg;
  wire [7:0]\usedw_reg[7]_0 ;
  wire [3:0]\usedw_reg[7]_1 ;
  wire [0:0]\usedw_reg[8]_0 ;
  wire [9:0]waddr;
  wire \waddr[9]_i_2_n_8 ;
  wire [9:0]wnext;
  wire [15:0]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [15:8]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[0]_i_1 
       (.I0(\dout_buf_reg[0]_0 ),
        .I1(q_buf[0]),
        .I2(show_ahead),
        .O(\dout_buf[0]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[1]_i_1 
       (.I0(\dout_buf_reg[1]_0 ),
        .I1(q_buf[1]),
        .I2(show_ahead),
        .O(\dout_buf[1]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[2]_i_1 
       (.I0(\dout_buf_reg[2]_0 ),
        .I1(q_buf[2]),
        .I2(show_ahead),
        .O(\dout_buf[2]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[3]_i_1 
       (.I0(\dout_buf_reg[3]_0 ),
        .I1(q_buf[3]),
        .I2(show_ahead),
        .O(\dout_buf[3]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[4]_i_1 
       (.I0(\dout_buf_reg[4]_0 ),
        .I1(q_buf[4]),
        .I2(show_ahead),
        .O(\dout_buf[4]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[5]_i_1 
       (.I0(\dout_buf_reg[5]_0 ),
        .I1(q_buf[5]),
        .I2(show_ahead),
        .O(\dout_buf[5]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[6]_i_1 
       (.I0(\dout_buf_reg[6]_0 ),
        .I1(q_buf[6]),
        .I2(show_ahead),
        .O(\dout_buf[6]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[7]_i_2 
       (.I0(\dout_buf_reg[7]_1 ),
        .I1(q_buf[7]),
        .I2(show_ahead),
        .O(\dout_buf[7]_i_2_n_8 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[0] 
       (.C(clock),
        .CE(pop),
        .D(\dout_buf[0]_i_1_n_8 ),
        .Q(\dout_buf_reg[7]_0 [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[1] 
       (.C(clock),
        .CE(pop),
        .D(\dout_buf[1]_i_1_n_8 ),
        .Q(\dout_buf_reg[7]_0 [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[2] 
       (.C(clock),
        .CE(pop),
        .D(\dout_buf[2]_i_1_n_8 ),
        .Q(\dout_buf_reg[7]_0 [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[3] 
       (.C(clock),
        .CE(pop),
        .D(\dout_buf[3]_i_1_n_8 ),
        .Q(\dout_buf_reg[7]_0 [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[4] 
       (.C(clock),
        .CE(pop),
        .D(\dout_buf[4]_i_1_n_8 ),
        .Q(\dout_buf_reg[7]_0 [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[5] 
       (.C(clock),
        .CE(pop),
        .D(\dout_buf[5]_i_1_n_8 ),
        .Q(\dout_buf_reg[7]_0 [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[6] 
       (.C(clock),
        .CE(pop),
        .D(\dout_buf[6]_i_1_n_8 ),
        .Q(\dout_buf_reg[7]_0 [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[7] 
       (.C(clock),
        .CE(pop),
        .D(\dout_buf[7]_i_2_n_8 ),
        .Q(\dout_buf_reg[7]_0 [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    dout_valid_reg
       (.C(clock),
        .CE(1'b1),
        .D(dout_valid_reg_0),
        .Q(dbl2scalc_1_empty_n),
        .R(reset));
  LUT4 #(
    .INIT(16'h7F80)) 
    empty_n_i_1__1
       (.I0(full_n_reg_0),
        .I1(empty_n_reg_2),
        .I2(mod2dbl_1_empty_n),
        .I3(pop_0),
        .O(full_n_reg_2));
  LUT6 #(
    .INIT(64'hFFFFFFFF4000FFFF)) 
    empty_n_i_2__0
       (.I0(pop),
        .I1(mod2dbl_1_empty_n),
        .I2(empty_n_reg_2),
        .I3(full_n_reg_0),
        .I4(\usedw_reg[7]_0 [0]),
        .I5(show_ahead_i_2_n_8),
        .O(empty_n0));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(clock),
        .CE(empty_n_reg_1),
        .D(empty_n0),
        .Q(empty_n_reg_0),
        .R(reset));
  LUT6 #(
    .INIT(64'h2AAA6AAA6AAA6AAA)) 
    full_n_i_1__0
       (.I0(pop),
        .I1(full_n_reg_0),
        .I2(empty_n_reg_2),
        .I3(mod2dbl_1_empty_n),
        .I4(full_n_i_2_n_8),
        .I5(full_n_i_3_n_8),
        .O(full_n0));
  LUT4 #(
    .INIT(16'h8000)) 
    full_n_i_2
       (.I0(\usedw_reg[7]_0 [7]),
        .I1(\usedw_reg[7]_0 [6]),
        .I2(\usedw_reg[7]_0 [5]),
        .I3(\usedw_reg[7]_0 [1]),
        .O(full_n_i_2_n_8));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    full_n_i_3
       (.I0(usedw_reg[9]),
        .I1(usedw_reg[8]),
        .I2(\usedw_reg[7]_0 [2]),
        .I3(\usedw_reg[7]_0 [3]),
        .I4(\usedw_reg[7]_0 [4]),
        .I5(\usedw_reg[7]_0 [0]),
        .O(full_n_i_3_n_8));
  FDSE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(clock),
        .CE(empty_n_reg_1),
        .D(full_n0),
        .Q(full_n_reg_0),
        .S(reset));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "grp_Detecteur2_fu_226/dbl2scalc_1_fifo_U/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({waddr,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({mem_reg_i_1_n_8,mem_reg_i_2_n_8,mem_reg_i_3_n_8,mem_reg_i_4_n_8,mem_reg_i_5_n_8,mem_reg_i_6_n_8,mem_reg_i_7_n_8,mem_reg_i_8_n_8,mem_reg_i_9_n_8,mem_reg_i_10_n_8,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_mem_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_mem_reg_DOBDO_UNCONNECTED[15:8],q_buf}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(full_n_reg_0),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({E,E}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    mem_reg_i_1
       (.I0(raddr[9]),
        .I1(pop),
        .I2(raddr[8]),
        .I3(raddr[6]),
        .I4(mem_reg_i_12_n_8),
        .I5(raddr[7]),
        .O(mem_reg_i_1_n_8));
  LUT6 #(
    .INIT(64'h59999999AAAAAAAA)) 
    mem_reg_i_10
       (.I0(raddr[0]),
        .I1(dbl2scalc_1_empty_n),
        .I2(ap_CS_fsm_pp0_stage0),
        .I3(ap_block_pp0_stage0_110010_in),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(empty_n_reg_0),
        .O(mem_reg_i_10_n_8));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mem_reg_i_12
       (.I0(raddr[5]),
        .I1(raddr[4]),
        .I2(raddr[1]),
        .I3(raddr[2]),
        .I4(raddr[0]),
        .I5(raddr[3]),
        .O(mem_reg_i_12_n_8));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_reg_i_13
       (.I0(pop),
        .I1(raddr[1]),
        .I2(raddr[2]),
        .I3(raddr[0]),
        .I4(raddr[3]),
        .O(mem_reg_i_13_n_8));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    mem_reg_i_2
       (.I0(raddr[6]),
        .I1(mem_reg_i_12_n_8),
        .I2(raddr[7]),
        .I3(pop),
        .I4(raddr[8]),
        .O(mem_reg_i_2_n_8));
  LUT4 #(
    .INIT(16'h6AAA)) 
    mem_reg_i_3
       (.I0(raddr[7]),
        .I1(raddr[6]),
        .I2(mem_reg_i_12_n_8),
        .I3(pop),
        .O(mem_reg_i_3_n_8));
  LUT3 #(
    .INIT(8'h78)) 
    mem_reg_i_4
       (.I0(mem_reg_i_12_n_8),
        .I1(pop),
        .I2(raddr[6]),
        .O(mem_reg_i_4_n_8));
  LUT3 #(
    .INIT(8'h6A)) 
    mem_reg_i_5
       (.I0(raddr[5]),
        .I1(mem_reg_i_13_n_8),
        .I2(raddr[4]),
        .O(mem_reg_i_5_n_8));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    mem_reg_i_6
       (.I0(raddr[4]),
        .I1(raddr[3]),
        .I2(raddr[0]),
        .I3(raddr[2]),
        .I4(raddr[1]),
        .I5(pop),
        .O(mem_reg_i_6_n_8));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    mem_reg_i_7
       (.I0(raddr[3]),
        .I1(raddr[1]),
        .I2(pop),
        .I3(raddr[0]),
        .I4(raddr[2]),
        .O(mem_reg_i_7_n_8));
  LUT4 #(
    .INIT(16'h6AAA)) 
    mem_reg_i_8
       (.I0(raddr[2]),
        .I1(raddr[0]),
        .I2(pop),
        .I3(raddr[1]),
        .O(mem_reg_i_8_n_8));
  LUT3 #(
    .INIT(8'h6A)) 
    mem_reg_i_9
       (.I0(raddr[1]),
        .I1(pop),
        .I2(raddr[0]),
        .O(mem_reg_i_9_n_8));
  LUT4 #(
    .INIT(16'h0080)) 
    p_0_out__24_carry_i_1
       (.I0(full_n_reg_0),
        .I1(empty_n_reg_2),
        .I2(mod2dbl_1_empty_n),
        .I3(pop_0),
        .O(full_n_reg_1));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out_carry__0_i_1
       (.I0(\usedw_reg[7]_0 [7]),
        .I1(usedw_reg[8]),
        .O(\usedw_reg[7]_1 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out_carry__0_i_2
       (.I0(\usedw_reg[7]_0 [6]),
        .I1(\usedw_reg[7]_0 [7]),
        .O(\usedw_reg[7]_1 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out_carry__0_i_3
       (.I0(\usedw_reg[7]_0 [5]),
        .I1(\usedw_reg[7]_0 [6]),
        .O(\usedw_reg[7]_1 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out_carry__0_i_4
       (.I0(\usedw_reg[7]_0 [4]),
        .I1(\usedw_reg[7]_0 [5]),
        .O(\usedw_reg[7]_1 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out_carry__1_i_1
       (.I0(usedw_reg[8]),
        .I1(usedw_reg[9]),
        .O(\usedw_reg[8]_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    p_0_out_carry_i_1__0
       (.I0(full_n_reg_0),
        .I1(empty_n_reg_2),
        .I2(mod2dbl_1_empty_n),
        .I3(pop),
        .O(DI));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out_carry_i_2
       (.I0(\usedw_reg[7]_0 [3]),
        .I1(\usedw_reg[7]_0 [4]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out_carry_i_3
       (.I0(\usedw_reg[7]_0 [2]),
        .I1(\usedw_reg[7]_0 [3]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out_carry_i_4
       (.I0(\usedw_reg[7]_0 [1]),
        .I1(\usedw_reg[7]_0 [2]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h65555555)) 
    p_0_out_carry_i_5__0
       (.I0(\usedw_reg[7]_0 [1]),
        .I1(pop),
        .I2(mod2dbl_1_empty_n),
        .I3(empty_n_reg_2),
        .I4(full_n_reg_0),
        .O(S[0]));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(mem_reg_i_10_n_8),
        .Q(raddr[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(mem_reg_i_9_n_8),
        .Q(raddr[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(mem_reg_i_8_n_8),
        .Q(raddr[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(mem_reg_i_7_n_8),
        .Q(raddr[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(mem_reg_i_6_n_8),
        .Q(raddr[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(mem_reg_i_5_n_8),
        .Q(raddr[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(mem_reg_i_4_n_8),
        .Q(raddr[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(mem_reg_i_3_n_8),
        .Q(raddr[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(mem_reg_i_2_n_8),
        .Q(raddr[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(mem_reg_i_1_n_8),
        .Q(raddr[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'h00000000D0000000)) 
    show_ahead_i_1__0
       (.I0(\usedw_reg[7]_0 [0]),
        .I1(pop),
        .I2(mod2dbl_1_empty_n),
        .I3(empty_n_reg_2),
        .I4(full_n_reg_0),
        .I5(show_ahead_i_2_n_8),
        .O(show_ahead0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    show_ahead_i_2
       (.I0(\usedw_reg[7]_0 [3]),
        .I1(\usedw_reg[7]_0 [6]),
        .I2(\usedw_reg[7]_0 [4]),
        .I3(show_ahead_i_3_n_8),
        .O(show_ahead_i_2_n_8));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    show_ahead_i_3
       (.I0(usedw_reg[9]),
        .I1(usedw_reg[8]),
        .I2(\usedw_reg[7]_0 [5]),
        .I3(\usedw_reg[7]_0 [7]),
        .I4(\usedw_reg[7]_0 [1]),
        .I5(\usedw_reg[7]_0 [2]),
        .O(show_ahead_i_3_n_8));
  FDRE #(
    .INIT(1'b0)) 
    show_ahead_reg
       (.C(clock),
        .CE(1'b1),
        .D(show_ahead0),
        .Q(show_ahead),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    \usedw[0]_i_1 
       (.I0(\usedw_reg[7]_0 [0]),
        .O(\usedw[0]_i_1_n_8 ));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[0] 
       (.C(clock),
        .CE(empty_n_reg_1),
        .D(\usedw[0]_i_1_n_8 ),
        .Q(\usedw_reg[7]_0 [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[1] 
       (.C(clock),
        .CE(empty_n_reg_1),
        .D(D[0]),
        .Q(\usedw_reg[7]_0 [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[2] 
       (.C(clock),
        .CE(empty_n_reg_1),
        .D(D[1]),
        .Q(\usedw_reg[7]_0 [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[3] 
       (.C(clock),
        .CE(empty_n_reg_1),
        .D(D[2]),
        .Q(\usedw_reg[7]_0 [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[4] 
       (.C(clock),
        .CE(empty_n_reg_1),
        .D(D[3]),
        .Q(\usedw_reg[7]_0 [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[5] 
       (.C(clock),
        .CE(empty_n_reg_1),
        .D(D[4]),
        .Q(\usedw_reg[7]_0 [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[6] 
       (.C(clock),
        .CE(empty_n_reg_1),
        .D(D[5]),
        .Q(\usedw_reg[7]_0 [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[7] 
       (.C(clock),
        .CE(empty_n_reg_1),
        .D(D[6]),
        .Q(\usedw_reg[7]_0 [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[8] 
       (.C(clock),
        .CE(empty_n_reg_1),
        .D(D[7]),
        .Q(usedw_reg[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[9] 
       (.C(clock),
        .CE(empty_n_reg_1),
        .D(D[8]),
        .Q(usedw_reg[9]),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    \waddr[0]_i_1 
       (.I0(waddr[0]),
        .O(wnext[0]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \waddr[1]_i_1 
       (.I0(waddr[0]),
        .I1(waddr[1]),
        .O(wnext[1]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \waddr[2]_i_1 
       (.I0(waddr[1]),
        .I1(waddr[0]),
        .I2(waddr[2]),
        .O(wnext[2]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \waddr[3]_i_1 
       (.I0(waddr[2]),
        .I1(waddr[0]),
        .I2(waddr[1]),
        .I3(waddr[3]),
        .O(wnext[3]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \waddr[4]_i_1 
       (.I0(waddr[3]),
        .I1(waddr[1]),
        .I2(waddr[0]),
        .I3(waddr[2]),
        .I4(waddr[4]),
        .O(wnext[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \waddr[5]_i_1 
       (.I0(waddr[4]),
        .I1(waddr[2]),
        .I2(waddr[0]),
        .I3(waddr[1]),
        .I4(waddr[3]),
        .I5(waddr[5]),
        .O(wnext[5]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \waddr[6]_i_1 
       (.I0(\waddr[9]_i_2_n_8 ),
        .I1(waddr[6]),
        .O(wnext[6]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \waddr[7]_i_1 
       (.I0(waddr[6]),
        .I1(\waddr[9]_i_2_n_8 ),
        .I2(waddr[7]),
        .O(wnext[7]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \waddr[8]_i_1 
       (.I0(waddr[7]),
        .I1(\waddr[9]_i_2_n_8 ),
        .I2(waddr[6]),
        .I3(waddr[8]),
        .O(wnext[8]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \waddr[9]_i_1 
       (.I0(waddr[8]),
        .I1(waddr[6]),
        .I2(\waddr[9]_i_2_n_8 ),
        .I3(waddr[7]),
        .I4(waddr[9]),
        .O(wnext[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \waddr[9]_i_2 
       (.I0(waddr[4]),
        .I1(waddr[2]),
        .I2(waddr[0]),
        .I3(waddr[1]),
        .I4(waddr[3]),
        .I5(waddr[5]),
        .O(\waddr[9]_i_2_n_8 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[0] 
       (.C(clock),
        .CE(E),
        .D(wnext[0]),
        .Q(waddr[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[1] 
       (.C(clock),
        .CE(E),
        .D(wnext[1]),
        .Q(waddr[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[2] 
       (.C(clock),
        .CE(E),
        .D(wnext[2]),
        .Q(waddr[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[3] 
       (.C(clock),
        .CE(E),
        .D(wnext[3]),
        .Q(waddr[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[4] 
       (.C(clock),
        .CE(E),
        .D(wnext[4]),
        .Q(waddr[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[5] 
       (.C(clock),
        .CE(E),
        .D(wnext[5]),
        .Q(waddr[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[6] 
       (.C(clock),
        .CE(E),
        .D(wnext[6]),
        .Q(waddr[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[7] 
       (.C(clock),
        .CE(E),
        .D(wnext[7]),
        .Q(waddr[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[8] 
       (.C(clock),
        .CE(E),
        .D(wnext[8]),
        .Q(waddr[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[9] 
       (.C(clock),
        .CE(E),
        .D(wnext[9]),
        .Q(waddr[9]),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d1024_A" *) 
module my_module2_0_fifo_w8_d1024_A_3
   (full_n_reg_0,
    E,
    empty_n_reg_0,
    \q_tmp_reg[0]_0 ,
    \q_tmp_reg[1]_0 ,
    \q_tmp_reg[2]_0 ,
    \q_tmp_reg[3]_0 ,
    \q_tmp_reg[4]_0 ,
    \q_tmp_reg[5]_0 ,
    \q_tmp_reg[6]_0 ,
    \q_tmp_reg[7]_0 ,
    dbl2tsep_1_empty_n,
    \usedw_reg[7]_0 ,
    S,
    \usedw_reg[7]_1 ,
    \usedw_reg[8]_0 ,
    \dout_buf_reg[7]_0 ,
    clock,
    Q,
    reset,
    empty_n_reg_1,
    dout_valid_reg_0,
    pop,
    mod2dbl_1_empty_n,
    \q_tmp_reg[0]_1 ,
    D);
  output full_n_reg_0;
  output [0:0]E;
  output empty_n_reg_0;
  output \q_tmp_reg[0]_0 ;
  output \q_tmp_reg[1]_0 ;
  output \q_tmp_reg[2]_0 ;
  output \q_tmp_reg[3]_0 ;
  output \q_tmp_reg[4]_0 ;
  output \q_tmp_reg[5]_0 ;
  output \q_tmp_reg[6]_0 ;
  output \q_tmp_reg[7]_0 ;
  output dbl2tsep_1_empty_n;
  output [7:0]\usedw_reg[7]_0 ;
  output [3:0]S;
  output [3:0]\usedw_reg[7]_1 ;
  output [0:0]\usedw_reg[8]_0 ;
  output [7:0]\dout_buf_reg[7]_0 ;
  input clock;
  input [7:0]Q;
  input reset;
  input [0:0]empty_n_reg_1;
  input dout_valid_reg_0;
  input pop;
  input mod2dbl_1_empty_n;
  input \q_tmp_reg[0]_1 ;
  input [8:0]D;

  wire [8:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [3:0]S;
  wire clock;
  wire dbl2tsep_1_empty_n;
  wire \dout_buf[0]_i_1_n_8 ;
  wire \dout_buf[1]_i_1_n_8 ;
  wire \dout_buf[2]_i_1_n_8 ;
  wire \dout_buf[3]_i_1_n_8 ;
  wire \dout_buf[4]_i_1_n_8 ;
  wire \dout_buf[5]_i_1_n_8 ;
  wire \dout_buf[6]_i_1_n_8 ;
  wire \dout_buf[7]_i_1_n_8 ;
  wire [7:0]\dout_buf_reg[7]_0 ;
  wire dout_valid_reg_0;
  wire empty_n_i_2__1_n_8;
  wire empty_n_i_3_n_8;
  wire empty_n_i_4_n_8;
  wire empty_n_reg_0;
  wire [0:0]empty_n_reg_1;
  wire full_n_i_1__1_n_8;
  wire full_n_i_2__0_n_8;
  wire full_n_i_3__0_n_8;
  wire full_n_reg_0;
  wire mem_reg_i_10__0_n_8;
  wire mem_reg_i_11__1_n_8;
  wire mem_reg_i_1__0_n_8;
  wire mem_reg_i_2__0_n_8;
  wire mem_reg_i_3__0_n_8;
  wire mem_reg_i_4__0_n_8;
  wire mem_reg_i_5__0_n_8;
  wire mem_reg_i_6__0_n_8;
  wire mem_reg_i_7__0_n_8;
  wire mem_reg_i_8__1_n_8;
  wire mem_reg_i_9__0_n_8;
  wire mod2dbl_1_empty_n;
  wire pop;
  wire [7:0]q_buf;
  wire \q_tmp_reg[0]_0 ;
  wire \q_tmp_reg[0]_1 ;
  wire \q_tmp_reg[1]_0 ;
  wire \q_tmp_reg[2]_0 ;
  wire \q_tmp_reg[3]_0 ;
  wire \q_tmp_reg[4]_0 ;
  wire \q_tmp_reg[5]_0 ;
  wire \q_tmp_reg[6]_0 ;
  wire \q_tmp_reg[7]_0 ;
  wire \raddr[4]_i_1_n_8 ;
  wire \raddr[5]_i_1_n_8 ;
  wire \raddr[6]_i_1_n_8 ;
  wire \raddr[7]_i_1_n_8 ;
  wire \raddr[8]_i_1__0_n_8 ;
  wire \raddr[9]_i_2_n_8 ;
  wire \raddr_reg_n_8_[0] ;
  wire \raddr_reg_n_8_[1] ;
  wire \raddr_reg_n_8_[2] ;
  wire \raddr_reg_n_8_[3] ;
  wire \raddr_reg_n_8_[4] ;
  wire \raddr_reg_n_8_[5] ;
  wire \raddr_reg_n_8_[6] ;
  wire \raddr_reg_n_8_[7] ;
  wire \raddr_reg_n_8_[8] ;
  wire \raddr_reg_n_8_[9] ;
  wire reset;
  wire show_ahead0;
  wire show_ahead_reg_n_8;
  wire \usedw[0]_i_1__0_n_8 ;
  wire [9:8]usedw_reg;
  wire [7:0]\usedw_reg[7]_0 ;
  wire [3:0]\usedw_reg[7]_1 ;
  wire [0:0]\usedw_reg[8]_0 ;
  wire [9:0]waddr;
  wire \waddr[9]_i_2__0_n_8 ;
  wire [9:0]wnext;
  wire [15:0]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [15:8]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[0]_i_1 
       (.I0(\q_tmp_reg[0]_0 ),
        .I1(q_buf[0]),
        .I2(show_ahead_reg_n_8),
        .O(\dout_buf[0]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[1]_i_1 
       (.I0(\q_tmp_reg[1]_0 ),
        .I1(q_buf[1]),
        .I2(show_ahead_reg_n_8),
        .O(\dout_buf[1]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[2]_i_1 
       (.I0(\q_tmp_reg[2]_0 ),
        .I1(q_buf[2]),
        .I2(show_ahead_reg_n_8),
        .O(\dout_buf[2]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[3]_i_1 
       (.I0(\q_tmp_reg[3]_0 ),
        .I1(q_buf[3]),
        .I2(show_ahead_reg_n_8),
        .O(\dout_buf[3]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[4]_i_1 
       (.I0(\q_tmp_reg[4]_0 ),
        .I1(q_buf[4]),
        .I2(show_ahead_reg_n_8),
        .O(\dout_buf[4]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[5]_i_1 
       (.I0(\q_tmp_reg[5]_0 ),
        .I1(q_buf[5]),
        .I2(show_ahead_reg_n_8),
        .O(\dout_buf[5]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[6]_i_1 
       (.I0(\q_tmp_reg[6]_0 ),
        .I1(q_buf[6]),
        .I2(show_ahead_reg_n_8),
        .O(\dout_buf[6]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[7]_i_1 
       (.I0(\q_tmp_reg[7]_0 ),
        .I1(q_buf[7]),
        .I2(show_ahead_reg_n_8),
        .O(\dout_buf[7]_i_1_n_8 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[0] 
       (.C(clock),
        .CE(pop),
        .D(\dout_buf[0]_i_1_n_8 ),
        .Q(\dout_buf_reg[7]_0 [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[1] 
       (.C(clock),
        .CE(pop),
        .D(\dout_buf[1]_i_1_n_8 ),
        .Q(\dout_buf_reg[7]_0 [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[2] 
       (.C(clock),
        .CE(pop),
        .D(\dout_buf[2]_i_1_n_8 ),
        .Q(\dout_buf_reg[7]_0 [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[3] 
       (.C(clock),
        .CE(pop),
        .D(\dout_buf[3]_i_1_n_8 ),
        .Q(\dout_buf_reg[7]_0 [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[4] 
       (.C(clock),
        .CE(pop),
        .D(\dout_buf[4]_i_1_n_8 ),
        .Q(\dout_buf_reg[7]_0 [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[5] 
       (.C(clock),
        .CE(pop),
        .D(\dout_buf[5]_i_1_n_8 ),
        .Q(\dout_buf_reg[7]_0 [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[6] 
       (.C(clock),
        .CE(pop),
        .D(\dout_buf[6]_i_1_n_8 ),
        .Q(\dout_buf_reg[7]_0 [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[7] 
       (.C(clock),
        .CE(pop),
        .D(\dout_buf[7]_i_1_n_8 ),
        .Q(\dout_buf_reg[7]_0 [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    dout_valid_reg
       (.C(clock),
        .CE(1'b1),
        .D(dout_valid_reg_0),
        .Q(dbl2tsep_1_empty_n),
        .R(reset));
  LUT6 #(
    .INIT(64'hFFFFFFFF4000FFFF)) 
    empty_n_i_2__1
       (.I0(pop),
        .I1(mod2dbl_1_empty_n),
        .I2(full_n_reg_0),
        .I3(\q_tmp_reg[0]_1 ),
        .I4(\usedw_reg[7]_0 [0]),
        .I5(empty_n_i_3_n_8),
        .O(empty_n_i_2__1_n_8));
  LUT4 #(
    .INIT(16'hFFFE)) 
    empty_n_i_3
       (.I0(\usedw_reg[7]_0 [5]),
        .I1(\usedw_reg[7]_0 [7]),
        .I2(\usedw_reg[7]_0 [6]),
        .I3(empty_n_i_4_n_8),
        .O(empty_n_i_3_n_8));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    empty_n_i_4
       (.I0(usedw_reg[9]),
        .I1(usedw_reg[8]),
        .I2(\usedw_reg[7]_0 [2]),
        .I3(\usedw_reg[7]_0 [3]),
        .I4(\usedw_reg[7]_0 [1]),
        .I5(\usedw_reg[7]_0 [4]),
        .O(empty_n_i_4_n_8));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(clock),
        .CE(empty_n_reg_1),
        .D(empty_n_i_2__1_n_8),
        .Q(empty_n_reg_0),
        .R(reset));
  LUT6 #(
    .INIT(64'h7F7F7F7F80008080)) 
    full_n_i_1__1
       (.I0(mod2dbl_1_empty_n),
        .I1(full_n_reg_0),
        .I2(\q_tmp_reg[0]_1 ),
        .I3(full_n_i_2__0_n_8),
        .I4(\usedw_reg[7]_0 [0]),
        .I5(pop),
        .O(full_n_i_1__1_n_8));
  LUT4 #(
    .INIT(16'hFF7F)) 
    full_n_i_2__0
       (.I0(\usedw_reg[7]_0 [2]),
        .I1(\usedw_reg[7]_0 [1]),
        .I2(\usedw_reg[7]_0 [7]),
        .I3(full_n_i_3__0_n_8),
        .O(full_n_i_2__0_n_8));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    full_n_i_3__0
       (.I0(usedw_reg[9]),
        .I1(usedw_reg[8]),
        .I2(\usedw_reg[7]_0 [3]),
        .I3(\usedw_reg[7]_0 [5]),
        .I4(\usedw_reg[7]_0 [4]),
        .I5(\usedw_reg[7]_0 [6]),
        .O(full_n_i_3__0_n_8));
  FDSE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(clock),
        .CE(empty_n_reg_1),
        .D(full_n_i_1__1_n_8),
        .Q(full_n_reg_0),
        .S(reset));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "grp_Detecteur2_fu_226/dbl2tsep_1_fifo_U/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({waddr,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({mem_reg_i_1__0_n_8,mem_reg_i_2__0_n_8,mem_reg_i_3__0_n_8,mem_reg_i_4__0_n_8,mem_reg_i_5__0_n_8,mem_reg_i_6__0_n_8,mem_reg_i_7__0_n_8,mem_reg_i_8__1_n_8,mem_reg_i_9__0_n_8,mem_reg_i_10__0_n_8,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_mem_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_mem_reg_DOBDO_UNCONNECTED[15:8],q_buf}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(full_n_reg_0),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({E,E}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h6)) 
    mem_reg_i_10__0
       (.I0(\raddr_reg_n_8_[0] ),
        .I1(pop),
        .O(mem_reg_i_10__0_n_8));
  LUT3 #(
    .INIT(8'h80)) 
    mem_reg_i_11__0
       (.I0(mod2dbl_1_empty_n),
        .I1(full_n_reg_0),
        .I2(\q_tmp_reg[0]_1 ),
        .O(E));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    mem_reg_i_11__1
       (.I0(\raddr_reg_n_8_[5] ),
        .I1(\raddr_reg_n_8_[3] ),
        .I2(\raddr_reg_n_8_[2] ),
        .I3(\raddr_reg_n_8_[0] ),
        .I4(\raddr_reg_n_8_[1] ),
        .I5(\raddr_reg_n_8_[4] ),
        .O(mem_reg_i_11__1_n_8));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    mem_reg_i_1__0
       (.I0(\raddr_reg_n_8_[7] ),
        .I1(\raddr_reg_n_8_[6] ),
        .I2(mem_reg_i_11__1_n_8),
        .I3(\raddr_reg_n_8_[8] ),
        .I4(pop),
        .I5(\raddr_reg_n_8_[9] ),
        .O(mem_reg_i_1__0_n_8));
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    mem_reg_i_2__0
       (.I0(mem_reg_i_11__1_n_8),
        .I1(\raddr_reg_n_8_[6] ),
        .I2(\raddr_reg_n_8_[7] ),
        .I3(pop),
        .I4(\raddr_reg_n_8_[8] ),
        .O(mem_reg_i_2__0_n_8));
  LUT4 #(
    .INIT(16'hBF40)) 
    mem_reg_i_3__0
       (.I0(mem_reg_i_11__1_n_8),
        .I1(\raddr_reg_n_8_[6] ),
        .I2(pop),
        .I3(\raddr_reg_n_8_[7] ),
        .O(mem_reg_i_3__0_n_8));
  LUT3 #(
    .INIT(8'hB4)) 
    mem_reg_i_4__0
       (.I0(mem_reg_i_11__1_n_8),
        .I1(pop),
        .I2(\raddr_reg_n_8_[6] ),
        .O(mem_reg_i_4__0_n_8));
  LUT3 #(
    .INIT(8'hB8)) 
    mem_reg_i_5__0
       (.I0(\raddr[5]_i_1_n_8 ),
        .I1(pop),
        .I2(\raddr_reg_n_8_[5] ),
        .O(mem_reg_i_5__0_n_8));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    mem_reg_i_6__0
       (.I0(\raddr_reg_n_8_[1] ),
        .I1(\raddr_reg_n_8_[0] ),
        .I2(\raddr_reg_n_8_[2] ),
        .I3(\raddr_reg_n_8_[3] ),
        .I4(pop),
        .I5(\raddr_reg_n_8_[4] ),
        .O(mem_reg_i_6__0_n_8));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    mem_reg_i_7__0
       (.I0(\raddr_reg_n_8_[3] ),
        .I1(\raddr_reg_n_8_[1] ),
        .I2(pop),
        .I3(\raddr_reg_n_8_[0] ),
        .I4(\raddr_reg_n_8_[2] ),
        .O(mem_reg_i_7__0_n_8));
  LUT4 #(
    .INIT(16'h6AAA)) 
    mem_reg_i_8__1
       (.I0(\raddr_reg_n_8_[2] ),
        .I1(\raddr_reg_n_8_[0] ),
        .I2(pop),
        .I3(\raddr_reg_n_8_[1] ),
        .O(mem_reg_i_8__1_n_8));
  LUT3 #(
    .INIT(8'h6A)) 
    mem_reg_i_9__0
       (.I0(\raddr_reg_n_8_[1] ),
        .I1(pop),
        .I2(\raddr_reg_n_8_[0] ),
        .O(mem_reg_i_9__0_n_8));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out__24_carry__0_i_1
       (.I0(\usedw_reg[7]_0 [7]),
        .I1(usedw_reg[8]),
        .O(\usedw_reg[7]_1 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out__24_carry__0_i_2
       (.I0(\usedw_reg[7]_0 [6]),
        .I1(\usedw_reg[7]_0 [7]),
        .O(\usedw_reg[7]_1 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out__24_carry__0_i_3
       (.I0(\usedw_reg[7]_0 [5]),
        .I1(\usedw_reg[7]_0 [6]),
        .O(\usedw_reg[7]_1 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out__24_carry__0_i_4
       (.I0(\usedw_reg[7]_0 [4]),
        .I1(\usedw_reg[7]_0 [5]),
        .O(\usedw_reg[7]_1 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out__24_carry__1_i_1
       (.I0(usedw_reg[8]),
        .I1(usedw_reg[9]),
        .O(\usedw_reg[8]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out__24_carry_i_2
       (.I0(\usedw_reg[7]_0 [3]),
        .I1(\usedw_reg[7]_0 [4]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out__24_carry_i_3
       (.I0(\usedw_reg[7]_0 [2]),
        .I1(\usedw_reg[7]_0 [3]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out__24_carry_i_4
       (.I0(\usedw_reg[7]_0 [1]),
        .I1(\usedw_reg[7]_0 [2]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h65555555)) 
    p_0_out__24_carry_i_5
       (.I0(\usedw_reg[7]_0 [1]),
        .I1(pop),
        .I2(mod2dbl_1_empty_n),
        .I3(full_n_reg_0),
        .I4(\q_tmp_reg[0]_1 ),
        .O(S[0]));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[0] 
       (.C(clock),
        .CE(E),
        .D(Q[0]),
        .Q(\q_tmp_reg[0]_0 ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[1] 
       (.C(clock),
        .CE(E),
        .D(Q[1]),
        .Q(\q_tmp_reg[1]_0 ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[2] 
       (.C(clock),
        .CE(E),
        .D(Q[2]),
        .Q(\q_tmp_reg[2]_0 ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[3] 
       (.C(clock),
        .CE(E),
        .D(Q[3]),
        .Q(\q_tmp_reg[3]_0 ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[4] 
       (.C(clock),
        .CE(E),
        .D(Q[4]),
        .Q(\q_tmp_reg[4]_0 ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[5] 
       (.C(clock),
        .CE(E),
        .D(Q[5]),
        .Q(\q_tmp_reg[5]_0 ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[6] 
       (.C(clock),
        .CE(E),
        .D(Q[6]),
        .Q(\q_tmp_reg[6]_0 ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[7] 
       (.C(clock),
        .CE(E),
        .D(Q[7]),
        .Q(\q_tmp_reg[7]_0 ),
        .R(reset));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \raddr[4]_i_1 
       (.I0(\raddr_reg_n_8_[4] ),
        .I1(\raddr_reg_n_8_[1] ),
        .I2(\raddr_reg_n_8_[0] ),
        .I3(\raddr_reg_n_8_[2] ),
        .I4(\raddr_reg_n_8_[3] ),
        .O(\raddr[4]_i_1_n_8 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \raddr[5]_i_1 
       (.I0(\raddr_reg_n_8_[5] ),
        .I1(\raddr_reg_n_8_[3] ),
        .I2(\raddr_reg_n_8_[2] ),
        .I3(\raddr_reg_n_8_[0] ),
        .I4(\raddr_reg_n_8_[1] ),
        .I5(\raddr_reg_n_8_[4] ),
        .O(\raddr[5]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \raddr[6]_i_1 
       (.I0(\raddr_reg_n_8_[6] ),
        .I1(mem_reg_i_11__1_n_8),
        .O(\raddr[6]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \raddr[7]_i_1 
       (.I0(\raddr_reg_n_8_[7] ),
        .I1(mem_reg_i_11__1_n_8),
        .I2(\raddr_reg_n_8_[6] ),
        .O(\raddr[7]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    \raddr[8]_i_1__0 
       (.I0(\raddr_reg_n_8_[8] ),
        .I1(mem_reg_i_11__1_n_8),
        .I2(\raddr_reg_n_8_[6] ),
        .I3(\raddr_reg_n_8_[7] ),
        .O(\raddr[8]_i_1__0_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \raddr[9]_i_2 
       (.I0(\raddr_reg_n_8_[9] ),
        .I1(\raddr_reg_n_8_[7] ),
        .I2(\raddr_reg_n_8_[6] ),
        .I3(mem_reg_i_11__1_n_8),
        .I4(\raddr_reg_n_8_[8] ),
        .O(\raddr[9]_i_2_n_8 ));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(mem_reg_i_10__0_n_8),
        .Q(\raddr_reg_n_8_[0] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(mem_reg_i_9__0_n_8),
        .Q(\raddr_reg_n_8_[1] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(mem_reg_i_8__1_n_8),
        .Q(\raddr_reg_n_8_[2] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(mem_reg_i_7__0_n_8),
        .Q(\raddr_reg_n_8_[3] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[4] 
       (.C(clock),
        .CE(pop),
        .D(\raddr[4]_i_1_n_8 ),
        .Q(\raddr_reg_n_8_[4] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[5] 
       (.C(clock),
        .CE(pop),
        .D(\raddr[5]_i_1_n_8 ),
        .Q(\raddr_reg_n_8_[5] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[6] 
       (.C(clock),
        .CE(pop),
        .D(\raddr[6]_i_1_n_8 ),
        .Q(\raddr_reg_n_8_[6] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[7] 
       (.C(clock),
        .CE(pop),
        .D(\raddr[7]_i_1_n_8 ),
        .Q(\raddr_reg_n_8_[7] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[8] 
       (.C(clock),
        .CE(pop),
        .D(\raddr[8]_i_1__0_n_8 ),
        .Q(\raddr_reg_n_8_[8] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[9] 
       (.C(clock),
        .CE(pop),
        .D(\raddr[9]_i_2_n_8 ),
        .Q(\raddr_reg_n_8_[9] ),
        .R(reset));
  LUT6 #(
    .INIT(64'h4000000040004000)) 
    show_ahead_i_1__1
       (.I0(empty_n_i_3_n_8),
        .I1(mod2dbl_1_empty_n),
        .I2(full_n_reg_0),
        .I3(\q_tmp_reg[0]_1 ),
        .I4(pop),
        .I5(\usedw_reg[7]_0 [0]),
        .O(show_ahead0));
  FDRE #(
    .INIT(1'b0)) 
    show_ahead_reg
       (.C(clock),
        .CE(1'b1),
        .D(show_ahead0),
        .Q(show_ahead_reg_n_8),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    \usedw[0]_i_1__0 
       (.I0(\usedw_reg[7]_0 [0]),
        .O(\usedw[0]_i_1__0_n_8 ));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[0] 
       (.C(clock),
        .CE(empty_n_reg_1),
        .D(\usedw[0]_i_1__0_n_8 ),
        .Q(\usedw_reg[7]_0 [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[1] 
       (.C(clock),
        .CE(empty_n_reg_1),
        .D(D[0]),
        .Q(\usedw_reg[7]_0 [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[2] 
       (.C(clock),
        .CE(empty_n_reg_1),
        .D(D[1]),
        .Q(\usedw_reg[7]_0 [2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[3] 
       (.C(clock),
        .CE(empty_n_reg_1),
        .D(D[2]),
        .Q(\usedw_reg[7]_0 [3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[4] 
       (.C(clock),
        .CE(empty_n_reg_1),
        .D(D[3]),
        .Q(\usedw_reg[7]_0 [4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[5] 
       (.C(clock),
        .CE(empty_n_reg_1),
        .D(D[4]),
        .Q(\usedw_reg[7]_0 [5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[6] 
       (.C(clock),
        .CE(empty_n_reg_1),
        .D(D[5]),
        .Q(\usedw_reg[7]_0 [6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[7] 
       (.C(clock),
        .CE(empty_n_reg_1),
        .D(D[6]),
        .Q(\usedw_reg[7]_0 [7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[8] 
       (.C(clock),
        .CE(empty_n_reg_1),
        .D(D[7]),
        .Q(usedw_reg[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[9] 
       (.C(clock),
        .CE(empty_n_reg_1),
        .D(D[8]),
        .Q(usedw_reg[9]),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    \waddr[0]_i_1__0 
       (.I0(waddr[0]),
        .O(wnext[0]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \waddr[1]_i_1__0 
       (.I0(waddr[0]),
        .I1(waddr[1]),
        .O(wnext[1]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \waddr[2]_i_1__0 
       (.I0(waddr[1]),
        .I1(waddr[0]),
        .I2(waddr[2]),
        .O(wnext[2]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \waddr[3]_i_1__0 
       (.I0(waddr[2]),
        .I1(waddr[0]),
        .I2(waddr[1]),
        .I3(waddr[3]),
        .O(wnext[3]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \waddr[4]_i_1__0 
       (.I0(waddr[3]),
        .I1(waddr[1]),
        .I2(waddr[0]),
        .I3(waddr[2]),
        .I4(waddr[4]),
        .O(wnext[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \waddr[5]_i_1__0 
       (.I0(waddr[4]),
        .I1(waddr[2]),
        .I2(waddr[0]),
        .I3(waddr[1]),
        .I4(waddr[3]),
        .I5(waddr[5]),
        .O(wnext[5]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \waddr[6]_i_1__0 
       (.I0(\waddr[9]_i_2__0_n_8 ),
        .I1(waddr[6]),
        .O(wnext[6]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \waddr[7]_i_1__0 
       (.I0(waddr[6]),
        .I1(\waddr[9]_i_2__0_n_8 ),
        .I2(waddr[7]),
        .O(wnext[7]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \waddr[8]_i_1__0 
       (.I0(waddr[7]),
        .I1(\waddr[9]_i_2__0_n_8 ),
        .I2(waddr[6]),
        .I3(waddr[8]),
        .O(wnext[8]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \waddr[9]_i_1__0 
       (.I0(waddr[8]),
        .I1(waddr[6]),
        .I2(\waddr[9]_i_2__0_n_8 ),
        .I3(waddr[7]),
        .I4(waddr[9]),
        .O(wnext[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \waddr[9]_i_2__0 
       (.I0(waddr[4]),
        .I1(waddr[2]),
        .I2(waddr[0]),
        .I3(waddr[1]),
        .I4(waddr[3]),
        .I5(waddr[5]),
        .O(\waddr[9]_i_2__0_n_8 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[0] 
       (.C(clock),
        .CE(E),
        .D(wnext[0]),
        .Q(waddr[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[1] 
       (.C(clock),
        .CE(E),
        .D(wnext[1]),
        .Q(waddr[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[2] 
       (.C(clock),
        .CE(E),
        .D(wnext[2]),
        .Q(waddr[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[3] 
       (.C(clock),
        .CE(E),
        .D(wnext[3]),
        .Q(waddr[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[4] 
       (.C(clock),
        .CE(E),
        .D(wnext[4]),
        .Q(waddr[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[5] 
       (.C(clock),
        .CE(E),
        .D(wnext[5]),
        .Q(waddr[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[6] 
       (.C(clock),
        .CE(E),
        .D(wnext[6]),
        .Q(waddr[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[7] 
       (.C(clock),
        .CE(E),
        .D(wnext[7]),
        .Q(waddr[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[8] 
       (.C(clock),
        .CE(E),
        .D(wnext[8]),
        .Q(waddr[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[9] 
       (.C(clock),
        .CE(E),
        .D(wnext[9]),
        .Q(waddr[9]),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d1024_A_x" *) 
module my_module2_0_fifo_w8_d1024_A_x
   (mod2dbl_1_full_n,
    mod2dbl_1_empty_n,
    Q,
    clock,
    D,
    push,
    reset,
    dbl2tsep_1_full_n,
    dbl2scalc_1_full_n);
  output mod2dbl_1_full_n;
  output mod2dbl_1_empty_n;
  output [7:0]Q;
  input clock;
  input [7:0]D;
  input push;
  input reset;
  input dbl2tsep_1_full_n;
  input dbl2scalc_1_full_n;

  wire [7:0]D;
  wire [7:0]Q;
  wire clock;
  wire dbl2scalc_1_full_n;
  wire dbl2tsep_1_full_n;
  wire dout_valid_i_1__1_n_8;
  wire empty_n;
  wire empty_n0;
  wire empty_n_i_3__0_n_8;
  wire empty_n_i_4__0_n_8;
  wire empty_n_reg_n_8;
  wire full_n0;
  wire full_n_i_2__1_n_8;
  wire full_n_i_3__1_n_8;
  wire mem_reg_i_10__1_n_8;
  wire mem_reg_i_12__0_n_8;
  wire mem_reg_i_13__0_n_8;
  wire mem_reg_i_1__1_n_8;
  wire mem_reg_i_2__1_n_8;
  wire mem_reg_i_3__1_n_8;
  wire mem_reg_i_4__1_n_8;
  wire mem_reg_i_5__1_n_8;
  wire mem_reg_i_6__1_n_8;
  wire mem_reg_i_7__1_n_8;
  wire mem_reg_i_8__0_n_8;
  wire mem_reg_i_9__1_n_8;
  wire mod2dbl_1_empty_n;
  wire mod2dbl_1_full_n;
  wire [7:0]p_0_in;
  wire p_0_out_carry__0_i_1__0_n_8;
  wire p_0_out_carry__0_i_2__0_n_8;
  wire p_0_out_carry__0_i_3__0_n_8;
  wire p_0_out_carry__0_i_4__0_n_8;
  wire p_0_out_carry__0_n_10;
  wire p_0_out_carry__0_n_11;
  wire p_0_out_carry__0_n_12;
  wire p_0_out_carry__0_n_13;
  wire p_0_out_carry__0_n_14;
  wire p_0_out_carry__0_n_15;
  wire p_0_out_carry__0_n_8;
  wire p_0_out_carry__0_n_9;
  wire p_0_out_carry__1_i_1__0_n_8;
  wire p_0_out_carry__1_n_15;
  wire p_0_out_carry_i_2__0_n_8;
  wire p_0_out_carry_i_3__0_n_8;
  wire p_0_out_carry_i_4__0_n_8;
  wire p_0_out_carry_i_5_n_8;
  wire p_0_out_carry_n_10;
  wire p_0_out_carry_n_11;
  wire p_0_out_carry_n_12;
  wire p_0_out_carry_n_13;
  wire p_0_out_carry_n_14;
  wire p_0_out_carry_n_15;
  wire p_0_out_carry_n_8;
  wire p_0_out_carry_n_9;
  wire pop;
  wire push;
  wire [7:0]q_buf;
  wire [7:0]q_tmp;
  wire [9:0]raddr;
  wire \raddr[4]_i_1__0_n_8 ;
  wire \raddr[5]_i_1__0_n_8 ;
  wire \raddr[7]_i_1__0_n_8 ;
  wire \raddr[8]_i_2_n_8 ;
  wire reset;
  wire show_ahead;
  wire show_ahead0;
  wire usedw14_out;
  wire \usedw[0]_i_1__1_n_8 ;
  wire [9:0]usedw_reg;
  wire [9:0]waddr;
  wire \waddr[9]_i_2__1_n_8 ;
  wire [9:0]wnext;
  wire [15:0]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [15:8]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [3:0]NLW_p_0_out_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_p_0_out_carry__1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[0]_i_1 
       (.I0(q_tmp[0]),
        .I1(q_buf[0]),
        .I2(show_ahead),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[1]_i_1 
       (.I0(q_tmp[1]),
        .I1(q_buf[1]),
        .I2(show_ahead),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[2]_i_1 
       (.I0(q_tmp[2]),
        .I1(q_buf[2]),
        .I2(show_ahead),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[3]_i_1 
       (.I0(q_tmp[3]),
        .I1(q_buf[3]),
        .I2(show_ahead),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[4]_i_1 
       (.I0(q_tmp[4]),
        .I1(q_buf[4]),
        .I2(show_ahead),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[5]_i_1 
       (.I0(q_tmp[5]),
        .I1(q_buf[5]),
        .I2(show_ahead),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[6]_i_1 
       (.I0(q_tmp[6]),
        .I1(q_buf[6]),
        .I2(show_ahead),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \dout_buf[7]_i_1 
       (.I0(q_tmp[7]),
        .I1(q_buf[7]),
        .I2(show_ahead),
        .O(p_0_in[7]));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[0] 
       (.C(clock),
        .CE(pop),
        .D(p_0_in[0]),
        .Q(Q[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[1] 
       (.C(clock),
        .CE(pop),
        .D(p_0_in[1]),
        .Q(Q[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[2] 
       (.C(clock),
        .CE(pop),
        .D(p_0_in[2]),
        .Q(Q[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[3] 
       (.C(clock),
        .CE(pop),
        .D(p_0_in[3]),
        .Q(Q[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[4] 
       (.C(clock),
        .CE(pop),
        .D(p_0_in[4]),
        .Q(Q[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[5] 
       (.C(clock),
        .CE(pop),
        .D(p_0_in[5]),
        .Q(Q[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[6] 
       (.C(clock),
        .CE(pop),
        .D(p_0_in[6]),
        .Q(Q[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \dout_buf_reg[7] 
       (.C(clock),
        .CE(pop),
        .D(p_0_in[7]),
        .Q(Q[7]),
        .R(reset));
  LUT4 #(
    .INIT(16'hFF2A)) 
    dout_valid_i_1__1
       (.I0(mod2dbl_1_empty_n),
        .I1(dbl2tsep_1_full_n),
        .I2(dbl2scalc_1_full_n),
        .I3(empty_n_reg_n_8),
        .O(dout_valid_i_1__1_n_8));
  FDRE #(
    .INIT(1'b0)) 
    dout_valid_reg
       (.C(clock),
        .CE(1'b1),
        .D(dout_valid_i_1__1_n_8),
        .Q(mod2dbl_1_empty_n),
        .R(reset));
  LUT5 #(
    .INIT(32'h5999AAAA)) 
    empty_n_i_1
       (.I0(push),
        .I1(mod2dbl_1_empty_n),
        .I2(dbl2tsep_1_full_n),
        .I3(dbl2scalc_1_full_n),
        .I4(empty_n_reg_n_8),
        .O(empty_n));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    empty_n_i_2
       (.I0(pop),
        .I1(push),
        .I2(usedw_reg[0]),
        .I3(empty_n_i_3__0_n_8),
        .O(empty_n0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    empty_n_i_3__0
       (.I0(usedw_reg[8]),
        .I1(usedw_reg[9]),
        .I2(usedw_reg[1]),
        .I3(empty_n_i_4__0_n_8),
        .O(empty_n_i_3__0_n_8));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    empty_n_i_4__0
       (.I0(usedw_reg[6]),
        .I1(usedw_reg[5]),
        .I2(usedw_reg[4]),
        .I3(usedw_reg[7]),
        .I4(usedw_reg[2]),
        .I5(usedw_reg[3]),
        .O(empty_n_i_4__0_n_8));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(clock),
        .CE(empty_n),
        .D(empty_n0),
        .Q(empty_n_reg_n_8),
        .R(reset));
  LUT6 #(
    .INIT(64'h0FF00FF00F700FF0)) 
    full_n_i_1
       (.I0(usedw_reg[9]),
        .I1(usedw_reg[8]),
        .I2(push),
        .I3(pop),
        .I4(full_n_i_2__1_n_8),
        .I5(full_n_i_3__1_n_8),
        .O(full_n0));
  LUT4 #(
    .INIT(16'h8000)) 
    full_n_i_2__1
       (.I0(usedw_reg[3]),
        .I1(usedw_reg[2]),
        .I2(usedw_reg[0]),
        .I3(usedw_reg[1]),
        .O(full_n_i_2__1_n_8));
  LUT4 #(
    .INIT(16'h7FFF)) 
    full_n_i_3__1
       (.I0(usedw_reg[5]),
        .I1(usedw_reg[4]),
        .I2(usedw_reg[7]),
        .I3(usedw_reg[6]),
        .O(full_n_i_3__1_n_8));
  FDSE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(clock),
        .CE(empty_n),
        .D(full_n0),
        .Q(mod2dbl_1_full_n),
        .S(reset));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "mod2dbl_1_fifo_U/mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({waddr,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({mem_reg_i_1__1_n_8,mem_reg_i_2__1_n_8,mem_reg_i_3__1_n_8,mem_reg_i_4__1_n_8,mem_reg_i_5__1_n_8,mem_reg_i_6__1_n_8,mem_reg_i_7__1_n_8,mem_reg_i_8__0_n_8,mem_reg_i_9__1_n_8,mem_reg_i_10__1_n_8,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clock),
        .CLKBWRCLK(clock),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,D}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_mem_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_mem_reg_DOBDO_UNCONNECTED[15:8],q_buf}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(mod2dbl_1_full_n),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({push,push}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h5999AAAA)) 
    mem_reg_i_10__1
       (.I0(raddr[0]),
        .I1(mod2dbl_1_empty_n),
        .I2(dbl2tsep_1_full_n),
        .I3(dbl2scalc_1_full_n),
        .I4(empty_n_reg_n_8),
        .O(mem_reg_i_10__1_n_8));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    mem_reg_i_12__0
       (.I0(raddr[5]),
        .I1(raddr[3]),
        .I2(raddr[2]),
        .I3(raddr[0]),
        .I4(raddr[1]),
        .I5(raddr[4]),
        .O(mem_reg_i_12__0_n_8));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_i_13__0
       (.I0(raddr[6]),
        .I1(mem_reg_i_12__0_n_8),
        .O(mem_reg_i_13__0_n_8));
  LUT6 #(
    .INIT(64'hAAAAAAAA6AAAAAAA)) 
    mem_reg_i_1__1
       (.I0(raddr[9]),
        .I1(pop),
        .I2(raddr[8]),
        .I3(raddr[7]),
        .I4(raddr[6]),
        .I5(mem_reg_i_12__0_n_8),
        .O(mem_reg_i_1__1_n_8));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    mem_reg_i_2__1
       (.I0(raddr[6]),
        .I1(mem_reg_i_12__0_n_8),
        .I2(raddr[7]),
        .I3(pop),
        .I4(raddr[8]),
        .O(mem_reg_i_2__1_n_8));
  LUT6 #(
    .INIT(64'h7FFF777780008888)) 
    mem_reg_i_3__1
       (.I0(mem_reg_i_13__0_n_8),
        .I1(empty_n_reg_n_8),
        .I2(dbl2scalc_1_full_n),
        .I3(dbl2tsep_1_full_n),
        .I4(mod2dbl_1_empty_n),
        .I5(raddr[7]),
        .O(mem_reg_i_3__1_n_8));
  LUT6 #(
    .INIT(64'h9AAAAAAA9A9A9A9A)) 
    mem_reg_i_4__1
       (.I0(raddr[6]),
        .I1(mem_reg_i_12__0_n_8),
        .I2(empty_n_reg_n_8),
        .I3(dbl2scalc_1_full_n),
        .I4(dbl2tsep_1_full_n),
        .I5(mod2dbl_1_empty_n),
        .O(mem_reg_i_4__1_n_8));
  LUT6 #(
    .INIT(64'hBFFFBBBB80008888)) 
    mem_reg_i_5__1
       (.I0(\raddr[5]_i_1__0_n_8 ),
        .I1(empty_n_reg_n_8),
        .I2(dbl2scalc_1_full_n),
        .I3(dbl2tsep_1_full_n),
        .I4(mod2dbl_1_empty_n),
        .I5(raddr[5]),
        .O(mem_reg_i_5__1_n_8));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    mem_reg_i_6__1
       (.I0(raddr[1]),
        .I1(raddr[0]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .I4(pop),
        .I5(raddr[4]),
        .O(mem_reg_i_6__1_n_8));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    mem_reg_i_7__1
       (.I0(raddr[3]),
        .I1(raddr[2]),
        .I2(raddr[1]),
        .I3(pop),
        .I4(raddr[0]),
        .O(mem_reg_i_7__1_n_8));
  LUT4 #(
    .INIT(16'h6AAA)) 
    mem_reg_i_8__0
       (.I0(raddr[2]),
        .I1(raddr[0]),
        .I2(pop),
        .I3(raddr[1]),
        .O(mem_reg_i_8__0_n_8));
  LUT6 #(
    .INIT(64'h6AAA6666AAAAAAAA)) 
    mem_reg_i_9__1
       (.I0(raddr[1]),
        .I1(empty_n_reg_n_8),
        .I2(dbl2scalc_1_full_n),
        .I3(dbl2tsep_1_full_n),
        .I4(mod2dbl_1_empty_n),
        .I5(raddr[0]),
        .O(mem_reg_i_9__1_n_8));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_0_out_carry
       (.CI(1'b0),
        .CO({p_0_out_carry_n_8,p_0_out_carry_n_9,p_0_out_carry_n_10,p_0_out_carry_n_11}),
        .CYINIT(usedw_reg[0]),
        .DI({usedw_reg[3:1],usedw14_out}),
        .O({p_0_out_carry_n_12,p_0_out_carry_n_13,p_0_out_carry_n_14,p_0_out_carry_n_15}),
        .S({p_0_out_carry_i_2__0_n_8,p_0_out_carry_i_3__0_n_8,p_0_out_carry_i_4__0_n_8,p_0_out_carry_i_5_n_8}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_0_out_carry__0
       (.CI(p_0_out_carry_n_8),
        .CO({p_0_out_carry__0_n_8,p_0_out_carry__0_n_9,p_0_out_carry__0_n_10,p_0_out_carry__0_n_11}),
        .CYINIT(1'b0),
        .DI(usedw_reg[7:4]),
        .O({p_0_out_carry__0_n_12,p_0_out_carry__0_n_13,p_0_out_carry__0_n_14,p_0_out_carry__0_n_15}),
        .S({p_0_out_carry__0_i_1__0_n_8,p_0_out_carry__0_i_2__0_n_8,p_0_out_carry__0_i_3__0_n_8,p_0_out_carry__0_i_4__0_n_8}));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out_carry__0_i_1__0
       (.I0(usedw_reg[7]),
        .I1(usedw_reg[8]),
        .O(p_0_out_carry__0_i_1__0_n_8));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out_carry__0_i_2__0
       (.I0(usedw_reg[6]),
        .I1(usedw_reg[7]),
        .O(p_0_out_carry__0_i_2__0_n_8));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out_carry__0_i_3__0
       (.I0(usedw_reg[5]),
        .I1(usedw_reg[6]),
        .O(p_0_out_carry__0_i_3__0_n_8));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out_carry__0_i_4__0
       (.I0(usedw_reg[4]),
        .I1(usedw_reg[5]),
        .O(p_0_out_carry__0_i_4__0_n_8));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_0_out_carry__1
       (.CI(p_0_out_carry__0_n_8),
        .CO(NLW_p_0_out_carry__1_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_p_0_out_carry__1_O_UNCONNECTED[3:1],p_0_out_carry__1_n_15}),
        .S({1'b0,1'b0,1'b0,p_0_out_carry__1_i_1__0_n_8}));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out_carry__1_i_1__0
       (.I0(usedw_reg[8]),
        .I1(usedw_reg[9]),
        .O(p_0_out_carry__1_i_1__0_n_8));
  LUT5 #(
    .INIT(32'h0888AAAA)) 
    p_0_out_carry_i_1
       (.I0(push),
        .I1(mod2dbl_1_empty_n),
        .I2(dbl2tsep_1_full_n),
        .I3(dbl2scalc_1_full_n),
        .I4(empty_n_reg_n_8),
        .O(usedw14_out));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out_carry_i_2__0
       (.I0(usedw_reg[3]),
        .I1(usedw_reg[4]),
        .O(p_0_out_carry_i_2__0_n_8));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out_carry_i_3__0
       (.I0(usedw_reg[2]),
        .I1(usedw_reg[3]),
        .O(p_0_out_carry_i_3__0_n_8));
  LUT2 #(
    .INIT(4'h9)) 
    p_0_out_carry_i_4__0
       (.I0(usedw_reg[1]),
        .I1(usedw_reg[2]),
        .O(p_0_out_carry_i_4__0_n_8));
  LUT6 #(
    .INIT(64'h6AAA666655555555)) 
    p_0_out_carry_i_5
       (.I0(usedw_reg[1]),
        .I1(empty_n_reg_n_8),
        .I2(dbl2scalc_1_full_n),
        .I3(dbl2tsep_1_full_n),
        .I4(mod2dbl_1_empty_n),
        .I5(push),
        .O(p_0_out_carry_i_5_n_8));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[0] 
       (.C(clock),
        .CE(push),
        .D(D[0]),
        .Q(q_tmp[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[1] 
       (.C(clock),
        .CE(push),
        .D(D[1]),
        .Q(q_tmp[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[2] 
       (.C(clock),
        .CE(push),
        .D(D[2]),
        .Q(q_tmp[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[3] 
       (.C(clock),
        .CE(push),
        .D(D[3]),
        .Q(q_tmp[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[4] 
       (.C(clock),
        .CE(push),
        .D(D[4]),
        .Q(q_tmp[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[5] 
       (.C(clock),
        .CE(push),
        .D(D[5]),
        .Q(q_tmp[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[6] 
       (.C(clock),
        .CE(push),
        .D(D[6]),
        .Q(q_tmp[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \q_tmp_reg[7] 
       (.C(clock),
        .CE(push),
        .D(D[7]),
        .Q(q_tmp[7]),
        .R(reset));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \raddr[4]_i_1__0 
       (.I0(raddr[4]),
        .I1(raddr[1]),
        .I2(raddr[0]),
        .I3(raddr[2]),
        .I4(raddr[3]),
        .O(\raddr[4]_i_1__0_n_8 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \raddr[5]_i_1__0 
       (.I0(raddr[5]),
        .I1(raddr[3]),
        .I2(raddr[2]),
        .I3(raddr[0]),
        .I4(raddr[1]),
        .I5(raddr[4]),
        .O(\raddr[5]_i_1__0_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \raddr[7]_i_1__0 
       (.I0(raddr[7]),
        .I1(mem_reg_i_12__0_n_8),
        .I2(raddr[6]),
        .O(\raddr[7]_i_1__0_n_8 ));
  LUT4 #(
    .INIT(16'h80AA)) 
    \raddr[8]_i_1 
       (.I0(empty_n_reg_n_8),
        .I1(dbl2scalc_1_full_n),
        .I2(dbl2tsep_1_full_n),
        .I3(mod2dbl_1_empty_n),
        .O(pop));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \raddr[8]_i_2 
       (.I0(raddr[8]),
        .I1(raddr[6]),
        .I2(mem_reg_i_12__0_n_8),
        .I3(raddr[7]),
        .O(\raddr[8]_i_2_n_8 ));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(mem_reg_i_10__1_n_8),
        .Q(raddr[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(mem_reg_i_9__1_n_8),
        .Q(raddr[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(mem_reg_i_8__0_n_8),
        .Q(raddr[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(mem_reg_i_7__1_n_8),
        .Q(raddr[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[4] 
       (.C(clock),
        .CE(pop),
        .D(\raddr[4]_i_1__0_n_8 ),
        .Q(raddr[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[5] 
       (.C(clock),
        .CE(pop),
        .D(\raddr[5]_i_1__0_n_8 ),
        .Q(raddr[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(mem_reg_i_4__1_n_8),
        .Q(raddr[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[7] 
       (.C(clock),
        .CE(pop),
        .D(\raddr[7]_i_1__0_n_8 ),
        .Q(raddr[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[8] 
       (.C(clock),
        .CE(pop),
        .D(\raddr[8]_i_2_n_8 ),
        .Q(raddr[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \raddr_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(mem_reg_i_1__1_n_8),
        .Q(raddr[9]),
        .R(reset));
  LUT4 #(
    .INIT(16'h2202)) 
    show_ahead_i_1
       (.I0(push),
        .I1(empty_n_i_3__0_n_8),
        .I2(usedw_reg[0]),
        .I3(pop),
        .O(show_ahead0));
  FDRE #(
    .INIT(1'b0)) 
    show_ahead_reg
       (.C(clock),
        .CE(1'b1),
        .D(show_ahead0),
        .Q(show_ahead),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \usedw[0]_i_1__1 
       (.I0(usedw_reg[0]),
        .O(\usedw[0]_i_1__1_n_8 ));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[0] 
       (.C(clock),
        .CE(empty_n),
        .D(\usedw[0]_i_1__1_n_8 ),
        .Q(usedw_reg[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[1] 
       (.C(clock),
        .CE(empty_n),
        .D(p_0_out_carry_n_15),
        .Q(usedw_reg[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[2] 
       (.C(clock),
        .CE(empty_n),
        .D(p_0_out_carry_n_14),
        .Q(usedw_reg[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[3] 
       (.C(clock),
        .CE(empty_n),
        .D(p_0_out_carry_n_13),
        .Q(usedw_reg[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[4] 
       (.C(clock),
        .CE(empty_n),
        .D(p_0_out_carry_n_12),
        .Q(usedw_reg[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[5] 
       (.C(clock),
        .CE(empty_n),
        .D(p_0_out_carry__0_n_15),
        .Q(usedw_reg[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[6] 
       (.C(clock),
        .CE(empty_n),
        .D(p_0_out_carry__0_n_14),
        .Q(usedw_reg[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[7] 
       (.C(clock),
        .CE(empty_n),
        .D(p_0_out_carry__0_n_13),
        .Q(usedw_reg[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[8] 
       (.C(clock),
        .CE(empty_n),
        .D(p_0_out_carry__0_n_12),
        .Q(usedw_reg[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \usedw_reg[9] 
       (.C(clock),
        .CE(empty_n),
        .D(p_0_out_carry__1_n_15),
        .Q(usedw_reg[9]),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    \waddr[0]_i_1__1 
       (.I0(waddr[0]),
        .O(wnext[0]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \waddr[1]_i_1__1 
       (.I0(waddr[0]),
        .I1(waddr[1]),
        .O(wnext[1]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \waddr[2]_i_1__1 
       (.I0(waddr[1]),
        .I1(waddr[0]),
        .I2(waddr[2]),
        .O(wnext[2]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \waddr[3]_i_1__1 
       (.I0(waddr[2]),
        .I1(waddr[0]),
        .I2(waddr[1]),
        .I3(waddr[3]),
        .O(wnext[3]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \waddr[4]_i_1__1 
       (.I0(waddr[3]),
        .I1(waddr[1]),
        .I2(waddr[0]),
        .I3(waddr[2]),
        .I4(waddr[4]),
        .O(wnext[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \waddr[5]_i_1__1 
       (.I0(waddr[4]),
        .I1(waddr[2]),
        .I2(waddr[0]),
        .I3(waddr[1]),
        .I4(waddr[3]),
        .I5(waddr[5]),
        .O(wnext[5]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \waddr[6]_i_1__1 
       (.I0(\waddr[9]_i_2__1_n_8 ),
        .I1(waddr[6]),
        .O(wnext[6]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \waddr[7]_i_1__1 
       (.I0(waddr[6]),
        .I1(\waddr[9]_i_2__1_n_8 ),
        .I2(waddr[7]),
        .O(wnext[7]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \waddr[8]_i_1__1 
       (.I0(waddr[7]),
        .I1(\waddr[9]_i_2__1_n_8 ),
        .I2(waddr[6]),
        .I3(waddr[8]),
        .O(wnext[8]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \waddr[9]_i_1__1 
       (.I0(waddr[8]),
        .I1(waddr[6]),
        .I2(\waddr[9]_i_2__1_n_8 ),
        .I3(waddr[7]),
        .I4(waddr[9]),
        .O(wnext[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \waddr[9]_i_2__1 
       (.I0(waddr[4]),
        .I1(waddr[2]),
        .I2(waddr[0]),
        .I3(waddr[1]),
        .I4(waddr[3]),
        .I5(waddr[5]),
        .O(\waddr[9]_i_2__1_n_8 ));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[0] 
       (.C(clock),
        .CE(push),
        .D(wnext[0]),
        .Q(waddr[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[1] 
       (.C(clock),
        .CE(push),
        .D(wnext[1]),
        .Q(waddr[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[2] 
       (.C(clock),
        .CE(push),
        .D(wnext[2]),
        .Q(waddr[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[3] 
       (.C(clock),
        .CE(push),
        .D(wnext[3]),
        .Q(waddr[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[4] 
       (.C(clock),
        .CE(push),
        .D(wnext[4]),
        .Q(waddr[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[5] 
       (.C(clock),
        .CE(push),
        .D(wnext[5]),
        .Q(waddr[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[6] 
       (.C(clock),
        .CE(push),
        .D(wnext[6]),
        .Q(waddr[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[7] 
       (.C(clock),
        .CE(push),
        .D(wnext[7]),
        .Q(waddr[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[8] 
       (.C(clock),
        .CE(push),
        .D(wnext[8]),
        .Q(waddr[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \waddr_reg[9] 
       (.C(clock),
        .CE(push),
        .D(wnext[9]),
        .Q(waddr[9]),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d32_A" *) 
module my_module2_0_fifo_w8_d32_A
   (byt2crc_1_full_n,
    byt2crc_1_empty_n,
    out,
    clock,
    ap_NS_fsm,
    internal_full_n_reg_0,
    internal_full_n_reg_1,
    reset,
    \mOutPtr_reg[1]_0 ,
    internal_empty_n3_out,
    in,
    E);
  output byt2crc_1_full_n;
  output byt2crc_1_empty_n;
  output [7:0]out;
  input clock;
  input [0:0]ap_NS_fsm;
  input internal_full_n_reg_0;
  input internal_full_n_reg_1;
  input reset;
  input \mOutPtr_reg[1]_0 ;
  input internal_empty_n3_out;
  input [7:0]in;
  input [0:0]E;

  wire [0:0]E;
  wire [0:0]ap_NS_fsm;
  wire byt2crc_1_empty_n;
  wire byt2crc_1_full_n;
  wire clock;
  wire [7:0]in;
  wire internal_empty_n3_out;
  wire internal_empty_n_i_1__3_n_8;
  wire internal_empty_n_i_2__3_n_8;
  wire internal_full_n_i_1__3_n_8;
  wire internal_full_n_i_2__2_n_8;
  wire internal_full_n_reg_0;
  wire internal_full_n_reg_1;
  wire \mOutPtr[0]_i_1__3_n_8 ;
  wire \mOutPtr[1]_i_1__2_n_8 ;
  wire \mOutPtr[2]_i_1_n_8 ;
  wire \mOutPtr[3]_i_1__2_n_8 ;
  wire \mOutPtr[4]_i_1__2_n_8 ;
  wire \mOutPtr[5]_i_2__2_n_8 ;
  wire \mOutPtr[5]_i_4__0_n_8 ;
  wire [5:0]mOutPtr_reg;
  wire \mOutPtr_reg[1]_0 ;
  wire [7:0]out;
  wire reset;

  my_module2_0_fifo_w8_d32_A_shiftReg_6 U_fifo_w8_d32_A_shiftReg
       (.Q(mOutPtr_reg),
        .ap_NS_fsm(ap_NS_fsm),
        .clock(clock),
        .in(in),
        .out(out));
  LUT6 #(
    .INIT(64'h00000000EFEFEF00)) 
    internal_empty_n_i_1__3
       (.I0(mOutPtr_reg[4]),
        .I1(mOutPtr_reg[5]),
        .I2(internal_empty_n_i_2__3_n_8),
        .I3(internal_empty_n3_out),
        .I4(byt2crc_1_empty_n),
        .I5(reset),
        .O(internal_empty_n_i_1__3_n_8));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    internal_empty_n_i_2__3
       (.I0(mOutPtr_reg[1]),
        .I1(mOutPtr_reg[0]),
        .I2(\mOutPtr_reg[1]_0 ),
        .I3(mOutPtr_reg[3]),
        .I4(mOutPtr_reg[2]),
        .O(internal_empty_n_i_2__3_n_8));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(clock),
        .CE(1'b1),
        .D(internal_empty_n_i_1__3_n_8),
        .Q(byt2crc_1_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAFAFAF8A)) 
    internal_full_n_i_1__3
       (.I0(byt2crc_1_full_n),
        .I1(internal_full_n_i_2__2_n_8),
        .I2(ap_NS_fsm),
        .I3(internal_full_n_reg_0),
        .I4(internal_full_n_reg_1),
        .I5(reset),
        .O(internal_full_n_i_1__3_n_8));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    internal_full_n_i_2__2
       (.I0(mOutPtr_reg[5]),
        .I1(mOutPtr_reg[4]),
        .I2(mOutPtr_reg[0]),
        .I3(mOutPtr_reg[1]),
        .I4(mOutPtr_reg[2]),
        .I5(mOutPtr_reg[3]),
        .O(internal_full_n_i_2__2_n_8));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(clock),
        .CE(1'b1),
        .D(internal_full_n_i_1__3_n_8),
        .Q(byt2crc_1_full_n),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__3 
       (.I0(mOutPtr_reg[0]),
        .O(\mOutPtr[0]_i_1__3_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \mOutPtr[1]_i_1__2 
       (.I0(\mOutPtr_reg[1]_0 ),
        .I1(mOutPtr_reg[0]),
        .I2(mOutPtr_reg[1]),
        .O(\mOutPtr[1]_i_1__2_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \mOutPtr[2]_i_1 
       (.I0(mOutPtr_reg[2]),
        .I1(\mOutPtr_reg[1]_0 ),
        .I2(mOutPtr_reg[0]),
        .I3(mOutPtr_reg[1]),
        .O(\mOutPtr[2]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \mOutPtr[3]_i_1__2 
       (.I0(mOutPtr_reg[1]),
        .I1(mOutPtr_reg[0]),
        .I2(\mOutPtr_reg[1]_0 ),
        .I3(mOutPtr_reg[3]),
        .I4(mOutPtr_reg[2]),
        .O(\mOutPtr[3]_i_1__2_n_8 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAA9)) 
    \mOutPtr[4]_i_1__2 
       (.I0(mOutPtr_reg[4]),
        .I1(mOutPtr_reg[2]),
        .I2(mOutPtr_reg[3]),
        .I3(\mOutPtr_reg[1]_0 ),
        .I4(mOutPtr_reg[0]),
        .I5(mOutPtr_reg[1]),
        .O(\mOutPtr[4]_i_1__2_n_8 ));
  LUT3 #(
    .INIT(8'h69)) 
    \mOutPtr[5]_i_2__2 
       (.I0(\mOutPtr[5]_i_4__0_n_8 ),
        .I1(mOutPtr_reg[5]),
        .I2(mOutPtr_reg[4]),
        .O(\mOutPtr[5]_i_2__2_n_8 ));
  LUT6 #(
    .INIT(64'hD555555555555554)) 
    \mOutPtr[5]_i_4__0 
       (.I0(mOutPtr_reg[4]),
        .I1(mOutPtr_reg[2]),
        .I2(mOutPtr_reg[3]),
        .I3(\mOutPtr_reg[1]_0 ),
        .I4(mOutPtr_reg[0]),
        .I5(mOutPtr_reg[1]),
        .O(\mOutPtr[5]_i_4__0_n_8 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(clock),
        .CE(E),
        .D(\mOutPtr[0]_i_1__3_n_8 ),
        .Q(mOutPtr_reg[0]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(clock),
        .CE(E),
        .D(\mOutPtr[1]_i_1__2_n_8 ),
        .Q(mOutPtr_reg[1]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[2] 
       (.C(clock),
        .CE(E),
        .D(\mOutPtr[2]_i_1_n_8 ),
        .Q(mOutPtr_reg[2]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[3] 
       (.C(clock),
        .CE(E),
        .D(\mOutPtr[3]_i_1__2_n_8 ),
        .Q(mOutPtr_reg[3]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[4] 
       (.C(clock),
        .CE(E),
        .D(\mOutPtr[4]_i_1__2_n_8 ),
        .Q(mOutPtr_reg[4]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[5] 
       (.C(clock),
        .CE(E),
        .D(\mOutPtr[5]_i_2__2_n_8 ),
        .Q(mOutPtr_reg[5]),
        .S(reset));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d32_A" *) 
module my_module2_0_fifo_w8_d32_A_0
   (crc2fra_1_full_n,
    crc2fra_1_empty_n,
    E,
    internal_empty_n_reg_0,
    internal_empty_n_reg_1,
    internal_empty_n_reg_2,
    internal_empty_n_reg_3,
    out,
    clock,
    ce,
    internal_full_n_reg_0,
    reset,
    \mOutPtr_reg[1]_0 ,
    \mOutPtr_reg[5]_0 ,
    Q,
    \val_V_6_reg_356_reg[7] ,
    \mOutPtr_reg[5]_1 );
  output crc2fra_1_full_n;
  output crc2fra_1_empty_n;
  output [0:0]E;
  output [0:0]internal_empty_n_reg_0;
  output [0:0]internal_empty_n_reg_1;
  output [0:0]internal_empty_n_reg_2;
  output internal_empty_n_reg_3;
  output [7:0]out;
  input clock;
  input ce;
  input internal_full_n_reg_0;
  input reset;
  input \mOutPtr_reg[1]_0 ;
  input \mOutPtr_reg[5]_0 ;
  input [4:0]Q;
  input [7:0]\val_V_6_reg_356_reg[7] ;
  input [0:0]\mOutPtr_reg[5]_1 ;

  wire [0:0]E;
  wire [4:0]Q;
  wire ce;
  wire clock;
  wire crc2fra_1_empty_n;
  wire crc2fra_1_full_n;
  wire internal_empty_n_i_1__4_n_8;
  wire internal_empty_n_i_2__4_n_8;
  wire internal_empty_n_i_3__3_n_8;
  wire [0:0]internal_empty_n_reg_0;
  wire [0:0]internal_empty_n_reg_1;
  wire [0:0]internal_empty_n_reg_2;
  wire internal_empty_n_reg_3;
  wire internal_full_n_i_1__4_n_8;
  wire internal_full_n_i_2__3_n_8;
  wire internal_full_n_reg_0;
  wire \mOutPtr[0]_i_1__4_n_8 ;
  wire \mOutPtr[1]_i_1__3_n_8 ;
  wire \mOutPtr[2]_i_1__3_n_8 ;
  wire \mOutPtr[3]_i_1__3_n_8 ;
  wire \mOutPtr[4]_i_1__3_n_8 ;
  wire \mOutPtr[5]_i_2__3_n_8 ;
  wire \mOutPtr[5]_i_4__1_n_8 ;
  wire [5:0]mOutPtr_reg;
  wire \mOutPtr_reg[1]_0 ;
  wire \mOutPtr_reg[5]_0 ;
  wire [0:0]\mOutPtr_reg[5]_1 ;
  wire [7:0]out;
  wire reset;
  wire [7:0]\val_V_6_reg_356_reg[7] ;

  my_module2_0_fifo_w8_d32_A_shiftReg_5 U_fifo_w8_d32_A_shiftReg
       (.Q(mOutPtr_reg),
        .ce(ce),
        .clock(clock),
        .out(out),
        .\val_V_6_reg_356_reg[7] (\val_V_6_reg_356_reg[7] ));
  LUT2 #(
    .INIT(4'h8)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(crc2fra_1_empty_n),
        .I1(Q[0]),
        .O(internal_empty_n_reg_3));
  LUT6 #(
    .INIT(64'h00000000FFEF0F00)) 
    internal_empty_n_i_1__4
       (.I0(internal_empty_n_i_2__4_n_8),
        .I1(internal_empty_n_i_3__3_n_8),
        .I2(internal_full_n_reg_0),
        .I3(ce),
        .I4(crc2fra_1_empty_n),
        .I5(reset),
        .O(internal_empty_n_i_1__4_n_8));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    internal_empty_n_i_2__4
       (.I0(mOutPtr_reg[5]),
        .I1(mOutPtr_reg[4]),
        .I2(mOutPtr_reg[3]),
        .I3(mOutPtr_reg[2]),
        .O(internal_empty_n_i_2__4_n_8));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    internal_empty_n_i_3__3
       (.I0(mOutPtr_reg[1]),
        .I1(mOutPtr_reg[0]),
        .O(internal_empty_n_i_3__3_n_8));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(clock),
        .CE(1'b1),
        .D(internal_empty_n_i_1__4_n_8),
        .Q(crc2fra_1_empty_n),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFAF8A)) 
    internal_full_n_i_1__4
       (.I0(crc2fra_1_full_n),
        .I1(internal_full_n_i_2__3_n_8),
        .I2(ce),
        .I3(internal_full_n_reg_0),
        .I4(reset),
        .O(internal_full_n_i_1__4_n_8));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    internal_full_n_i_2__3
       (.I0(mOutPtr_reg[5]),
        .I1(mOutPtr_reg[4]),
        .I2(mOutPtr_reg[0]),
        .I3(mOutPtr_reg[1]),
        .I4(mOutPtr_reg[2]),
        .I5(mOutPtr_reg[3]),
        .O(internal_full_n_i_2__3_n_8));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(clock),
        .CE(1'b1),
        .D(internal_full_n_i_1__4_n_8),
        .Q(crc2fra_1_full_n),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__4 
       (.I0(mOutPtr_reg[0]),
        .O(\mOutPtr[0]_i_1__4_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \mOutPtr[1]_i_1__3 
       (.I0(\mOutPtr_reg[1]_0 ),
        .I1(mOutPtr_reg[0]),
        .I2(mOutPtr_reg[1]),
        .O(\mOutPtr[1]_i_1__3_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \mOutPtr[2]_i_1__3 
       (.I0(mOutPtr_reg[2]),
        .I1(\mOutPtr_reg[1]_0 ),
        .I2(mOutPtr_reg[0]),
        .I3(mOutPtr_reg[1]),
        .O(\mOutPtr[2]_i_1__3_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \mOutPtr[3]_i_1__3 
       (.I0(mOutPtr_reg[1]),
        .I1(mOutPtr_reg[0]),
        .I2(\mOutPtr_reg[1]_0 ),
        .I3(mOutPtr_reg[3]),
        .I4(mOutPtr_reg[2]),
        .O(\mOutPtr[3]_i_1__3_n_8 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAA9)) 
    \mOutPtr[4]_i_1__3 
       (.I0(mOutPtr_reg[4]),
        .I1(mOutPtr_reg[1]),
        .I2(mOutPtr_reg[0]),
        .I3(\mOutPtr_reg[1]_0 ),
        .I4(mOutPtr_reg[3]),
        .I5(mOutPtr_reg[2]),
        .O(\mOutPtr[4]_i_1__3_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h6AAAAAA9)) 
    \mOutPtr[5]_i_2__3 
       (.I0(mOutPtr_reg[5]),
        .I1(mOutPtr_reg[4]),
        .I2(mOutPtr_reg[2]),
        .I3(mOutPtr_reg[3]),
        .I4(\mOutPtr[5]_i_4__1_n_8 ),
        .O(\mOutPtr[5]_i_2__3_n_8 ));
  LUT6 #(
    .INIT(64'hFD000000FFFFFFFD)) 
    \mOutPtr[5]_i_4__1 
       (.I0(crc2fra_1_empty_n),
        .I1(\mOutPtr_reg[5]_0 ),
        .I2(ce),
        .I3(mOutPtr_reg[0]),
        .I4(mOutPtr_reg[1]),
        .I5(mOutPtr_reg[2]),
        .O(\mOutPtr[5]_i_4__1_n_8 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(clock),
        .CE(\mOutPtr_reg[5]_1 ),
        .D(\mOutPtr[0]_i_1__4_n_8 ),
        .Q(mOutPtr_reg[0]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(clock),
        .CE(\mOutPtr_reg[5]_1 ),
        .D(\mOutPtr[1]_i_1__3_n_8 ),
        .Q(mOutPtr_reg[1]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[2] 
       (.C(clock),
        .CE(\mOutPtr_reg[5]_1 ),
        .D(\mOutPtr[2]_i_1__3_n_8 ),
        .Q(mOutPtr_reg[2]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[3] 
       (.C(clock),
        .CE(\mOutPtr_reg[5]_1 ),
        .D(\mOutPtr[3]_i_1__3_n_8 ),
        .Q(mOutPtr_reg[3]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[4] 
       (.C(clock),
        .CE(\mOutPtr_reg[5]_1 ),
        .D(\mOutPtr[4]_i_1__3_n_8 ),
        .Q(mOutPtr_reg[4]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[5] 
       (.C(clock),
        .CE(\mOutPtr_reg[5]_1 ),
        .D(\mOutPtr[5]_i_2__3_n_8 ),
        .Q(mOutPtr_reg[5]),
        .S(reset));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \val_V_5_reg_351[7]_i_1 
       (.I0(crc2fra_1_empty_n),
        .I1(Q[1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \val_V_6_reg_356[7]_i_1 
       (.I0(crc2fra_1_empty_n),
        .I1(Q[2]),
        .O(internal_empty_n_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \val_V_7_reg_361[7]_i_1 
       (.I0(crc2fra_1_empty_n),
        .I1(Q[3]),
        .O(internal_empty_n_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \val_V_8_reg_369[7]_i_1 
       (.I0(crc2fra_1_empty_n),
        .I1(Q[4]),
        .O(internal_empty_n_reg_2));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d32_A" *) 
module my_module2_0_fifo_w8_d32_A_1
   (det2dow_1_full_n,
    det2dow_1_empty_n,
    E,
    internal_empty_n_reg_0,
    \mOutPtr_reg[1]_0 ,
    \mOutPtr_reg[1]_1 ,
    \mOutPtr_reg[2]_0 ,
    out,
    clock,
    ce,
    reset,
    Q,
    internal_empty_n_reg_1,
    internal_empty_n3_out,
    \mOutPtr_reg[2]_1 ,
    \mOutPtr_reg[5]_0 ,
    \mOutPtr_reg[5]_1 ,
    \val_V_reg_92_reg[7] ,
    \mOutPtr_reg[5]_2 );
  output det2dow_1_full_n;
  output det2dow_1_empty_n;
  output [0:0]E;
  output [0:0]internal_empty_n_reg_0;
  output [1:0]\mOutPtr_reg[1]_0 ;
  output \mOutPtr_reg[1]_1 ;
  output \mOutPtr_reg[2]_0 ;
  output [7:0]out;
  input clock;
  input ce;
  input reset;
  input [1:0]Q;
  input internal_empty_n_reg_1;
  input internal_empty_n3_out;
  input \mOutPtr_reg[2]_1 ;
  input \mOutPtr_reg[5]_0 ;
  input \mOutPtr_reg[5]_1 ;
  input [7:0]\val_V_reg_92_reg[7] ;
  input [0:0]\mOutPtr_reg[5]_2 ;

  wire [0:0]E;
  wire [1:0]Q;
  wire ce;
  wire clock;
  wire det2dow_1_empty_n;
  wire det2dow_1_full_n;
  wire internal_empty_n3_out;
  wire internal_empty_n_i_1__0_n_8;
  wire [0:0]internal_empty_n_reg_0;
  wire internal_empty_n_reg_1;
  wire internal_full_n_i_1__0_n_8;
  wire internal_full_n_i_2_n_8;
  wire \mOutPtr[0]_i_1__0_n_8 ;
  wire \mOutPtr[1]_i_1_n_8 ;
  wire \mOutPtr[2]_i_1__0_n_8 ;
  wire \mOutPtr[3]_i_1_n_8 ;
  wire \mOutPtr[4]_i_1_n_8 ;
  wire \mOutPtr[5]_i_2_n_8 ;
  wire [5:2]mOutPtr_reg;
  wire [1:0]\mOutPtr_reg[1]_0 ;
  wire \mOutPtr_reg[1]_1 ;
  wire \mOutPtr_reg[2]_0 ;
  wire \mOutPtr_reg[2]_1 ;
  wire \mOutPtr_reg[5]_0 ;
  wire \mOutPtr_reg[5]_1 ;
  wire [0:0]\mOutPtr_reg[5]_2 ;
  wire [7:0]out;
  wire reset;
  wire [7:0]\val_V_reg_92_reg[7] ;

  my_module2_0_fifo_w8_d32_A_shiftReg_4 U_fifo_w8_d32_A_shiftReg
       (.Q({mOutPtr_reg,\mOutPtr_reg[1]_0 }),
        .ce(ce),
        .clock(clock),
        .out(out),
        .\val_V_reg_92_reg[7] (\val_V_reg_92_reg[7] ));
  LUT6 #(
    .INIT(64'h00000000FEFEFE00)) 
    internal_empty_n_i_1__0
       (.I0(mOutPtr_reg[4]),
        .I1(mOutPtr_reg[5]),
        .I2(internal_empty_n_reg_1),
        .I3(internal_empty_n3_out),
        .I4(det2dow_1_empty_n),
        .I5(reset),
        .O(internal_empty_n_i_1__0_n_8));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hE)) 
    internal_empty_n_i_4__0
       (.I0(\mOutPtr_reg[1]_0 [1]),
        .I1(\mOutPtr_reg[1]_0 [0]),
        .O(\mOutPtr_reg[1]_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    internal_empty_n_i_5
       (.I0(mOutPtr_reg[2]),
        .I1(mOutPtr_reg[3]),
        .O(\mOutPtr_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(clock),
        .CE(1'b1),
        .D(internal_empty_n_i_1__0_n_8),
        .Q(det2dow_1_empty_n),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAFAFAF8A)) 
    internal_full_n_i_1__0
       (.I0(det2dow_1_full_n),
        .I1(internal_full_n_i_2_n_8),
        .I2(ce),
        .I3(E),
        .I4(internal_empty_n_reg_0),
        .I5(reset),
        .O(internal_full_n_i_1__0_n_8));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF7FFFFF)) 
    internal_full_n_i_2
       (.I0(mOutPtr_reg[3]),
        .I1(mOutPtr_reg[2]),
        .I2(mOutPtr_reg[4]),
        .I3(\mOutPtr_reg[1]_0 [0]),
        .I4(\mOutPtr_reg[1]_0 [1]),
        .I5(mOutPtr_reg[5]),
        .O(internal_full_n_i_2_n_8));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(clock),
        .CE(1'b1),
        .D(internal_full_n_i_1__0_n_8),
        .Q(det2dow_1_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__0 
       (.I0(\mOutPtr_reg[1]_0 [0]),
        .O(\mOutPtr[0]_i_1__0_n_8 ));
  LUT6 #(
    .INIT(64'h00E0FF1FFF1F00E0)) 
    \mOutPtr[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(det2dow_1_empty_n),
        .I3(ce),
        .I4(\mOutPtr_reg[1]_0 [0]),
        .I5(\mOutPtr_reg[1]_0 [1]),
        .O(\mOutPtr[1]_i_1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hA96A)) 
    \mOutPtr[2]_i_1__0 
       (.I0(mOutPtr_reg[2]),
        .I1(\mOutPtr_reg[1]_0 [0]),
        .I2(\mOutPtr_reg[1]_0 [1]),
        .I3(\mOutPtr_reg[2]_1 ),
        .O(\mOutPtr[2]_i_1__0_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hBF40FD02)) 
    \mOutPtr[3]_i_1 
       (.I0(\mOutPtr_reg[2]_1 ),
        .I1(\mOutPtr_reg[1]_0 [1]),
        .I2(\mOutPtr_reg[1]_0 [0]),
        .I3(mOutPtr_reg[3]),
        .I4(mOutPtr_reg[2]),
        .O(\mOutPtr[3]_i_1_n_8 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAA9AA)) 
    \mOutPtr[4]_i_1 
       (.I0(mOutPtr_reg[4]),
        .I1(mOutPtr_reg[2]),
        .I2(mOutPtr_reg[3]),
        .I3(\mOutPtr_reg[2]_1 ),
        .I4(\mOutPtr_reg[1]_0 [0]),
        .I5(\mOutPtr_reg[1]_0 [1]),
        .O(\mOutPtr[4]_i_1_n_8 ));
  LUT6 #(
    .INIT(64'hDFFF2000FFF3000C)) 
    \mOutPtr[5]_i_2 
       (.I0(\mOutPtr_reg[5]_0 ),
        .I1(\mOutPtr_reg[5]_1 ),
        .I2(mOutPtr_reg[3]),
        .I3(mOutPtr_reg[2]),
        .I4(mOutPtr_reg[5]),
        .I5(mOutPtr_reg[4]),
        .O(\mOutPtr[5]_i_2_n_8 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(clock),
        .CE(\mOutPtr_reg[5]_2 ),
        .D(\mOutPtr[0]_i_1__0_n_8 ),
        .Q(\mOutPtr_reg[1]_0 [0]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(clock),
        .CE(\mOutPtr_reg[5]_2 ),
        .D(\mOutPtr[1]_i_1_n_8 ),
        .Q(\mOutPtr_reg[1]_0 [1]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[2] 
       (.C(clock),
        .CE(\mOutPtr_reg[5]_2 ),
        .D(\mOutPtr[2]_i_1__0_n_8 ),
        .Q(mOutPtr_reg[2]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[3] 
       (.C(clock),
        .CE(\mOutPtr_reg[5]_2 ),
        .D(\mOutPtr[3]_i_1_n_8 ),
        .Q(mOutPtr_reg[3]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[4] 
       (.C(clock),
        .CE(\mOutPtr_reg[5]_2 ),
        .D(\mOutPtr[4]_i_1_n_8 ),
        .Q(mOutPtr_reg[4]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[5] 
       (.C(clock),
        .CE(\mOutPtr_reg[5]_2 ),
        .D(\mOutPtr[5]_i_2_n_8 ),
        .Q(mOutPtr_reg[5]),
        .S(reset));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \trunc_ln_reg_97[7]_i_1 
       (.I0(det2dow_1_empty_n),
        .I1(Q[1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \val_V_reg_92[7]_i_1 
       (.I0(det2dow_1_empty_n),
        .I1(Q[0]),
        .O(internal_empty_n_reg_0));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d32_A" *) 
module my_module2_0_fifo_w8_d32_A_2
   (dow2bit_1_full_n,
    dow2bit_1_empty_n,
    E,
    out,
    clock,
    reset,
    internal_full_n_reg_0,
    Q,
    \mOutPtr_reg[5]_0 ,
    \val_V_reg_70_reg[7] );
  output dow2bit_1_full_n;
  output dow2bit_1_empty_n;
  output [0:0]E;
  output [7:0]out;
  input clock;
  input reset;
  input internal_full_n_reg_0;
  input [0:0]Q;
  input [1:0]\mOutPtr_reg[5]_0 ;
  input [7:0]\val_V_reg_70_reg[7] ;

  wire [0:0]E;
  wire [0:0]Q;
  wire ce;
  wire clock;
  wire dow2bit_1_empty_n;
  wire dow2bit_1_full_n;
  wire internal_empty_n_i_1__1_n_8;
  wire internal_empty_n_i_2__1_n_8;
  wire internal_empty_n_i_3__4_n_8;
  wire internal_full_n_i_1__1_n_8;
  wire internal_full_n_i_2__0_n_8;
  wire internal_full_n_reg_0;
  wire \mOutPtr[0]_i_1__1_n_8 ;
  wire \mOutPtr[1]_i_1__0_n_8 ;
  wire \mOutPtr[2]_i_1__1_n_8 ;
  wire \mOutPtr[3]_i_1__0_n_8 ;
  wire \mOutPtr[4]_i_1__0_n_8 ;
  wire \mOutPtr[4]_i_2__3_n_8 ;
  wire \mOutPtr[5]_i_1__3_n_8 ;
  wire \mOutPtr[5]_i_2__0_n_8 ;
  wire \mOutPtr[5]_i_3__0_n_8 ;
  wire [5:0]mOutPtr_reg;
  wire [1:0]\mOutPtr_reg[5]_0 ;
  wire [7:0]out;
  wire reset;
  wire [7:0]\val_V_reg_70_reg[7] ;

  my_module2_0_fifo_w8_d32_A_shiftReg U_fifo_w8_d32_A_shiftReg
       (.Q(Q),
        .ce(ce),
        .clock(clock),
        .out(out),
        .\val_V_reg_70_reg[0] (mOutPtr_reg),
        .\val_V_reg_70_reg[7] (dow2bit_1_full_n),
        .\val_V_reg_70_reg[7]_0 (\val_V_reg_70_reg[7] ));
  LUT6 #(
    .INIT(64'h00000000EFEFEF00)) 
    internal_empty_n_i_1__1
       (.I0(mOutPtr_reg[4]),
        .I1(mOutPtr_reg[5]),
        .I2(internal_empty_n_i_2__1_n_8),
        .I3(internal_empty_n_i_3__4_n_8),
        .I4(dow2bit_1_empty_n),
        .I5(reset),
        .O(internal_empty_n_i_1__1_n_8));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    internal_empty_n_i_2__1
       (.I0(mOutPtr_reg[1]),
        .I1(mOutPtr_reg[0]),
        .I2(\mOutPtr[4]_i_2__3_n_8 ),
        .I3(mOutPtr_reg[3]),
        .I4(mOutPtr_reg[2]),
        .O(internal_empty_n_i_2__1_n_8));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h57000000)) 
    internal_empty_n_i_3__4
       (.I0(dow2bit_1_empty_n),
        .I1(\mOutPtr_reg[5]_0 [1]),
        .I2(\mOutPtr_reg[5]_0 [0]),
        .I3(Q),
        .I4(dow2bit_1_full_n),
        .O(internal_empty_n_i_3__4_n_8));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(clock),
        .CE(1'b1),
        .D(internal_empty_n_i_1__1_n_8),
        .Q(dow2bit_1_empty_n),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFBF33)) 
    internal_full_n_i_1__1
       (.I0(internal_full_n_i_2__0_n_8),
        .I1(internal_full_n_reg_0),
        .I2(Q),
        .I3(dow2bit_1_full_n),
        .I4(reset),
        .O(internal_full_n_i_1__1_n_8));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF7FFFFF)) 
    internal_full_n_i_2__0
       (.I0(mOutPtr_reg[3]),
        .I1(mOutPtr_reg[2]),
        .I2(mOutPtr_reg[4]),
        .I3(mOutPtr_reg[0]),
        .I4(mOutPtr_reg[1]),
        .I5(mOutPtr_reg[5]),
        .O(internal_full_n_i_2__0_n_8));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(clock),
        .CE(1'b1),
        .D(internal_full_n_i_1__1_n_8),
        .Q(dow2bit_1_full_n),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__1 
       (.I0(mOutPtr_reg[0]),
        .O(\mOutPtr[0]_i_1__1_n_8 ));
  LUT6 #(
    .INIT(64'h00E0FF1FFF1F00E0)) 
    \mOutPtr[1]_i_1__0 
       (.I0(\mOutPtr_reg[5]_0 [0]),
        .I1(\mOutPtr_reg[5]_0 [1]),
        .I2(dow2bit_1_empty_n),
        .I3(ce),
        .I4(mOutPtr_reg[0]),
        .I5(mOutPtr_reg[1]),
        .O(\mOutPtr[1]_i_1__0_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hA96A)) 
    \mOutPtr[2]_i_1__1 
       (.I0(mOutPtr_reg[2]),
        .I1(mOutPtr_reg[0]),
        .I2(mOutPtr_reg[1]),
        .I3(\mOutPtr[4]_i_2__3_n_8 ),
        .O(\mOutPtr[2]_i_1__1_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hBF40FD02)) 
    \mOutPtr[3]_i_1__0 
       (.I0(\mOutPtr[4]_i_2__3_n_8 ),
        .I1(mOutPtr_reg[1]),
        .I2(mOutPtr_reg[0]),
        .I3(mOutPtr_reg[3]),
        .I4(mOutPtr_reg[2]),
        .O(\mOutPtr[3]_i_1__0_n_8 ));
  LUT6 #(
    .INIT(64'hAAAAAAA96AAAAAAA)) 
    \mOutPtr[4]_i_1__0 
       (.I0(mOutPtr_reg[4]),
        .I1(mOutPtr_reg[2]),
        .I2(mOutPtr_reg[3]),
        .I3(mOutPtr_reg[0]),
        .I4(mOutPtr_reg[1]),
        .I5(\mOutPtr[4]_i_2__3_n_8 ),
        .O(\mOutPtr[4]_i_1__0_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h70707000)) 
    \mOutPtr[4]_i_2__3 
       (.I0(Q),
        .I1(dow2bit_1_full_n),
        .I2(dow2bit_1_empty_n),
        .I3(\mOutPtr_reg[5]_0 [1]),
        .I4(\mOutPtr_reg[5]_0 [0]),
        .O(\mOutPtr[4]_i_2__3_n_8 ));
  LUT5 #(
    .INIT(32'h78787888)) 
    \mOutPtr[5]_i_1__3 
       (.I0(Q),
        .I1(dow2bit_1_full_n),
        .I2(dow2bit_1_empty_n),
        .I3(\mOutPtr_reg[5]_0 [1]),
        .I4(\mOutPtr_reg[5]_0 [0]),
        .O(\mOutPtr[5]_i_1__3_n_8 ));
  LUT3 #(
    .INIT(8'h69)) 
    \mOutPtr[5]_i_2__0 
       (.I0(\mOutPtr[5]_i_3__0_n_8 ),
        .I1(mOutPtr_reg[5]),
        .I2(mOutPtr_reg[4]),
        .O(\mOutPtr[5]_i_2__0_n_8 ));
  LUT6 #(
    .INIT(64'h55555554D5555555)) 
    \mOutPtr[5]_i_3__0 
       (.I0(mOutPtr_reg[4]),
        .I1(mOutPtr_reg[2]),
        .I2(mOutPtr_reg[3]),
        .I3(mOutPtr_reg[0]),
        .I4(mOutPtr_reg[1]),
        .I5(\mOutPtr[4]_i_2__3_n_8 ),
        .O(\mOutPtr[5]_i_3__0_n_8 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(clock),
        .CE(\mOutPtr[5]_i_1__3_n_8 ),
        .D(\mOutPtr[0]_i_1__1_n_8 ),
        .Q(mOutPtr_reg[0]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(clock),
        .CE(\mOutPtr[5]_i_1__3_n_8 ),
        .D(\mOutPtr[1]_i_1__0_n_8 ),
        .Q(mOutPtr_reg[1]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[2] 
       (.C(clock),
        .CE(\mOutPtr[5]_i_1__3_n_8 ),
        .D(\mOutPtr[2]_i_1__1_n_8 ),
        .Q(mOutPtr_reg[2]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[3] 
       (.C(clock),
        .CE(\mOutPtr[5]_i_1__3_n_8 ),
        .D(\mOutPtr[3]_i_1__0_n_8 ),
        .Q(mOutPtr_reg[3]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[4] 
       (.C(clock),
        .CE(\mOutPtr[5]_i_1__3_n_8 ),
        .D(\mOutPtr[4]_i_1__0_n_8 ),
        .Q(mOutPtr_reg[4]),
        .S(reset));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[5] 
       (.C(clock),
        .CE(\mOutPtr[5]_i_1__3_n_8 ),
        .D(\mOutPtr[5]_i_2__0_n_8 ),
        .Q(mOutPtr_reg[5]),
        .S(reset));
  LUT2 #(
    .INIT(4'h8)) 
    \val_V_reg_70[7]_i_1 
       (.I0(dow2bit_1_empty_n),
        .I1(\mOutPtr_reg[5]_0 [0]),
        .O(E));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d32_A_shiftReg" *) 
module my_module2_0_fifo_w8_d32_A_shiftReg
   (ce,
    out,
    \val_V_reg_70_reg[7] ,
    Q,
    \val_V_reg_70_reg[0] ,
    \val_V_reg_70_reg[7]_0 ,
    clock);
  output ce;
  output [7:0]out;
  input \val_V_reg_70_reg[7] ;
  input [0:0]Q;
  input [5:0]\val_V_reg_70_reg[0] ;
  input [7:0]\val_V_reg_70_reg[7]_0 ;
  input clock;

  wire [0:0]Q;
  wire [4:0]a;
  wire ce;
  wire clock;
  wire [7:0]out;
  wire [5:0]\val_V_reg_70_reg[0] ;
  wire \val_V_reg_70_reg[7] ;
  wire [7:0]\val_V_reg_70_reg[7]_0 ;
  wire \NLW_SRL_SIG_reg[31][0]_srl32_Q31_UNCONNECTED ;
  wire \NLW_SRL_SIG_reg[31][1]_srl32_Q31_UNCONNECTED ;
  wire \NLW_SRL_SIG_reg[31][2]_srl32_Q31_UNCONNECTED ;
  wire \NLW_SRL_SIG_reg[31][3]_srl32_Q31_UNCONNECTED ;
  wire \NLW_SRL_SIG_reg[31][4]_srl32_Q31_UNCONNECTED ;
  wire \NLW_SRL_SIG_reg[31][5]_srl32_Q31_UNCONNECTED ;
  wire \NLW_SRL_SIG_reg[31][6]_srl32_Q31_UNCONNECTED ;
  wire \NLW_SRL_SIG_reg[31][7]_srl32_Q31_UNCONNECTED ;

  (* srl_bus_name = "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][0]_srl32 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\val_V_reg_70_reg[7]_0 [0]),
        .Q(out[0]),
        .Q31(\NLW_SRL_SIG_reg[31][0]_srl32_Q31_UNCONNECTED ));
  LUT2 #(
    .INIT(4'h8)) 
    \SRL_SIG_reg[31][0]_srl32_i_1__0 
       (.I0(\val_V_reg_70_reg[7] ),
        .I1(Q),
        .O(ce));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[31][0]_srl32_i_2__0 
       (.I0(\val_V_reg_70_reg[0] [4]),
        .I1(\val_V_reg_70_reg[0] [5]),
        .O(a[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[31][0]_srl32_i_3__0 
       (.I0(\val_V_reg_70_reg[0] [3]),
        .I1(\val_V_reg_70_reg[0] [5]),
        .O(a[3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[31][0]_srl32_i_4__0 
       (.I0(\val_V_reg_70_reg[0] [2]),
        .I1(\val_V_reg_70_reg[0] [5]),
        .O(a[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[31][0]_srl32_i_5__0 
       (.I0(\val_V_reg_70_reg[0] [1]),
        .I1(\val_V_reg_70_reg[0] [5]),
        .O(a[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[31][0]_srl32_i_6__0 
       (.I0(\val_V_reg_70_reg[0] [0]),
        .I1(\val_V_reg_70_reg[0] [5]),
        .O(a[0]));
  (* srl_bus_name = "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][1]_srl32 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\val_V_reg_70_reg[7]_0 [1]),
        .Q(out[1]),
        .Q31(\NLW_SRL_SIG_reg[31][1]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][2]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][2]_srl32 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\val_V_reg_70_reg[7]_0 [2]),
        .Q(out[2]),
        .Q31(\NLW_SRL_SIG_reg[31][2]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][3]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][3]_srl32 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\val_V_reg_70_reg[7]_0 [3]),
        .Q(out[3]),
        .Q31(\NLW_SRL_SIG_reg[31][3]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][4]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][4]_srl32 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\val_V_reg_70_reg[7]_0 [4]),
        .Q(out[4]),
        .Q31(\NLW_SRL_SIG_reg[31][4]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][5]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][5]_srl32 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\val_V_reg_70_reg[7]_0 [5]),
        .Q(out[5]),
        .Q31(\NLW_SRL_SIG_reg[31][5]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][6]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][6]_srl32 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\val_V_reg_70_reg[7]_0 [6]),
        .Q(out[6]),
        .Q31(\NLW_SRL_SIG_reg[31][6]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][7]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][7]_srl32 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\val_V_reg_70_reg[7]_0 [7]),
        .Q(out[7]),
        .Q31(\NLW_SRL_SIG_reg[31][7]_srl32_Q31_UNCONNECTED ));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d32_A_shiftReg" *) 
module my_module2_0_fifo_w8_d32_A_shiftReg_4
   (out,
    Q,
    ce,
    \val_V_reg_92_reg[7] ,
    clock);
  output [7:0]out;
  input [5:0]Q;
  input ce;
  input [7:0]\val_V_reg_92_reg[7] ;
  input clock;

  wire [5:0]Q;
  wire [4:0]a;
  wire ce;
  wire clock;
  wire [7:0]out;
  wire [7:0]\val_V_reg_92_reg[7] ;
  wire \NLW_SRL_SIG_reg[31][0]_srl32_Q31_UNCONNECTED ;
  wire \NLW_SRL_SIG_reg[31][1]_srl32_Q31_UNCONNECTED ;
  wire \NLW_SRL_SIG_reg[31][2]_srl32_Q31_UNCONNECTED ;
  wire \NLW_SRL_SIG_reg[31][3]_srl32_Q31_UNCONNECTED ;
  wire \NLW_SRL_SIG_reg[31][4]_srl32_Q31_UNCONNECTED ;
  wire \NLW_SRL_SIG_reg[31][5]_srl32_Q31_UNCONNECTED ;
  wire \NLW_SRL_SIG_reg[31][6]_srl32_Q31_UNCONNECTED ;
  wire \NLW_SRL_SIG_reg[31][7]_srl32_Q31_UNCONNECTED ;

  (* srl_bus_name = "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][0]_srl32 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\val_V_reg_92_reg[7] [0]),
        .Q(out[0]),
        .Q31(\NLW_SRL_SIG_reg[31][0]_srl32_Q31_UNCONNECTED ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[31][0]_srl32_i_2 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(a[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[31][0]_srl32_i_3 
       (.I0(Q[3]),
        .I1(Q[5]),
        .O(a[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[31][0]_srl32_i_4 
       (.I0(Q[2]),
        .I1(Q[5]),
        .O(a[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[31][0]_srl32_i_5 
       (.I0(Q[1]),
        .I1(Q[5]),
        .O(a[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[31][0]_srl32_i_6 
       (.I0(Q[0]),
        .I1(Q[5]),
        .O(a[0]));
  (* srl_bus_name = "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][1]_srl32 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\val_V_reg_92_reg[7] [1]),
        .Q(out[1]),
        .Q31(\NLW_SRL_SIG_reg[31][1]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][2]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][2]_srl32 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\val_V_reg_92_reg[7] [2]),
        .Q(out[2]),
        .Q31(\NLW_SRL_SIG_reg[31][2]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][3]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][3]_srl32 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\val_V_reg_92_reg[7] [3]),
        .Q(out[3]),
        .Q31(\NLW_SRL_SIG_reg[31][3]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][4]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][4]_srl32 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\val_V_reg_92_reg[7] [4]),
        .Q(out[4]),
        .Q31(\NLW_SRL_SIG_reg[31][4]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][5]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][5]_srl32 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\val_V_reg_92_reg[7] [5]),
        .Q(out[5]),
        .Q31(\NLW_SRL_SIG_reg[31][5]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][6]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][6]_srl32 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\val_V_reg_92_reg[7] [6]),
        .Q(out[6]),
        .Q31(\NLW_SRL_SIG_reg[31][6]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][7]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][7]_srl32 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\val_V_reg_92_reg[7] [7]),
        .Q(out[7]),
        .Q31(\NLW_SRL_SIG_reg[31][7]_srl32_Q31_UNCONNECTED ));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d32_A_shiftReg" *) 
module my_module2_0_fifo_w8_d32_A_shiftReg_5
   (out,
    Q,
    ce,
    \val_V_6_reg_356_reg[7] ,
    clock);
  output [7:0]out;
  input [5:0]Q;
  input ce;
  input [7:0]\val_V_6_reg_356_reg[7] ;
  input clock;

  wire [5:0]Q;
  wire [4:0]a;
  wire ce;
  wire clock;
  wire [7:0]out;
  wire [7:0]\val_V_6_reg_356_reg[7] ;
  wire \NLW_SRL_SIG_reg[31][0]_srl32_Q31_UNCONNECTED ;
  wire \NLW_SRL_SIG_reg[31][1]_srl32_Q31_UNCONNECTED ;
  wire \NLW_SRL_SIG_reg[31][2]_srl32_Q31_UNCONNECTED ;
  wire \NLW_SRL_SIG_reg[31][3]_srl32_Q31_UNCONNECTED ;
  wire \NLW_SRL_SIG_reg[31][4]_srl32_Q31_UNCONNECTED ;
  wire \NLW_SRL_SIG_reg[31][5]_srl32_Q31_UNCONNECTED ;
  wire \NLW_SRL_SIG_reg[31][6]_srl32_Q31_UNCONNECTED ;
  wire \NLW_SRL_SIG_reg[31][7]_srl32_Q31_UNCONNECTED ;

  (* srl_bus_name = "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][0]_srl32 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\val_V_6_reg_356_reg[7] [0]),
        .Q(out[0]),
        .Q31(\NLW_SRL_SIG_reg[31][0]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][1]_srl32 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\val_V_6_reg_356_reg[7] [1]),
        .Q(out[1]),
        .Q31(\NLW_SRL_SIG_reg[31][1]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][2]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][2]_srl32 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\val_V_6_reg_356_reg[7] [2]),
        .Q(out[2]),
        .Q31(\NLW_SRL_SIG_reg[31][2]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][3]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][3]_srl32 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\val_V_6_reg_356_reg[7] [3]),
        .Q(out[3]),
        .Q31(\NLW_SRL_SIG_reg[31][3]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][4]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][4]_srl32 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\val_V_6_reg_356_reg[7] [4]),
        .Q(out[4]),
        .Q31(\NLW_SRL_SIG_reg[31][4]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][5]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][5]_srl32 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\val_V_6_reg_356_reg[7] [5]),
        .Q(out[5]),
        .Q31(\NLW_SRL_SIG_reg[31][5]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][6]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][6]_srl32 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\val_V_6_reg_356_reg[7] [6]),
        .Q(out[6]),
        .Q31(\NLW_SRL_SIG_reg[31][6]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][7]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][7]_srl32 
       (.A(a),
        .CE(ce),
        .CLK(clock),
        .D(\val_V_6_reg_356_reg[7] [7]),
        .Q(out[7]),
        .Q31(\NLW_SRL_SIG_reg[31][7]_srl32_Q31_UNCONNECTED ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[31][7]_srl32_i_2 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(a[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[31][7]_srl32_i_3 
       (.I0(Q[3]),
        .I1(Q[5]),
        .O(a[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[31][7]_srl32_i_4 
       (.I0(Q[2]),
        .I1(Q[5]),
        .O(a[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[31][7]_srl32_i_5 
       (.I0(Q[1]),
        .I1(Q[5]),
        .O(a[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[31][7]_srl32_i_6 
       (.I0(Q[0]),
        .I1(Q[5]),
        .O(a[0]));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d32_A_shiftReg" *) 
module my_module2_0_fifo_w8_d32_A_shiftReg_6
   (out,
    Q,
    ap_NS_fsm,
    in,
    clock);
  output [7:0]out;
  input [5:0]Q;
  input [0:0]ap_NS_fsm;
  input [7:0]in;
  input clock;

  wire [5:0]Q;
  wire [4:0]a;
  wire [0:0]ap_NS_fsm;
  wire clock;
  wire [7:0]in;
  wire [7:0]out;
  wire \NLW_SRL_SIG_reg[31][0]_srl32_Q31_UNCONNECTED ;
  wire \NLW_SRL_SIG_reg[31][1]_srl32_Q31_UNCONNECTED ;
  wire \NLW_SRL_SIG_reg[31][2]_srl32_Q31_UNCONNECTED ;
  wire \NLW_SRL_SIG_reg[31][3]_srl32_Q31_UNCONNECTED ;
  wire \NLW_SRL_SIG_reg[31][4]_srl32_Q31_UNCONNECTED ;
  wire \NLW_SRL_SIG_reg[31][5]_srl32_Q31_UNCONNECTED ;
  wire \NLW_SRL_SIG_reg[31][6]_srl32_Q31_UNCONNECTED ;
  wire \NLW_SRL_SIG_reg[31][7]_srl32_Q31_UNCONNECTED ;

  (* srl_bus_name = "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][0]_srl32 
       (.A(a),
        .CE(ap_NS_fsm),
        .CLK(clock),
        .D(in[0]),
        .Q(out[0]),
        .Q31(\NLW_SRL_SIG_reg[31][0]_srl32_Q31_UNCONNECTED ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[31][0]_srl32_i_1__2 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(a[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[31][0]_srl32_i_2__2 
       (.I0(Q[3]),
        .I1(Q[5]),
        .O(a[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[31][0]_srl32_i_3__2 
       (.I0(Q[2]),
        .I1(Q[5]),
        .O(a[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[31][0]_srl32_i_4__2 
       (.I0(Q[1]),
        .I1(Q[5]),
        .O(a[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \SRL_SIG_reg[31][0]_srl32_i_5__2 
       (.I0(Q[0]),
        .I1(Q[5]),
        .O(a[0]));
  (* srl_bus_name = "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][1]_srl32 
       (.A(a),
        .CE(ap_NS_fsm),
        .CLK(clock),
        .D(in[1]),
        .Q(out[1]),
        .Q31(\NLW_SRL_SIG_reg[31][1]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][2]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][2]_srl32 
       (.A(a),
        .CE(ap_NS_fsm),
        .CLK(clock),
        .D(in[2]),
        .Q(out[2]),
        .Q31(\NLW_SRL_SIG_reg[31][2]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][3]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][3]_srl32 
       (.A(a),
        .CE(ap_NS_fsm),
        .CLK(clock),
        .D(in[3]),
        .Q(out[3]),
        .Q31(\NLW_SRL_SIG_reg[31][3]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][4]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][4]_srl32 
       (.A(a),
        .CE(ap_NS_fsm),
        .CLK(clock),
        .D(in[4]),
        .Q(out[4]),
        .Q31(\NLW_SRL_SIG_reg[31][4]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][5]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][5]_srl32 
       (.A(a),
        .CE(ap_NS_fsm),
        .CLK(clock),
        .D(in[5]),
        .Q(out[5]),
        .Q31(\NLW_SRL_SIG_reg[31][5]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][6]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][6]_srl32 
       (.A(a),
        .CE(ap_NS_fsm),
        .CLK(clock),
        .D(in[6]),
        .Q(out[6]),
        .Q31(\NLW_SRL_SIG_reg[31][6]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] " *) 
  (* srl_name = "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][7]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \SRL_SIG_reg[31][7]_srl32 
       (.A(a),
        .CE(ap_NS_fsm),
        .CLK(clock),
        .D(in[7]),
        .Q(out[7]),
        .Q31(\NLW_SRL_SIG_reg[31][7]_srl32_Q31_UNCONNECTED ));
endmodule

(* ORIG_REF_NAME = "my_module2" *) 
module my_module2_0_my_module2
   (clock,
    reset,
    e_dout,
    e_empty_n,
    e_read,
    addr_din,
    addr_full_n,
    addr_write,
    rgbv_din,
    rgbv_full_n,
    rgbv_write);
  input clock;
  input reset;
  input [7:0]e_dout;
  input e_empty_n;
  output e_read;
  output [31:0]addr_din;
  input addr_full_n;
  output addr_write;
  output [23:0]rgbv_din;
  input rgbv_full_n;
  output rgbv_write;

  wire \<const0> ;
  wire [25:0]\^addr_din ;
  wire addr_full_n;
  wire addr_write;
  wire bit2byt_1_dout;
  wire bit2byt_1_empty_n;
  wire bit2byt_1_full_n;
  wire [7:0]byt2crc_1_dout;
  wire byt2crc_1_empty_n;
  wire byt2crc_1_full_n;
  wire ce;
  wire ce_2;
  wire clock;
  wire crc2fra_1_empty_n;
  wire crc2fra_1_fifo_U_n_14;
  wire crc2fra_1_full_n;
  wire dbl2scalc_1_full_n;
  wire dbl2tsep_1_full_n;
  wire [7:0]det2dow_1_dout;
  wire det2dow_1_empty_n;
  wire det2dow_1_fifo_U_n_14;
  wire det2dow_1_fifo_U_n_15;
  wire det2dow_1_full_n;
  wire [7:0]dow2bit_1_dout;
  wire dow2bit_1_empty_n;
  wire dow2bit_1_full_n;
  wire [7:0]e_dout;
  wire e_empty_n;
  wire e_read;
  wire \grp_BitDecider_do_gen_fu_58/ap_CS_fsm_state2 ;
  wire \grp_BitDecider_do_gen_fu_58/ap_CS_fsm_state3 ;
  wire \grp_BitDecider_do_gen_fu_58/ap_CS_fsm_state4 ;
  wire \grp_BitDecider_do_gen_fu_58/ap_NS_fsm1 ;
  wire grp_BitDecider_fu_292_n_9;
  wire grp_BitDecider_fu_292_s_din;
  wire [1:1]\grp_BitsToBytes_do_gen_fu_58/ap_NS_fsm ;
  wire grp_BitsToBytes_fu_306_e_read;
  wire grp_BitsToBytes_fu_306_n_10;
  wire grp_BitsToBytes_fu_306_n_9;
  wire [7:0]grp_BitsToBytes_fu_306_s_din;
  wire [1:1]\grp_CRCCheck_do_gen_fu_56/ap_NS_fsm ;
  wire grp_CRCCheck_fu_320_n_10;
  wire grp_CRCCheck_fu_320_n_11;
  wire grp_CRCCheck_fu_320_n_13;
  wire grp_CRCCheck_fu_320_n_23;
  wire grp_CRCCheck_fu_320_n_8;
  wire grp_CRCCheck_fu_320_n_9;
  wire [7:0]grp_CRCCheck_fu_320_s_din;
  wire grp_Detecteur2_fu_226_n_11;
  wire grp_Detecteur2_fu_226_n_12;
  wire grp_Detecteur2_fu_226_n_13;
  wire grp_Detecteur2_fu_226_n_14;
  wire [7:0]grp_Detecteur2_fu_226_s_din;
  wire \grp_DownSampling_do_gen_fu_56/ap_CS_fsm_state2 ;
  wire \grp_DownSampling_do_gen_fu_56/ap_CS_fsm_state3 ;
  wire \grp_DownSampling_do_gen_fu_56/ap_CS_fsm_state4 ;
  wire \grp_DownSampling_do_gen_fu_56/ap_NS_fsm1 ;
  wire \grp_DownSampling_do_gen_fu_56/ap_NS_fsm10_out ;
  wire grp_DownSampling_fu_278_n_12;
  wire grp_DownSampling_fu_278_n_8;
  wire [7:0]grp_DownSampling_fu_278_s_din;
  wire \grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state2 ;
  wire \grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state4 ;
  wire \grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state5 ;
  wire \grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state6 ;
  wire \grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state7 ;
  wire \grp_FrameProcessing_do_gen_fu_64/ap_NS_fsm122_out ;
  wire \grp_FrameProcessing_do_gen_fu_64/ap_NS_fsm123_out ;
  wire \grp_FrameProcessing_do_gen_fu_64/ap_NS_fsm124_out ;
  wire \grp_FrameProcessing_do_gen_fu_64/ap_NS_fsm125_out ;
  wire grp_FrameProcessing_fu_334_n_11;
  wire grp_FrameProcessing_fu_334_n_8;
  wire grp_FrameProcessing_fu_334_n_9;
  wire [7:0]grp_ModuleCompute_fu_212_s_din;
  wire internal_empty_n3_out;
  wire internal_empty_n3_out_0;
  wire internal_empty_n3_out_1;
  wire [1:0]mOutPtr_reg;
  wire [7:0]mod2dbl_1_dout;
  wire mod2dbl_1_empty_n;
  wire mod2dbl_1_full_n;
  wire push;
  wire reset;
  wire [23:0]rgbv_din;
  wire rgbv_full_n;

  assign addr_din[31] = \<const0> ;
  assign addr_din[30] = \<const0> ;
  assign addr_din[29] = \<const0> ;
  assign addr_din[28] = \<const0> ;
  assign addr_din[27] = \<const0> ;
  assign addr_din[26] = \<const0> ;
  assign addr_din[25:0] = \^addr_din [25:0];
  assign rgbv_write = addr_write;
  GND GND
       (.G(\<const0> ));
  my_module2_0_fifo_w1_d32_A bit2byt_1_fifo_U
       (.E(grp_BitsToBytes_fu_306_n_9),
        .Q(\grp_BitDecider_do_gen_fu_58/ap_CS_fsm_state4 ),
        .bit2byt_1_dout(bit2byt_1_dout),
        .bit2byt_1_empty_n(bit2byt_1_empty_n),
        .bit2byt_1_full_n(bit2byt_1_full_n),
        .clock(clock),
        .grp_BitDecider_fu_292_s_din(grp_BitDecider_fu_292_s_din),
        .grp_BitsToBytes_fu_306_e_read(grp_BitsToBytes_fu_306_e_read),
        .internal_empty_n3_out(internal_empty_n3_out),
        .\mOutPtr_reg[4]_0 (grp_BitsToBytes_fu_306_n_10),
        .reset(reset));
  my_module2_0_fifo_w8_d32_A byt2crc_1_fifo_U
       (.E(grp_CRCCheck_fu_320_n_9),
        .ap_NS_fsm(\grp_BitsToBytes_do_gen_fu_58/ap_NS_fsm ),
        .byt2crc_1_empty_n(byt2crc_1_empty_n),
        .byt2crc_1_full_n(byt2crc_1_full_n),
        .clock(clock),
        .in(grp_BitsToBytes_fu_306_s_din),
        .internal_empty_n3_out(internal_empty_n3_out_0),
        .internal_full_n_reg_0(grp_CRCCheck_fu_320_n_10),
        .internal_full_n_reg_1(grp_CRCCheck_fu_320_n_8),
        .\mOutPtr_reg[1]_0 (grp_CRCCheck_fu_320_n_11),
        .out(byt2crc_1_dout),
        .reset(reset));
  my_module2_0_fifo_w8_d32_A_0 crc2fra_1_fifo_U
       (.E(\grp_FrameProcessing_do_gen_fu_64/ap_NS_fsm122_out ),
        .Q({\grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state7 ,\grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state6 ,\grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state5 ,\grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state4 ,\grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state2 }),
        .ce(ce),
        .clock(clock),
        .crc2fra_1_empty_n(crc2fra_1_empty_n),
        .crc2fra_1_full_n(crc2fra_1_full_n),
        .internal_empty_n_reg_0(\grp_FrameProcessing_do_gen_fu_64/ap_NS_fsm123_out ),
        .internal_empty_n_reg_1(\grp_FrameProcessing_do_gen_fu_64/ap_NS_fsm124_out ),
        .internal_empty_n_reg_2(\grp_FrameProcessing_do_gen_fu_64/ap_NS_fsm125_out ),
        .internal_empty_n_reg_3(crc2fra_1_fifo_U_n_14),
        .internal_full_n_reg_0(grp_FrameProcessing_fu_334_n_9),
        .\mOutPtr_reg[1]_0 (grp_FrameProcessing_fu_334_n_8),
        .\mOutPtr_reg[5]_0 (grp_FrameProcessing_fu_334_n_11),
        .\mOutPtr_reg[5]_1 (grp_CRCCheck_fu_320_n_13),
        .out(rgbv_din[7:0]),
        .reset(reset),
        .\val_V_6_reg_356_reg[7] (grp_CRCCheck_fu_320_s_din));
  my_module2_0_fifo_w8_d32_A_1 det2dow_1_fifo_U
       (.E(\grp_DownSampling_do_gen_fu_56/ap_NS_fsm10_out ),
        .Q({\grp_DownSampling_do_gen_fu_56/ap_CS_fsm_state3 ,\grp_DownSampling_do_gen_fu_56/ap_CS_fsm_state2 }),
        .ce(ce_2),
        .clock(clock),
        .det2dow_1_empty_n(det2dow_1_empty_n),
        .det2dow_1_full_n(det2dow_1_full_n),
        .internal_empty_n3_out(internal_empty_n3_out_1),
        .internal_empty_n_reg_0(\grp_DownSampling_do_gen_fu_56/ap_NS_fsm1 ),
        .internal_empty_n_reg_1(grp_Detecteur2_fu_226_n_11),
        .\mOutPtr_reg[1]_0 (mOutPtr_reg),
        .\mOutPtr_reg[1]_1 (det2dow_1_fifo_U_n_14),
        .\mOutPtr_reg[2]_0 (det2dow_1_fifo_U_n_15),
        .\mOutPtr_reg[2]_1 (grp_Detecteur2_fu_226_n_14),
        .\mOutPtr_reg[5]_0 (grp_Detecteur2_fu_226_n_13),
        .\mOutPtr_reg[5]_1 (grp_Detecteur2_fu_226_n_12),
        .\mOutPtr_reg[5]_2 (grp_DownSampling_fu_278_n_8),
        .out(det2dow_1_dout),
        .reset(reset),
        .\val_V_reg_92_reg[7] (grp_Detecteur2_fu_226_s_din));
  my_module2_0_fifo_w8_d32_A_2 dow2bit_1_fifo_U
       (.E(\grp_BitDecider_do_gen_fu_58/ap_NS_fsm1 ),
        .Q(\grp_DownSampling_do_gen_fu_56/ap_CS_fsm_state4 ),
        .clock(clock),
        .dow2bit_1_empty_n(dow2bit_1_empty_n),
        .dow2bit_1_full_n(dow2bit_1_full_n),
        .internal_full_n_reg_0(grp_BitDecider_fu_292_n_9),
        .\mOutPtr_reg[5]_0 ({\grp_BitDecider_do_gen_fu_58/ap_CS_fsm_state3 ,\grp_BitDecider_do_gen_fu_58/ap_CS_fsm_state2 }),
        .out(dow2bit_1_dout),
        .reset(reset),
        .\val_V_reg_70_reg[7] (grp_DownSampling_fu_278_s_din));
  my_module2_0_BitDecider grp_BitDecider_fu_292
       (.D(dow2bit_1_dout),
        .E(\grp_BitDecider_do_gen_fu_58/ap_NS_fsm1 ),
        .Q({\grp_BitDecider_do_gen_fu_58/ap_CS_fsm_state4 ,\grp_BitDecider_do_gen_fu_58/ap_CS_fsm_state3 ,\grp_BitDecider_do_gen_fu_58/ap_CS_fsm_state2 }),
        .\ap_CS_fsm_reg[1] (grp_BitDecider_fu_292_n_9),
        .bit2byt_1_full_n(bit2byt_1_full_n),
        .clock(clock),
        .dow2bit_1_empty_n(dow2bit_1_empty_n),
        .grp_BitDecider_fu_292_s_din(grp_BitDecider_fu_292_s_din),
        .grp_BitsToBytes_fu_306_e_read(grp_BitsToBytes_fu_306_e_read),
        .internal_empty_n3_out(internal_empty_n3_out),
        .reset(reset));
  my_module2_0_BitsToBytes grp_BitsToBytes_fu_306
       (.E(grp_BitsToBytes_fu_306_n_9),
        .Q(\grp_BitDecider_do_gen_fu_58/ap_CS_fsm_state4 ),
        .\ap_CS_fsm_reg[3] (grp_BitsToBytes_fu_306_n_10),
        .bit2byt_1_dout(bit2byt_1_dout),
        .bit2byt_1_empty_n(bit2byt_1_empty_n),
        .bit2byt_1_full_n(bit2byt_1_full_n),
        .byt2crc_1_full_n(byt2crc_1_full_n),
        .clock(clock),
        .grp_BitsToBytes_fu_306_e_read(grp_BitsToBytes_fu_306_e_read),
        .in(grp_BitsToBytes_fu_306_s_din),
        .\q_0_reg_93_reg[2] (\grp_BitsToBytes_do_gen_fu_58/ap_NS_fsm ),
        .reset(reset));
  my_module2_0_CRCCheck grp_CRCCheck_fu_320
       (.D(\grp_CRCCheck_do_gen_fu_56/ap_NS_fsm ),
        .E(grp_CRCCheck_fu_320_n_9),
        .Q(grp_CRCCheck_fu_320_s_din),
        .\ap_CS_fsm_reg[7] (grp_CRCCheck_fu_320_n_23),
        .byt2crc_1_empty_n(byt2crc_1_empty_n),
        .ce(ce),
        .clock(clock),
        .crc2fra_1_full_n(crc2fra_1_full_n),
        .\i1_0_reg_180_reg[2] (grp_CRCCheck_fu_320_n_10),
        .\icmp_ln41_reg_658_reg[0] (grp_CRCCheck_fu_320_n_8),
        .\icmp_ln41_reg_658_reg[0]_0 (grp_CRCCheck_fu_320_n_11),
        .\icmp_ln68_reg_711_reg[0] (grp_CRCCheck_fu_320_n_13),
        .internal_empty_n3_out(internal_empty_n3_out_0),
        .\mOutPtr_reg[5] (\grp_BitsToBytes_do_gen_fu_58/ap_NS_fsm ),
        .\mOutPtr_reg[5]_0 (grp_FrameProcessing_fu_334_n_9),
        .out(byt2crc_1_dout),
        .reset(reset));
  my_module2_0_Detecteur2 grp_Detecteur2_fu_226
       (.D(\grp_CRCCheck_do_gen_fu_56/ap_NS_fsm ),
        .Q(mod2dbl_1_dout),
        .\ap_CS_fsm_reg[1] (grp_CRCCheck_fu_320_n_23),
        .ce(ce_2),
        .clock(clock),
        .dbl2scalc_1_full_n(dbl2scalc_1_full_n),
        .dbl2tsep_1_full_n(dbl2tsep_1_full_n),
        .det2dow_1_empty_n(det2dow_1_empty_n),
        .det2dow_1_full_n(det2dow_1_full_n),
        .\dout_buf_reg[7] (grp_Detecteur2_fu_226_s_din),
        .internal_empty_n3_out(internal_empty_n3_out_1),
        .internal_empty_n_reg(grp_Detecteur2_fu_226_n_14),
        .internal_empty_n_reg_0(det2dow_1_fifo_U_n_14),
        .internal_empty_n_reg_1(grp_DownSampling_fu_278_n_12),
        .internal_empty_n_reg_2(det2dow_1_fifo_U_n_15),
        .\mOutPtr_reg[0] (grp_Detecteur2_fu_226_n_12),
        .\mOutPtr_reg[0]_0 (grp_Detecteur2_fu_226_n_13),
        .\mOutPtr_reg[1] (grp_Detecteur2_fu_226_n_11),
        .\mOutPtr_reg[2] ({\grp_DownSampling_do_gen_fu_56/ap_CS_fsm_state3 ,\grp_DownSampling_do_gen_fu_56/ap_CS_fsm_state2 }),
        .\mOutPtr_reg[5] (mOutPtr_reg),
        .mod2dbl_1_empty_n(mod2dbl_1_empty_n),
        .reset(reset));
  my_module2_0_DownSampling grp_DownSampling_fu_278
       (.E(\grp_DownSampling_do_gen_fu_56/ap_NS_fsm1 ),
        .Q({\grp_DownSampling_do_gen_fu_56/ap_CS_fsm_state4 ,\grp_DownSampling_do_gen_fu_56/ap_CS_fsm_state3 ,\grp_DownSampling_do_gen_fu_56/ap_CS_fsm_state2 }),
        .\ap_CS_fsm_reg[1] (grp_DownSampling_fu_278_n_8),
        .\ap_CS_fsm_reg[1]_0 (grp_DownSampling_fu_278_n_12),
        .ce(ce_2),
        .clock(clock),
        .det2dow_1_empty_n(det2dow_1_empty_n),
        .dow2bit_1_full_n(dow2bit_1_full_n),
        .e_dout(det2dow_1_dout),
        .reset(reset),
        .\trunc_ln_reg_97_reg[0] (\grp_DownSampling_do_gen_fu_56/ap_NS_fsm10_out ),
        .\trunc_ln_reg_97_reg[7] (grp_DownSampling_fu_278_s_din));
  my_module2_0_FrameProcessing grp_FrameProcessing_fu_334
       (.D(rgbv_din[7:0]),
        .E(\grp_FrameProcessing_do_gen_fu_64/ap_NS_fsm124_out ),
        .Q({\grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state7 ,\grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state6 ,\grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state5 ,\grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state4 ,\grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state2 }),
        .addr_din(\^addr_din ),
        .addr_full_n(addr_full_n),
        .\ap_CS_fsm_reg[11] (addr_write),
        .\ap_CS_fsm_reg[2] (crc2fra_1_fifo_U_n_14),
        .\ap_CS_fsm_reg[9] (grp_FrameProcessing_fu_334_n_8),
        .\ap_CS_fsm_reg[9]_0 (grp_FrameProcessing_fu_334_n_11),
        .ce(ce),
        .clock(clock),
        .crc2fra_1_empty_n(crc2fra_1_empty_n),
        .internal_empty_n_reg(grp_FrameProcessing_fu_334_n_9),
        .\reg_164_reg[7] (rgbv_din[23:16]),
        .\reg_168_reg[7] (rgbv_din[15:8]),
        .reset(reset),
        .rgbv_full_n(rgbv_full_n),
        .\val_V_5_reg_351_reg[0] (\grp_FrameProcessing_do_gen_fu_64/ap_NS_fsm122_out ),
        .\val_V_6_reg_356_reg[0] (\grp_FrameProcessing_do_gen_fu_64/ap_NS_fsm123_out ),
        .\val_V_8_reg_369_reg[0] (\grp_FrameProcessing_do_gen_fu_64/ap_NS_fsm125_out ));
  my_module2_0_ModuleCompute grp_ModuleCompute_fu_212
       (.Q(grp_ModuleCompute_fu_212_s_din),
        .clock(clock),
        .e_dout(e_dout),
        .e_empty_n(e_empty_n),
        .e_read(e_read),
        .mod2dbl_1_full_n(mod2dbl_1_full_n),
        .push(push),
        .reset(reset));
  my_module2_0_fifo_w8_d1024_A_x mod2dbl_1_fifo_U
       (.D(grp_ModuleCompute_fu_212_s_din),
        .Q(mod2dbl_1_dout),
        .clock(clock),
        .dbl2scalc_1_full_n(dbl2scalc_1_full_n),
        .dbl2tsep_1_full_n(dbl2tsep_1_full_n),
        .mod2dbl_1_empty_n(mod2dbl_1_empty_n),
        .mod2dbl_1_full_n(mod2dbl_1_full_n),
        .push(push),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "trames_separ2" *) 
module my_module2_0_trames_separ2
   (tmp_reg_173,
    Q,
    E,
    internal_full_n_reg,
    DI,
    pop,
    dout_valid_reg,
    \mOutPtr_reg[1] ,
    \mOutPtr_reg[0] ,
    \mOutPtr_reg[0]_0 ,
    internal_empty_n_reg,
    internal_empty_n3_out,
    \ap_CS_fsm_reg[1] ,
    \tmp_reg_173_reg[0] ,
    clock,
    dbl2tsep_1_empty_n,
    detect_1_empty_n,
    detect_1_dout,
    ce,
    \dout_buf_reg[7] ,
    internal_empty_n_reg_0,
    internal_empty_n_reg_1,
    internal_empty_n_reg_2,
    \mOutPtr_reg[5] ,
    det2dow_1_empty_n,
    \mOutPtr_reg[2] ,
    det2dow_1_full_n,
    SR,
    reset);
  output tmp_reg_173;
  output [0:0]Q;
  output [0:0]E;
  output internal_full_n_reg;
  output [0:0]DI;
  output pop;
  output dout_valid_reg;
  output \mOutPtr_reg[1] ;
  output \mOutPtr_reg[0] ;
  output \mOutPtr_reg[0]_0 ;
  output internal_empty_n_reg;
  output internal_empty_n3_out;
  output \ap_CS_fsm_reg[1] ;
  input \tmp_reg_173_reg[0] ;
  input clock;
  input dbl2tsep_1_empty_n;
  input detect_1_empty_n;
  input detect_1_dout;
  input ce;
  input \dout_buf_reg[7] ;
  input internal_empty_n_reg_0;
  input internal_empty_n_reg_1;
  input internal_empty_n_reg_2;
  input [1:0]\mOutPtr_reg[5] ;
  input det2dow_1_empty_n;
  input [1:0]\mOutPtr_reg[2] ;
  input det2dow_1_full_n;
  input [0:0]SR;
  input reset;

  wire [0:0]DI;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \ap_CS_fsm_reg[1] ;
  wire ce;
  wire clock;
  wire dbl2tsep_1_empty_n;
  wire det2dow_1_empty_n;
  wire det2dow_1_full_n;
  wire detect_1_dout;
  wire detect_1_empty_n;
  wire \dout_buf_reg[7] ;
  wire dout_valid_reg;
  wire internal_empty_n3_out;
  wire internal_empty_n_reg;
  wire internal_empty_n_reg_0;
  wire internal_empty_n_reg_1;
  wire internal_empty_n_reg_2;
  wire internal_full_n_reg;
  wire \mOutPtr_reg[0] ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg[1] ;
  wire [1:0]\mOutPtr_reg[2] ;
  wire [1:0]\mOutPtr_reg[5] ;
  wire pop;
  wire reset;
  wire tmp_reg_173;
  wire \tmp_reg_173_reg[0] ;

  my_module2_0_trames_separ2_do_gen grp_trames_separ2_do_gen_fu_60
       (.DI(DI),
        .E(E),
        .Q(Q),
        .SR(SR),
        .\ap_CS_fsm_reg[1]_0 (\ap_CS_fsm_reg[1] ),
        .ce(ce),
        .clock(clock),
        .dbl2tsep_1_empty_n(dbl2tsep_1_empty_n),
        .det2dow_1_empty_n(det2dow_1_empty_n),
        .det2dow_1_full_n(det2dow_1_full_n),
        .detect_1_dout(detect_1_dout),
        .detect_1_empty_n(detect_1_empty_n),
        .\dout_buf_reg[7] (\dout_buf_reg[7] ),
        .dout_valid_reg(dout_valid_reg),
        .internal_empty_n3_out(internal_empty_n3_out),
        .internal_empty_n_reg(internal_empty_n_reg),
        .internal_empty_n_reg_0(internal_empty_n_reg_0),
        .internal_empty_n_reg_1(internal_empty_n_reg_1),
        .internal_empty_n_reg_2(internal_empty_n_reg_2),
        .internal_full_n_reg(internal_full_n_reg),
        .\mOutPtr_reg[0] (\mOutPtr_reg[0] ),
        .\mOutPtr_reg[0]_0 (\mOutPtr_reg[0]_0 ),
        .\mOutPtr_reg[1] (\mOutPtr_reg[1] ),
        .\mOutPtr_reg[2] (\mOutPtr_reg[2] ),
        .\mOutPtr_reg[5] (\mOutPtr_reg[5] ),
        .pop(pop),
        .reset(reset),
        .tmp_reg_173(tmp_reg_173),
        .\tmp_reg_173_reg[0]_0 (\tmp_reg_173_reg[0] ));
endmodule

(* ORIG_REF_NAME = "trames_separ2_do_gen" *) 
module my_module2_0_trames_separ2_do_gen
   (tmp_reg_173,
    Q,
    E,
    internal_full_n_reg,
    DI,
    pop,
    dout_valid_reg,
    \mOutPtr_reg[1] ,
    \mOutPtr_reg[0] ,
    \mOutPtr_reg[0]_0 ,
    internal_empty_n_reg,
    internal_empty_n3_out,
    \ap_CS_fsm_reg[1]_0 ,
    \tmp_reg_173_reg[0]_0 ,
    clock,
    dbl2tsep_1_empty_n,
    detect_1_empty_n,
    detect_1_dout,
    ce,
    \dout_buf_reg[7] ,
    internal_empty_n_reg_0,
    internal_empty_n_reg_1,
    internal_empty_n_reg_2,
    \mOutPtr_reg[5] ,
    det2dow_1_empty_n,
    \mOutPtr_reg[2] ,
    det2dow_1_full_n,
    SR,
    reset);
  output tmp_reg_173;
  output [0:0]Q;
  output [0:0]E;
  output internal_full_n_reg;
  output [0:0]DI;
  output pop;
  output dout_valid_reg;
  output \mOutPtr_reg[1] ;
  output \mOutPtr_reg[0] ;
  output \mOutPtr_reg[0]_0 ;
  output internal_empty_n_reg;
  output internal_empty_n3_out;
  output \ap_CS_fsm_reg[1]_0 ;
  input \tmp_reg_173_reg[0]_0 ;
  input clock;
  input dbl2tsep_1_empty_n;
  input detect_1_empty_n;
  input detect_1_dout;
  input ce;
  input \dout_buf_reg[7] ;
  input internal_empty_n_reg_0;
  input internal_empty_n_reg_1;
  input internal_empty_n_reg_2;
  input [1:0]\mOutPtr_reg[5] ;
  input det2dow_1_empty_n;
  input [1:0]\mOutPtr_reg[2] ;
  input det2dow_1_full_n;
  input [0:0]SR;
  input reset;

  wire [0:0]DI;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \ap_CS_fsm[1]_i_2_n_8 ;
  wire \ap_CS_fsm[1]_i_3_n_8 ;
  wire \ap_CS_fsm[3]_i_2_n_8 ;
  wire \ap_CS_fsm[3]_i_3_n_8 ;
  wire \ap_CS_fsm[3]_i_4_n_8 ;
  wire \ap_CS_fsm[3]_i_5_n_8 ;
  wire \ap_CS_fsm[3]_i_6_n_8 ;
  wire \ap_CS_fsm[4]_i_2__0_n_8 ;
  wire \ap_CS_fsm_reg[1]_0 ;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire [4:1]ap_NS_fsm;
  wire ap_NS_fsm13_out;
  wire ce;
  wire clock;
  wire dbl2tsep_1_empty_n;
  wire det2dow_1_empty_n;
  wire det2dow_1_full_n;
  wire detect_1_dout;
  wire detect_1_empty_n;
  wire \dout_buf_reg[7] ;
  wire dout_valid_reg;
  wire e_read3;
  wire i1_0_reg_1150;
  wire \i1_0_reg_115[10]_i_4_n_8 ;
  wire [10:0]i1_0_reg_115_reg;
  wire \i2_0_reg_126[7]_i_1_n_8 ;
  wire \i2_0_reg_126[7]_i_4_n_8 ;
  wire [7:0]i2_0_reg_126_reg;
  wire i_0_reg_1040;
  wire \i_0_reg_104[8]_i_4_n_8 ;
  wire [8:0]i_0_reg_104_reg;
  wire [10:0]i_1_fu_155_p2;
  wire [7:0]i_2_fu_167_p2;
  wire [8:0]i_fu_143_p2;
  wire internal_empty_n3_out;
  wire internal_empty_n_reg;
  wire internal_empty_n_reg_0;
  wire internal_empty_n_reg_1;
  wire internal_empty_n_reg_2;
  wire internal_full_n_reg;
  wire \mOutPtr_reg[0] ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg[1] ;
  wire [1:0]\mOutPtr_reg[2] ;
  wire [1:0]\mOutPtr_reg[5] ;
  wire pop;
  wire reset;
  wire tmp_reg_173;
  wire tmp_reg_1730;
  wire \tmp_reg_173_reg[0]_0 ;

  LUT3 #(
    .INIT(8'hFE)) 
    \SRL_SIG_reg[31][0]_srl32_i_1 
       (.I0(i_0_reg_1040),
        .I1(e_read3),
        .I2(i1_0_reg_1150),
        .O(internal_full_n_reg));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    \ap_CS_fsm[1]_i_1__0 
       (.I0(ap_CS_fsm_state5),
        .I1(\ap_CS_fsm[1]_i_2_n_8 ),
        .I2(dbl2tsep_1_empty_n),
        .I3(detect_1_empty_n),
        .I4(Q),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'h00000010FFFFFFFF)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(\ap_CS_fsm[1]_i_3_n_8 ),
        .I1(i2_0_reg_126_reg[3]),
        .I2(i2_0_reg_126_reg[7]),
        .I3(i2_0_reg_126_reg[2]),
        .I4(i2_0_reg_126_reg[1]),
        .I5(tmp_reg_173),
        .O(\ap_CS_fsm[1]_i_2_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[1]_i_3 
       (.I0(i2_0_reg_126_reg[4]),
        .I1(i2_0_reg_126_reg[0]),
        .I2(i2_0_reg_126_reg[6]),
        .I3(i2_0_reg_126_reg[5]),
        .O(\ap_CS_fsm[1]_i_3_n_8 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F0FD)) 
    \ap_CS_fsm[2]_i_1__5 
       (.I0(ap_CS_fsm_state3),
        .I1(\ap_CS_fsm[3]_i_3_n_8 ),
        .I2(SR),
        .I3(Q),
        .I4(ap_CS_fsm_state5),
        .I5(ap_CS_fsm_state4),
        .O(ap_NS_fsm[2]));
  LUT4 #(
    .INIT(16'h44F4)) 
    \ap_CS_fsm[3]_i_1__4 
       (.I0(\ap_CS_fsm[3]_i_2_n_8 ),
        .I1(ap_CS_fsm_state4),
        .I2(ap_CS_fsm_state3),
        .I3(\ap_CS_fsm[3]_i_3_n_8 ),
        .O(ap_NS_fsm[3]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \ap_CS_fsm[3]_i_2 
       (.I0(i1_0_reg_115_reg[2]),
        .I1(i1_0_reg_115_reg[4]),
        .I2(i1_0_reg_115_reg[8]),
        .I3(i1_0_reg_115_reg[9]),
        .I4(\ap_CS_fsm[3]_i_4_n_8 ),
        .I5(\ap_CS_fsm[3]_i_5_n_8 ),
        .O(\ap_CS_fsm[3]_i_2_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[3]_i_3 
       (.I0(i_0_reg_104_reg[5]),
        .I1(i_0_reg_104_reg[6]),
        .I2(i_0_reg_104_reg[1]),
        .I3(\ap_CS_fsm[3]_i_6_n_8 ),
        .O(\ap_CS_fsm[3]_i_3_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'hFFF4)) 
    \ap_CS_fsm[3]_i_4 
       (.I0(i1_0_reg_115_reg[1]),
        .I1(i1_0_reg_115_reg[0]),
        .I2(i1_0_reg_115_reg[6]),
        .I3(i1_0_reg_115_reg[3]),
        .O(\ap_CS_fsm[3]_i_4_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \ap_CS_fsm[3]_i_5 
       (.I0(i1_0_reg_115_reg[10]),
        .I1(i1_0_reg_115_reg[1]),
        .I2(i1_0_reg_115_reg[7]),
        .I3(i1_0_reg_115_reg[5]),
        .O(\ap_CS_fsm[3]_i_5_n_8 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \ap_CS_fsm[3]_i_6 
       (.I0(i_0_reg_104_reg[8]),
        .I1(i_0_reg_104_reg[3]),
        .I2(i_0_reg_104_reg[2]),
        .I3(i_0_reg_104_reg[4]),
        .I4(i_0_reg_104_reg[0]),
        .I5(i_0_reg_104_reg[7]),
        .O(\ap_CS_fsm[3]_i_6_n_8 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5555D555)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(\ap_CS_fsm[4]_i_2__0_n_8 ),
        .I1(dbl2tsep_1_empty_n),
        .I2(detect_1_empty_n),
        .I3(Q),
        .I4(detect_1_dout),
        .I5(\i2_0_reg_126[7]_i_1_n_8 ),
        .O(ap_NS_fsm[4]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \ap_CS_fsm[4]_i_2__0 
       (.I0(\ap_CS_fsm[1]_i_2_n_8 ),
        .I1(ap_CS_fsm_state5),
        .O(\ap_CS_fsm[4]_i_2__0_n_8 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(Q),
        .S(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_state5),
        .R(reset));
  LUT5 #(
    .INIT(32'hFFFF1500)) 
    dout_valid_i_1__0
       (.I0(internal_full_n_reg),
        .I1(Q),
        .I2(detect_1_empty_n),
        .I3(dbl2tsep_1_empty_n),
        .I4(\dout_buf_reg[7] ),
        .O(\ap_CS_fsm_reg[1]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \i1_0_reg_115[0]_i_1 
       (.I0(i1_0_reg_115_reg[0]),
        .O(i_1_fu_155_p2[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \i1_0_reg_115[10]_i_1 
       (.I0(ap_CS_fsm_state3),
        .I1(\ap_CS_fsm[3]_i_3_n_8 ),
        .O(ap_NS_fsm13_out));
  LUT5 #(
    .INIT(32'h00008000)) 
    \i1_0_reg_115[10]_i_2 
       (.I0(dbl2tsep_1_empty_n),
        .I1(detect_1_empty_n),
        .I2(det2dow_1_full_n),
        .I3(ap_CS_fsm_state4),
        .I4(\ap_CS_fsm[3]_i_2_n_8 ),
        .O(i1_0_reg_1150));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \i1_0_reg_115[10]_i_3 
       (.I0(i1_0_reg_115_reg[10]),
        .I1(i1_0_reg_115_reg[8]),
        .I2(i1_0_reg_115_reg[6]),
        .I3(\i1_0_reg_115[10]_i_4_n_8 ),
        .I4(i1_0_reg_115_reg[7]),
        .I5(i1_0_reg_115_reg[9]),
        .O(i_1_fu_155_p2[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \i1_0_reg_115[10]_i_4 
       (.I0(i1_0_reg_115_reg[5]),
        .I1(i1_0_reg_115_reg[3]),
        .I2(i1_0_reg_115_reg[0]),
        .I3(i1_0_reg_115_reg[1]),
        .I4(i1_0_reg_115_reg[2]),
        .I5(i1_0_reg_115_reg[4]),
        .O(\i1_0_reg_115[10]_i_4_n_8 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i1_0_reg_115[1]_i_1 
       (.I0(i1_0_reg_115_reg[0]),
        .I1(i1_0_reg_115_reg[1]),
        .O(i_1_fu_155_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i1_0_reg_115[2]_i_1 
       (.I0(i1_0_reg_115_reg[2]),
        .I1(i1_0_reg_115_reg[1]),
        .I2(i1_0_reg_115_reg[0]),
        .O(i_1_fu_155_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i1_0_reg_115[3]_i_1 
       (.I0(i1_0_reg_115_reg[3]),
        .I1(i1_0_reg_115_reg[0]),
        .I2(i1_0_reg_115_reg[1]),
        .I3(i1_0_reg_115_reg[2]),
        .O(i_1_fu_155_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i1_0_reg_115[4]_i_1 
       (.I0(i1_0_reg_115_reg[4]),
        .I1(i1_0_reg_115_reg[2]),
        .I2(i1_0_reg_115_reg[1]),
        .I3(i1_0_reg_115_reg[0]),
        .I4(i1_0_reg_115_reg[3]),
        .O(i_1_fu_155_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \i1_0_reg_115[5]_i_1 
       (.I0(i1_0_reg_115_reg[5]),
        .I1(i1_0_reg_115_reg[3]),
        .I2(i1_0_reg_115_reg[0]),
        .I3(i1_0_reg_115_reg[1]),
        .I4(i1_0_reg_115_reg[2]),
        .I5(i1_0_reg_115_reg[4]),
        .O(i_1_fu_155_p2[5]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i1_0_reg_115[6]_i_1 
       (.I0(i1_0_reg_115_reg[6]),
        .I1(\i1_0_reg_115[10]_i_4_n_8 ),
        .O(i_1_fu_155_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i1_0_reg_115[7]_i_1 
       (.I0(i1_0_reg_115_reg[7]),
        .I1(\i1_0_reg_115[10]_i_4_n_8 ),
        .I2(i1_0_reg_115_reg[6]),
        .O(i_1_fu_155_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i1_0_reg_115[8]_i_1 
       (.I0(i1_0_reg_115_reg[8]),
        .I1(i1_0_reg_115_reg[6]),
        .I2(\i1_0_reg_115[10]_i_4_n_8 ),
        .I3(i1_0_reg_115_reg[7]),
        .O(i_1_fu_155_p2[8]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i1_0_reg_115[9]_i_1 
       (.I0(i1_0_reg_115_reg[9]),
        .I1(i1_0_reg_115_reg[7]),
        .I2(\i1_0_reg_115[10]_i_4_n_8 ),
        .I3(i1_0_reg_115_reg[6]),
        .I4(i1_0_reg_115_reg[8]),
        .O(i_1_fu_155_p2[9]));
  FDRE \i1_0_reg_115_reg[0] 
       (.C(clock),
        .CE(i1_0_reg_1150),
        .D(i_1_fu_155_p2[0]),
        .Q(i1_0_reg_115_reg[0]),
        .R(ap_NS_fsm13_out));
  FDRE \i1_0_reg_115_reg[10] 
       (.C(clock),
        .CE(i1_0_reg_1150),
        .D(i_1_fu_155_p2[10]),
        .Q(i1_0_reg_115_reg[10]),
        .R(ap_NS_fsm13_out));
  FDRE \i1_0_reg_115_reg[1] 
       (.C(clock),
        .CE(i1_0_reg_1150),
        .D(i_1_fu_155_p2[1]),
        .Q(i1_0_reg_115_reg[1]),
        .R(ap_NS_fsm13_out));
  FDRE \i1_0_reg_115_reg[2] 
       (.C(clock),
        .CE(i1_0_reg_1150),
        .D(i_1_fu_155_p2[2]),
        .Q(i1_0_reg_115_reg[2]),
        .R(ap_NS_fsm13_out));
  FDRE \i1_0_reg_115_reg[3] 
       (.C(clock),
        .CE(i1_0_reg_1150),
        .D(i_1_fu_155_p2[3]),
        .Q(i1_0_reg_115_reg[3]),
        .R(ap_NS_fsm13_out));
  FDRE \i1_0_reg_115_reg[4] 
       (.C(clock),
        .CE(i1_0_reg_1150),
        .D(i_1_fu_155_p2[4]),
        .Q(i1_0_reg_115_reg[4]),
        .R(ap_NS_fsm13_out));
  FDRE \i1_0_reg_115_reg[5] 
       (.C(clock),
        .CE(i1_0_reg_1150),
        .D(i_1_fu_155_p2[5]),
        .Q(i1_0_reg_115_reg[5]),
        .R(ap_NS_fsm13_out));
  FDRE \i1_0_reg_115_reg[6] 
       (.C(clock),
        .CE(i1_0_reg_1150),
        .D(i_1_fu_155_p2[6]),
        .Q(i1_0_reg_115_reg[6]),
        .R(ap_NS_fsm13_out));
  FDRE \i1_0_reg_115_reg[7] 
       (.C(clock),
        .CE(i1_0_reg_1150),
        .D(i_1_fu_155_p2[7]),
        .Q(i1_0_reg_115_reg[7]),
        .R(ap_NS_fsm13_out));
  FDRE \i1_0_reg_115_reg[8] 
       (.C(clock),
        .CE(i1_0_reg_1150),
        .D(i_1_fu_155_p2[8]),
        .Q(i1_0_reg_115_reg[8]),
        .R(ap_NS_fsm13_out));
  FDRE \i1_0_reg_115_reg[9] 
       (.C(clock),
        .CE(i1_0_reg_1150),
        .D(i_1_fu_155_p2[9]),
        .Q(i1_0_reg_115_reg[9]),
        .R(ap_NS_fsm13_out));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i2_0_reg_126[0]_i_1 
       (.I0(i2_0_reg_126_reg[0]),
        .O(i_2_fu_167_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i2_0_reg_126[1]_i_1 
       (.I0(i2_0_reg_126_reg[0]),
        .I1(i2_0_reg_126_reg[1]),
        .O(i_2_fu_167_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i2_0_reg_126[2]_i_1 
       (.I0(i2_0_reg_126_reg[2]),
        .I1(i2_0_reg_126_reg[1]),
        .I2(i2_0_reg_126_reg[0]),
        .O(i_2_fu_167_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i2_0_reg_126[3]_i_1 
       (.I0(i2_0_reg_126_reg[3]),
        .I1(i2_0_reg_126_reg[0]),
        .I2(i2_0_reg_126_reg[1]),
        .I3(i2_0_reg_126_reg[2]),
        .O(i_2_fu_167_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i2_0_reg_126[4]_i_1 
       (.I0(i2_0_reg_126_reg[4]),
        .I1(i2_0_reg_126_reg[2]),
        .I2(i2_0_reg_126_reg[1]),
        .I3(i2_0_reg_126_reg[0]),
        .I4(i2_0_reg_126_reg[3]),
        .O(i_2_fu_167_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \i2_0_reg_126[5]_i_1 
       (.I0(i2_0_reg_126_reg[5]),
        .I1(i2_0_reg_126_reg[3]),
        .I2(i2_0_reg_126_reg[0]),
        .I3(i2_0_reg_126_reg[1]),
        .I4(i2_0_reg_126_reg[2]),
        .I5(i2_0_reg_126_reg[4]),
        .O(i_2_fu_167_p2[5]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i2_0_reg_126[6]_i_1 
       (.I0(i2_0_reg_126_reg[6]),
        .I1(\i2_0_reg_126[7]_i_4_n_8 ),
        .O(i_2_fu_167_p2[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \i2_0_reg_126[7]_i_1 
       (.I0(\ap_CS_fsm[3]_i_2_n_8 ),
        .I1(ap_CS_fsm_state4),
        .O(\i2_0_reg_126[7]_i_1_n_8 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \i2_0_reg_126[7]_i_2 
       (.I0(dbl2tsep_1_empty_n),
        .I1(detect_1_empty_n),
        .I2(det2dow_1_full_n),
        .I3(ap_CS_fsm_state5),
        .I4(\ap_CS_fsm[1]_i_2_n_8 ),
        .O(e_read3));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i2_0_reg_126[7]_i_3 
       (.I0(i2_0_reg_126_reg[7]),
        .I1(\i2_0_reg_126[7]_i_4_n_8 ),
        .I2(i2_0_reg_126_reg[6]),
        .O(i_2_fu_167_p2[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \i2_0_reg_126[7]_i_4 
       (.I0(i2_0_reg_126_reg[5]),
        .I1(i2_0_reg_126_reg[3]),
        .I2(i2_0_reg_126_reg[0]),
        .I3(i2_0_reg_126_reg[1]),
        .I4(i2_0_reg_126_reg[2]),
        .I5(i2_0_reg_126_reg[4]),
        .O(\i2_0_reg_126[7]_i_4_n_8 ));
  FDRE \i2_0_reg_126_reg[0] 
       (.C(clock),
        .CE(e_read3),
        .D(i_2_fu_167_p2[0]),
        .Q(i2_0_reg_126_reg[0]),
        .R(\i2_0_reg_126[7]_i_1_n_8 ));
  FDRE \i2_0_reg_126_reg[1] 
       (.C(clock),
        .CE(e_read3),
        .D(i_2_fu_167_p2[1]),
        .Q(i2_0_reg_126_reg[1]),
        .R(\i2_0_reg_126[7]_i_1_n_8 ));
  FDRE \i2_0_reg_126_reg[2] 
       (.C(clock),
        .CE(e_read3),
        .D(i_2_fu_167_p2[2]),
        .Q(i2_0_reg_126_reg[2]),
        .R(\i2_0_reg_126[7]_i_1_n_8 ));
  FDRE \i2_0_reg_126_reg[3] 
       (.C(clock),
        .CE(e_read3),
        .D(i_2_fu_167_p2[3]),
        .Q(i2_0_reg_126_reg[3]),
        .R(\i2_0_reg_126[7]_i_1_n_8 ));
  FDRE \i2_0_reg_126_reg[4] 
       (.C(clock),
        .CE(e_read3),
        .D(i_2_fu_167_p2[4]),
        .Q(i2_0_reg_126_reg[4]),
        .R(\i2_0_reg_126[7]_i_1_n_8 ));
  FDRE \i2_0_reg_126_reg[5] 
       (.C(clock),
        .CE(e_read3),
        .D(i_2_fu_167_p2[5]),
        .Q(i2_0_reg_126_reg[5]),
        .R(\i2_0_reg_126[7]_i_1_n_8 ));
  FDRE \i2_0_reg_126_reg[6] 
       (.C(clock),
        .CE(e_read3),
        .D(i_2_fu_167_p2[6]),
        .Q(i2_0_reg_126_reg[6]),
        .R(\i2_0_reg_126[7]_i_1_n_8 ));
  FDRE \i2_0_reg_126_reg[7] 
       (.C(clock),
        .CE(e_read3),
        .D(i_2_fu_167_p2[7]),
        .Q(i2_0_reg_126_reg[7]),
        .R(\i2_0_reg_126[7]_i_1_n_8 ));
  LUT1 #(
    .INIT(2'h1)) 
    \i_0_reg_104[0]_i_1 
       (.I0(i_0_reg_104_reg[0]),
        .O(i_fu_143_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_0_reg_104[1]_i_1 
       (.I0(i_0_reg_104_reg[0]),
        .I1(i_0_reg_104_reg[1]),
        .O(i_fu_143_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_0_reg_104[2]_i_1 
       (.I0(i_0_reg_104_reg[2]),
        .I1(i_0_reg_104_reg[1]),
        .I2(i_0_reg_104_reg[0]),
        .O(i_fu_143_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_0_reg_104[3]_i_1 
       (.I0(i_0_reg_104_reg[3]),
        .I1(i_0_reg_104_reg[0]),
        .I2(i_0_reg_104_reg[1]),
        .I3(i_0_reg_104_reg[2]),
        .O(i_fu_143_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i_0_reg_104[4]_i_1 
       (.I0(i_0_reg_104_reg[4]),
        .I1(i_0_reg_104_reg[2]),
        .I2(i_0_reg_104_reg[1]),
        .I3(i_0_reg_104_reg[0]),
        .I4(i_0_reg_104_reg[3]),
        .O(i_fu_143_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \i_0_reg_104[5]_i_1 
       (.I0(i_0_reg_104_reg[5]),
        .I1(i_0_reg_104_reg[3]),
        .I2(i_0_reg_104_reg[0]),
        .I3(i_0_reg_104_reg[1]),
        .I4(i_0_reg_104_reg[2]),
        .I5(i_0_reg_104_reg[4]),
        .O(i_fu_143_p2[5]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_0_reg_104[6]_i_1 
       (.I0(i_0_reg_104_reg[6]),
        .I1(\i_0_reg_104[8]_i_4_n_8 ),
        .O(i_fu_143_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_0_reg_104[7]_i_1 
       (.I0(i_0_reg_104_reg[7]),
        .I1(\i_0_reg_104[8]_i_4_n_8 ),
        .I2(i_0_reg_104_reg[6]),
        .O(i_fu_143_p2[7]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \i_0_reg_104[8]_i_2 
       (.I0(det2dow_1_full_n),
        .I1(detect_1_empty_n),
        .I2(dbl2tsep_1_empty_n),
        .I3(\ap_CS_fsm[3]_i_3_n_8 ),
        .I4(ap_CS_fsm_state3),
        .O(i_0_reg_1040));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_0_reg_104[8]_i_3 
       (.I0(i_0_reg_104_reg[8]),
        .I1(i_0_reg_104_reg[6]),
        .I2(\i_0_reg_104[8]_i_4_n_8 ),
        .I3(i_0_reg_104_reg[7]),
        .O(i_fu_143_p2[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \i_0_reg_104[8]_i_4 
       (.I0(i_0_reg_104_reg[5]),
        .I1(i_0_reg_104_reg[3]),
        .I2(i_0_reg_104_reg[0]),
        .I3(i_0_reg_104_reg[1]),
        .I4(i_0_reg_104_reg[2]),
        .I5(i_0_reg_104_reg[4]),
        .O(\i_0_reg_104[8]_i_4_n_8 ));
  FDRE \i_0_reg_104_reg[0] 
       (.C(clock),
        .CE(i_0_reg_1040),
        .D(i_fu_143_p2[0]),
        .Q(i_0_reg_104_reg[0]),
        .R(SR));
  FDRE \i_0_reg_104_reg[1] 
       (.C(clock),
        .CE(i_0_reg_1040),
        .D(i_fu_143_p2[1]),
        .Q(i_0_reg_104_reg[1]),
        .R(SR));
  FDRE \i_0_reg_104_reg[2] 
       (.C(clock),
        .CE(i_0_reg_1040),
        .D(i_fu_143_p2[2]),
        .Q(i_0_reg_104_reg[2]),
        .R(SR));
  FDRE \i_0_reg_104_reg[3] 
       (.C(clock),
        .CE(i_0_reg_1040),
        .D(i_fu_143_p2[3]),
        .Q(i_0_reg_104_reg[3]),
        .R(SR));
  FDRE \i_0_reg_104_reg[4] 
       (.C(clock),
        .CE(i_0_reg_1040),
        .D(i_fu_143_p2[4]),
        .Q(i_0_reg_104_reg[4]),
        .R(SR));
  FDRE \i_0_reg_104_reg[5] 
       (.C(clock),
        .CE(i_0_reg_1040),
        .D(i_fu_143_p2[5]),
        .Q(i_0_reg_104_reg[5]),
        .R(SR));
  FDRE \i_0_reg_104_reg[6] 
       (.C(clock),
        .CE(i_0_reg_1040),
        .D(i_fu_143_p2[6]),
        .Q(i_0_reg_104_reg[6]),
        .R(SR));
  FDRE \i_0_reg_104_reg[7] 
       (.C(clock),
        .CE(i_0_reg_1040),
        .D(i_fu_143_p2[7]),
        .Q(i_0_reg_104_reg[7]),
        .R(SR));
  FDRE \i_0_reg_104_reg[8] 
       (.C(clock),
        .CE(i_0_reg_1040),
        .D(i_fu_143_p2[8]),
        .Q(i_0_reg_104_reg[8]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    internal_empty_n_i_2
       (.I0(internal_empty_n_reg_0),
        .I1(i1_0_reg_1150),
        .I2(e_read3),
        .I3(i_0_reg_1040),
        .I4(internal_empty_n_reg_1),
        .I5(internal_empty_n_reg_2),
        .O(\mOutPtr_reg[1] ));
  LUT6 #(
    .INIT(64'h00FE00FE00FEFEFE)) 
    internal_empty_n_i_3
       (.I0(i1_0_reg_1150),
        .I1(e_read3),
        .I2(i_0_reg_1040),
        .I3(det2dow_1_empty_n),
        .I4(\mOutPtr_reg[2] [1]),
        .I5(\mOutPtr_reg[2] [0]),
        .O(internal_empty_n3_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    internal_full_n_i_3
       (.I0(dbl2tsep_1_empty_n),
        .I1(detect_1_empty_n),
        .I2(Q),
        .I3(i1_0_reg_1150),
        .I4(e_read3),
        .I5(i_0_reg_1040),
        .O(dout_valid_reg));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'h1555EAAA)) 
    \mOutPtr[10]_i_1 
       (.I0(internal_full_n_reg),
        .I1(Q),
        .I2(detect_1_empty_n),
        .I3(dbl2tsep_1_empty_n),
        .I4(ce),
        .O(E));
  LUT6 #(
    .INIT(64'h0100010001000000)) 
    \mOutPtr[4]_i_2 
       (.I0(i1_0_reg_1150),
        .I1(e_read3),
        .I2(i_0_reg_1040),
        .I3(det2dow_1_empty_n),
        .I4(\mOutPtr_reg[2] [1]),
        .I5(\mOutPtr_reg[2] [0]),
        .O(internal_empty_n_reg));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \mOutPtr[5]_i_3 
       (.I0(\mOutPtr_reg[5] [0]),
        .I1(\mOutPtr_reg[5] [1]),
        .I2(internal_empty_n_reg_1),
        .I3(i_0_reg_1040),
        .I4(e_read3),
        .I5(i1_0_reg_1150),
        .O(\mOutPtr_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \mOutPtr[5]_i_4 
       (.I0(internal_empty_n_reg_1),
        .I1(i_0_reg_1040),
        .I2(e_read3),
        .I3(i1_0_reg_1150),
        .I4(\mOutPtr_reg[5] [0]),
        .I5(\mOutPtr_reg[5] [1]),
        .O(\mOutPtr_reg[0] ));
  LUT5 #(
    .INIT(32'hABBBBBBB)) 
    p_0_out__49_carry_i_1
       (.I0(ce),
        .I1(internal_full_n_reg),
        .I2(Q),
        .I3(detect_1_empty_n),
        .I4(dbl2tsep_1_empty_n),
        .O(DI));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \raddr[9]_i_1 
       (.I0(\dout_buf_reg[7] ),
        .I1(tmp_reg_1730),
        .I2(i1_0_reg_1150),
        .I3(e_read3),
        .I4(i_0_reg_1040),
        .I5(dbl2tsep_1_empty_n),
        .O(pop));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \raddr[9]_i_3 
       (.I0(Q),
        .I1(detect_1_empty_n),
        .I2(dbl2tsep_1_empty_n),
        .O(tmp_reg_1730));
  FDRE \tmp_reg_173_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(\tmp_reg_173_reg[0]_0 ),
        .Q(tmp_reg_173),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
