-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Seuil_calc2_do_gen is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    e_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    e_empty_n : IN STD_LOGIC;
    e_read : OUT STD_LOGIC;
    detect_din : OUT STD_LOGIC;
    detect_full_n : IN STD_LOGIC;
    detect_write : OUT STD_LOGIC );
end;


architecture behav of Seuil_calc2_do_gen is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv22_0 : STD_LOGIC_VECTOR (21 downto 0) := "0000000000000000000000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_15 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010101";
    constant ap_const_lv17_0 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000000";
    constant ap_const_lv17_1F : STD_LOGIC_VECTOR (16 downto 0) := "00000000000011111";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv27_1B : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000000000011011";

    signal e_blk_n : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal detect_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal p_0108_0_reg_221 : STD_LOGIC_VECTOR (21 downto 0);
    signal val_V_reg_876 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal val_V_reg_876_pp0_iter1_reg : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_664_p3 : STD_LOGIC_VECTOR (16 downto 0);
    signal ret_V_reg_882 : STD_LOGIC_VECTOR (16 downto 0);
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ps_V_fu_437_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal ps_V_reg_887 : STD_LOGIC_VECTOR (10 downto 0);
    signal sum_V_fu_454_p2 : STD_LOGIC_VECTOR (21 downto 0);
    signal sum_V_reg_892 : STD_LOGIC_VECTOR (21 downto 0);
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal res_2_V_fu_476_p3 : STD_LOGIC_VECTOR (16 downto 0);
    signal res_2_V_reg_897 : STD_LOGIC_VECTOR (16 downto 0);
    signal ret_V_6_fu_672_p2 : STD_LOGIC_VECTOR (21 downto 0);
    signal ret_V_6_reg_902 : STD_LOGIC_VECTOR (21 downto 0);
    signal mul_ln895_fu_678_p2 : STD_LOGIC_VECTOR (26 downto 0);
    signal mul_ln895_reg_907 : STD_LOGIC_VECTOR (26 downto 0);
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_phi_mux_p_0108_0_phi_fu_225_p4 : STD_LOGIC_VECTOR (21 downto 0);
    signal p_0343_0_fu_80 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_sig_allocacmp_p_0343_0_load : STD_LOGIC_VECTOR (7 downto 0);
    signal x0_V_fu_84 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_1_V_fu_88 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_2_V_fu_92 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_3_V_fu_96 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_4_V_fu_100 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_5_V_fu_104 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_6_V_fu_108 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_7_V_fu_112 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_8_V_fu_116 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_9_V_fu_120 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_10_V_fu_124 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_11_V_fu_128 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_12_V_fu_132 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_13_V_fu_136 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_14_V_fu_140 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_15_V_fu_144 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_16_V_fu_148 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_17_V_fu_152 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_18_V_fu_156 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_19_V_fu_160 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_20_V_fu_164 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_21_V_fu_168 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_22_V_fu_172 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_23_V_fu_176 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_24_V_fu_180 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_25_V_fu_184 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_26_V_fu_188 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_27_V_fu_192 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_28_V_fu_196 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_29_V_fu_200 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_30_V_fu_204 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal ret_V_5_fu_242_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal lhs_V_5_fu_239_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal ret_V_5_fu_242_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal ret_V_5_fu_242_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln215_fu_345_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln215_1_fu_349_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln215_fu_377_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln215_3_fu_357_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln215_2_fu_353_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln215_1_fu_387_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln215_8_fu_383_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln215_9_fu_393_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln215_2_fu_397_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln215_5_fu_365_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln215_4_fu_361_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln215_3_fu_407_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln215_7_fu_373_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln215_6_fu_369_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln215_4_fu_417_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal zext_ln215_11_fu_413_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln215_12_fu_423_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln215_5_fu_427_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln215_10_fu_403_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln215_13_fu_433_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal shl_ln_fu_443_p3 : STD_LOGIC_VECTOR (19 downto 0);
    signal sext_ln700_fu_450_p1 : STD_LOGIC_VECTOR (21 downto 0);
    signal trunc_ln_fu_460_p4 : STD_LOGIC_VECTOR (16 downto 0);
    signal icmp_ln879_fu_470_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln895_1_fu_649_p1 : STD_LOGIC_VECTOR (26 downto 0);
    signal icmp_ln895_fu_652_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_664_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal lhs_V_4_fu_235_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_664_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_664_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal ret_V_6_fu_672_p0 : STD_LOGIC_VECTOR (10 downto 0);
    signal lhs_V_6_fu_643_p1 : STD_LOGIC_VECTOR (21 downto 0);
    signal ret_V_6_fu_672_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal mul_ln895_fu_678_p0 : STD_LOGIC_VECTOR (16 downto 0);
    signal mul_ln895_fu_678_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal grp_fu_664_p20 : STD_LOGIC_VECTOR (16 downto 0);
    signal mul_ln895_fu_678_p00 : STD_LOGIC_VECTOR (26 downto 0);

    component Seuil_calc2_mac_mdEe IS
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
        dout : OUT STD_LOGIC_VECTOR (16 downto 0) );
    end component;


    component Seuil_calc2_mul_meOg IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (10 downto 0);
        din1 : IN STD_LOGIC_VECTOR (10 downto 0);
        dout : OUT STD_LOGIC_VECTOR (21 downto 0) );
    end component;


    component Seuil_calc2_mul_mfYi IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (16 downto 0);
        din1 : IN STD_LOGIC_VECTOR (5 downto 0);
        dout : OUT STD_LOGIC_VECTOR (26 downto 0) );
    end component;



