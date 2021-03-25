-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Seuil_calc is
port (
    clock : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    e_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    e_empty_n : IN STD_LOGIC;
    e_read : OUT STD_LOGIC;
    detect_din : OUT STD_LOGIC;
    detect_full_n : IN STD_LOGIC;
    detect_write : OUT STD_LOGIC );
end;


architecture behav of Seuil_calc is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "Seuil_calc,hls_ip_2020_1,{HLS_INPUT_TYPE=sc,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a100t-csg324-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.263000,HLS_SYN_LAT=95,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=180,HLS_SYN_FF=20912,HLS_SYN_LUT=18841,HLS_VERSION=2020_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal grp_Seuil_calc_do_gen_fu_56_e_read : STD_LOGIC;
    signal grp_Seuil_calc_do_gen_fu_56_detect_din : STD_LOGIC;
    signal grp_Seuil_calc_do_gen_fu_56_detect_write : STD_LOGIC;

    component Seuil_calc_do_gen IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        e_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        e_empty_n : IN STD_LOGIC;
        e_read : OUT STD_LOGIC;
        detect_din : OUT STD_LOGIC;
        detect_full_n : IN STD_LOGIC;
        detect_write : OUT STD_LOGIC );
    end component;



begin
    grp_Seuil_calc_do_gen_fu_56 : component Seuil_calc_do_gen
    port map (
        ap_clk => clock,
        ap_rst => reset,
        e_dout => e_dout,
        e_empty_n => e_empty_n,
        e_read => grp_Seuil_calc_do_gen_fu_56_e_read,
        detect_din => grp_Seuil_calc_do_gen_fu_56_detect_din,
        detect_full_n => detect_full_n,
        detect_write => grp_Seuil_calc_do_gen_fu_56_detect_write);




    detect_din <= grp_Seuil_calc_do_gen_fu_56_detect_din;
    detect_write <= grp_Seuil_calc_do_gen_fu_56_detect_write;
    e_read <= grp_Seuil_calc_do_gen_fu_56_e_read;
end behav;