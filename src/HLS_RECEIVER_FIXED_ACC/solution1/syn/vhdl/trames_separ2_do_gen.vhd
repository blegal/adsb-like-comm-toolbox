-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity trames_separ2_do_gen is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    e_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    e_empty_n : IN STD_LOGIC;
    e_read : OUT STD_LOGIC;
    detect_dout : IN STD_LOGIC;
    detect_empty_n : IN STD_LOGIC;
    detect_read : OUT STD_LOGIC;
    s_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    s_full_n : IN STD_LOGIC;
    s_write : OUT STD_LOGIC );
end;


architecture behav of trames_separ2_do_gen is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv9_100 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv11_780 : STD_LOGIC_VECTOR (10 downto 0) := "11110000000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_lv8_80 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";

    signal e_blk_n : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal icmp_ln50_fu_137_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal icmp_ln55_fu_149_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal tmp_reg_173 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln60_fu_161_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal detect_blk_n : STD_LOGIC;
    signal s_blk_n : STD_LOGIC;
    signal grp_read_fu_90_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2 : BOOLEAN;
    signal i_fu_143_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_block_state3 : BOOLEAN;
    signal i_1_fu_155_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_block_state4 : BOOLEAN;
    signal i_2_fu_167_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_predicate_op53_read_state5 : BOOLEAN;
    signal ap_predicate_op54_write_state5 : BOOLEAN;
    signal ap_predicate_op55_read_state5 : BOOLEAN;
    signal ap_block_state5 : BOOLEAN;
    signal i_0_reg_104 : STD_LOGIC_VECTOR (8 downto 0);
    signal i1_0_reg_115 : STD_LOGIC_VECTOR (10 downto 0);
    signal i2_0_reg_126 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state2;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    i1_0_reg_115_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((((icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (s_full_n = ap_const_logic_0)) or ((icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (detect_empty_n = ap_const_logic_0)) or ((icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (e_empty_n = ap_const_logic_0)))) and (icmp_ln50_fu_137_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                i1_0_reg_115 <= ap_const_lv11_0;
            elsif ((not((((icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (s_full_n = ap_const_logic_0)) or ((icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (detect_empty_n = ap_const_logic_0)) or ((icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (e_empty_n = ap_const_logic_0)))) and (icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                i1_0_reg_115 <= i_1_fu_155_p2;
            end if; 
        end if;
    end process;

    i2_0_reg_126_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((((icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (s_full_n = ap_const_logic_0)) or ((icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (detect_empty_n = ap_const_logic_0)) or ((icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (e_empty_n = ap_const_logic_0)))) and (icmp_ln55_fu_149_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                i2_0_reg_126 <= ap_const_lv8_0;
            elsif ((not((((s_full_n = ap_const_logic_0) and (ap_predicate_op54_write_state5 = ap_const_boolean_1)) or ((detect_empty_n = ap_const_logic_0) and (ap_predicate_op55_read_state5 = ap_const_boolean_1)) or ((e_empty_n = ap_const_logic_0) and (ap_predicate_op53_read_state5 = ap_const_boolean_1)))) and (tmp_reg_173 = ap_const_lv1_1) and (icmp_ln60_fu_161_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                i2_0_reg_126 <= i_2_fu_167_p2;
            end if; 
        end if;
    end process;

    i_0_reg_104_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((detect_empty_n = ap_const_logic_0) or (e_empty_n = ap_const_logic_0))) and (grp_read_fu_90_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i_0_reg_104 <= ap_const_lv9_0;
            elsif ((not((((icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (s_full_n = ap_const_logic_0)) or ((icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (detect_empty_n = ap_const_logic_0)) or ((icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (e_empty_n = ap_const_logic_0)))) and (icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                i_0_reg_104 <= i_fu_143_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((detect_empty_n = ap_const_logic_0) or (e_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                tmp_reg_173 <= (0=>detect_dout, others=>'-');
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (e_empty_n, detect_empty_n, s_full_n, ap_CS_fsm, ap_CS_fsm_state2, ap_CS_fsm_state3, icmp_ln50_fu_137_p2, ap_CS_fsm_state4, icmp_ln55_fu_149_p2, ap_CS_fsm_state5, tmp_reg_173, icmp_ln60_fu_161_p2, grp_read_fu_90_p2, ap_predicate_op53_read_state5, ap_predicate_op54_write_state5, ap_predicate_op55_read_state5)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state2 => 
                if ((not(((detect_empty_n = ap_const_logic_0) or (e_empty_n = ap_const_logic_0))) and (grp_read_fu_90_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                elsif ((not(((detect_empty_n = ap_const_logic_0) or (e_empty_n = ap_const_logic_0))) and (grp_read_fu_90_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                if ((not((((icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (s_full_n = ap_const_logic_0)) or ((icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (detect_empty_n = ap_const_logic_0)) or ((icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (e_empty_n = ap_const_logic_0)))) and (icmp_ln50_fu_137_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                elsif ((not((((icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (s_full_n = ap_const_logic_0)) or ((icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (detect_empty_n = ap_const_logic_0)) or ((icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (e_empty_n = ap_const_logic_0)))) and (icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                if ((not((((icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (s_full_n = ap_const_logic_0)) or ((icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (detect_empty_n = ap_const_logic_0)) or ((icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (e_empty_n = ap_const_logic_0)))) and (icmp_ln55_fu_149_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                elsif ((not((((icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (s_full_n = ap_const_logic_0)) or ((icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (detect_empty_n = ap_const_logic_0)) or ((icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (e_empty_n = ap_const_logic_0)))) and (icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                if ((not((((s_full_n = ap_const_logic_0) and (ap_predicate_op54_write_state5 = ap_const_boolean_1)) or ((detect_empty_n = ap_const_logic_0) and (ap_predicate_op55_read_state5 = ap_const_boolean_1)) or ((e_empty_n = ap_const_logic_0) and (ap_predicate_op53_read_state5 = ap_const_boolean_1)))) and (ap_const_logic_1 = ap_CS_fsm_state5) and ((icmp_ln60_fu_161_p2 = ap_const_lv1_1) or (tmp_reg_173 = ap_const_lv1_0)))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                elsif ((not((((s_full_n = ap_const_logic_0) and (ap_predicate_op54_write_state5 = ap_const_boolean_1)) or ((detect_empty_n = ap_const_logic_0) and (ap_predicate_op55_read_state5 = ap_const_boolean_1)) or ((e_empty_n = ap_const_logic_0) and (ap_predicate_op53_read_state5 = ap_const_boolean_1)))) and (tmp_reg_173 = ap_const_lv1_1) and (icmp_ln60_fu_161_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);

    ap_block_state2_assign_proc : process(e_empty_n, detect_empty_n)
    begin
                ap_block_state2 <= ((detect_empty_n = ap_const_logic_0) or (e_empty_n = ap_const_logic_0));
    end process;


    ap_block_state3_assign_proc : process(e_empty_n, detect_empty_n, s_full_n, icmp_ln50_fu_137_p2)
    begin
                ap_block_state3 <= (((icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (s_full_n = ap_const_logic_0)) or ((icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (detect_empty_n = ap_const_logic_0)) or ((icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (e_empty_n = ap_const_logic_0)));
    end process;


    ap_block_state4_assign_proc : process(e_empty_n, detect_empty_n, s_full_n, icmp_ln55_fu_149_p2)
    begin
                ap_block_state4 <= (((icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (s_full_n = ap_const_logic_0)) or ((icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (detect_empty_n = ap_const_logic_0)) or ((icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (e_empty_n = ap_const_logic_0)));
    end process;


    ap_block_state5_assign_proc : process(e_empty_n, detect_empty_n, s_full_n, ap_predicate_op53_read_state5, ap_predicate_op54_write_state5, ap_predicate_op55_read_state5)
    begin
                ap_block_state5 <= (((s_full_n = ap_const_logic_0) and (ap_predicate_op54_write_state5 = ap_const_boolean_1)) or ((detect_empty_n = ap_const_logic_0) and (ap_predicate_op55_read_state5 = ap_const_boolean_1)) or ((e_empty_n = ap_const_logic_0) and (ap_predicate_op53_read_state5 = ap_const_boolean_1)));
    end process;


    ap_predicate_op53_read_state5_assign_proc : process(tmp_reg_173, icmp_ln60_fu_161_p2)
    begin
                ap_predicate_op53_read_state5 <= ((tmp_reg_173 = ap_const_lv1_1) and (icmp_ln60_fu_161_p2 = ap_const_lv1_0));
    end process;


    ap_predicate_op54_write_state5_assign_proc : process(tmp_reg_173, icmp_ln60_fu_161_p2)
    begin
                ap_predicate_op54_write_state5 <= ((tmp_reg_173 = ap_const_lv1_1) and (icmp_ln60_fu_161_p2 = ap_const_lv1_0));
    end process;


    ap_predicate_op55_read_state5_assign_proc : process(tmp_reg_173, icmp_ln60_fu_161_p2)
    begin
                ap_predicate_op55_read_state5 <= ((tmp_reg_173 = ap_const_lv1_1) and (icmp_ln60_fu_161_p2 = ap_const_lv1_0));
    end process;


    detect_blk_n_assign_proc : process(detect_empty_n, ap_CS_fsm_state2, ap_CS_fsm_state3, icmp_ln50_fu_137_p2, ap_CS_fsm_state4, icmp_ln55_fu_149_p2, ap_CS_fsm_state5, tmp_reg_173, icmp_ln60_fu_161_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or ((tmp_reg_173 = ap_const_lv1_1) and (icmp_ln60_fu_161_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5)) or ((icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3)))) then 
            detect_blk_n <= detect_empty_n;
        else 
            detect_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    detect_read_assign_proc : process(e_empty_n, detect_empty_n, s_full_n, ap_CS_fsm_state2, ap_CS_fsm_state3, icmp_ln50_fu_137_p2, ap_CS_fsm_state4, icmp_ln55_fu_149_p2, ap_CS_fsm_state5, ap_predicate_op53_read_state5, ap_predicate_op54_write_state5, ap_predicate_op55_read_state5)
    begin
        if (((not((((s_full_n = ap_const_logic_0) and (ap_predicate_op54_write_state5 = ap_const_boolean_1)) or ((detect_empty_n = ap_const_logic_0) and (ap_predicate_op55_read_state5 = ap_const_boolean_1)) or ((e_empty_n = ap_const_logic_0) and (ap_predicate_op53_read_state5 = ap_const_boolean_1)))) and (ap_predicate_op55_read_state5 = ap_const_boolean_1) and (ap_const_logic_1 = ap_CS_fsm_state5)) or (not((((icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (s_full_n = ap_const_logic_0)) or ((icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (detect_empty_n = ap_const_logic_0)) or ((icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (e_empty_n = ap_const_logic_0)))) and (icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)) or (not((((icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (s_full_n = ap_const_logic_0)) or ((icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (detect_empty_n = ap_const_logic_0)) or ((icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (e_empty_n = ap_const_logic_0)))) and (icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3)) or (not(((detect_empty_n = ap_const_logic_0) or (e_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            detect_read <= ap_const_logic_1;
        else 
            detect_read <= ap_const_logic_0;
        end if; 
    end process;


    e_blk_n_assign_proc : process(e_empty_n, ap_CS_fsm_state2, ap_CS_fsm_state3, icmp_ln50_fu_137_p2, ap_CS_fsm_state4, icmp_ln55_fu_149_p2, ap_CS_fsm_state5, tmp_reg_173, icmp_ln60_fu_161_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or ((tmp_reg_173 = ap_const_lv1_1) and (icmp_ln60_fu_161_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5)) or ((icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3)))) then 
            e_blk_n <= e_empty_n;
        else 
            e_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    e_read_assign_proc : process(e_empty_n, detect_empty_n, s_full_n, ap_CS_fsm_state2, ap_CS_fsm_state3, icmp_ln50_fu_137_p2, ap_CS_fsm_state4, icmp_ln55_fu_149_p2, ap_CS_fsm_state5, ap_predicate_op53_read_state5, ap_predicate_op54_write_state5, ap_predicate_op55_read_state5)
    begin
        if (((not((((s_full_n = ap_const_logic_0) and (ap_predicate_op54_write_state5 = ap_const_boolean_1)) or ((detect_empty_n = ap_const_logic_0) and (ap_predicate_op55_read_state5 = ap_const_boolean_1)) or ((e_empty_n = ap_const_logic_0) and (ap_predicate_op53_read_state5 = ap_const_boolean_1)))) and (ap_predicate_op53_read_state5 = ap_const_boolean_1) and (ap_const_logic_1 = ap_CS_fsm_state5)) or (not((((icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (s_full_n = ap_const_logic_0)) or ((icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (detect_empty_n = ap_const_logic_0)) or ((icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (e_empty_n = ap_const_logic_0)))) and (icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)) or (not((((icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (s_full_n = ap_const_logic_0)) or ((icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (detect_empty_n = ap_const_logic_0)) or ((icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (e_empty_n = ap_const_logic_0)))) and (icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3)) or (not(((detect_empty_n = ap_const_logic_0) or (e_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            e_read <= ap_const_logic_1;
        else 
            e_read <= ap_const_logic_0;
        end if; 
    end process;

    grp_read_fu_90_p2 <= (0=>detect_dout, others=>'-');
    i_1_fu_155_p2 <= std_logic_vector(unsigned(i1_0_reg_115) + unsigned(ap_const_lv11_1));
    i_2_fu_167_p2 <= std_logic_vector(unsigned(i2_0_reg_126) + unsigned(ap_const_lv8_1));
    i_fu_143_p2 <= std_logic_vector(unsigned(i_0_reg_104) + unsigned(ap_const_lv9_1));
    icmp_ln50_fu_137_p2 <= "1" when (i_0_reg_104 = ap_const_lv9_100) else "0";
    icmp_ln55_fu_149_p2 <= "1" when (i1_0_reg_115 = ap_const_lv11_780) else "0";
    icmp_ln60_fu_161_p2 <= "1" when (i2_0_reg_126 = ap_const_lv8_80) else "0";

    s_blk_n_assign_proc : process(s_full_n, ap_CS_fsm_state3, icmp_ln50_fu_137_p2, ap_CS_fsm_state4, icmp_ln55_fu_149_p2, ap_CS_fsm_state5, tmp_reg_173, icmp_ln60_fu_161_p2)
    begin
        if ((((tmp_reg_173 = ap_const_lv1_1) and (icmp_ln60_fu_161_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5)) or ((icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)) or ((icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3)))) then 
            s_blk_n <= s_full_n;
        else 
            s_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    s_din <= e_dout;

    s_write_assign_proc : process(e_empty_n, detect_empty_n, s_full_n, ap_CS_fsm_state3, icmp_ln50_fu_137_p2, ap_CS_fsm_state4, icmp_ln55_fu_149_p2, ap_CS_fsm_state5, ap_predicate_op53_read_state5, ap_predicate_op54_write_state5, ap_predicate_op55_read_state5)
    begin
        if (((not((((s_full_n = ap_const_logic_0) and (ap_predicate_op54_write_state5 = ap_const_boolean_1)) or ((detect_empty_n = ap_const_logic_0) and (ap_predicate_op55_read_state5 = ap_const_boolean_1)) or ((e_empty_n = ap_const_logic_0) and (ap_predicate_op53_read_state5 = ap_const_boolean_1)))) and (ap_predicate_op54_write_state5 = ap_const_boolean_1) and (ap_const_logic_1 = ap_CS_fsm_state5)) or (not((((icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (s_full_n = ap_const_logic_0)) or ((icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (detect_empty_n = ap_const_logic_0)) or ((icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (e_empty_n = ap_const_logic_0)))) and (icmp_ln55_fu_149_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4)) or (not((((icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (s_full_n = ap_const_logic_0)) or ((icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (detect_empty_n = ap_const_logic_0)) or ((icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (e_empty_n = ap_const_logic_0)))) and (icmp_ln50_fu_137_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3)))) then 
            s_write <= ap_const_logic_1;
        else 
            s_write <= ap_const_logic_0;
        end if; 
    end process;

end behav;