begin
    Seuil_calc2_mac_mdEe_U22 : component Seuil_calc2_mac_mdEe
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 8,
        din2_WIDTH => 16,
        dout_WIDTH => 17)
    port map (
        din0 => grp_fu_664_p0,
        din1 => grp_fu_664_p1,
        din2 => grp_fu_664_p2,
        dout => grp_fu_664_p3);

    Seuil_calc2_mul_meOg_U23 : component Seuil_calc2_mul_meOg
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 11,
        din1_WIDTH => 11,
        dout_WIDTH => 22)
    port map (
        din0 => ret_V_6_fu_672_p0,
        din1 => ret_V_6_fu_672_p1,
        dout => ret_V_6_fu_672_p2);

    Seuil_calc2_mul_mfYi_U24 : component Seuil_calc2_mul_mfYi
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 17,
        din1_WIDTH => 6,
        dout_WIDTH => 27)
    port map (
        din0 => mul_ln895_fu_678_p0,
        din1 => mul_ln895_fu_678_p1,
        dout => mul_ln895_fu_678_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
                    ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
                    ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    p_0108_0_reg_221_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
                p_0108_0_reg_221 <= sum_V_reg_892;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
                p_0108_0_reg_221 <= ap_const_lv22_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then
                buffer_10_V_fu_124 <= buffer_11_V_fu_128;
                buffer_11_V_fu_128 <= buffer_12_V_fu_132;
                buffer_12_V_fu_132 <= buffer_13_V_fu_136;
                buffer_13_V_fu_136 <= buffer_14_V_fu_140;
                buffer_14_V_fu_140 <= buffer_15_V_fu_144;
                buffer_15_V_fu_144 <= buffer_16_V_fu_148;
                buffer_16_V_fu_148 <= buffer_17_V_fu_152;
                buffer_17_V_fu_152 <= buffer_18_V_fu_156;
                buffer_18_V_fu_156 <= buffer_19_V_fu_160;
                buffer_19_V_fu_160 <= buffer_20_V_fu_164;
                buffer_1_V_fu_88 <= buffer_2_V_fu_92;
                buffer_20_V_fu_164 <= buffer_21_V_fu_168;
                buffer_21_V_fu_168 <= buffer_22_V_fu_172;
                buffer_22_V_fu_172 <= buffer_23_V_fu_176;
                buffer_23_V_fu_176 <= buffer_24_V_fu_180;
                buffer_24_V_fu_180 <= buffer_25_V_fu_184;
                buffer_25_V_fu_184 <= buffer_26_V_fu_188;
                buffer_26_V_fu_188 <= buffer_27_V_fu_192;
                buffer_27_V_fu_192 <= buffer_28_V_fu_196;
                buffer_28_V_fu_196 <= buffer_29_V_fu_200;
                buffer_29_V_fu_200 <= buffer_30_V_fu_204;
                buffer_2_V_fu_92 <= buffer_3_V_fu_96;
                buffer_30_V_fu_204 <= val_V_reg_876_pp0_iter1_reg;
                buffer_3_V_fu_96 <= buffer_4_V_fu_100;
                buffer_4_V_fu_100 <= buffer_5_V_fu_104;
                buffer_5_V_fu_104 <= buffer_6_V_fu_108;
                buffer_6_V_fu_108 <= buffer_7_V_fu_112;
                buffer_7_V_fu_112 <= buffer_8_V_fu_116;
                buffer_8_V_fu_116 <= buffer_9_V_fu_120;
                buffer_9_V_fu_120 <= buffer_10_V_fu_124;
                p_0343_0_fu_80 <= x0_V_fu_84;
                sum_V_reg_892 <= sum_V_fu_454_p2;
                x0_V_fu_84 <= buffer_1_V_fu_88;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                mul_ln895_reg_907 <= mul_ln895_fu_678_p2;
                ps_V_reg_887 <= ps_V_fu_437_p2;
                res_2_V_reg_897 <= res_2_V_fu_476_p3;
                ret_V_6_reg_902 <= ret_V_6_fu_672_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ret_V_reg_882 <= grp_fu_664_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                val_V_reg_876 <= e_dout;
                val_V_reg_876_pp0_iter1_reg <= val_V_reg_876;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    add_ln215_1_fu_387_p2 <= std_logic_vector(unsigned(zext_ln215_3_fu_357_p1) + unsigned(zext_ln215_2_fu_353_p1));
    add_ln215_2_fu_397_p2 <= std_logic_vector(unsigned(zext_ln215_8_fu_383_p1) + unsigned(zext_ln215_9_fu_393_p1));
    add_ln215_3_fu_407_p2 <= std_logic_vector(unsigned(zext_ln215_5_fu_365_p1) + unsigned(zext_ln215_4_fu_361_p1));
    add_ln215_4_fu_417_p2 <= std_logic_vector(unsigned(zext_ln215_7_fu_373_p1) + unsigned(zext_ln215_6_fu_369_p1));
    add_ln215_5_fu_427_p2 <= std_logic_vector(unsigned(zext_ln215_11_fu_413_p1) + unsigned(zext_ln215_12_fu_423_p1));
    add_ln215_fu_377_p2 <= std_logic_vector(unsigned(zext_ln215_fu_345_p1) + unsigned(zext_ln215_1_fu_349_p1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(e_empty_n, detect_full_n, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter4)
    begin
                ap_block_pp0_stage0_01001 <= (((detect_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1)) or ((e_empty_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(e_empty_n, detect_full_n, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter4)
    begin
                ap_block_pp0_stage0_11001 <= (((detect_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1)) or ((e_empty_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(e_empty_n, detect_full_n, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter4)
    begin
                ap_block_pp0_stage0_subdone <= (((detect_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1)) or ((e_empty_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)));
    end process;


    ap_block_state2_pp0_stage0_iter0_assign_proc : process(e_empty_n)
    begin
                ap_block_state2_pp0_stage0_iter0 <= (e_empty_n = ap_const_logic_0);
    end process;

        ap_block_state3_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state6_pp0_stage0_iter4_assign_proc : process(detect_full_n)
    begin
                ap_block_state6_pp0_stage0_iter4 <= (detect_full_n = ap_const_logic_0);
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter4, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_p_0108_0_phi_fu_225_p4_assign_proc : process(ap_block_pp0_stage0, p_0108_0_reg_221, sum_V_reg_892, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            ap_phi_mux_p_0108_0_phi_fu_225_p4 <= sum_V_reg_892;
        else 
            ap_phi_mux_p_0108_0_phi_fu_225_p4 <= p_0108_0_reg_221;
        end if; 
    end process;


    ap_sig_allocacmp_p_0343_0_load_assign_proc : process(ap_block_pp0_stage0, ap_enable_reg_pp0_iter2, p_0343_0_fu_80, x0_V_fu_84)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            ap_sig_allocacmp_p_0343_0_load <= x0_V_fu_84;
        else 
            ap_sig_allocacmp_p_0343_0_load <= p_0343_0_fu_80;
        end if; 
    end process;


    detect_blk_n_assign_proc : process(detect_full_n, ap_block_pp0_stage0, ap_enable_reg_pp0_iter4)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1))) then 
            detect_blk_n <= detect_full_n;
        else 
            detect_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    detect_din <= (icmp_ln895_fu_652_p2(0) xor ap_const_logic_1);

    detect_write_assign_proc : process(ap_enable_reg_pp0_iter4, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1))) then 
            detect_write <= ap_const_logic_1;
        else 
            detect_write <= ap_const_logic_0;
        end if; 
    end process;


    e_blk_n_assign_proc : process(e_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            e_blk_n <= e_empty_n;
        else 
            e_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    e_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            e_read <= ap_const_logic_1;
        else 
            e_read <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_664_p0 <= lhs_V_4_fu_235_p1(8 - 1 downto 0);
    grp_fu_664_p1 <= lhs_V_4_fu_235_p1(8 - 1 downto 0);
    grp_fu_664_p2 <= grp_fu_664_p20(16 - 1 downto 0);
    grp_fu_664_p20 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ret_V_5_fu_242_p2),17));
    icmp_ln879_fu_470_p2 <= "1" when (trunc_ln_fu_460_p4 = ap_const_lv17_0) else "0";
    icmp_ln895_fu_652_p2 <= "1" when (unsigned(zext_ln895_1_fu_649_p1) < unsigned(mul_ln895_reg_907)) else "0";
    lhs_V_4_fu_235_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_p_0343_0_load),16));
    lhs_V_5_fu_239_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(val_V_reg_876),16));
    lhs_V_6_fu_643_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ps_V_reg_887),22));
    mul_ln895_fu_678_p0 <= mul_ln895_fu_678_p00(17 - 1 downto 0);
    mul_ln895_fu_678_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(res_2_V_reg_897),27));
    mul_ln895_fu_678_p1 <= ap_const_lv27_1B(6 - 1 downto 0);
    ps_V_fu_437_p2 <= std_logic_vector(unsigned(zext_ln215_10_fu_403_p1) + unsigned(zext_ln215_13_fu_433_p1));
    res_2_V_fu_476_p3 <= 
        ap_const_lv17_1F when (icmp_ln879_fu_470_p2(0) = '1') else 
        trunc_ln_fu_460_p4;
    ret_V_5_fu_242_p0 <= lhs_V_5_fu_239_p1(8 - 1 downto 0);
    ret_V_5_fu_242_p1 <= lhs_V_5_fu_239_p1(8 - 1 downto 0);
    ret_V_5_fu_242_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ret_V_5_fu_242_p0) * unsigned(ret_V_5_fu_242_p1), 16));
    ret_V_6_fu_672_p0 <= lhs_V_6_fu_643_p1(11 - 1 downto 0);
    ret_V_6_fu_672_p1 <= lhs_V_6_fu_643_p1(11 - 1 downto 0);
        sext_ln700_fu_450_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(shl_ln_fu_443_p3),22));

    shl_ln_fu_443_p3 <= (ret_V_reg_882 & ap_const_lv3_0);
    sum_V_fu_454_p2 <= std_logic_vector(unsigned(ap_phi_mux_p_0108_0_phi_fu_225_p4) + unsigned(sext_ln700_fu_450_p1));
    trunc_ln_fu_460_p4 <= sum_V_fu_454_p2(21 downto 5);
    zext_ln215_10_fu_403_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln215_2_fu_397_p2),11));
    zext_ln215_11_fu_413_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln215_3_fu_407_p2),10));
    zext_ln215_12_fu_423_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln215_4_fu_417_p2),10));
    zext_ln215_13_fu_433_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln215_5_fu_427_p2),11));
    zext_ln215_1_fu_349_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(buffer_1_V_fu_88),9));
    zext_ln215_2_fu_353_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(buffer_4_V_fu_100),9));
    zext_ln215_3_fu_357_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(buffer_5_V_fu_104),9));
    zext_ln215_4_fu_361_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(buffer_14_V_fu_140),9));
    zext_ln215_5_fu_365_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(buffer_15_V_fu_144),9));
    zext_ln215_6_fu_369_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(buffer_18_V_fu_156),9));
    zext_ln215_7_fu_373_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(buffer_19_V_fu_160),9));
    zext_ln215_8_fu_383_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln215_fu_377_p2),10));
    zext_ln215_9_fu_393_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln215_1_fu_387_p2),10));
    zext_ln215_fu_345_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(x0_V_fu_84),9));
    zext_ln895_1_fu_649_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ret_V_6_reg_902),27));
end behav;
