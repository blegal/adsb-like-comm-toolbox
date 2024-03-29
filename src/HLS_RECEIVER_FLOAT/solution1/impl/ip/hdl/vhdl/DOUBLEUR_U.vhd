-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity DOUBLEUR_U is
port (
    clock : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    e_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    e_empty_n : IN STD_LOGIC;
    e_read : OUT STD_LOGIC;
    s1_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    s1_full_n : IN STD_LOGIC;
    s1_write : OUT STD_LOGIC;
    s2_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    s2_full_n : IN STD_LOGIC;
    s2_write : OUT STD_LOGIC );
end;


architecture behav of DOUBLEUR_U is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "DOUBLEUR_U,hls_ip_2020_1,{HLS_INPUT_TYPE=sc,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a100t-csg324-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.816000,HLS_SYN_LAT=2,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=2,HLS_SYN_LUT=38,HLS_VERSION=2020_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal grp_DOUBLEUR_U_do_gen_fu_60_e_read : STD_LOGIC;
    signal grp_DOUBLEUR_U_do_gen_fu_60_s1_din : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_DOUBLEUR_U_do_gen_fu_60_s1_write : STD_LOGIC;
    signal grp_DOUBLEUR_U_do_gen_fu_60_s2_din : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_DOUBLEUR_U_do_gen_fu_60_s2_write : STD_LOGIC;

    component DOUBLEUR_U_do_gen IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        e_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        e_empty_n : IN STD_LOGIC;
        e_read : OUT STD_LOGIC;
        s1_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        s1_full_n : IN STD_LOGIC;
        s1_write : OUT STD_LOGIC;
        s2_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        s2_full_n : IN STD_LOGIC;
        s2_write : OUT STD_LOGIC );
    end component;



begin
    grp_DOUBLEUR_U_do_gen_fu_60 : component DOUBLEUR_U_do_gen
    port map (
        ap_clk => clock,
        ap_rst => reset,
        e_dout => e_dout,
        e_empty_n => e_empty_n,
        e_read => grp_DOUBLEUR_U_do_gen_fu_60_e_read,
        s1_din => grp_DOUBLEUR_U_do_gen_fu_60_s1_din,
        s1_full_n => s1_full_n,
        s1_write => grp_DOUBLEUR_U_do_gen_fu_60_s1_write,
        s2_din => grp_DOUBLEUR_U_do_gen_fu_60_s2_din,
        s2_full_n => s2_full_n,
        s2_write => grp_DOUBLEUR_U_do_gen_fu_60_s2_write);




    e_read <= grp_DOUBLEUR_U_do_gen_fu_60_e_read;
    s1_din <= grp_DOUBLEUR_U_do_gen_fu_60_s1_din;
    s1_write <= grp_DOUBLEUR_U_do_gen_fu_60_s1_write;
    s2_din <= grp_DOUBLEUR_U_do_gen_fu_60_s2_din;
    s2_write <= grp_DOUBLEUR_U_do_gen_fu_60_s2_write;
end behav;
