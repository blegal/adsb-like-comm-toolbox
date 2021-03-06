-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ModuleCompute_do_gen is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    e_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    e_empty_n : IN STD_LOGIC;
    e_read : OUT STD_LOGIC;
    s_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    s_full_n : IN STD_LOGIC;
    s_write : OUT STD_LOGIC );
end;


architecture behav of ModuleCompute_do_gen is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv8_80 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal e_blk_n : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal s_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal icmp_ln70_fu_130_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal val_V_reg_191 : STD_LOGIC_VECTOR (7 downto 0);
    signal val_V_3_reg_196 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_183_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln99_reg_201 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal i_fu_136_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_reg_209 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_block_state5 : BOOLEAN;
    signal res_fu_142_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal res_reg_214 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp_ln74_fu_158_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln74_reg_219 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_1_fu_173_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_1_reg_224 : STD_LOGIC_VECTOR (7 downto 0);
    signal select_ln74_fu_177_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal rc_V_reg_83 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_0_i_reg_96 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_0_i_reg_107 : STD_LOGIC_VECTOR (3 downto 0);
    signal ret_V_1_fu_124_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal lhs_V_1_fu_121_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal ret_V_1_fu_124_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal g2_fu_152_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln73_fu_148_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal g2_fu_152_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal g2_fu_152_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_fu_163_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal grp_fu_183_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal lhs_V_fu_118_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_183_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_183_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);

    component ModuleCompute_macibs IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (7 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        din2 : IN STD_LOGIC_VECTOR (15 downto 0);
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;



begin
    ModuleCompute_macibs_U126 : component ModuleCompute_macibs
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 8,
        din2_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        din0 => grp_fu_183_p0,
        din1 => grp_fu_183_p1,
        din2 => grp_fu_183_p2,
        dout => grp_fu_183_p3);





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


    add_0_i_reg_96_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                add_0_i_reg_96 <= add_1_reg_224;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                add_0_i_reg_96 <= ap_const_lv8_80;
            end if; 
        end if;
    end process;

    i_0_i_reg_107_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                i_0_i_reg_107 <= i_reg_209;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                i_0_i_reg_107 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    rc_V_reg_83_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                rc_V_reg_83 <= select_ln74_fu_177_p3;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                rc_V_reg_83 <= ap_const_lv8_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((icmp_ln70_fu_130_p2 = ap_const_lv1_1) and (s_full_n = ap_const_logic_0))) and (icmp_ln70_fu_130_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    add_1_reg_224(6 downto 0) <= add_1_fu_173_p1(6 downto 0);
                icmp_ln74_reg_219 <= icmp_ln74_fu_158_p2;
                res_reg_214 <= res_fu_142_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                add_ln99_reg_201 <= grp_fu_183_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((icmp_ln70_fu_130_p2 = ap_const_lv1_1) and (s_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                i_reg_209 <= i_fu_136_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (e_empty_n = ap_const_logic_1))) then
                val_V_3_reg_196 <= e_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (e_empty_n = ap_const_logic_1))) then
                val_V_reg_191 <= e_dout;
            end if;
        end if;
    end process;
    add_1_reg_224(7) <= '0';

    ap_NS_fsm_assign_proc : process (e_empty_n, s_full_n, ap_CS_fsm, ap_CS_fsm_state2, ap_CS_fsm_state3, ap_CS_fsm_state5, icmp_ln70_fu_130_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (e_empty_n = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (e_empty_n = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                if ((not(((icmp_ln70_fu_130_p2 = ap_const_lv1_1) and (s_full_n = ap_const_logic_0))) and (icmp_ln70_fu_130_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                elsif ((not(((icmp_ln70_fu_130_p2 = ap_const_lv1_1) and (s_full_n = ap_const_logic_0))) and (icmp_ln70_fu_130_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    add_1_fu_173_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_fu_163_p4),8));
    add_fu_163_p4 <= add_0_i_reg_96(7 downto 1);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_block_state5_assign_proc : process(s_full_n, icmp_ln70_fu_130_p2)
    begin
                ap_block_state5 <= ((icmp_ln70_fu_130_p2 = ap_const_lv1_1) and (s_full_n = ap_const_logic_0));
    end process;


    e_blk_n_assign_proc : process(e_empty_n, ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            e_blk_n <= e_empty_n;
        else 
            e_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    e_read_assign_proc : process(e_empty_n, ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state3) and (e_empty_n = ap_const_logic_1)) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (e_empty_n = ap_const_logic_1)))) then 
            e_read <= ap_const_logic_1;
        else 
            e_read <= ap_const_logic_0;
        end if; 
    end process;

    g2_fu_152_p0 <= zext_ln73_fu_148_p1(8 - 1 downto 0);
    g2_fu_152_p1 <= zext_ln73_fu_148_p1(8 - 1 downto 0);
    g2_fu_152_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(g2_fu_152_p0) * unsigned(g2_fu_152_p1), 16));
    grp_fu_183_p0 <= lhs_V_fu_118_p1(8 - 1 downto 0);
    grp_fu_183_p1 <= lhs_V_fu_118_p1(8 - 1 downto 0);
    grp_fu_183_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(ret_V_1_fu_124_p0) * signed(ret_V_1_fu_124_p1))), 16));
    i_fu_136_p2 <= std_logic_vector(unsigned(i_0_i_reg_107) + unsigned(ap_const_lv4_1));
    icmp_ln70_fu_130_p2 <= "1" when (i_0_i_reg_107 = ap_const_lv4_8) else "0";
    icmp_ln74_fu_158_p2 <= "1" when (unsigned(g2_fu_152_p2) > unsigned(add_ln99_reg_201)) else "0";
        lhs_V_1_fu_121_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(val_V_3_reg_196),16));

        lhs_V_fu_118_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(val_V_reg_191),16));

    res_fu_142_p2 <= (rc_V_reg_83 or add_0_i_reg_96);
    ret_V_1_fu_124_p0 <= lhs_V_1_fu_121_p1(8 - 1 downto 0);
    ret_V_1_fu_124_p1 <= lhs_V_1_fu_121_p1(8 - 1 downto 0);

    s_blk_n_assign_proc : process(s_full_n, ap_CS_fsm_state5, icmp_ln70_fu_130_p2)
    begin
        if (((icmp_ln70_fu_130_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            s_blk_n <= s_full_n;
        else 
            s_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    s_din <= rc_V_reg_83;

    s_write_assign_proc : process(s_full_n, ap_CS_fsm_state5, icmp_ln70_fu_130_p2)
    begin
        if ((not(((icmp_ln70_fu_130_p2 = ap_const_lv1_1) and (s_full_n = ap_const_logic_0))) and (icmp_ln70_fu_130_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            s_write <= ap_const_logic_1;
        else 
            s_write <= ap_const_logic_0;
        end if; 
    end process;

    select_ln74_fu_177_p3 <= 
        rc_V_reg_83 when (icmp_ln74_reg_219(0) = '1') else 
        res_reg_214;
    zext_ln73_fu_148_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(res_fu_142_p2),16));
end behav;
