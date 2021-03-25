-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Thu Mar 25 14:13:45 2021
-- Host        : JARVIS running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/oasa/Documents/ef/adsb-like-comm-toolbox/src/HLS_RECEIVER_FIXED_ACC/solution1/impl/vhdl/project.srcs/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_sim_netlist.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_BitDecider_do_gen is
  port (
    grp_BitDecider_fu_292_s_din : out STD_LOGIC;
    \ap_CS_fsm_reg[1]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    internal_empty_n3_out : out STD_LOGIC;
    clock : in STD_LOGIC;
    dow2bit_1_empty_n : in STD_LOGIC;
    bit2byt_1_full_n : in STD_LOGIC;
    grp_BitsToBytes_fu_306_e_read : in STD_LOGIC;
    reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_BitDecider_do_gen : entity is "BitDecider_do_gen";
end bd_0_hls_inst_0_BitDecider_do_gen;

architecture STRUCTURE of bd_0_hls_inst_0_BitDecider_do_gen is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \^grp_bitdecider_fu_292_s_din\ : STD_LOGIC;
  signal icmp_ln37_fu_65_p2 : STD_LOGIC;
  signal \icmp_ln37_reg_75[0]_i_10_n_8\ : STD_LOGIC;
  signal \icmp_ln37_reg_75[0]_i_1_n_8\ : STD_LOGIC;
  signal \icmp_ln37_reg_75[0]_i_3_n_8\ : STD_LOGIC;
  signal \icmp_ln37_reg_75[0]_i_4_n_8\ : STD_LOGIC;
  signal \icmp_ln37_reg_75[0]_i_5_n_8\ : STD_LOGIC;
  signal \icmp_ln37_reg_75[0]_i_6_n_8\ : STD_LOGIC;
  signal \icmp_ln37_reg_75[0]_i_7_n_8\ : STD_LOGIC;
  signal \icmp_ln37_reg_75[0]_i_8_n_8\ : STD_LOGIC;
  signal \icmp_ln37_reg_75[0]_i_9_n_8\ : STD_LOGIC;
  signal \icmp_ln37_reg_75_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \icmp_ln37_reg_75_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \icmp_ln37_reg_75_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal val_V_reg_70 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_icmp_ln37_reg_75_reg[0]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1__4\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1__4\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_1__1\ : label is "soft_lutpair26";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute SOFT_HLUTNM of \icmp_ln37_reg_75[0]_i_1\ : label is "soft_lutpair25";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \icmp_ln37_reg_75_reg[0]_i_2\ : label is 11;
  attribute SOFT_HLUTNM of \internal_empty_n_i_3__1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \internal_full_n_i_3__0\ : label is "soft_lutpair25";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  grp_BitDecider_fu_292_s_din <= \^grp_bitdecider_fu_292_s_din\;
\ap_CS_fsm[1]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^q\(2),
      I1 => bit2byt_1_full_n,
      I2 => dow2bit_1_empty_n,
      I3 => \^q\(0),
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[2]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(0),
      I1 => dow2bit_1_empty_n,
      I2 => \^q\(1),
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^q\(1),
      I1 => dow2bit_1_empty_n,
      I2 => bit2byt_1_full_n,
      I3 => \^q\(2),
      O => ap_NS_fsm(3)
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => \^q\(0),
      S => reset
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => \^q\(1),
      R => reset
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => \^q\(2),
      R => reset
    );
\icmp_ln37_reg_75[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => icmp_ln37_fu_65_p2,
      I1 => dow2bit_1_empty_n,
      I2 => \^q\(1),
      I3 => \^grp_bitdecider_fu_292_s_din\,
      O => \icmp_ln37_reg_75[0]_i_1_n_8\
    );
\icmp_ln37_reg_75[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => val_V_reg_70(0),
      I1 => D(0),
      I2 => val_V_reg_70(1),
      I3 => D(1),
      O => \icmp_ln37_reg_75[0]_i_10_n_8\
    );
\icmp_ln37_reg_75[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => val_V_reg_70(6),
      I1 => D(6),
      I2 => D(7),
      I3 => val_V_reg_70(7),
      O => \icmp_ln37_reg_75[0]_i_3_n_8\
    );
\icmp_ln37_reg_75[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => val_V_reg_70(4),
      I1 => D(4),
      I2 => D(5),
      I3 => val_V_reg_70(5),
      O => \icmp_ln37_reg_75[0]_i_4_n_8\
    );
\icmp_ln37_reg_75[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => val_V_reg_70(2),
      I1 => D(2),
      I2 => D(3),
      I3 => val_V_reg_70(3),
      O => \icmp_ln37_reg_75[0]_i_5_n_8\
    );
\icmp_ln37_reg_75[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => val_V_reg_70(0),
      I1 => D(0),
      I2 => D(1),
      I3 => val_V_reg_70(1),
      O => \icmp_ln37_reg_75[0]_i_6_n_8\
    );
\icmp_ln37_reg_75[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => val_V_reg_70(6),
      I1 => D(6),
      I2 => val_V_reg_70(7),
      I3 => D(7),
      O => \icmp_ln37_reg_75[0]_i_7_n_8\
    );
\icmp_ln37_reg_75[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => val_V_reg_70(4),
      I1 => D(4),
      I2 => val_V_reg_70(5),
      I3 => D(5),
      O => \icmp_ln37_reg_75[0]_i_8_n_8\
    );
\icmp_ln37_reg_75[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => val_V_reg_70(2),
      I1 => D(2),
      I2 => val_V_reg_70(3),
      I3 => D(3),
      O => \icmp_ln37_reg_75[0]_i_9_n_8\
    );
\icmp_ln37_reg_75_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \icmp_ln37_reg_75[0]_i_1_n_8\,
      Q => \^grp_bitdecider_fu_292_s_din\,
      R => '0'
    );
\icmp_ln37_reg_75_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => icmp_ln37_fu_65_p2,
      CO(2) => \icmp_ln37_reg_75_reg[0]_i_2_n_9\,
      CO(1) => \icmp_ln37_reg_75_reg[0]_i_2_n_10\,
      CO(0) => \icmp_ln37_reg_75_reg[0]_i_2_n_11\,
      CYINIT => '0',
      DI(3) => \icmp_ln37_reg_75[0]_i_3_n_8\,
      DI(2) => \icmp_ln37_reg_75[0]_i_4_n_8\,
      DI(1) => \icmp_ln37_reg_75[0]_i_5_n_8\,
      DI(0) => \icmp_ln37_reg_75[0]_i_6_n_8\,
      O(3 downto 0) => \NLW_icmp_ln37_reg_75_reg[0]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \icmp_ln37_reg_75[0]_i_7_n_8\,
      S(2) => \icmp_ln37_reg_75[0]_i_8_n_8\,
      S(1) => \icmp_ln37_reg_75[0]_i_9_n_8\,
      S(0) => \icmp_ln37_reg_75[0]_i_10_n_8\
    );
\internal_empty_n_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^q\(2),
      I1 => bit2byt_1_full_n,
      I2 => grp_BitsToBytes_fu_306_e_read,
      O => internal_empty_n3_out
    );
\internal_full_n_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => dow2bit_1_empty_n,
      O => \ap_CS_fsm_reg[1]_0\
    );
\val_V_reg_70_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => E(0),
      D => D(0),
      Q => val_V_reg_70(0),
      R => '0'
    );
\val_V_reg_70_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => E(0),
      D => D(1),
      Q => val_V_reg_70(1),
      R => '0'
    );
\val_V_reg_70_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => E(0),
      D => D(2),
      Q => val_V_reg_70(2),
      R => '0'
    );
\val_V_reg_70_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => E(0),
      D => D(3),
      Q => val_V_reg_70(3),
      R => '0'
    );
\val_V_reg_70_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => E(0),
      D => D(4),
      Q => val_V_reg_70(4),
      R => '0'
    );
\val_V_reg_70_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => E(0),
      D => D(5),
      Q => val_V_reg_70(5),
      R => '0'
    );
\val_V_reg_70_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => E(0),
      D => D(6),
      Q => val_V_reg_70(6),
      R => '0'
    );
\val_V_reg_70_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => E(0),
      D => D(7),
      Q => val_V_reg_70(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_BitsToBytes_do_gen is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[3]_0\ : out STD_LOGIC;
    \q_0_reg_93_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \in\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    bit2byt_1_full_n : in STD_LOGIC;
    bit2byt_1_empty_n : in STD_LOGIC;
    byt2crc_1_full_n : in STD_LOGIC;
    reset : in STD_LOGIC;
    clock : in STD_LOGIC;
    bit2byt_1_dout : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_BitsToBytes_do_gen : entity is "BitsToBytes_do_gen";
end bd_0_hls_inst_0_BitsToBytes_do_gen;

architecture STRUCTURE of bd_0_hls_inst_0_BitsToBytes_do_gen is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \^in\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal q_0_reg_93_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q_0_reg_93_reg[2]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal q_fu_110_p2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \v_assign_reg_81[7]_i_1_n_8\ : STD_LOGIC;
  signal \v_assign_reg_81[7]_i_2_n_8\ : STD_LOGIC;
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mOutPtr[4]_i_2__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \mOutPtr[5]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \q_0_reg_93[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \q_0_reg_93[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \q_0_reg_93[2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \q_0_reg_93[3]_i_2\ : label is "soft_lutpair28";
begin
  E(0) <= \^e\(0);
  \in\(7 downto 0) <= \^in\(7 downto 0);
  \q_0_reg_93_reg[2]_0\(0) <= \^q_0_reg_93_reg[2]_0\(0);
\ap_CS_fsm[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => q_0_reg_93_reg(2),
      I1 => q_0_reg_93_reg(3),
      I2 => q_0_reg_93_reg(0),
      I3 => q_0_reg_93_reg(1),
      I4 => ap_CS_fsm_state3,
      I5 => byt2crc_1_full_n,
      O => \^q_0_reg_93_reg[2]_0\(0)
    );
\ap_CS_fsm[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \^q_0_reg_93_reg[2]_0\(0),
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => '1',
      D => \^q_0_reg_93_reg[2]_0\(0),
      Q => ap_CS_fsm_state2,
      S => reset
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => reset
    );
\mOutPtr[4]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^e\(0),
      I1 => Q(0),
      I2 => bit2byt_1_full_n,
      O => \ap_CS_fsm_reg[3]_0\
    );
\mOutPtr[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^e\(0),
      I1 => Q(0),
      I2 => bit2byt_1_full_n,
      O => \ap_CS_fsm_reg[3]\(0)
    );
\q_0_reg_93[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => q_0_reg_93_reg(0),
      O => q_fu_110_p2(0)
    );
\q_0_reg_93[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => q_0_reg_93_reg(0),
      I1 => q_0_reg_93_reg(1),
      O => q_fu_110_p2(1)
    );
\q_0_reg_93[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => q_0_reg_93_reg(2),
      I1 => q_0_reg_93_reg(1),
      I2 => q_0_reg_93_reg(0),
      O => q_fu_110_p2(2)
    );
\q_0_reg_93[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFB000000000000"
    )
        port map (
      I0 => q_0_reg_93_reg(2),
      I1 => q_0_reg_93_reg(3),
      I2 => q_0_reg_93_reg(0),
      I3 => q_0_reg_93_reg(1),
      I4 => ap_CS_fsm_state3,
      I5 => bit2byt_1_empty_n,
      O => \^e\(0)
    );
\q_0_reg_93[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => q_0_reg_93_reg(3),
      I1 => q_0_reg_93_reg(0),
      I2 => q_0_reg_93_reg(1),
      I3 => q_0_reg_93_reg(2),
      O => q_fu_110_p2(3)
    );
\q_0_reg_93_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \^e\(0),
      D => q_fu_110_p2(0),
      Q => q_0_reg_93_reg(0),
      R => \v_assign_reg_81[7]_i_1_n_8\
    );
\q_0_reg_93_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \^e\(0),
      D => q_fu_110_p2(1),
      Q => q_0_reg_93_reg(1),
      R => \v_assign_reg_81[7]_i_1_n_8\
    );
\q_0_reg_93_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \^e\(0),
      D => q_fu_110_p2(2),
      Q => q_0_reg_93_reg(2),
      R => \v_assign_reg_81[7]_i_1_n_8\
    );
\q_0_reg_93_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \^e\(0),
      D => q_fu_110_p2(3),
      Q => q_0_reg_93_reg(3),
      R => \v_assign_reg_81[7]_i_1_n_8\
    );
\v_assign_reg_81[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \^e\(0),
      O => \v_assign_reg_81[7]_i_1_n_8\
    );
\v_assign_reg_81[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \^e\(0),
      O => \v_assign_reg_81[7]_i_2_n_8\
    );
\v_assign_reg_81_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_81[7]_i_2_n_8\,
      D => bit2byt_1_dout,
      Q => \^in\(0),
      R => \v_assign_reg_81[7]_i_1_n_8\
    );
\v_assign_reg_81_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_81[7]_i_2_n_8\,
      D => \^in\(0),
      Q => \^in\(1),
      R => \v_assign_reg_81[7]_i_1_n_8\
    );
\v_assign_reg_81_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_81[7]_i_2_n_8\,
      D => \^in\(1),
      Q => \^in\(2),
      R => \v_assign_reg_81[7]_i_1_n_8\
    );
\v_assign_reg_81_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_81[7]_i_2_n_8\,
      D => \^in\(2),
      Q => \^in\(3),
      R => \v_assign_reg_81[7]_i_1_n_8\
    );
\v_assign_reg_81_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_81[7]_i_2_n_8\,
      D => \^in\(3),
      Q => \^in\(4),
      R => \v_assign_reg_81[7]_i_1_n_8\
    );
\v_assign_reg_81_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_81[7]_i_2_n_8\,
      D => \^in\(4),
      Q => \^in\(5),
      R => \v_assign_reg_81[7]_i_1_n_8\
    );
\v_assign_reg_81_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_81[7]_i_2_n_8\,
      D => \^in\(5),
      Q => \^in\(6),
      R => \v_assign_reg_81[7]_i_1_n_8\
    );
\v_assign_reg_81_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_81[7]_i_2_n_8\,
      D => \^in\(6),
      Q => \^in\(7),
      R => \v_assign_reg_81[7]_i_1_n_8\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_CRCCheck_do_gen_ibkb_ram is
  port (
    \i3_0_reg_213_reg[4]\ : out STD_LOGIC;
    \i3_0_reg_213_reg[5]\ : out STD_LOGIC;
    \icmp_ln41_reg_658_reg[0]\ : out STD_LOGIC;
    \i3_0_reg_213_reg[6]\ : out STD_LOGIC;
    icmp_ln41_reg_6580 : out STD_LOGIC;
    \q0_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clock : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \q0[7]_i_5_0\ : in STD_LOGIC;
    crc2fra_1_full_n : in STD_LOGIC;
    \q0_reg[0]_0\ : in STD_LOGIC;
    icmp_ln68_reg_711 : in STD_LOGIC;
    \i_0_reg_168_reg[6]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \i_0_reg_168_reg[6]_0\ : in STD_LOGIC;
    byt2crc_1_empty_n : in STD_LOGIC;
    \q0_reg[0]_1\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    ap_enable_reg_pp1_iter0 : in STD_LOGIC;
    \q0_reg[0]_2\ : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_CRCCheck_do_gen_ibkb_ram : entity is "CRCCheck_do_gen_ibkb_ram";
end bd_0_hls_inst_0_CRCCheck_do_gen_ibkb_ram;

architecture STRUCTURE of bd_0_hls_inst_0_CRCCheck_do_gen_ibkb_ram is
  signal address0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ce0 : STD_LOGIC;
  signal \^i3_0_reg_213_reg[4]\ : STD_LOGIC;
  signal \^i3_0_reg_213_reg[5]\ : STD_LOGIC;
  signal \^i3_0_reg_213_reg[6]\ : STD_LOGIC;
  signal \^icmp_ln41_reg_6580\ : STD_LOGIC;
  signal \^icmp_ln41_reg_658_reg[0]\ : STD_LOGIC;
  signal \q0[0]_i_1_n_8\ : STD_LOGIC;
  signal \q0[0]_i_2_n_8\ : STD_LOGIC;
  signal \q0[1]_i_1_n_8\ : STD_LOGIC;
  signal \q0[1]_i_2_n_8\ : STD_LOGIC;
  signal \q0[2]_i_1_n_8\ : STD_LOGIC;
  signal \q0[2]_i_2_n_8\ : STD_LOGIC;
  signal \q0[3]_i_1_n_8\ : STD_LOGIC;
  signal \q0[3]_i_2_n_8\ : STD_LOGIC;
  signal \q0[4]_i_1_n_8\ : STD_LOGIC;
  signal \q0[4]_i_2_n_8\ : STD_LOGIC;
  signal \q0[5]_i_1_n_8\ : STD_LOGIC;
  signal \q0[5]_i_2_n_8\ : STD_LOGIC;
  signal \q0[6]_i_1_n_8\ : STD_LOGIC;
  signal \q0[6]_i_2_n_8\ : STD_LOGIC;
  signal \q0[7]_i_2_n_8\ : STD_LOGIC;
  signal \q0[7]_i_3_n_8\ : STD_LOGIC;
  signal \q0[7]_i_5_n_8\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__0_n_8\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__1_n_8\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__2_n_8\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__3_n_8\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__4_n_8\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__5_n_8\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__6_n_8\ : STD_LOGIC;
  signal ram_reg_0_15_0_0_n_8 : STD_LOGIC;
  signal \ram_reg_0_63_0_0__0_n_8\ : STD_LOGIC;
  signal \ram_reg_0_63_0_0__1_n_8\ : STD_LOGIC;
  signal \ram_reg_0_63_0_0__2_n_8\ : STD_LOGIC;
  signal \ram_reg_0_63_0_0__3_n_8\ : STD_LOGIC;
  signal \ram_reg_0_63_0_0__4_n_8\ : STD_LOGIC;
  signal \ram_reg_0_63_0_0__5_n_8\ : STD_LOGIC;
  signal \ram_reg_0_63_0_0__6_n_8\ : STD_LOGIC;
  signal ram_reg_0_63_0_0_i_1_n_8 : STD_LOGIC;
  signal ram_reg_0_63_0_0_n_8 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i_0_reg_168[6]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \q0[7]_i_3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \q0[7]_i_4\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \q0[7]_i_5\ : label is "soft_lutpair31";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg_0_15_0_0 : label is 544;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg_0_15_0_0 : label is "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of ram_reg_0_15_0_0 : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_0_0 : label is "RAM16X1S";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg_0_15_0_0 : label is 64;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg_0_15_0_0 : label is 67;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg_0_15_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg_0_15_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg_0_15_0_0 : label is 0;
  attribute RTL_RAM_BITS of \ram_reg_0_15_0_0__0\ : label is 544;
  attribute RTL_RAM_NAME of \ram_reg_0_15_0_0__0\ : label is "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram";
  attribute RTL_RAM_TYPE of \ram_reg_0_15_0_0__0\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__0\ : label is "RAM16X1S";
  attribute ram_addr_begin of \ram_reg_0_15_0_0__0\ : label is 64;
  attribute ram_addr_end of \ram_reg_0_15_0_0__0\ : label is 67;
  attribute ram_offset of \ram_reg_0_15_0_0__0\ : label is 0;
  attribute ram_slice_begin of \ram_reg_0_15_0_0__0\ : label is 1;
  attribute ram_slice_end of \ram_reg_0_15_0_0__0\ : label is 1;
  attribute RTL_RAM_BITS of \ram_reg_0_15_0_0__1\ : label is 544;
  attribute RTL_RAM_NAME of \ram_reg_0_15_0_0__1\ : label is "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram";
  attribute RTL_RAM_TYPE of \ram_reg_0_15_0_0__1\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__1\ : label is "RAM16X1S";
  attribute ram_addr_begin of \ram_reg_0_15_0_0__1\ : label is 64;
  attribute ram_addr_end of \ram_reg_0_15_0_0__1\ : label is 67;
  attribute ram_offset of \ram_reg_0_15_0_0__1\ : label is 0;
  attribute ram_slice_begin of \ram_reg_0_15_0_0__1\ : label is 2;
  attribute ram_slice_end of \ram_reg_0_15_0_0__1\ : label is 2;
  attribute RTL_RAM_BITS of \ram_reg_0_15_0_0__2\ : label is 544;
  attribute RTL_RAM_NAME of \ram_reg_0_15_0_0__2\ : label is "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram";
  attribute RTL_RAM_TYPE of \ram_reg_0_15_0_0__2\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__2\ : label is "RAM16X1S";
  attribute ram_addr_begin of \ram_reg_0_15_0_0__2\ : label is 64;
  attribute ram_addr_end of \ram_reg_0_15_0_0__2\ : label is 67;
  attribute ram_offset of \ram_reg_0_15_0_0__2\ : label is 0;
  attribute ram_slice_begin of \ram_reg_0_15_0_0__2\ : label is 3;
  attribute ram_slice_end of \ram_reg_0_15_0_0__2\ : label is 3;
  attribute RTL_RAM_BITS of \ram_reg_0_15_0_0__3\ : label is 544;
  attribute RTL_RAM_NAME of \ram_reg_0_15_0_0__3\ : label is "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram";
  attribute RTL_RAM_TYPE of \ram_reg_0_15_0_0__3\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__3\ : label is "RAM16X1S";
  attribute ram_addr_begin of \ram_reg_0_15_0_0__3\ : label is 64;
  attribute ram_addr_end of \ram_reg_0_15_0_0__3\ : label is 67;
  attribute ram_offset of \ram_reg_0_15_0_0__3\ : label is 0;
  attribute ram_slice_begin of \ram_reg_0_15_0_0__3\ : label is 4;
  attribute ram_slice_end of \ram_reg_0_15_0_0__3\ : label is 4;
  attribute RTL_RAM_BITS of \ram_reg_0_15_0_0__4\ : label is 544;
  attribute RTL_RAM_NAME of \ram_reg_0_15_0_0__4\ : label is "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram";
  attribute RTL_RAM_TYPE of \ram_reg_0_15_0_0__4\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__4\ : label is "RAM16X1S";
  attribute ram_addr_begin of \ram_reg_0_15_0_0__4\ : label is 64;
  attribute ram_addr_end of \ram_reg_0_15_0_0__4\ : label is 67;
  attribute ram_offset of \ram_reg_0_15_0_0__4\ : label is 0;
  attribute ram_slice_begin of \ram_reg_0_15_0_0__4\ : label is 5;
  attribute ram_slice_end of \ram_reg_0_15_0_0__4\ : label is 5;
  attribute RTL_RAM_BITS of \ram_reg_0_15_0_0__5\ : label is 544;
  attribute RTL_RAM_NAME of \ram_reg_0_15_0_0__5\ : label is "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram";
  attribute RTL_RAM_TYPE of \ram_reg_0_15_0_0__5\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__5\ : label is "RAM16X1S";
  attribute ram_addr_begin of \ram_reg_0_15_0_0__5\ : label is 64;
  attribute ram_addr_end of \ram_reg_0_15_0_0__5\ : label is 67;
  attribute ram_offset of \ram_reg_0_15_0_0__5\ : label is 0;
  attribute ram_slice_begin of \ram_reg_0_15_0_0__5\ : label is 6;
  attribute ram_slice_end of \ram_reg_0_15_0_0__5\ : label is 6;
  attribute RTL_RAM_BITS of \ram_reg_0_15_0_0__6\ : label is 544;
  attribute RTL_RAM_NAME of \ram_reg_0_15_0_0__6\ : label is "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram";
  attribute RTL_RAM_TYPE of \ram_reg_0_15_0_0__6\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__6\ : label is "RAM16X1S";
  attribute ram_addr_begin of \ram_reg_0_15_0_0__6\ : label is 64;
  attribute ram_addr_end of \ram_reg_0_15_0_0__6\ : label is 67;
  attribute ram_offset of \ram_reg_0_15_0_0__6\ : label is 0;
  attribute ram_slice_begin of \ram_reg_0_15_0_0__6\ : label is 7;
  attribute ram_slice_end of \ram_reg_0_15_0_0__6\ : label is 7;
  attribute RTL_RAM_BITS of ram_reg_0_63_0_0 : label is 544;
  attribute RTL_RAM_NAME of ram_reg_0_63_0_0 : label is "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram";
  attribute RTL_RAM_TYPE of ram_reg_0_63_0_0 : label is "RAM_SP";
  attribute ram_addr_begin of ram_reg_0_63_0_0 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_0_0 : label is 63;
  attribute ram_offset of ram_reg_0_63_0_0 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_0_0 : label is 0;
  attribute ram_slice_end of ram_reg_0_63_0_0 : label is 0;
  attribute RTL_RAM_BITS of \ram_reg_0_63_0_0__0\ : label is 544;
  attribute RTL_RAM_NAME of \ram_reg_0_63_0_0__0\ : label is "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram";
  attribute RTL_RAM_TYPE of \ram_reg_0_63_0_0__0\ : label is "RAM_SP";
  attribute ram_addr_begin of \ram_reg_0_63_0_0__0\ : label is 0;
  attribute ram_addr_end of \ram_reg_0_63_0_0__0\ : label is 63;
  attribute ram_offset of \ram_reg_0_63_0_0__0\ : label is 0;
  attribute ram_slice_begin of \ram_reg_0_63_0_0__0\ : label is 1;
  attribute ram_slice_end of \ram_reg_0_63_0_0__0\ : label is 1;
  attribute RTL_RAM_BITS of \ram_reg_0_63_0_0__1\ : label is 544;
  attribute RTL_RAM_NAME of \ram_reg_0_63_0_0__1\ : label is "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram";
  attribute RTL_RAM_TYPE of \ram_reg_0_63_0_0__1\ : label is "RAM_SP";
  attribute ram_addr_begin of \ram_reg_0_63_0_0__1\ : label is 0;
  attribute ram_addr_end of \ram_reg_0_63_0_0__1\ : label is 63;
  attribute ram_offset of \ram_reg_0_63_0_0__1\ : label is 0;
  attribute ram_slice_begin of \ram_reg_0_63_0_0__1\ : label is 2;
  attribute ram_slice_end of \ram_reg_0_63_0_0__1\ : label is 2;
  attribute RTL_RAM_BITS of \ram_reg_0_63_0_0__2\ : label is 544;
  attribute RTL_RAM_NAME of \ram_reg_0_63_0_0__2\ : label is "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram";
  attribute RTL_RAM_TYPE of \ram_reg_0_63_0_0__2\ : label is "RAM_SP";
  attribute ram_addr_begin of \ram_reg_0_63_0_0__2\ : label is 0;
  attribute ram_addr_end of \ram_reg_0_63_0_0__2\ : label is 63;
  attribute ram_offset of \ram_reg_0_63_0_0__2\ : label is 0;
  attribute ram_slice_begin of \ram_reg_0_63_0_0__2\ : label is 3;
  attribute ram_slice_end of \ram_reg_0_63_0_0__2\ : label is 3;
  attribute RTL_RAM_BITS of \ram_reg_0_63_0_0__3\ : label is 544;
  attribute RTL_RAM_NAME of \ram_reg_0_63_0_0__3\ : label is "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram";
  attribute RTL_RAM_TYPE of \ram_reg_0_63_0_0__3\ : label is "RAM_SP";
  attribute ram_addr_begin of \ram_reg_0_63_0_0__3\ : label is 0;
  attribute ram_addr_end of \ram_reg_0_63_0_0__3\ : label is 63;
  attribute ram_offset of \ram_reg_0_63_0_0__3\ : label is 0;
  attribute ram_slice_begin of \ram_reg_0_63_0_0__3\ : label is 4;
  attribute ram_slice_end of \ram_reg_0_63_0_0__3\ : label is 4;
  attribute RTL_RAM_BITS of \ram_reg_0_63_0_0__4\ : label is 544;
  attribute RTL_RAM_NAME of \ram_reg_0_63_0_0__4\ : label is "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram";
  attribute RTL_RAM_TYPE of \ram_reg_0_63_0_0__4\ : label is "RAM_SP";
  attribute ram_addr_begin of \ram_reg_0_63_0_0__4\ : label is 0;
  attribute ram_addr_end of \ram_reg_0_63_0_0__4\ : label is 63;
  attribute ram_offset of \ram_reg_0_63_0_0__4\ : label is 0;
  attribute ram_slice_begin of \ram_reg_0_63_0_0__4\ : label is 5;
  attribute ram_slice_end of \ram_reg_0_63_0_0__4\ : label is 5;
  attribute RTL_RAM_BITS of \ram_reg_0_63_0_0__5\ : label is 544;
  attribute RTL_RAM_NAME of \ram_reg_0_63_0_0__5\ : label is "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram";
  attribute RTL_RAM_TYPE of \ram_reg_0_63_0_0__5\ : label is "RAM_SP";
  attribute ram_addr_begin of \ram_reg_0_63_0_0__5\ : label is 0;
  attribute ram_addr_end of \ram_reg_0_63_0_0__5\ : label is 63;
  attribute ram_offset of \ram_reg_0_63_0_0__5\ : label is 0;
  attribute ram_slice_begin of \ram_reg_0_63_0_0__5\ : label is 6;
  attribute ram_slice_end of \ram_reg_0_63_0_0__5\ : label is 6;
  attribute RTL_RAM_BITS of \ram_reg_0_63_0_0__6\ : label is 544;
  attribute RTL_RAM_NAME of \ram_reg_0_63_0_0__6\ : label is "grp_CRCCheck_fu_320/grp_CRCCheck_do_gen_fu_56/ibuffer_V_U/CRCCheck_do_gen_ibkb_ram_U/ram";
  attribute RTL_RAM_TYPE of \ram_reg_0_63_0_0__6\ : label is "RAM_SP";
  attribute ram_addr_begin of \ram_reg_0_63_0_0__6\ : label is 0;
  attribute ram_addr_end of \ram_reg_0_63_0_0__6\ : label is 63;
  attribute ram_offset of \ram_reg_0_63_0_0__6\ : label is 0;
  attribute ram_slice_begin of \ram_reg_0_63_0_0__6\ : label is 7;
  attribute ram_slice_end of \ram_reg_0_63_0_0__6\ : label is 7;
begin
  \i3_0_reg_213_reg[4]\ <= \^i3_0_reg_213_reg[4]\;
  \i3_0_reg_213_reg[5]\ <= \^i3_0_reg_213_reg[5]\;
  \i3_0_reg_213_reg[6]\ <= \^i3_0_reg_213_reg[6]\;
  icmp_ln41_reg_6580 <= \^icmp_ln41_reg_6580\;
  \icmp_ln41_reg_658_reg[0]\ <= \^icmp_ln41_reg_658_reg[0]\;
\i_0_reg_168[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \i_0_reg_168_reg[6]_0\,
      I1 => \i_0_reg_168_reg[6]\,
      I2 => Q(0),
      I3 => byt2crc_1_empty_n,
      O => \^icmp_ln41_reg_658_reg[0]\
    );
\q0[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => \out\(0),
      I1 => \^icmp_ln41_reg_658_reg[0]\,
      I2 => \q0[0]_i_2_n_8\,
      I3 => \^i3_0_reg_213_reg[5]\,
      I4 => \^i3_0_reg_213_reg[6]\,
      I5 => ram_reg_0_63_0_0_n_8,
      O => \q0[0]_i_1_n_8\
    );
\q0[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0222A222"
    )
        port map (
      I0 => ram_reg_0_15_0_0_n_8,
      I1 => \q0_reg[0]_2\(4),
      I2 => ap_enable_reg_pp1_iter0,
      I3 => Q(1),
      I4 => \q0_reg[0]_1\(4),
      O => \q0[0]_i_2_n_8\
    );
\q0[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => \out\(1),
      I1 => \^icmp_ln41_reg_658_reg[0]\,
      I2 => \q0[1]_i_2_n_8\,
      I3 => \^i3_0_reg_213_reg[5]\,
      I4 => \^i3_0_reg_213_reg[6]\,
      I5 => \ram_reg_0_63_0_0__0_n_8\,
      O => \q0[1]_i_1_n_8\
    );
\q0[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0222A222"
    )
        port map (
      I0 => \ram_reg_0_15_0_0__0_n_8\,
      I1 => \q0_reg[0]_2\(4),
      I2 => ap_enable_reg_pp1_iter0,
      I3 => Q(1),
      I4 => \q0_reg[0]_1\(4),
      O => \q0[1]_i_2_n_8\
    );
\q0[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => \out\(2),
      I1 => \^icmp_ln41_reg_658_reg[0]\,
      I2 => \q0[2]_i_2_n_8\,
      I3 => \^i3_0_reg_213_reg[5]\,
      I4 => \^i3_0_reg_213_reg[6]\,
      I5 => \ram_reg_0_63_0_0__1_n_8\,
      O => \q0[2]_i_1_n_8\
    );
\q0[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0222A222"
    )
        port map (
      I0 => \ram_reg_0_15_0_0__1_n_8\,
      I1 => \q0_reg[0]_2\(4),
      I2 => ap_enable_reg_pp1_iter0,
      I3 => Q(1),
      I4 => \q0_reg[0]_1\(4),
      O => \q0[2]_i_2_n_8\
    );
\q0[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => \out\(3),
      I1 => \^icmp_ln41_reg_658_reg[0]\,
      I2 => \q0[3]_i_2_n_8\,
      I3 => \^i3_0_reg_213_reg[5]\,
      I4 => \^i3_0_reg_213_reg[6]\,
      I5 => \ram_reg_0_63_0_0__2_n_8\,
      O => \q0[3]_i_1_n_8\
    );
\q0[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0222A222"
    )
        port map (
      I0 => \ram_reg_0_15_0_0__2_n_8\,
      I1 => \q0_reg[0]_2\(4),
      I2 => ap_enable_reg_pp1_iter0,
      I3 => Q(1),
      I4 => \q0_reg[0]_1\(4),
      O => \q0[3]_i_2_n_8\
    );
\q0[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => \out\(4),
      I1 => \^icmp_ln41_reg_658_reg[0]\,
      I2 => \q0[4]_i_2_n_8\,
      I3 => \^i3_0_reg_213_reg[5]\,
      I4 => \^i3_0_reg_213_reg[6]\,
      I5 => \ram_reg_0_63_0_0__3_n_8\,
      O => \q0[4]_i_1_n_8\
    );
\q0[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0222A222"
    )
        port map (
      I0 => \ram_reg_0_15_0_0__3_n_8\,
      I1 => \q0_reg[0]_2\(4),
      I2 => ap_enable_reg_pp1_iter0,
      I3 => Q(1),
      I4 => \q0_reg[0]_1\(4),
      O => \q0[4]_i_2_n_8\
    );
\q0[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => \out\(5),
      I1 => \^icmp_ln41_reg_658_reg[0]\,
      I2 => \q0[5]_i_2_n_8\,
      I3 => \^i3_0_reg_213_reg[5]\,
      I4 => \^i3_0_reg_213_reg[6]\,
      I5 => \ram_reg_0_63_0_0__4_n_8\,
      O => \q0[5]_i_1_n_8\
    );
\q0[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0222A222"
    )
        port map (
      I0 => \ram_reg_0_15_0_0__4_n_8\,
      I1 => \q0_reg[0]_2\(4),
      I2 => ap_enable_reg_pp1_iter0,
      I3 => Q(1),
      I4 => \q0_reg[0]_1\(4),
      O => \q0[5]_i_2_n_8\
    );
\q0[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => \out\(6),
      I1 => \^icmp_ln41_reg_658_reg[0]\,
      I2 => \q0[6]_i_2_n_8\,
      I3 => \^i3_0_reg_213_reg[5]\,
      I4 => \^i3_0_reg_213_reg[6]\,
      I5 => \ram_reg_0_63_0_0__5_n_8\,
      O => \q0[6]_i_1_n_8\
    );
\q0[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0222A222"
    )
        port map (
      I0 => \ram_reg_0_15_0_0__5_n_8\,
      I1 => \q0_reg[0]_2\(4),
      I2 => ap_enable_reg_pp1_iter0,
      I3 => Q(1),
      I4 => \q0_reg[0]_1\(4),
      O => \q0[6]_i_2_n_8\
    );
\q0[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFB00FB00FB00"
    )
        port map (
      I0 => crc2fra_1_full_n,
      I1 => \q0_reg[0]_0\,
      I2 => icmp_ln68_reg_711,
      I3 => \q0[7]_i_3_n_8\,
      I4 => \i_0_reg_168_reg[6]\,
      I5 => \^icmp_ln41_reg_6580\,
      O => ce0
    );
\q0[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => \out\(7),
      I1 => \^icmp_ln41_reg_658_reg[0]\,
      I2 => \q0[7]_i_5_n_8\,
      I3 => \^i3_0_reg_213_reg[5]\,
      I4 => \^i3_0_reg_213_reg[6]\,
      I5 => \ram_reg_0_63_0_0__6_n_8\,
      O => \q0[7]_i_2_n_8\
    );
\q0[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => ap_enable_reg_pp1_iter0,
      O => \q0[7]_i_3_n_8\
    );
\q0[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => Q(0),
      I1 => \i_0_reg_168_reg[6]_0\,
      I2 => \i_0_reg_168_reg[6]\,
      I3 => byt2crc_1_empty_n,
      O => \^icmp_ln41_reg_6580\
    );
\q0[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0222A222"
    )
        port map (
      I0 => \ram_reg_0_15_0_0__6_n_8\,
      I1 => \q0_reg[0]_2\(4),
      I2 => ap_enable_reg_pp1_iter0,
      I3 => Q(1),
      I4 => \q0_reg[0]_1\(4),
      O => \q0[7]_i_5_n_8\
    );
\q0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ce0,
      D => \q0[0]_i_1_n_8\,
      Q => \q0_reg[7]_0\(0),
      R => '0'
    );
\q0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ce0,
      D => \q0[1]_i_1_n_8\,
      Q => \q0_reg[7]_0\(1),
      R => '0'
    );
\q0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ce0,
      D => \q0[2]_i_1_n_8\,
      Q => \q0_reg[7]_0\(2),
      R => '0'
    );
\q0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ce0,
      D => \q0[3]_i_1_n_8\,
      Q => \q0_reg[7]_0\(3),
      R => '0'
    );
\q0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ce0,
      D => \q0[4]_i_1_n_8\,
      Q => \q0_reg[7]_0\(4),
      R => '0'
    );
\q0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ce0,
      D => \q0[5]_i_1_n_8\,
      Q => \q0_reg[7]_0\(5),
      R => '0'
    );
\q0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ce0,
      D => \q0[6]_i_1_n_8\,
      Q => \q0_reg[7]_0\(6),
      R => '0'
    );
\q0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ce0,
      D => \q0[7]_i_2_n_8\,
      Q => \q0_reg[7]_0\(7),
      R => '0'
    );
ram_reg_0_15_0_0: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => \out\(0),
      O => ram_reg_0_15_0_0_n_8,
      WCLK => clock,
      WE => \q0[7]_i_5_0\
    );
\ram_reg_0_15_0_0__0\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => \out\(1),
      O => \ram_reg_0_15_0_0__0_n_8\,
      WCLK => clock,
      WE => \q0[7]_i_5_0\
    );
\ram_reg_0_15_0_0__1\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => \out\(2),
      O => \ram_reg_0_15_0_0__1_n_8\,
      WCLK => clock,
      WE => \q0[7]_i_5_0\
    );
\ram_reg_0_15_0_0__2\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => \out\(3),
      O => \ram_reg_0_15_0_0__2_n_8\,
      WCLK => clock,
      WE => \q0[7]_i_5_0\
    );
\ram_reg_0_15_0_0__3\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => \out\(4),
      O => \ram_reg_0_15_0_0__3_n_8\,
      WCLK => clock,
      WE => \q0[7]_i_5_0\
    );
\ram_reg_0_15_0_0__4\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => \out\(5),
      O => \ram_reg_0_15_0_0__4_n_8\,
      WCLK => clock,
      WE => \q0[7]_i_5_0\
    );
\ram_reg_0_15_0_0__5\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => \out\(6),
      O => \ram_reg_0_15_0_0__5_n_8\,
      WCLK => clock,
      WE => \q0[7]_i_5_0\
    );
\ram_reg_0_15_0_0__6\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => \out\(7),
      O => \ram_reg_0_15_0_0__6_n_8\,
      WCLK => clock,
      WE => \q0[7]_i_5_0\
    );
ram_reg_0_15_0_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \q0_reg[0]_1\(6),
      I1 => Q(1),
      I2 => ap_enable_reg_pp1_iter0,
      I3 => \q0_reg[0]_2\(6),
      O => \^i3_0_reg_213_reg[6]\
    );
ram_reg_0_63_0_0: unisim.vcomponents.RAM64X1S
     port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => \^i3_0_reg_213_reg[4]\,
      A5 => \^i3_0_reg_213_reg[5]\,
      D => \out\(0),
      O => ram_reg_0_63_0_0_n_8,
      WCLK => clock,
      WE => ram_reg_0_63_0_0_i_1_n_8
    );
\ram_reg_0_63_0_0__0\: unisim.vcomponents.RAM64X1S
     port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => \^i3_0_reg_213_reg[4]\,
      A5 => \^i3_0_reg_213_reg[5]\,
      D => \out\(1),
      O => \ram_reg_0_63_0_0__0_n_8\,
      WCLK => clock,
      WE => ram_reg_0_63_0_0_i_1_n_8
    );
\ram_reg_0_63_0_0__1\: unisim.vcomponents.RAM64X1S
     port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => \^i3_0_reg_213_reg[4]\,
      A5 => \^i3_0_reg_213_reg[5]\,
      D => \out\(2),
      O => \ram_reg_0_63_0_0__1_n_8\,
      WCLK => clock,
      WE => ram_reg_0_63_0_0_i_1_n_8
    );
\ram_reg_0_63_0_0__2\: unisim.vcomponents.RAM64X1S
     port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => \^i3_0_reg_213_reg[4]\,
      A5 => \^i3_0_reg_213_reg[5]\,
      D => \out\(3),
      O => \ram_reg_0_63_0_0__2_n_8\,
      WCLK => clock,
      WE => ram_reg_0_63_0_0_i_1_n_8
    );
\ram_reg_0_63_0_0__3\: unisim.vcomponents.RAM64X1S
     port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => \^i3_0_reg_213_reg[4]\,
      A5 => \^i3_0_reg_213_reg[5]\,
      D => \out\(4),
      O => \ram_reg_0_63_0_0__3_n_8\,
      WCLK => clock,
      WE => ram_reg_0_63_0_0_i_1_n_8
    );
\ram_reg_0_63_0_0__4\: unisim.vcomponents.RAM64X1S
     port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => \^i3_0_reg_213_reg[4]\,
      A5 => \^i3_0_reg_213_reg[5]\,
      D => \out\(5),
      O => \ram_reg_0_63_0_0__4_n_8\,
      WCLK => clock,
      WE => ram_reg_0_63_0_0_i_1_n_8
    );
\ram_reg_0_63_0_0__5\: unisim.vcomponents.RAM64X1S
     port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => \^i3_0_reg_213_reg[4]\,
      A5 => \^i3_0_reg_213_reg[5]\,
      D => \out\(6),
      O => \ram_reg_0_63_0_0__5_n_8\,
      WCLK => clock,
      WE => ram_reg_0_63_0_0_i_1_n_8
    );
\ram_reg_0_63_0_0__6\: unisim.vcomponents.RAM64X1S
     port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => \^i3_0_reg_213_reg[4]\,
      A5 => \^i3_0_reg_213_reg[5]\,
      D => \out\(7),
      O => \ram_reg_0_63_0_0__6_n_8\,
      WCLK => clock,
      WE => ram_reg_0_63_0_0_i_1_n_8
    );
ram_reg_0_63_0_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0222A222"
    )
        port map (
      I0 => \^icmp_ln41_reg_658_reg[0]\,
      I1 => \q0_reg[0]_2\(6),
      I2 => ap_enable_reg_pp1_iter0,
      I3 => Q(1),
      I4 => \q0_reg[0]_1\(6),
      O => ram_reg_0_63_0_0_i_1_n_8
    );
ram_reg_0_63_0_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \q0_reg[0]_1\(0),
      I1 => Q(1),
      I2 => ap_enable_reg_pp1_iter0,
      I3 => \q0_reg[0]_2\(0),
      O => address0(0)
    );
ram_reg_0_63_0_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \q0_reg[0]_1\(1),
      I1 => Q(1),
      I2 => ap_enable_reg_pp1_iter0,
      I3 => \q0_reg[0]_2\(1),
      O => address0(1)
    );
ram_reg_0_63_0_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \q0_reg[0]_1\(2),
      I1 => Q(1),
      I2 => ap_enable_reg_pp1_iter0,
      I3 => \q0_reg[0]_2\(2),
      O => address0(2)
    );
ram_reg_0_63_0_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \q0_reg[0]_1\(3),
      I1 => Q(1),
      I2 => ap_enable_reg_pp1_iter0,
      I3 => \q0_reg[0]_2\(3),
      O => address0(3)
    );
ram_reg_0_63_0_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \q0_reg[0]_1\(4),
      I1 => Q(1),
      I2 => ap_enable_reg_pp1_iter0,
      I3 => \q0_reg[0]_2\(4),
      O => \^i3_0_reg_213_reg[4]\
    );
ram_reg_0_63_0_0_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \q0_reg[0]_1\(5),
      I1 => Q(1),
      I2 => ap_enable_reg_pp1_iter0,
      I3 => \q0_reg[0]_2\(5),
      O => \^i3_0_reg_213_reg[5]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_DownSampling_do_gen is
  port (
    \ap_CS_fsm_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \ap_CS_fsm_reg[1]_1\ : out STD_LOGIC;
    \trunc_ln_reg_97_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    det2dow_1_empty_n : in STD_LOGIC;
    ce : in STD_LOGIC;
    dow2bit_1_full_n : in STD_LOGIC;
    reset : in STD_LOGIC;
    clock : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    e_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \trunc_ln_reg_97_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_DownSampling_do_gen : entity is "DownSampling_do_gen";
end bd_0_hls_inst_0_DownSampling_do_gen;

architecture STRUCTURE of bd_0_hls_inst_0_DownSampling_do_gen is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \trunc_ln_reg_97[2]_i_2_n_8\ : STD_LOGIC;
  signal \trunc_ln_reg_97[2]_i_3_n_8\ : STD_LOGIC;
  signal \trunc_ln_reg_97[2]_i_4_n_8\ : STD_LOGIC;
  signal \trunc_ln_reg_97[2]_i_5_n_8\ : STD_LOGIC;
  signal \trunc_ln_reg_97[6]_i_2_n_8\ : STD_LOGIC;
  signal \trunc_ln_reg_97[6]_i_3_n_8\ : STD_LOGIC;
  signal \trunc_ln_reg_97[6]_i_4_n_8\ : STD_LOGIC;
  signal \trunc_ln_reg_97[6]_i_5_n_8\ : STD_LOGIC;
  signal \trunc_ln_reg_97_reg[2]_i_1_n_10\ : STD_LOGIC;
  signal \trunc_ln_reg_97_reg[2]_i_1_n_11\ : STD_LOGIC;
  signal \trunc_ln_reg_97_reg[2]_i_1_n_8\ : STD_LOGIC;
  signal \trunc_ln_reg_97_reg[2]_i_1_n_9\ : STD_LOGIC;
  signal \trunc_ln_reg_97_reg[6]_i_1_n_10\ : STD_LOGIC;
  signal \trunc_ln_reg_97_reg[6]_i_1_n_11\ : STD_LOGIC;
  signal \trunc_ln_reg_97_reg[6]_i_1_n_8\ : STD_LOGIC;
  signal \trunc_ln_reg_97_reg[6]_i_1_n_9\ : STD_LOGIC;
  signal val_V_reg_92 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_trunc_ln_reg_97_reg[2]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_trunc_ln_reg_97_reg[7]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_trunc_ln_reg_97_reg[7]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1__3\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_1__0\ : label is "soft_lutpair107";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute SOFT_HLUTNM of \mOutPtr[5]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \mOutPtr[5]_i_5\ : label is "soft_lutpair106";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
\ap_CS_fsm[1]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^q\(2),
      I1 => dow2bit_1_full_n,
      I2 => det2dow_1_empty_n,
      I3 => \^q\(0),
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(0),
      I1 => det2dow_1_empty_n,
      I2 => \^q\(1),
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^q\(1),
      I1 => det2dow_1_empty_n,
      I2 => dow2bit_1_full_n,
      I3 => \^q\(2),
      O => ap_NS_fsm(3)
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => \^q\(0),
      S => reset
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => \^q\(1),
      R => reset
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => \^q\(2),
      R => reset
    );
\mOutPtr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => det2dow_1_empty_n,
      I3 => ce,
      O => \ap_CS_fsm_reg[1]_0\(0)
    );
\mOutPtr[5]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => det2dow_1_empty_n,
      O => \ap_CS_fsm_reg[1]_1\
    );
\trunc_ln_reg_97[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => e_dout(3),
      I1 => val_V_reg_92(3),
      O => \trunc_ln_reg_97[2]_i_2_n_8\
    );
\trunc_ln_reg_97[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => e_dout(2),
      I1 => val_V_reg_92(2),
      O => \trunc_ln_reg_97[2]_i_3_n_8\
    );
\trunc_ln_reg_97[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => e_dout(1),
      I1 => val_V_reg_92(1),
      O => \trunc_ln_reg_97[2]_i_4_n_8\
    );
\trunc_ln_reg_97[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => e_dout(0),
      I1 => val_V_reg_92(0),
      O => \trunc_ln_reg_97[2]_i_5_n_8\
    );
\trunc_ln_reg_97[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => e_dout(7),
      I1 => val_V_reg_92(7),
      O => \trunc_ln_reg_97[6]_i_2_n_8\
    );
\trunc_ln_reg_97[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => e_dout(6),
      I1 => val_V_reg_92(6),
      O => \trunc_ln_reg_97[6]_i_3_n_8\
    );
\trunc_ln_reg_97[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => e_dout(5),
      I1 => val_V_reg_92(5),
      O => \trunc_ln_reg_97[6]_i_4_n_8\
    );
\trunc_ln_reg_97[6]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => e_dout(4),
      I1 => val_V_reg_92(4),
      O => \trunc_ln_reg_97[6]_i_5_n_8\
    );
\trunc_ln_reg_97_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \trunc_ln_reg_97_reg[0]_0\(0),
      D => p_0_in(0),
      Q => \trunc_ln_reg_97_reg[7]_0\(0),
      R => '0'
    );
\trunc_ln_reg_97_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \trunc_ln_reg_97_reg[0]_0\(0),
      D => p_0_in(1),
      Q => \trunc_ln_reg_97_reg[7]_0\(1),
      R => '0'
    );
\trunc_ln_reg_97_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \trunc_ln_reg_97_reg[0]_0\(0),
      D => p_0_in(2),
      Q => \trunc_ln_reg_97_reg[7]_0\(2),
      R => '0'
    );
\trunc_ln_reg_97_reg[2]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \trunc_ln_reg_97_reg[2]_i_1_n_8\,
      CO(2) => \trunc_ln_reg_97_reg[2]_i_1_n_9\,
      CO(1) => \trunc_ln_reg_97_reg[2]_i_1_n_10\,
      CO(0) => \trunc_ln_reg_97_reg[2]_i_1_n_11\,
      CYINIT => '0',
      DI(3 downto 0) => e_dout(3 downto 0),
      O(3 downto 1) => p_0_in(2 downto 0),
      O(0) => \NLW_trunc_ln_reg_97_reg[2]_i_1_O_UNCONNECTED\(0),
      S(3) => \trunc_ln_reg_97[2]_i_2_n_8\,
      S(2) => \trunc_ln_reg_97[2]_i_3_n_8\,
      S(1) => \trunc_ln_reg_97[2]_i_4_n_8\,
      S(0) => \trunc_ln_reg_97[2]_i_5_n_8\
    );
\trunc_ln_reg_97_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \trunc_ln_reg_97_reg[0]_0\(0),
      D => p_0_in(3),
      Q => \trunc_ln_reg_97_reg[7]_0\(3),
      R => '0'
    );
\trunc_ln_reg_97_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \trunc_ln_reg_97_reg[0]_0\(0),
      D => p_0_in(4),
      Q => \trunc_ln_reg_97_reg[7]_0\(4),
      R => '0'
    );
\trunc_ln_reg_97_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \trunc_ln_reg_97_reg[0]_0\(0),
      D => p_0_in(5),
      Q => \trunc_ln_reg_97_reg[7]_0\(5),
      R => '0'
    );
\trunc_ln_reg_97_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \trunc_ln_reg_97_reg[0]_0\(0),
      D => p_0_in(6),
      Q => \trunc_ln_reg_97_reg[7]_0\(6),
      R => '0'
    );
\trunc_ln_reg_97_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \trunc_ln_reg_97_reg[2]_i_1_n_8\,
      CO(3) => \trunc_ln_reg_97_reg[6]_i_1_n_8\,
      CO(2) => \trunc_ln_reg_97_reg[6]_i_1_n_9\,
      CO(1) => \trunc_ln_reg_97_reg[6]_i_1_n_10\,
      CO(0) => \trunc_ln_reg_97_reg[6]_i_1_n_11\,
      CYINIT => '0',
      DI(3 downto 0) => e_dout(7 downto 4),
      O(3 downto 0) => p_0_in(6 downto 3),
      S(3) => \trunc_ln_reg_97[6]_i_2_n_8\,
      S(2) => \trunc_ln_reg_97[6]_i_3_n_8\,
      S(1) => \trunc_ln_reg_97[6]_i_4_n_8\,
      S(0) => \trunc_ln_reg_97[6]_i_5_n_8\
    );
\trunc_ln_reg_97_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \trunc_ln_reg_97_reg[0]_0\(0),
      D => p_0_in(7),
      Q => \trunc_ln_reg_97_reg[7]_0\(7),
      R => '0'
    );
\trunc_ln_reg_97_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \trunc_ln_reg_97_reg[6]_i_1_n_8\,
      CO(3 downto 1) => \NLW_trunc_ln_reg_97_reg[7]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => p_0_in(7),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_trunc_ln_reg_97_reg[7]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\val_V_reg_92_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => E(0),
      D => e_dout(0),
      Q => val_V_reg_92(0),
      R => '0'
    );
\val_V_reg_92_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => E(0),
      D => e_dout(1),
      Q => val_V_reg_92(1),
      R => '0'
    );
\val_V_reg_92_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => E(0),
      D => e_dout(2),
      Q => val_V_reg_92(2),
      R => '0'
    );
\val_V_reg_92_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => E(0),
      D => e_dout(3),
      Q => val_V_reg_92(3),
      R => '0'
    );
\val_V_reg_92_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => E(0),
      D => e_dout(4),
      Q => val_V_reg_92(4),
      R => '0'
    );
\val_V_reg_92_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => E(0),
      D => e_dout(5),
      Q => val_V_reg_92(5),
      R => '0'
    );
\val_V_reg_92_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => E(0),
      D => e_dout(6),
      Q => val_V_reg_92(6),
      R => '0'
    );
\val_V_reg_92_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => E(0),
      D => e_dout(7),
      Q => val_V_reg_92(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_FrameProcessing_do_gen is
  port (
    \ap_CS_fsm_reg[9]_0\ : out STD_LOGIC;
    internal_empty_n_reg : out STD_LOGIC;
    \ap_CS_fsm_reg[11]_0\ : out STD_LOGIC;
    \ap_CS_fsm_reg[9]_1\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \reg_168_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \reg_164_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    addr_din : out STD_LOGIC_VECTOR ( 25 downto 0 );
    clock : in STD_LOGIC;
    ce : in STD_LOGIC;
    crc2fra_1_empty_n : in STD_LOGIC;
    rgbv_full_n : in STD_LOGIC;
    addr_full_n : in STD_LOGIC;
    \ap_CS_fsm_reg[2]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \val_V_8_reg_369_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \val_V_5_reg_351_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \val_V_6_reg_356_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_FrameProcessing_do_gen : entity is "FrameProcessing_do_gen";
end bd_0_hls_inst_0_FrameProcessing_do_gen;

architecture STRUCTURE of bd_0_hls_inst_0_FrameProcessing_do_gen is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal add_ln107_2_fu_279_p2 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \add_ln107_2_fu_279_p2__1_carry__0_i_1_n_8\ : STD_LOGIC;
  signal \add_ln107_2_fu_279_p2__1_carry__0_i_2_n_8\ : STD_LOGIC;
  signal \add_ln107_2_fu_279_p2__1_carry__0_n_10\ : STD_LOGIC;
  signal \add_ln107_2_fu_279_p2__1_carry__0_n_11\ : STD_LOGIC;
  signal \add_ln107_2_fu_279_p2__1_carry__0_n_8\ : STD_LOGIC;
  signal \add_ln107_2_fu_279_p2__1_carry__0_n_9\ : STD_LOGIC;
  signal \add_ln107_2_fu_279_p2__1_carry__1_i_1_n_8\ : STD_LOGIC;
  signal \add_ln107_2_fu_279_p2__1_carry__1_i_2_n_8\ : STD_LOGIC;
  signal \add_ln107_2_fu_279_p2__1_carry__1_i_3_n_8\ : STD_LOGIC;
  signal \add_ln107_2_fu_279_p2__1_carry__1_i_4_n_8\ : STD_LOGIC;
  signal \add_ln107_2_fu_279_p2__1_carry__1_i_5_n_8\ : STD_LOGIC;
  signal \add_ln107_2_fu_279_p2__1_carry__1_n_10\ : STD_LOGIC;
  signal \add_ln107_2_fu_279_p2__1_carry__1_n_11\ : STD_LOGIC;
  signal \add_ln107_2_fu_279_p2__1_carry__1_n_8\ : STD_LOGIC;
  signal \add_ln107_2_fu_279_p2__1_carry__1_n_9\ : STD_LOGIC;
  signal \add_ln107_2_fu_279_p2__1_carry__2_i_1_n_8\ : STD_LOGIC;
  signal \add_ln107_2_fu_279_p2__1_carry__2_i_2_n_8\ : STD_LOGIC;
  signal \add_ln107_2_fu_279_p2__1_carry__2_i_3_n_8\ : STD_LOGIC;
  signal \add_ln107_2_fu_279_p2__1_carry__2_n_10\ : STD_LOGIC;
  signal \add_ln107_2_fu_279_p2__1_carry__2_n_11\ : STD_LOGIC;
  signal \add_ln107_2_fu_279_p2__1_carry_i_1_n_8\ : STD_LOGIC;
  signal \add_ln107_2_fu_279_p2__1_carry_i_2_n_8\ : STD_LOGIC;
  signal \add_ln107_2_fu_279_p2__1_carry_n_10\ : STD_LOGIC;
  signal \add_ln107_2_fu_279_p2__1_carry_n_11\ : STD_LOGIC;
  signal \add_ln107_2_fu_279_p2__1_carry_n_8\ : STD_LOGIC;
  signal \add_ln107_2_fu_279_p2__1_carry_n_9\ : STD_LOGIC;
  signal add_ln107_2_reg_393 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \ap_CS_fsm[2]_i_3_n_8\ : STD_LOGIC;
  signal \ap_CS_fsm[2]_i_4_n_8\ : STD_LOGIC;
  signal \^ap_cs_fsm_reg[11]_0\ : STD_LOGIC;
  signal ap_CS_fsm_state10 : STD_LOGIC;
  signal ap_CS_fsm_state11 : STD_LOGIC;
  signal ap_CS_fsm_state12 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state8 : STD_LOGIC;
  signal ap_CS_fsm_state9 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal ap_NS_fsm1 : STD_LOGIC;
  signal \ap_NS_fsm11_carry__0_i_1_n_8\ : STD_LOGIC;
  signal \ap_NS_fsm11_carry__0_i_2_n_8\ : STD_LOGIC;
  signal \ap_NS_fsm11_carry__0_n_11\ : STD_LOGIC;
  signal ap_NS_fsm11_carry_i_1_n_8 : STD_LOGIC;
  signal ap_NS_fsm11_carry_i_2_n_8 : STD_LOGIC;
  signal ap_NS_fsm11_carry_i_3_n_8 : STD_LOGIC;
  signal ap_NS_fsm11_carry_i_4_n_8 : STD_LOGIC;
  signal ap_NS_fsm11_carry_n_10 : STD_LOGIC;
  signal ap_NS_fsm11_carry_n_11 : STD_LOGIC;
  signal ap_NS_fsm11_carry_n_8 : STD_LOGIC;
  signal ap_NS_fsm11_carry_n_9 : STD_LOGIC;
  signal curr_off_1_fu_310_p2 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \curr_off_1_fu_310_p2_carry__0_n_10\ : STD_LOGIC;
  signal \curr_off_1_fu_310_p2_carry__0_n_11\ : STD_LOGIC;
  signal \curr_off_1_fu_310_p2_carry__0_n_8\ : STD_LOGIC;
  signal \curr_off_1_fu_310_p2_carry__0_n_9\ : STD_LOGIC;
  signal \curr_off_1_fu_310_p2_carry__1_n_10\ : STD_LOGIC;
  signal \curr_off_1_fu_310_p2_carry__1_n_11\ : STD_LOGIC;
  signal \curr_off_1_fu_310_p2_carry__1_n_8\ : STD_LOGIC;
  signal \curr_off_1_fu_310_p2_carry__1_n_9\ : STD_LOGIC;
  signal \curr_off_1_fu_310_p2_carry__2_n_10\ : STD_LOGIC;
  signal \curr_off_1_fu_310_p2_carry__2_n_11\ : STD_LOGIC;
  signal \curr_off_1_fu_310_p2_carry__2_n_8\ : STD_LOGIC;
  signal \curr_off_1_fu_310_p2_carry__2_n_9\ : STD_LOGIC;
  signal \curr_off_1_fu_310_p2_carry__3_n_10\ : STD_LOGIC;
  signal \curr_off_1_fu_310_p2_carry__3_n_11\ : STD_LOGIC;
  signal \curr_off_1_fu_310_p2_carry__3_n_8\ : STD_LOGIC;
  signal \curr_off_1_fu_310_p2_carry__3_n_9\ : STD_LOGIC;
  signal \curr_off_1_fu_310_p2_carry__4_n_10\ : STD_LOGIC;
  signal \curr_off_1_fu_310_p2_carry__4_n_11\ : STD_LOGIC;
  signal \curr_off_1_fu_310_p2_carry__4_n_8\ : STD_LOGIC;
  signal \curr_off_1_fu_310_p2_carry__4_n_9\ : STD_LOGIC;
  signal curr_off_1_fu_310_p2_carry_n_10 : STD_LOGIC;
  signal curr_off_1_fu_310_p2_carry_n_11 : STD_LOGIC;
  signal curr_off_1_fu_310_p2_carry_n_8 : STD_LOGIC;
  signal curr_off_1_fu_310_p2_carry_n_9 : STD_LOGIC;
  signal curr_off_1_reg_414 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal curr_off_fu_238_p2 : STD_LOGIC_VECTOR ( 25 downto 6 );
  signal \curr_off_fu_238_p2__1_carry__0_i_1_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__0_i_2_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__0_i_3_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__0_i_4_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__0_i_5_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__0_i_6_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__0_i_7_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__0_i_8_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__0_n_10\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__0_n_11\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__0_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__0_n_9\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__1_i_1_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__1_i_2_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__1_i_3_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__1_i_4_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__1_i_5_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__1_i_6_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__1_i_7_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__1_i_8_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__1_n_10\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__1_n_11\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__1_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__1_n_9\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__2_i_1_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__2_i_2_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__2_i_3_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__2_i_4_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__2_i_5_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__2_i_6_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__2_i_7_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__2_i_8_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__2_n_10\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__2_n_11\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__2_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__2_n_9\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__3_i_1_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__3_i_2_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__3_i_3_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__3_n_10\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry__3_n_11\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry_i_1_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry_i_2_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry_i_3_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry_n_10\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry_n_11\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry_n_8\ : STD_LOGIC;
  signal \curr_off_fu_238_p2__1_carry_n_9\ : STD_LOGIC;
  signal e_read1339_out : STD_LOGIC;
  signal i1_0_reg_1420 : STD_LOGIC;
  signal i1_0_reg_142010_out : STD_LOGIC;
  signal \i1_0_reg_142[0]_i_1_n_8\ : STD_LOGIC;
  signal \i1_0_reg_142[5]_i_4_n_8\ : STD_LOGIC;
  signal \i1_0_reg_142[5]_i_5_n_8\ : STD_LOGIC;
  signal i1_0_reg_142_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal i3_0_reg_1220 : STD_LOGIC;
  signal i3_0_reg_12208_out : STD_LOGIC;
  signal \i3_0_reg_122[6]_i_4_n_8\ : STD_LOGIC;
  signal \i3_0_reg_122[6]_i_5_n_8\ : STD_LOGIC;
  signal \i3_0_reg_122[6]_i_6_n_8\ : STD_LOGIC;
  signal \i3_0_reg_122[6]_i_7_n_8\ : STD_LOGIC;
  signal i3_0_reg_122_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \i_0_reg_153[0]_i_1_n_8\ : STD_LOGIC;
  signal \i_0_reg_153[5]_i_1_n_8\ : STD_LOGIC;
  signal \i_0_reg_153[5]_i_4_n_8\ : STD_LOGIC;
  signal \i_0_reg_153[5]_i_5_n_8\ : STD_LOGIC;
  signal i_0_reg_153_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal i_3_fu_322_p2 : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal i_4_fu_291_p2 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal i_fu_334_p2 : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal icmp_ln107_fu_305_p2 : STD_LOGIC;
  signal icmp_ln51_fu_186_p2 : STD_LOGIC;
  signal \icmp_ln51_reg_376[0]_i_1_n_8\ : STD_LOGIC;
  signal \icmp_ln51_reg_376_reg_n_8_[0]\ : STD_LOGIC;
  signal icmp_ln60_fu_192_p2 : STD_LOGIC;
  signal icmp_ln60_reg_380 : STD_LOGIC;
  signal \icmp_ln60_reg_380[0]_i_1_n_8\ : STD_LOGIC;
  signal icmp_ln96_fu_198_p2 : STD_LOGIC;
  signal icmp_ln96_reg_384 : STD_LOGIC;
  signal \icmp_ln96_reg_384[0]_i_1_n_8\ : STD_LOGIC;
  signal \mOutPtr[4]_i_3_n_8\ : STD_LOGIC;
  signal \mOutPtr[5]_i_10_n_8\ : STD_LOGIC;
  signal \mOutPtr[5]_i_11_n_8\ : STD_LOGIC;
  signal \mOutPtr[5]_i_12_n_8\ : STD_LOGIC;
  signal \mOutPtr[5]_i_5__0_n_8\ : STD_LOGIC;
  signal \mOutPtr[5]_i_7_n_8\ : STD_LOGIC;
  signal \mOutPtr[5]_i_8_n_8\ : STD_LOGIC;
  signal \mOutPtr[5]_i_9_n_8\ : STD_LOGIC;
  signal mot1_fu_180_p3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal p_shl2_fu_264_p4 : STD_LOGIC_VECTOR ( 15 downto 7 );
  signal reg_1640 : STD_LOGIC;
  signal \reg_164[7]_i_2_n_8\ : STD_LOGIC;
  signal \^reg_164_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reg_1680 : STD_LOGIC;
  signal \^reg_168_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal v_assign_cast_reg_406 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal v_assign_cast_reg_4061 : STD_LOGIC;
  signal \v_assign_cast_reg_406[25]_i_2_n_8\ : STD_LOGIC;
  signal \v_assign_cast_reg_406[25]_i_3_n_8\ : STD_LOGIC;
  signal v_assign_reg_1330 : STD_LOGIC;
  signal \v_assign_reg_133[25]_i_10_n_8\ : STD_LOGIC;
  signal \v_assign_reg_133[25]_i_11_n_8\ : STD_LOGIC;
  signal \v_assign_reg_133[25]_i_12_n_8\ : STD_LOGIC;
  signal \v_assign_reg_133[25]_i_1_n_8\ : STD_LOGIC;
  signal \v_assign_reg_133[25]_i_6_n_8\ : STD_LOGIC;
  signal \v_assign_reg_133[25]_i_7_n_8\ : STD_LOGIC;
  signal \v_assign_reg_133[25]_i_8_n_8\ : STD_LOGIC;
  signal \v_assign_reg_133[25]_i_9_n_8\ : STD_LOGIC;
  signal \val_V_8_reg_369_reg_n_8_[1]\ : STD_LOGIC;
  signal \val_V_8_reg_369_reg_n_8_[2]\ : STD_LOGIC;
  signal \val_V_8_reg_369_reg_n_8_[3]\ : STD_LOGIC;
  signal \val_V_8_reg_369_reg_n_8_[4]\ : STD_LOGIC;
  signal \val_V_8_reg_369_reg_n_8_[5]\ : STD_LOGIC;
  signal \val_V_8_reg_369_reg_n_8_[6]\ : STD_LOGIC;
  signal \val_V_8_reg_369_reg_n_8_[7]\ : STD_LOGIC;
  signal \NLW_add_ln107_2_fu_279_p2__1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_add_ln107_2_fu_279_p2__1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_ap_NS_fsm11_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ap_NS_fsm11_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_ap_NS_fsm11_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_curr_off_1_fu_310_p2_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_curr_off_1_fu_310_p2_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_curr_off_fu_238_p2__1_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_curr_off_fu_238_p2__1_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \add_ln107_2_fu_279_p2__1_carry\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \add_ln107_2_fu_279_p2__1_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \add_ln107_2_fu_279_p2__1_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \add_ln107_2_fu_279_p2__1_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \add_ln107_2_fu_279_p2__1_carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \add_ln107_2_fu_279_p2__1_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute HLUTNM : string;
  attribute HLUTNM of \add_ln107_2_fu_279_p2__1_carry__1_i_2\ : label is "lutpair12";
  attribute HLUTNM of \add_ln107_2_fu_279_p2__1_carry__1_i_3\ : label is "lutpair11";
  attribute HLUTNM of \add_ln107_2_fu_279_p2__1_carry__1_i_4\ : label is "lutpair10";
  attribute ADDER_THRESHOLD of \add_ln107_2_fu_279_p2__1_carry__2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \add_ln107_2_fu_279_p2__1_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute HLUTNM of \add_ln107_2_fu_279_p2__1_carry__2_i_3\ : label is "lutpair13";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_4\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \ap_CS_fsm[4]_i_1__2\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \ap_CS_fsm[5]_i_1__0\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \ap_CS_fsm[6]_i_1__0\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \ap_CS_fsm[7]_i_1__0\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \ap_CS_fsm[8]_i_1\ : label is "soft_lutpair122";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[10]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[11]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[6]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[7]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[8]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[9]\ : label is "none";
  attribute METHODOLOGY_DRC_VIOS of ap_NS_fsm11_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ap_NS_fsm11_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of curr_off_1_fu_310_p2_carry : label is 35;
  attribute METHODOLOGY_DRC_VIOS of curr_off_1_fu_310_p2_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \curr_off_1_fu_310_p2_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \curr_off_1_fu_310_p2_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \curr_off_1_fu_310_p2_carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \curr_off_1_fu_310_p2_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \curr_off_1_fu_310_p2_carry__2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \curr_off_1_fu_310_p2_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \curr_off_1_fu_310_p2_carry__3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \curr_off_1_fu_310_p2_carry__3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \curr_off_1_fu_310_p2_carry__4\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \curr_off_1_fu_310_p2_carry__4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \curr_off_1_fu_310_p2_carry__5\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \curr_off_1_fu_310_p2_carry__5\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \curr_off_fu_238_p2__1_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \curr_off_fu_238_p2__1_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute HLUTNM of \curr_off_fu_238_p2__1_carry__0_i_1\ : label is "lutpair12";
  attribute HLUTNM of \curr_off_fu_238_p2__1_carry__0_i_2\ : label is "lutpair11";
  attribute HLUTNM of \curr_off_fu_238_p2__1_carry__0_i_3\ : label is "lutpair10";
  attribute METHODOLOGY_DRC_VIOS of \curr_off_fu_238_p2__1_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute HLUTNM of \curr_off_fu_238_p2__1_carry__1_i_4\ : label is "lutpair13";
  attribute METHODOLOGY_DRC_VIOS of \curr_off_fu_238_p2__1_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \curr_off_fu_238_p2__1_carry__3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \i1_0_reg_142[1]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \i1_0_reg_142[2]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \i1_0_reg_142[3]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \i1_0_reg_142[4]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \i3_0_reg_122[1]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \i3_0_reg_122[2]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \i3_0_reg_122[3]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \i3_0_reg_122[4]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \i3_0_reg_122[6]_i_3\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \i3_0_reg_122[6]_i_5\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \i3_0_reg_122[6]_i_6\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \i3_0_reg_122[6]_i_7\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \i_0_reg_153[1]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \i_0_reg_153[2]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \i_0_reg_153[3]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \i_0_reg_153[4]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \icmp_ln51_reg_376[0]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \mOutPtr[4]_i_3\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \mOutPtr[5]_i_11\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \mOutPtr[5]_i_12\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \mOutPtr[5]_i_7\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \reg_164[7]_i_2\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of rgbv_write_INST_0 : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \v_assign_cast_reg_406[25]_i_3\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \v_assign_reg_133[25]_i_11\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \v_assign_reg_133[25]_i_7\ : label is "soft_lutpair117";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  \ap_CS_fsm_reg[11]_0\ <= \^ap_cs_fsm_reg[11]_0\;
  \reg_164_reg[7]_0\(7 downto 0) <= \^reg_164_reg[7]_0\(7 downto 0);
  \reg_168_reg[7]_0\(7 downto 0) <= \^reg_168_reg[7]_0\(7 downto 0);
\add_ln107_2_fu_279_p2__1_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \add_ln107_2_fu_279_p2__1_carry_n_8\,
      CO(2) => \add_ln107_2_fu_279_p2__1_carry_n_9\,
      CO(1) => \add_ln107_2_fu_279_p2__1_carry_n_10\,
      CO(0) => \add_ln107_2_fu_279_p2__1_carry_n_11\,
      CYINIT => '0',
      DI(3) => mot1_fu_180_p3(4),
      DI(2) => '0',
      DI(1) => mot1_fu_180_p3(2),
      DI(0) => '0',
      O(3 downto 0) => add_ln107_2_fu_279_p2(4 downto 1),
      S(3) => \add_ln107_2_fu_279_p2__1_carry_i_1_n_8\,
      S(2) => mot1_fu_180_p3(3),
      S(1) => \add_ln107_2_fu_279_p2__1_carry_i_2_n_8\,
      S(0) => mot1_fu_180_p3(1)
    );
\add_ln107_2_fu_279_p2__1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln107_2_fu_279_p2__1_carry_n_8\,
      CO(3) => \add_ln107_2_fu_279_p2__1_carry__0_n_8\,
      CO(2) => \add_ln107_2_fu_279_p2__1_carry__0_n_9\,
      CO(1) => \add_ln107_2_fu_279_p2__1_carry__0_n_10\,
      CO(0) => \add_ln107_2_fu_279_p2__1_carry__0_n_11\,
      CYINIT => '0',
      DI(3 downto 2) => mot1_fu_180_p3(8 downto 7),
      DI(1 downto 0) => B"00",
      O(3 downto 0) => add_ln107_2_fu_279_p2(8 downto 5),
      S(3) => \add_ln107_2_fu_279_p2__1_carry__0_i_1_n_8\,
      S(2) => \add_ln107_2_fu_279_p2__1_carry__0_i_2_n_8\,
      S(1 downto 0) => mot1_fu_180_p3(6 downto 5)
    );
\add_ln107_2_fu_279_p2__1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mot1_fu_180_p3(8),
      I1 => p_shl2_fu_264_p4(8),
      O => \add_ln107_2_fu_279_p2__1_carry__0_i_1_n_8\
    );
\add_ln107_2_fu_279_p2__1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mot1_fu_180_p3(7),
      I1 => p_shl2_fu_264_p4(7),
      O => \add_ln107_2_fu_279_p2__1_carry__0_i_2_n_8\
    );
\add_ln107_2_fu_279_p2__1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln107_2_fu_279_p2__1_carry__0_n_8\,
      CO(3) => \add_ln107_2_fu_279_p2__1_carry__1_n_8\,
      CO(2) => \add_ln107_2_fu_279_p2__1_carry__1_n_9\,
      CO(1) => \add_ln107_2_fu_279_p2__1_carry__1_n_10\,
      CO(0) => \add_ln107_2_fu_279_p2__1_carry__1_n_11\,
      CYINIT => '0',
      DI(3) => \curr_off_fu_238_p2__1_carry__0_i_2_n_8\,
      DI(2) => \curr_off_fu_238_p2__1_carry__0_i_3_n_8\,
      DI(1) => \add_ln107_2_fu_279_p2__1_carry__1_i_1_n_8\,
      DI(0) => mot1_fu_180_p3(9),
      O(3 downto 0) => add_ln107_2_fu_279_p2(12 downto 9),
      S(3) => \add_ln107_2_fu_279_p2__1_carry__1_i_2_n_8\,
      S(2) => \add_ln107_2_fu_279_p2__1_carry__1_i_3_n_8\,
      S(1) => \add_ln107_2_fu_279_p2__1_carry__1_i_4_n_8\,
      S(0) => \add_ln107_2_fu_279_p2__1_carry__1_i_5_n_8\
    );
\add_ln107_2_fu_279_p2__1_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => mot1_fu_180_p3(10),
      I1 => p_shl2_fu_264_p4(10),
      I2 => p_shl2_fu_264_p4(8),
      O => \add_ln107_2_fu_279_p2__1_carry__1_i_1_n_8\
    );
\add_ln107_2_fu_279_p2__1_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_shl2_fu_264_p4(10),
      I1 => mot1_fu_180_p3(12),
      I2 => p_shl2_fu_264_p4(12),
      I3 => \curr_off_fu_238_p2__1_carry__0_i_2_n_8\,
      O => \add_ln107_2_fu_279_p2__1_carry__1_i_2_n_8\
    );
\add_ln107_2_fu_279_p2__1_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_shl2_fu_264_p4(9),
      I1 => mot1_fu_180_p3(11),
      I2 => p_shl2_fu_264_p4(11),
      I3 => \curr_off_fu_238_p2__1_carry__0_i_3_n_8\,
      O => \add_ln107_2_fu_279_p2__1_carry__1_i_3_n_8\
    );
\add_ln107_2_fu_279_p2__1_carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => mot1_fu_180_p3(10),
      I1 => p_shl2_fu_264_p4(8),
      I2 => p_shl2_fu_264_p4(10),
      I3 => p_shl2_fu_264_p4(9),
      I4 => p_shl2_fu_264_p4(7),
      O => \add_ln107_2_fu_279_p2__1_carry__1_i_4_n_8\
    );
\add_ln107_2_fu_279_p2__1_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_shl2_fu_264_p4(7),
      I1 => p_shl2_fu_264_p4(9),
      I2 => mot1_fu_180_p3(9),
      O => \add_ln107_2_fu_279_p2__1_carry__1_i_5_n_8\
    );
\add_ln107_2_fu_279_p2__1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \add_ln107_2_fu_279_p2__1_carry__1_n_8\,
      CO(3 downto 2) => \NLW_add_ln107_2_fu_279_p2__1_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \add_ln107_2_fu_279_p2__1_carry__2_n_10\,
      CO(0) => \add_ln107_2_fu_279_p2__1_carry__2_n_11\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \curr_off_fu_238_p2__1_carry__1_i_4_n_8\,
      DI(0) => \curr_off_fu_238_p2__1_carry__0_i_1_n_8\,
      O(3) => \NLW_add_ln107_2_fu_279_p2__1_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => add_ln107_2_fu_279_p2(15 downto 13),
      S(3) => '0',
      S(2) => \add_ln107_2_fu_279_p2__1_carry__2_i_1_n_8\,
      S(1) => \add_ln107_2_fu_279_p2__1_carry__2_i_2_n_8\,
      S(0) => \add_ln107_2_fu_279_p2__1_carry__2_i_3_n_8\
    );
\add_ln107_2_fu_279_p2__1_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => p_shl2_fu_264_p4(14),
      I1 => mot1_fu_180_p3(14),
      I2 => p_shl2_fu_264_p4(12),
      I3 => p_shl2_fu_264_p4(13),
      I4 => p_shl2_fu_264_p4(15),
      I5 => mot1_fu_180_p3(15),
      O => \add_ln107_2_fu_279_p2__1_carry__2_i_1_n_8\
    );
\add_ln107_2_fu_279_p2__1_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \curr_off_fu_238_p2__1_carry__1_i_4_n_8\,
      I1 => p_shl2_fu_264_p4(12),
      I2 => p_shl2_fu_264_p4(14),
      I3 => mot1_fu_180_p3(14),
      O => \add_ln107_2_fu_279_p2__1_carry__2_i_2_n_8\
    );
\add_ln107_2_fu_279_p2__1_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_shl2_fu_264_p4(11),
      I1 => mot1_fu_180_p3(13),
      I2 => p_shl2_fu_264_p4(13),
      I3 => \curr_off_fu_238_p2__1_carry__0_i_1_n_8\,
      O => \add_ln107_2_fu_279_p2__1_carry__2_i_3_n_8\
    );
\add_ln107_2_fu_279_p2__1_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mot1_fu_180_p3(4),
      O => \add_ln107_2_fu_279_p2__1_carry_i_1_n_8\
    );
\add_ln107_2_fu_279_p2__1_carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mot1_fu_180_p3(2),
      O => \add_ln107_2_fu_279_p2__1_carry_i_2_n_8\
    );
\add_ln107_2_reg_393[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => icmp_ln60_fu_192_p2,
      I1 => ap_CS_fsm_state9,
      I2 => crc2fra_1_empty_n,
      I3 => icmp_ln51_fu_186_p2,
      I4 => icmp_ln96_fu_198_p2,
      O => v_assign_reg_1330
    );
\add_ln107_2_reg_393_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_reg_1330,
      D => mot1_fu_180_p3(0),
      Q => add_ln107_2_reg_393(0),
      R => '0'
    );
\add_ln107_2_reg_393_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_reg_1330,
      D => add_ln107_2_fu_279_p2(10),
      Q => add_ln107_2_reg_393(10),
      R => '0'
    );
\add_ln107_2_reg_393_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_reg_1330,
      D => add_ln107_2_fu_279_p2(11),
      Q => add_ln107_2_reg_393(11),
      R => '0'
    );
\add_ln107_2_reg_393_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_reg_1330,
      D => add_ln107_2_fu_279_p2(12),
      Q => add_ln107_2_reg_393(12),
      R => '0'
    );
\add_ln107_2_reg_393_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_reg_1330,
      D => add_ln107_2_fu_279_p2(13),
      Q => add_ln107_2_reg_393(13),
      R => '0'
    );
\add_ln107_2_reg_393_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_reg_1330,
      D => add_ln107_2_fu_279_p2(14),
      Q => add_ln107_2_reg_393(14),
      R => '0'
    );
\add_ln107_2_reg_393_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_reg_1330,
      D => add_ln107_2_fu_279_p2(15),
      Q => add_ln107_2_reg_393(15),
      R => '0'
    );
\add_ln107_2_reg_393_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_reg_1330,
      D => add_ln107_2_fu_279_p2(1),
      Q => add_ln107_2_reg_393(1),
      R => '0'
    );
\add_ln107_2_reg_393_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_reg_1330,
      D => add_ln107_2_fu_279_p2(2),
      Q => add_ln107_2_reg_393(2),
      R => '0'
    );
\add_ln107_2_reg_393_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_reg_1330,
      D => add_ln107_2_fu_279_p2(3),
      Q => add_ln107_2_reg_393(3),
      R => '0'
    );
\add_ln107_2_reg_393_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_reg_1330,
      D => add_ln107_2_fu_279_p2(4),
      Q => add_ln107_2_reg_393(4),
      R => '0'
    );
\add_ln107_2_reg_393_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_reg_1330,
      D => add_ln107_2_fu_279_p2(5),
      Q => add_ln107_2_reg_393(5),
      R => '0'
    );
\add_ln107_2_reg_393_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_reg_1330,
      D => add_ln107_2_fu_279_p2(6),
      Q => add_ln107_2_reg_393(6),
      R => '0'
    );
\add_ln107_2_reg_393_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_reg_1330,
      D => add_ln107_2_fu_279_p2(7),
      Q => add_ln107_2_reg_393(7),
      R => '0'
    );
\add_ln107_2_reg_393_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_reg_1330,
      D => add_ln107_2_fu_279_p2(8),
      Q => add_ln107_2_reg_393(8),
      R => '0'
    );
\add_ln107_2_reg_393_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_reg_1330,
      D => add_ln107_2_fu_279_p2(9),
      Q => add_ln107_2_reg_393(9),
      R => '0'
    );
\ap_CS_fsm[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F8F8880"
    )
        port map (
      I0 => \reg_164[7]_i_2_n_8\,
      I1 => ap_CS_fsm_state10,
      I2 => crc2fra_1_empty_n,
      I3 => \v_assign_cast_reg_406[25]_i_2_n_8\,
      I4 => ap_CS_fsm_state11,
      O => ap_NS_fsm(10)
    );
\ap_CS_fsm[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFAA00"
    )
        port map (
      I0 => ap_CS_fsm_state11,
      I1 => rgbv_full_n,
      I2 => addr_full_n,
      I3 => crc2fra_1_empty_n,
      I4 => ap_CS_fsm_state12,
      O => ap_NS_fsm(11)
    );
\ap_CS_fsm[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4E0A"
    )
        port map (
      I0 => \^q\(0),
      I1 => ap_CS_fsm_state10,
      I2 => crc2fra_1_empty_n,
      I3 => \v_assign_cast_reg_406[25]_i_2_n_8\,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[2]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAAB"
    )
        port map (
      I0 => \ap_CS_fsm_reg[2]_0\,
      I1 => \ap_CS_fsm[2]_i_3_n_8\,
      I2 => ap_CS_fsm_state10,
      I3 => \^q\(1),
      I4 => ap_CS_fsm_state12,
      I5 => \^q\(2),
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(3),
      I2 => ap_CS_fsm_state11,
      I3 => ap_CS_fsm_state9,
      I4 => \ap_CS_fsm[2]_i_4_n_8\,
      O => \ap_CS_fsm[2]_i_3_n_8\
    );
\ap_CS_fsm[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => crc2fra_1_empty_n,
      I2 => ap_CS_fsm_state8,
      I3 => \^q\(4),
      O => \ap_CS_fsm[2]_i_4_n_8\
    );
\ap_CS_fsm[3]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => \^q\(1),
      I2 => crc2fra_1_empty_n,
      O => ap_NS_fsm(3)
    );
\ap_CS_fsm[4]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => crc2fra_1_empty_n,
      O => ap_NS_fsm(4)
    );
\ap_CS_fsm[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => crc2fra_1_empty_n,
      O => ap_NS_fsm(5)
    );
\ap_CS_fsm[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => crc2fra_1_empty_n,
      O => ap_NS_fsm(6)
    );
\ap_CS_fsm[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => \^q\(4),
      I1 => ap_CS_fsm_state8,
      I2 => crc2fra_1_empty_n,
      O => ap_NS_fsm(7)
    );
\ap_CS_fsm[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => ap_CS_fsm_state8,
      I1 => ap_CS_fsm_state9,
      I2 => crc2fra_1_empty_n,
      O => ap_NS_fsm(8)
    );
\ap_CS_fsm[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0FC004C"
    )
        port map (
      I0 => \reg_164[7]_i_2_n_8\,
      I1 => ap_CS_fsm_state10,
      I2 => crc2fra_1_empty_n,
      I3 => \v_assign_cast_reg_406[25]_i_2_n_8\,
      I4 => ap_CS_fsm_state9,
      I5 => \^ap_cs_fsm_reg[11]_0\,
      O => ap_NS_fsm(9)
    );
\ap_CS_fsm_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(10),
      Q => ap_CS_fsm_state11,
      R => reset
    );
\ap_CS_fsm_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(11),
      Q => ap_CS_fsm_state12,
      R => reset
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => \^q\(0),
      S => reset
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => reset
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => \^q\(1),
      R => reset
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(4),
      Q => \^q\(2),
      R => reset
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(5),
      Q => \^q\(3),
      R => reset
    );
\ap_CS_fsm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(6),
      Q => \^q\(4),
      R => reset
    );
\ap_CS_fsm_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(7),
      Q => ap_CS_fsm_state8,
      R => reset
    );
\ap_CS_fsm_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(8),
      Q => ap_CS_fsm_state9,
      R => reset
    );
\ap_CS_fsm_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(9),
      Q => ap_CS_fsm_state10,
      R => reset
    );
ap_NS_fsm11_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ap_NS_fsm11_carry_n_8,
      CO(2) => ap_NS_fsm11_carry_n_9,
      CO(1) => ap_NS_fsm11_carry_n_10,
      CO(0) => ap_NS_fsm11_carry_n_11,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_ap_NS_fsm11_carry_O_UNCONNECTED(3 downto 0),
      S(3) => ap_NS_fsm11_carry_i_1_n_8,
      S(2) => ap_NS_fsm11_carry_i_2_n_8,
      S(1) => ap_NS_fsm11_carry_i_3_n_8,
      S(0) => ap_NS_fsm11_carry_i_4_n_8
    );
\ap_NS_fsm11_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ap_NS_fsm11_carry_n_8,
      CO(3 downto 2) => \NLW_ap_NS_fsm11_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => icmp_ln107_fu_305_p2,
      CO(0) => \ap_NS_fsm11_carry__0_n_11\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ap_NS_fsm11_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \ap_NS_fsm11_carry__0_i_1_n_8\,
      S(0) => \ap_NS_fsm11_carry__0_i_2_n_8\
    );
\ap_NS_fsm11_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => add_ln107_2_reg_393(15),
      I1 => v_assign_cast_reg_406(15),
      O => \ap_NS_fsm11_carry__0_i_1_n_8\
    );
\ap_NS_fsm11_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => v_assign_cast_reg_406(14),
      I1 => add_ln107_2_reg_393(14),
      I2 => v_assign_cast_reg_406(12),
      I3 => add_ln107_2_reg_393(12),
      I4 => add_ln107_2_reg_393(13),
      I5 => v_assign_cast_reg_406(13),
      O => \ap_NS_fsm11_carry__0_i_2_n_8\
    );
ap_NS_fsm11_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => v_assign_cast_reg_406(9),
      I1 => add_ln107_2_reg_393(9),
      I2 => v_assign_cast_reg_406(10),
      I3 => add_ln107_2_reg_393(10),
      I4 => add_ln107_2_reg_393(11),
      I5 => v_assign_cast_reg_406(11),
      O => ap_NS_fsm11_carry_i_1_n_8
    );
ap_NS_fsm11_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => v_assign_cast_reg_406(6),
      I1 => add_ln107_2_reg_393(6),
      I2 => v_assign_cast_reg_406(7),
      I3 => add_ln107_2_reg_393(7),
      I4 => add_ln107_2_reg_393(8),
      I5 => v_assign_cast_reg_406(8),
      O => ap_NS_fsm11_carry_i_2_n_8
    );
ap_NS_fsm11_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => v_assign_cast_reg_406(3),
      I1 => add_ln107_2_reg_393(3),
      I2 => v_assign_cast_reg_406(4),
      I3 => add_ln107_2_reg_393(4),
      I4 => add_ln107_2_reg_393(5),
      I5 => v_assign_cast_reg_406(5),
      O => ap_NS_fsm11_carry_i_3_n_8
    );
ap_NS_fsm11_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => v_assign_cast_reg_406(0),
      I1 => add_ln107_2_reg_393(0),
      I2 => v_assign_cast_reg_406(1),
      I3 => add_ln107_2_reg_393(1),
      I4 => add_ln107_2_reg_393(2),
      I5 => v_assign_cast_reg_406(2),
      O => ap_NS_fsm11_carry_i_4_n_8
    );
curr_off_1_fu_310_p2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => curr_off_1_fu_310_p2_carry_n_8,
      CO(2) => curr_off_1_fu_310_p2_carry_n_9,
      CO(1) => curr_off_1_fu_310_p2_carry_n_10,
      CO(0) => curr_off_1_fu_310_p2_carry_n_11,
      CYINIT => v_assign_cast_reg_406(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => curr_off_1_fu_310_p2(4 downto 1),
      S(3 downto 0) => v_assign_cast_reg_406(4 downto 1)
    );
\curr_off_1_fu_310_p2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => curr_off_1_fu_310_p2_carry_n_8,
      CO(3) => \curr_off_1_fu_310_p2_carry__0_n_8\,
      CO(2) => \curr_off_1_fu_310_p2_carry__0_n_9\,
      CO(1) => \curr_off_1_fu_310_p2_carry__0_n_10\,
      CO(0) => \curr_off_1_fu_310_p2_carry__0_n_11\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => curr_off_1_fu_310_p2(8 downto 5),
      S(3 downto 0) => v_assign_cast_reg_406(8 downto 5)
    );
\curr_off_1_fu_310_p2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \curr_off_1_fu_310_p2_carry__0_n_8\,
      CO(3) => \curr_off_1_fu_310_p2_carry__1_n_8\,
      CO(2) => \curr_off_1_fu_310_p2_carry__1_n_9\,
      CO(1) => \curr_off_1_fu_310_p2_carry__1_n_10\,
      CO(0) => \curr_off_1_fu_310_p2_carry__1_n_11\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => curr_off_1_fu_310_p2(12 downto 9),
      S(3 downto 0) => v_assign_cast_reg_406(12 downto 9)
    );
\curr_off_1_fu_310_p2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \curr_off_1_fu_310_p2_carry__1_n_8\,
      CO(3) => \curr_off_1_fu_310_p2_carry__2_n_8\,
      CO(2) => \curr_off_1_fu_310_p2_carry__2_n_9\,
      CO(1) => \curr_off_1_fu_310_p2_carry__2_n_10\,
      CO(0) => \curr_off_1_fu_310_p2_carry__2_n_11\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => curr_off_1_fu_310_p2(16 downto 13),
      S(3 downto 0) => v_assign_cast_reg_406(16 downto 13)
    );
\curr_off_1_fu_310_p2_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \curr_off_1_fu_310_p2_carry__2_n_8\,
      CO(3) => \curr_off_1_fu_310_p2_carry__3_n_8\,
      CO(2) => \curr_off_1_fu_310_p2_carry__3_n_9\,
      CO(1) => \curr_off_1_fu_310_p2_carry__3_n_10\,
      CO(0) => \curr_off_1_fu_310_p2_carry__3_n_11\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => curr_off_1_fu_310_p2(20 downto 17),
      S(3 downto 0) => v_assign_cast_reg_406(20 downto 17)
    );
\curr_off_1_fu_310_p2_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \curr_off_1_fu_310_p2_carry__3_n_8\,
      CO(3) => \curr_off_1_fu_310_p2_carry__4_n_8\,
      CO(2) => \curr_off_1_fu_310_p2_carry__4_n_9\,
      CO(1) => \curr_off_1_fu_310_p2_carry__4_n_10\,
      CO(0) => \curr_off_1_fu_310_p2_carry__4_n_11\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => curr_off_1_fu_310_p2(24 downto 21),
      S(3 downto 0) => v_assign_cast_reg_406(24 downto 21)
    );
\curr_off_1_fu_310_p2_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \curr_off_1_fu_310_p2_carry__4_n_8\,
      CO(3 downto 0) => \NLW_curr_off_1_fu_310_p2_carry__5_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_curr_off_1_fu_310_p2_carry__5_O_UNCONNECTED\(3 downto 1),
      O(0) => curr_off_1_fu_310_p2(25),
      S(3 downto 1) => B"000",
      S(0) => v_assign_cast_reg_406(25)
    );
\curr_off_1_reg_414[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_assign_cast_reg_406(0),
      O => curr_off_1_fu_310_p2(0)
    );
\curr_off_1_reg_414[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \reg_164[7]_i_2_n_8\,
      I1 => ap_CS_fsm_state10,
      I2 => crc2fra_1_empty_n,
      I3 => \v_assign_cast_reg_406[25]_i_2_n_8\,
      O => ap_NS_fsm1
    );
\curr_off_1_reg_414_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm1,
      D => curr_off_1_fu_310_p2(0),
      Q => curr_off_1_reg_414(0),
      R => '0'
    );
\curr_off_1_reg_414_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm1,
      D => curr_off_1_fu_310_p2(10),
      Q => curr_off_1_reg_414(10),
      R => '0'
    );
\curr_off_1_reg_414_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm1,
      D => curr_off_1_fu_310_p2(11),
      Q => curr_off_1_reg_414(11),
      R => '0'
    );
\curr_off_1_reg_414_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm1,
      D => curr_off_1_fu_310_p2(12),
      Q => curr_off_1_reg_414(12),
      R => '0'
    );
\curr_off_1_reg_414_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm1,
      D => curr_off_1_fu_310_p2(13),
      Q => curr_off_1_reg_414(13),
      R => '0'
    );
\curr_off_1_reg_414_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm1,
      D => curr_off_1_fu_310_p2(14),
      Q => curr_off_1_reg_414(14),
      R => '0'
    );
\curr_off_1_reg_414_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm1,
      D => curr_off_1_fu_310_p2(15),
      Q => curr_off_1_reg_414(15),
      R => '0'
    );
\curr_off_1_reg_414_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm1,
      D => curr_off_1_fu_310_p2(16),
      Q => curr_off_1_reg_414(16),
      R => '0'
    );
\curr_off_1_reg_414_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm1,
      D => curr_off_1_fu_310_p2(17),
      Q => curr_off_1_reg_414(17),
      R => '0'
    );
\curr_off_1_reg_414_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm1,
      D => curr_off_1_fu_310_p2(18),
      Q => curr_off_1_reg_414(18),
      R => '0'
    );
\curr_off_1_reg_414_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm1,
      D => curr_off_1_fu_310_p2(19),
      Q => curr_off_1_reg_414(19),
      R => '0'
    );
\curr_off_1_reg_414_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm1,
      D => curr_off_1_fu_310_p2(1),
      Q => curr_off_1_reg_414(1),
      R => '0'
    );
\curr_off_1_reg_414_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm1,
      D => curr_off_1_fu_310_p2(20),
      Q => curr_off_1_reg_414(20),
      R => '0'
    );
\curr_off_1_reg_414_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm1,
      D => curr_off_1_fu_310_p2(21),
      Q => curr_off_1_reg_414(21),
      R => '0'
    );
\curr_off_1_reg_414_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm1,
      D => curr_off_1_fu_310_p2(22),
      Q => curr_off_1_reg_414(22),
      R => '0'
    );
\curr_off_1_reg_414_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm1,
      D => curr_off_1_fu_310_p2(23),
      Q => curr_off_1_reg_414(23),
      R => '0'
    );
\curr_off_1_reg_414_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm1,
      D => curr_off_1_fu_310_p2(24),
      Q => curr_off_1_reg_414(24),
      R => '0'
    );
\curr_off_1_reg_414_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm1,
      D => curr_off_1_fu_310_p2(25),
      Q => curr_off_1_reg_414(25),
      R => '0'
    );
\curr_off_1_reg_414_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm1,
      D => curr_off_1_fu_310_p2(2),
      Q => curr_off_1_reg_414(2),
      R => '0'
    );
\curr_off_1_reg_414_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm1,
      D => curr_off_1_fu_310_p2(3),
      Q => curr_off_1_reg_414(3),
      R => '0'
    );
\curr_off_1_reg_414_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm1,
      D => curr_off_1_fu_310_p2(4),
      Q => curr_off_1_reg_414(4),
      R => '0'
    );
\curr_off_1_reg_414_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm1,
      D => curr_off_1_fu_310_p2(5),
      Q => curr_off_1_reg_414(5),
      R => '0'
    );
\curr_off_1_reg_414_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm1,
      D => curr_off_1_fu_310_p2(6),
      Q => curr_off_1_reg_414(6),
      R => '0'
    );
\curr_off_1_reg_414_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm1,
      D => curr_off_1_fu_310_p2(7),
      Q => curr_off_1_reg_414(7),
      R => '0'
    );
\curr_off_1_reg_414_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm1,
      D => curr_off_1_fu_310_p2(8),
      Q => curr_off_1_reg_414(8),
      R => '0'
    );
\curr_off_1_reg_414_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm1,
      D => curr_off_1_fu_310_p2(9),
      Q => curr_off_1_reg_414(9),
      R => '0'
    );
\curr_off_fu_238_p2__1_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \curr_off_fu_238_p2__1_carry_n_8\,
      CO(2) => \curr_off_fu_238_p2__1_carry_n_9\,
      CO(1) => \curr_off_fu_238_p2__1_carry_n_10\,
      CO(0) => \curr_off_fu_238_p2__1_carry_n_11\,
      CYINIT => '0',
      DI(3 downto 1) => p_shl2_fu_264_p4(9 downto 7),
      DI(0) => '0',
      O(3 downto 0) => curr_off_fu_238_p2(9 downto 6),
      S(3) => \curr_off_fu_238_p2__1_carry_i_1_n_8\,
      S(2) => \curr_off_fu_238_p2__1_carry_i_2_n_8\,
      S(1) => \curr_off_fu_238_p2__1_carry_i_3_n_8\,
      S(0) => mot1_fu_180_p3(6)
    );
\curr_off_fu_238_p2__1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \curr_off_fu_238_p2__1_carry_n_8\,
      CO(3) => \curr_off_fu_238_p2__1_carry__0_n_8\,
      CO(2) => \curr_off_fu_238_p2__1_carry__0_n_9\,
      CO(1) => \curr_off_fu_238_p2__1_carry__0_n_10\,
      CO(0) => \curr_off_fu_238_p2__1_carry__0_n_11\,
      CYINIT => '0',
      DI(3) => \curr_off_fu_238_p2__1_carry__0_i_1_n_8\,
      DI(2) => \curr_off_fu_238_p2__1_carry__0_i_2_n_8\,
      DI(1) => \curr_off_fu_238_p2__1_carry__0_i_3_n_8\,
      DI(0) => \curr_off_fu_238_p2__1_carry__0_i_4_n_8\,
      O(3 downto 0) => curr_off_fu_238_p2(13 downto 10),
      S(3) => \curr_off_fu_238_p2__1_carry__0_i_5_n_8\,
      S(2) => \curr_off_fu_238_p2__1_carry__0_i_6_n_8\,
      S(1) => \curr_off_fu_238_p2__1_carry__0_i_7_n_8\,
      S(0) => \curr_off_fu_238_p2__1_carry__0_i_8_n_8\
    );
\curr_off_fu_238_p2__1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_shl2_fu_264_p4(10),
      I1 => mot1_fu_180_p3(12),
      I2 => p_shl2_fu_264_p4(12),
      O => \curr_off_fu_238_p2__1_carry__0_i_1_n_8\
    );
\curr_off_fu_238_p2__1_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_shl2_fu_264_p4(9),
      I1 => mot1_fu_180_p3(11),
      I2 => p_shl2_fu_264_p4(11),
      O => \curr_off_fu_238_p2__1_carry__0_i_2_n_8\
    );
\curr_off_fu_238_p2__1_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => mot1_fu_180_p3(10),
      I1 => p_shl2_fu_264_p4(8),
      I2 => p_shl2_fu_264_p4(10),
      O => \curr_off_fu_238_p2__1_carry__0_i_3_n_8\
    );
\curr_off_fu_238_p2__1_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_shl2_fu_264_p4(10),
      I1 => mot1_fu_180_p3(10),
      I2 => p_shl2_fu_264_p4(8),
      O => \curr_off_fu_238_p2__1_carry__0_i_4_n_8\
    );
\curr_off_fu_238_p2__1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \curr_off_fu_238_p2__1_carry__0_i_1_n_8\,
      I1 => p_shl2_fu_264_p4(11),
      I2 => p_shl2_fu_264_p4(13),
      I3 => mot1_fu_180_p3(13),
      O => \curr_off_fu_238_p2__1_carry__0_i_5_n_8\
    );
\curr_off_fu_238_p2__1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \curr_off_fu_238_p2__1_carry__0_i_2_n_8\,
      I1 => p_shl2_fu_264_p4(10),
      I2 => p_shl2_fu_264_p4(12),
      I3 => mot1_fu_180_p3(12),
      O => \curr_off_fu_238_p2__1_carry__0_i_6_n_8\
    );
\curr_off_fu_238_p2__1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \curr_off_fu_238_p2__1_carry__0_i_3_n_8\,
      I1 => p_shl2_fu_264_p4(9),
      I2 => p_shl2_fu_264_p4(11),
      I3 => mot1_fu_180_p3(11),
      O => \curr_off_fu_238_p2__1_carry__0_i_7_n_8\
    );
\curr_off_fu_238_p2__1_carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => p_shl2_fu_264_p4(8),
      I1 => mot1_fu_180_p3(10),
      I2 => p_shl2_fu_264_p4(10),
      I3 => p_shl2_fu_264_p4(7),
      I4 => mot1_fu_180_p3(9),
      O => \curr_off_fu_238_p2__1_carry__0_i_8_n_8\
    );
\curr_off_fu_238_p2__1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \curr_off_fu_238_p2__1_carry__0_n_8\,
      CO(3) => \curr_off_fu_238_p2__1_carry__1_n_8\,
      CO(2) => \curr_off_fu_238_p2__1_carry__1_n_9\,
      CO(1) => \curr_off_fu_238_p2__1_carry__1_n_10\,
      CO(0) => \curr_off_fu_238_p2__1_carry__1_n_11\,
      CYINIT => '0',
      DI(3) => \curr_off_fu_238_p2__1_carry__1_i_1_n_8\,
      DI(2) => \curr_off_fu_238_p2__1_carry__1_i_2_n_8\,
      DI(1) => \curr_off_fu_238_p2__1_carry__1_i_3_n_8\,
      DI(0) => \curr_off_fu_238_p2__1_carry__1_i_4_n_8\,
      O(3 downto 0) => curr_off_fu_238_p2(17 downto 14),
      S(3) => \curr_off_fu_238_p2__1_carry__1_i_5_n_8\,
      S(2) => \curr_off_fu_238_p2__1_carry__1_i_6_n_8\,
      S(1) => \curr_off_fu_238_p2__1_carry__1_i_7_n_8\,
      S(0) => \curr_off_fu_238_p2__1_carry__1_i_8_n_8\
    );
\curr_off_fu_238_p2__1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_shl2_fu_264_p4(14),
      I1 => \val_V_8_reg_369_reg_n_8_[1]\,
      O => \curr_off_fu_238_p2__1_carry__1_i_1_n_8\
    );
\curr_off_fu_238_p2__1_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_shl2_fu_264_p4(13),
      I1 => mot1_fu_180_p3(15),
      I2 => p_shl2_fu_264_p4(15),
      O => \curr_off_fu_238_p2__1_carry__1_i_2_n_8\
    );
\curr_off_fu_238_p2__1_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_shl2_fu_264_p4(12),
      I1 => mot1_fu_180_p3(14),
      I2 => p_shl2_fu_264_p4(14),
      O => \curr_off_fu_238_p2__1_carry__1_i_3_n_8\
    );
\curr_off_fu_238_p2__1_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_shl2_fu_264_p4(11),
      I1 => mot1_fu_180_p3(13),
      I2 => p_shl2_fu_264_p4(13),
      O => \curr_off_fu_238_p2__1_carry__1_i_4_n_8\
    );
\curr_off_fu_238_p2__1_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \val_V_8_reg_369_reg_n_8_[1]\,
      I1 => p_shl2_fu_264_p4(14),
      I2 => \val_V_8_reg_369_reg_n_8_[2]\,
      I3 => p_shl2_fu_264_p4(15),
      O => \curr_off_fu_238_p2__1_carry__1_i_5_n_8\
    );
\curr_off_fu_238_p2__1_carry__1_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => p_shl2_fu_264_p4(15),
      I1 => mot1_fu_180_p3(15),
      I2 => p_shl2_fu_264_p4(13),
      I3 => \val_V_8_reg_369_reg_n_8_[1]\,
      I4 => p_shl2_fu_264_p4(14),
      O => \curr_off_fu_238_p2__1_carry__1_i_6_n_8\
    );
\curr_off_fu_238_p2__1_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => p_shl2_fu_264_p4(14),
      I1 => mot1_fu_180_p3(14),
      I2 => p_shl2_fu_264_p4(12),
      I3 => p_shl2_fu_264_p4(13),
      I4 => p_shl2_fu_264_p4(15),
      I5 => mot1_fu_180_p3(15),
      O => \curr_off_fu_238_p2__1_carry__1_i_7_n_8\
    );
\curr_off_fu_238_p2__1_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \curr_off_fu_238_p2__1_carry__1_i_4_n_8\,
      I1 => p_shl2_fu_264_p4(12),
      I2 => p_shl2_fu_264_p4(14),
      I3 => mot1_fu_180_p3(14),
      O => \curr_off_fu_238_p2__1_carry__1_i_8_n_8\
    );
\curr_off_fu_238_p2__1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \curr_off_fu_238_p2__1_carry__1_n_8\,
      CO(3) => \curr_off_fu_238_p2__1_carry__2_n_8\,
      CO(2) => \curr_off_fu_238_p2__1_carry__2_n_9\,
      CO(1) => \curr_off_fu_238_p2__1_carry__2_n_10\,
      CO(0) => \curr_off_fu_238_p2__1_carry__2_n_11\,
      CYINIT => '0',
      DI(3) => \curr_off_fu_238_p2__1_carry__2_i_1_n_8\,
      DI(2) => \curr_off_fu_238_p2__1_carry__2_i_2_n_8\,
      DI(1) => \curr_off_fu_238_p2__1_carry__2_i_3_n_8\,
      DI(0) => \curr_off_fu_238_p2__1_carry__2_i_4_n_8\,
      O(3 downto 0) => curr_off_fu_238_p2(21 downto 18),
      S(3) => \curr_off_fu_238_p2__1_carry__2_i_5_n_8\,
      S(2) => \curr_off_fu_238_p2__1_carry__2_i_6_n_8\,
      S(1) => \curr_off_fu_238_p2__1_carry__2_i_7_n_8\,
      S(0) => \curr_off_fu_238_p2__1_carry__2_i_8_n_8\
    );
\curr_off_fu_238_p2__1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \val_V_8_reg_369_reg_n_8_[3]\,
      I1 => \val_V_8_reg_369_reg_n_8_[5]\,
      O => \curr_off_fu_238_p2__1_carry__2_i_1_n_8\
    );
\curr_off_fu_238_p2__1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \val_V_8_reg_369_reg_n_8_[2]\,
      I1 => \val_V_8_reg_369_reg_n_8_[4]\,
      O => \curr_off_fu_238_p2__1_carry__2_i_2_n_8\
    );
\curr_off_fu_238_p2__1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \val_V_8_reg_369_reg_n_8_[1]\,
      I1 => \val_V_8_reg_369_reg_n_8_[3]\,
      O => \curr_off_fu_238_p2__1_carry__2_i_3_n_8\
    );
\curr_off_fu_238_p2__1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_shl2_fu_264_p4(15),
      I1 => \val_V_8_reg_369_reg_n_8_[2]\,
      O => \curr_off_fu_238_p2__1_carry__2_i_4_n_8\
    );
\curr_off_fu_238_p2__1_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \val_V_8_reg_369_reg_n_8_[5]\,
      I1 => \val_V_8_reg_369_reg_n_8_[3]\,
      I2 => \val_V_8_reg_369_reg_n_8_[6]\,
      I3 => \val_V_8_reg_369_reg_n_8_[4]\,
      O => \curr_off_fu_238_p2__1_carry__2_i_5_n_8\
    );
\curr_off_fu_238_p2__1_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \val_V_8_reg_369_reg_n_8_[4]\,
      I1 => \val_V_8_reg_369_reg_n_8_[2]\,
      I2 => \val_V_8_reg_369_reg_n_8_[5]\,
      I3 => \val_V_8_reg_369_reg_n_8_[3]\,
      O => \curr_off_fu_238_p2__1_carry__2_i_6_n_8\
    );
\curr_off_fu_238_p2__1_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \val_V_8_reg_369_reg_n_8_[3]\,
      I1 => \val_V_8_reg_369_reg_n_8_[1]\,
      I2 => \val_V_8_reg_369_reg_n_8_[4]\,
      I3 => \val_V_8_reg_369_reg_n_8_[2]\,
      O => \curr_off_fu_238_p2__1_carry__2_i_7_n_8\
    );
\curr_off_fu_238_p2__1_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \val_V_8_reg_369_reg_n_8_[2]\,
      I1 => p_shl2_fu_264_p4(15),
      I2 => \val_V_8_reg_369_reg_n_8_[3]\,
      I3 => \val_V_8_reg_369_reg_n_8_[1]\,
      O => \curr_off_fu_238_p2__1_carry__2_i_8_n_8\
    );
\curr_off_fu_238_p2__1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \curr_off_fu_238_p2__1_carry__2_n_8\,
      CO(3) => curr_off_fu_238_p2(25),
      CO(2) => \NLW_curr_off_fu_238_p2__1_carry__3_CO_UNCONNECTED\(2),
      CO(1) => \curr_off_fu_238_p2__1_carry__3_n_10\,
      CO(0) => \curr_off_fu_238_p2__1_carry__3_n_11\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \val_V_8_reg_369_reg_n_8_[6]\,
      DI(0) => \curr_off_fu_238_p2__1_carry__3_i_1_n_8\,
      O(3) => \NLW_curr_off_fu_238_p2__1_carry__3_O_UNCONNECTED\(3),
      O(2 downto 0) => curr_off_fu_238_p2(24 downto 22),
      S(3) => '1',
      S(2) => \val_V_8_reg_369_reg_n_8_[7]\,
      S(1) => \curr_off_fu_238_p2__1_carry__3_i_2_n_8\,
      S(0) => \curr_off_fu_238_p2__1_carry__3_i_3_n_8\
    );
\curr_off_fu_238_p2__1_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \val_V_8_reg_369_reg_n_8_[4]\,
      I1 => \val_V_8_reg_369_reg_n_8_[6]\,
      O => \curr_off_fu_238_p2__1_carry__3_i_1_n_8\
    );
\curr_off_fu_238_p2__1_carry__3_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \val_V_8_reg_369_reg_n_8_[7]\,
      I1 => \val_V_8_reg_369_reg_n_8_[5]\,
      I2 => \val_V_8_reg_369_reg_n_8_[6]\,
      O => \curr_off_fu_238_p2__1_carry__3_i_2_n_8\
    );
\curr_off_fu_238_p2__1_carry__3_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \val_V_8_reg_369_reg_n_8_[6]\,
      I1 => \val_V_8_reg_369_reg_n_8_[4]\,
      I2 => \val_V_8_reg_369_reg_n_8_[7]\,
      I3 => \val_V_8_reg_369_reg_n_8_[5]\,
      O => \curr_off_fu_238_p2__1_carry__3_i_3_n_8\
    );
\curr_off_fu_238_p2__1_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_shl2_fu_264_p4(7),
      I1 => mot1_fu_180_p3(9),
      I2 => p_shl2_fu_264_p4(9),
      O => \curr_off_fu_238_p2__1_carry_i_1_n_8\
    );
\curr_off_fu_238_p2__1_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_shl2_fu_264_p4(8),
      I1 => mot1_fu_180_p3(8),
      O => \curr_off_fu_238_p2__1_carry_i_2_n_8\
    );
\curr_off_fu_238_p2__1_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_shl2_fu_264_p4(7),
      I1 => mot1_fu_180_p3(7),
      O => \curr_off_fu_238_p2__1_carry_i_3_n_8\
    );
\i1_0_reg_142[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i1_0_reg_142_reg(0),
      O => \i1_0_reg_142[0]_i_1_n_8\
    );
\i1_0_reg_142[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i1_0_reg_142_reg(1),
      I1 => i1_0_reg_142_reg(0),
      O => i_3_fu_322_p2(1)
    );
\i1_0_reg_142[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => i1_0_reg_142_reg(2),
      I1 => i1_0_reg_142_reg(0),
      I2 => i1_0_reg_142_reg(1),
      O => i_3_fu_322_p2(2)
    );
\i1_0_reg_142[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => i1_0_reg_142_reg(3),
      I1 => i1_0_reg_142_reg(1),
      I2 => i1_0_reg_142_reg(0),
      I3 => i1_0_reg_142_reg(2),
      O => i_3_fu_322_p2(3)
    );
\i1_0_reg_142[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => i1_0_reg_142_reg(4),
      I1 => i1_0_reg_142_reg(2),
      I2 => i1_0_reg_142_reg(3),
      I3 => i1_0_reg_142_reg(1),
      I4 => i1_0_reg_142_reg(0),
      O => i_3_fu_322_p2(4)
    );
\i1_0_reg_142[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => icmp_ln60_fu_192_p2,
      I1 => icmp_ln51_fu_186_p2,
      I2 => crc2fra_1_empty_n,
      I3 => ap_CS_fsm_state9,
      O => i1_0_reg_1420
    );
\i1_0_reg_142[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \v_assign_cast_reg_406[25]_i_2_n_8\,
      I1 => crc2fra_1_empty_n,
      I2 => ap_CS_fsm_state10,
      I3 => \i1_0_reg_142[5]_i_4_n_8\,
      O => i1_0_reg_142010_out
    );
\i1_0_reg_142[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => i1_0_reg_142_reg(5),
      I1 => i1_0_reg_142_reg(0),
      I2 => i1_0_reg_142_reg(1),
      I3 => i1_0_reg_142_reg(3),
      I4 => i1_0_reg_142_reg(2),
      I5 => i1_0_reg_142_reg(4),
      O => i_3_fu_322_p2(5)
    );
\i1_0_reg_142[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \i1_0_reg_142[5]_i_5_n_8\,
      I1 => icmp_ln60_reg_380,
      I2 => \icmp_ln51_reg_376_reg_n_8_[0]\,
      O => \i1_0_reg_142[5]_i_4_n_8\
    );
\i1_0_reg_142[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => i1_0_reg_142_reg(5),
      I1 => i1_0_reg_142_reg(4),
      I2 => i1_0_reg_142_reg(2),
      I3 => i1_0_reg_142_reg(3),
      I4 => i1_0_reg_142_reg(1),
      I5 => i1_0_reg_142_reg(0),
      O => \i1_0_reg_142[5]_i_5_n_8\
    );
\i1_0_reg_142_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i1_0_reg_142010_out,
      D => \i1_0_reg_142[0]_i_1_n_8\,
      Q => i1_0_reg_142_reg(0),
      R => i1_0_reg_1420
    );
\i1_0_reg_142_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i1_0_reg_142010_out,
      D => i_3_fu_322_p2(1),
      Q => i1_0_reg_142_reg(1),
      R => i1_0_reg_1420
    );
\i1_0_reg_142_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i1_0_reg_142010_out,
      D => i_3_fu_322_p2(2),
      Q => i1_0_reg_142_reg(2),
      R => i1_0_reg_1420
    );
\i1_0_reg_142_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i1_0_reg_142010_out,
      D => i_3_fu_322_p2(3),
      Q => i1_0_reg_142_reg(3),
      R => i1_0_reg_1420
    );
\i1_0_reg_142_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i1_0_reg_142010_out,
      D => i_3_fu_322_p2(4),
      Q => i1_0_reg_142_reg(4),
      R => i1_0_reg_1420
    );
\i1_0_reg_142_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i1_0_reg_142010_out,
      D => i_3_fu_322_p2(5),
      Q => i1_0_reg_142_reg(5),
      R => i1_0_reg_1420
    );
\i3_0_reg_122[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i3_0_reg_122_reg(0),
      O => i_4_fu_291_p2(0)
    );
\i3_0_reg_122[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i3_0_reg_122_reg(0),
      I1 => i3_0_reg_122_reg(1),
      O => i_4_fu_291_p2(1)
    );
\i3_0_reg_122[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => i3_0_reg_122_reg(2),
      I1 => i3_0_reg_122_reg(1),
      I2 => i3_0_reg_122_reg(0),
      O => i_4_fu_291_p2(2)
    );
\i3_0_reg_122[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => i3_0_reg_122_reg(3),
      I1 => i3_0_reg_122_reg(0),
      I2 => i3_0_reg_122_reg(1),
      I3 => i3_0_reg_122_reg(2),
      O => i_4_fu_291_p2(3)
    );
\i3_0_reg_122[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => i3_0_reg_122_reg(4),
      I1 => i3_0_reg_122_reg(2),
      I2 => i3_0_reg_122_reg(1),
      I3 => i3_0_reg_122_reg(0),
      I4 => i3_0_reg_122_reg(3),
      O => i_4_fu_291_p2(4)
    );
\i3_0_reg_122[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => i3_0_reg_122_reg(5),
      I1 => i3_0_reg_122_reg(3),
      I2 => i3_0_reg_122_reg(0),
      I3 => i3_0_reg_122_reg(1),
      I4 => i3_0_reg_122_reg(2),
      I5 => i3_0_reg_122_reg(4),
      O => i_4_fu_291_p2(5)
    );
\i3_0_reg_122[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => icmp_ln60_fu_192_p2,
      I1 => ap_CS_fsm_state9,
      I2 => crc2fra_1_empty_n,
      I3 => icmp_ln51_fu_186_p2,
      I4 => icmp_ln96_fu_198_p2,
      O => i3_0_reg_1220
    );
\i3_0_reg_122[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => \v_assign_cast_reg_406[25]_i_2_n_8\,
      I1 => crc2fra_1_empty_n,
      I2 => ap_CS_fsm_state10,
      I3 => \i3_0_reg_122[6]_i_4_n_8\,
      O => i3_0_reg_12208_out
    );
\i3_0_reg_122[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => i3_0_reg_122_reg(6),
      I1 => \i3_0_reg_122[6]_i_5_n_8\,
      I2 => i3_0_reg_122_reg(5),
      O => i_4_fu_291_p2(6)
    );
\i3_0_reg_122[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFEF"
    )
        port map (
      I0 => \i3_0_reg_122[6]_i_6_n_8\,
      I1 => i3_0_reg_122_reg(3),
      I2 => i3_0_reg_122_reg(6),
      I3 => i3_0_reg_122_reg(4),
      I4 => \i3_0_reg_122[6]_i_7_n_8\,
      I5 => icmp_ln96_reg_384,
      O => \i3_0_reg_122[6]_i_4_n_8\
    );
\i3_0_reg_122[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => i3_0_reg_122_reg(4),
      I1 => i3_0_reg_122_reg(2),
      I2 => i3_0_reg_122_reg(1),
      I3 => i3_0_reg_122_reg(0),
      I4 => i3_0_reg_122_reg(3),
      O => \i3_0_reg_122[6]_i_5_n_8\
    );
\i3_0_reg_122[6]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => i3_0_reg_122_reg(1),
      I1 => i3_0_reg_122_reg(0),
      I2 => i3_0_reg_122_reg(5),
      I3 => i3_0_reg_122_reg(2),
      O => \i3_0_reg_122[6]_i_6_n_8\
    );
\i3_0_reg_122[6]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => icmp_ln60_reg_380,
      I1 => \icmp_ln51_reg_376_reg_n_8_[0]\,
      O => \i3_0_reg_122[6]_i_7_n_8\
    );
\i3_0_reg_122_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i3_0_reg_12208_out,
      D => i_4_fu_291_p2(0),
      Q => i3_0_reg_122_reg(0),
      R => i3_0_reg_1220
    );
\i3_0_reg_122_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i3_0_reg_12208_out,
      D => i_4_fu_291_p2(1),
      Q => i3_0_reg_122_reg(1),
      R => i3_0_reg_1220
    );
\i3_0_reg_122_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i3_0_reg_12208_out,
      D => i_4_fu_291_p2(2),
      Q => i3_0_reg_122_reg(2),
      R => i3_0_reg_1220
    );
\i3_0_reg_122_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i3_0_reg_12208_out,
      D => i_4_fu_291_p2(3),
      Q => i3_0_reg_122_reg(3),
      R => i3_0_reg_1220
    );
\i3_0_reg_122_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i3_0_reg_12208_out,
      D => i_4_fu_291_p2(4),
      Q => i3_0_reg_122_reg(4),
      R => i3_0_reg_1220
    );
\i3_0_reg_122_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i3_0_reg_12208_out,
      D => i_4_fu_291_p2(5),
      Q => i3_0_reg_122_reg(5),
      R => i3_0_reg_1220
    );
\i3_0_reg_122_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i3_0_reg_12208_out,
      D => i_4_fu_291_p2(6),
      Q => i3_0_reg_122_reg(6),
      R => i3_0_reg_1220
    );
\i_0_reg_153[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_0_reg_153_reg(0),
      O => \i_0_reg_153[0]_i_1_n_8\
    );
\i_0_reg_153[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_0_reg_153_reg(1),
      I1 => i_0_reg_153_reg(0),
      O => i_fu_334_p2(1)
    );
\i_0_reg_153[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => i_0_reg_153_reg(2),
      I1 => i_0_reg_153_reg(0),
      I2 => i_0_reg_153_reg(1),
      O => i_fu_334_p2(2)
    );
\i_0_reg_153[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => i_0_reg_153_reg(3),
      I1 => i_0_reg_153_reg(1),
      I2 => i_0_reg_153_reg(0),
      I3 => i_0_reg_153_reg(2),
      O => i_fu_334_p2(3)
    );
\i_0_reg_153[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => i_0_reg_153_reg(4),
      I1 => i_0_reg_153_reg(1),
      I2 => i_0_reg_153_reg(0),
      I3 => i_0_reg_153_reg(2),
      I4 => i_0_reg_153_reg(3),
      O => i_fu_334_p2(4)
    );
\i_0_reg_153[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => icmp_ln51_fu_186_p2,
      I1 => ap_CS_fsm_state9,
      I2 => crc2fra_1_empty_n,
      O => \i_0_reg_153[5]_i_1_n_8\
    );
\i_0_reg_153[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => \v_assign_cast_reg_406[25]_i_2_n_8\,
      I1 => crc2fra_1_empty_n,
      I2 => ap_CS_fsm_state10,
      I3 => \i_0_reg_153[5]_i_4_n_8\,
      O => e_read1339_out
    );
\i_0_reg_153[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => i_0_reg_153_reg(5),
      I1 => i_0_reg_153_reg(3),
      I2 => i_0_reg_153_reg(2),
      I3 => i_0_reg_153_reg(0),
      I4 => i_0_reg_153_reg(1),
      I5 => i_0_reg_153_reg(4),
      O => i_fu_334_p2(5)
    );
\i_0_reg_153[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA2AAAAAAAAA"
    )
        port map (
      I0 => \icmp_ln51_reg_376_reg_n_8_[0]\,
      I1 => i_0_reg_153_reg(5),
      I2 => i_0_reg_153_reg(4),
      I3 => i_0_reg_153_reg(0),
      I4 => i_0_reg_153_reg(1),
      I5 => \i_0_reg_153[5]_i_5_n_8\,
      O => \i_0_reg_153[5]_i_4_n_8\
    );
\i_0_reg_153[5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_0_reg_153_reg(2),
      I1 => i_0_reg_153_reg(3),
      O => \i_0_reg_153[5]_i_5_n_8\
    );
\i_0_reg_153_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => e_read1339_out,
      D => \i_0_reg_153[0]_i_1_n_8\,
      Q => i_0_reg_153_reg(0),
      R => \i_0_reg_153[5]_i_1_n_8\
    );
\i_0_reg_153_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => e_read1339_out,
      D => i_fu_334_p2(1),
      Q => i_0_reg_153_reg(1),
      R => \i_0_reg_153[5]_i_1_n_8\
    );
\i_0_reg_153_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => e_read1339_out,
      D => i_fu_334_p2(2),
      Q => i_0_reg_153_reg(2),
      R => \i_0_reg_153[5]_i_1_n_8\
    );
\i_0_reg_153_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => e_read1339_out,
      D => i_fu_334_p2(3),
      Q => i_0_reg_153_reg(3),
      R => \i_0_reg_153[5]_i_1_n_8\
    );
\i_0_reg_153_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => e_read1339_out,
      D => i_fu_334_p2(4),
      Q => i_0_reg_153_reg(4),
      R => \i_0_reg_153[5]_i_1_n_8\
    );
\i_0_reg_153_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => e_read1339_out,
      D => i_fu_334_p2(5),
      Q => i_0_reg_153_reg(5),
      R => \i_0_reg_153[5]_i_1_n_8\
    );
\icmp_ln51_reg_376[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => icmp_ln51_fu_186_p2,
      I1 => crc2fra_1_empty_n,
      I2 => ap_CS_fsm_state9,
      I3 => \icmp_ln51_reg_376_reg_n_8_[0]\,
      O => \icmp_ln51_reg_376[0]_i_1_n_8\
    );
\icmp_ln51_reg_376_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \icmp_ln51_reg_376[0]_i_1_n_8\,
      Q => \icmp_ln51_reg_376_reg_n_8_[0]\,
      R => '0'
    );
\icmp_ln60_reg_380[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => icmp_ln60_fu_192_p2,
      I1 => ap_CS_fsm_state9,
      I2 => crc2fra_1_empty_n,
      I3 => icmp_ln51_fu_186_p2,
      I4 => icmp_ln60_reg_380,
      O => \icmp_ln60_reg_380[0]_i_1_n_8\
    );
\icmp_ln60_reg_380_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \icmp_ln60_reg_380[0]_i_1_n_8\,
      Q => icmp_ln60_reg_380,
      R => '0'
    );
\icmp_ln96_reg_384[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => icmp_ln96_fu_198_p2,
      I1 => icmp_ln51_fu_186_p2,
      I2 => crc2fra_1_empty_n,
      I3 => ap_CS_fsm_state9,
      I4 => icmp_ln60_fu_192_p2,
      I5 => icmp_ln96_reg_384,
      O => \icmp_ln96_reg_384[0]_i_1_n_8\
    );
\icmp_ln96_reg_384_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \icmp_ln96_reg_384[0]_i_1_n_8\,
      Q => icmp_ln96_reg_384,
      R => '0'
    );
\mOutPtr[4]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFBFFFFFFFF"
    )
        port map (
      I0 => ce,
      I1 => ap_CS_fsm_state10,
      I2 => \v_assign_cast_reg_406[25]_i_2_n_8\,
      I3 => \mOutPtr[4]_i_3_n_8\,
      I4 => \mOutPtr[5]_i_5__0_n_8\,
      I5 => crc2fra_1_empty_n,
      O => \ap_CS_fsm_reg[9]_0\
    );
\mOutPtr[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800000"
    )
        port map (
      I0 => rgbv_full_n,
      I1 => addr_full_n,
      I2 => ap_CS_fsm_state12,
      I3 => ap_CS_fsm_state9,
      I4 => crc2fra_1_empty_n,
      O => \mOutPtr[4]_i_3_n_8\
    );
\mOutPtr[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => i_0_reg_153_reg(3),
      I1 => i_0_reg_153_reg(2),
      I2 => i_0_reg_153_reg(1),
      I3 => i_0_reg_153_reg(0),
      I4 => i_0_reg_153_reg(4),
      I5 => i_0_reg_153_reg(5),
      O => \mOutPtr[5]_i_10_n_8\
    );
\mOutPtr[5]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => i3_0_reg_122_reg(3),
      I1 => i3_0_reg_122_reg(6),
      I2 => i3_0_reg_122_reg(4),
      O => \mOutPtr[5]_i_11_n_8\
    );
\mOutPtr[5]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F0E0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => crc2fra_1_empty_n,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \mOutPtr[5]_i_12_n_8\
    );
\mOutPtr[5]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC8CCCCCCC8CCC8"
    )
        port map (
      I0 => \mOutPtr[5]_i_5__0_n_8\,
      I1 => crc2fra_1_empty_n,
      I2 => ap_CS_fsm_state9,
      I3 => \^ap_cs_fsm_reg[11]_0\,
      I4 => \v_assign_cast_reg_406[25]_i_2_n_8\,
      I5 => ap_CS_fsm_state10,
      O => internal_empty_n_reg
    );
\mOutPtr[5]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0F0F0E0"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => crc2fra_1_empty_n,
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \mOutPtr[5]_i_7_n_8\,
      O => \mOutPtr[5]_i_5__0_n_8\
    );
\mOutPtr[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555FD55"
    )
        port map (
      I0 => ap_CS_fsm_state10,
      I1 => icmp_ln107_fu_305_p2,
      I2 => \v_assign_cast_reg_406[25]_i_3_n_8\,
      I3 => \i1_0_reg_142[5]_i_4_n_8\,
      I4 => \mOutPtr[5]_i_8_n_8\,
      I5 => \mOutPtr[5]_i_9_n_8\,
      O => \ap_CS_fsm_reg[9]_1\
    );
\mOutPtr[5]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => ap_CS_fsm_state11,
      I2 => \^q\(4),
      I3 => ap_CS_fsm_state8,
      I4 => crc2fra_1_empty_n,
      O => \mOutPtr[5]_i_7_n_8\
    );
\mOutPtr[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5053505350535050"
    )
        port map (
      I0 => \mOutPtr[5]_i_10_n_8\,
      I1 => icmp_ln96_reg_384,
      I2 => \icmp_ln51_reg_376_reg_n_8_[0]\,
      I3 => icmp_ln60_reg_380,
      I4 => \mOutPtr[5]_i_11_n_8\,
      I5 => \i3_0_reg_122[6]_i_6_n_8\,
      O => \mOutPtr[5]_i_8_n_8\
    );
\mOutPtr[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEAA"
    )
        port map (
      I0 => reg_1680,
      I1 => \^q\(4),
      I2 => ap_CS_fsm_state8,
      I3 => crc2fra_1_empty_n,
      I4 => \mOutPtr[5]_i_12_n_8\,
      I5 => \mOutPtr[4]_i_3_n_8\,
      O => \mOutPtr[5]_i_9_n_8\
    );
\reg_164[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F08880"
    )
        port map (
      I0 => \reg_164[7]_i_2_n_8\,
      I1 => ap_CS_fsm_state10,
      I2 => crc2fra_1_empty_n,
      I3 => \v_assign_cast_reg_406[25]_i_2_n_8\,
      I4 => \^q\(0),
      O => reg_1640
    );
\reg_164[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => icmp_ln107_fu_305_p2,
      I1 => icmp_ln96_reg_384,
      I2 => icmp_ln60_reg_380,
      I3 => \icmp_ln51_reg_376_reg_n_8_[0]\,
      O => \reg_164[7]_i_2_n_8\
    );
\reg_164_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => reg_1640,
      D => D(0),
      Q => \^reg_164_reg[7]_0\(0),
      R => '0'
    );
\reg_164_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => reg_1640,
      D => D(1),
      Q => \^reg_164_reg[7]_0\(1),
      R => '0'
    );
\reg_164_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => reg_1640,
      D => D(2),
      Q => \^reg_164_reg[7]_0\(2),
      R => '0'
    );
\reg_164_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => reg_1640,
      D => D(3),
      Q => \^reg_164_reg[7]_0\(3),
      R => '0'
    );
\reg_164_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => reg_1640,
      D => D(4),
      Q => \^reg_164_reg[7]_0\(4),
      R => '0'
    );
\reg_164_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => reg_1640,
      D => D(5),
      Q => \^reg_164_reg[7]_0\(5),
      R => '0'
    );
\reg_164_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => reg_1640,
      D => D(6),
      Q => \^reg_164_reg[7]_0\(6),
      R => '0'
    );
\reg_164_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => reg_1640,
      D => D(7),
      Q => \^reg_164_reg[7]_0\(7),
      R => '0'
    );
\reg_168[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => ap_CS_fsm_state11,
      I1 => ap_CS_fsm_state3,
      I2 => crc2fra_1_empty_n,
      O => reg_1680
    );
\reg_168_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => reg_1680,
      D => D(0),
      Q => \^reg_168_reg[7]_0\(0),
      R => '0'
    );
\reg_168_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => reg_1680,
      D => D(1),
      Q => \^reg_168_reg[7]_0\(1),
      R => '0'
    );
\reg_168_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => reg_1680,
      D => D(2),
      Q => \^reg_168_reg[7]_0\(2),
      R => '0'
    );
\reg_168_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => reg_1680,
      D => D(3),
      Q => \^reg_168_reg[7]_0\(3),
      R => '0'
    );
\reg_168_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => reg_1680,
      D => D(4),
      Q => \^reg_168_reg[7]_0\(4),
      R => '0'
    );
\reg_168_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => reg_1680,
      D => D(5),
      Q => \^reg_168_reg[7]_0\(5),
      R => '0'
    );
\reg_168_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => reg_1680,
      D => D(6),
      Q => \^reg_168_reg[7]_0\(6),
      R => '0'
    );
\reg_168_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => reg_1680,
      D => D(7),
      Q => \^reg_168_reg[7]_0\(7),
      R => '0'
    );
rgbv_write_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => ap_CS_fsm_state12,
      I1 => crc2fra_1_empty_n,
      I2 => addr_full_n,
      I3 => rgbv_full_n,
      O => \^ap_cs_fsm_reg[11]_0\
    );
\v_assign_cast_reg_406[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E000"
    )
        port map (
      I0 => \v_assign_cast_reg_406[25]_i_2_n_8\,
      I1 => crc2fra_1_empty_n,
      I2 => ap_CS_fsm_state10,
      I3 => icmp_ln96_reg_384,
      I4 => icmp_ln60_reg_380,
      I5 => \icmp_ln51_reg_376_reg_n_8_[0]\,
      O => v_assign_cast_reg_4061
    );
\v_assign_cast_reg_406[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E0"
    )
        port map (
      I0 => icmp_ln107_fu_305_p2,
      I1 => \v_assign_cast_reg_406[25]_i_3_n_8\,
      I2 => \i1_0_reg_142[5]_i_4_n_8\,
      I3 => \i3_0_reg_122[6]_i_4_n_8\,
      I4 => \i_0_reg_153[5]_i_4_n_8\,
      O => \v_assign_cast_reg_406[25]_i_2_n_8\
    );
\v_assign_cast_reg_406[25]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \icmp_ln51_reg_376_reg_n_8_[0]\,
      I1 => icmp_ln60_reg_380,
      I2 => icmp_ln96_reg_384,
      O => \v_assign_cast_reg_406[25]_i_3_n_8\
    );
\v_assign_cast_reg_406_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_cast_reg_4061,
      D => v_assign_cast_reg_406(0),
      Q => addr_din(0),
      R => '0'
    );
\v_assign_cast_reg_406_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_cast_reg_4061,
      D => v_assign_cast_reg_406(10),
      Q => addr_din(10),
      R => '0'
    );
\v_assign_cast_reg_406_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_cast_reg_4061,
      D => v_assign_cast_reg_406(11),
      Q => addr_din(11),
      R => '0'
    );
\v_assign_cast_reg_406_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_cast_reg_4061,
      D => v_assign_cast_reg_406(12),
      Q => addr_din(12),
      R => '0'
    );
\v_assign_cast_reg_406_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_cast_reg_4061,
      D => v_assign_cast_reg_406(13),
      Q => addr_din(13),
      R => '0'
    );
\v_assign_cast_reg_406_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_cast_reg_4061,
      D => v_assign_cast_reg_406(14),
      Q => addr_din(14),
      R => '0'
    );
\v_assign_cast_reg_406_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_cast_reg_4061,
      D => v_assign_cast_reg_406(15),
      Q => addr_din(15),
      R => '0'
    );
\v_assign_cast_reg_406_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_cast_reg_4061,
      D => v_assign_cast_reg_406(16),
      Q => addr_din(16),
      R => '0'
    );
\v_assign_cast_reg_406_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_cast_reg_4061,
      D => v_assign_cast_reg_406(17),
      Q => addr_din(17),
      R => '0'
    );
\v_assign_cast_reg_406_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_cast_reg_4061,
      D => v_assign_cast_reg_406(18),
      Q => addr_din(18),
      R => '0'
    );
\v_assign_cast_reg_406_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_cast_reg_4061,
      D => v_assign_cast_reg_406(19),
      Q => addr_din(19),
      R => '0'
    );
\v_assign_cast_reg_406_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_cast_reg_4061,
      D => v_assign_cast_reg_406(1),
      Q => addr_din(1),
      R => '0'
    );
\v_assign_cast_reg_406_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_cast_reg_4061,
      D => v_assign_cast_reg_406(20),
      Q => addr_din(20),
      R => '0'
    );
\v_assign_cast_reg_406_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_cast_reg_4061,
      D => v_assign_cast_reg_406(21),
      Q => addr_din(21),
      R => '0'
    );
\v_assign_cast_reg_406_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_cast_reg_4061,
      D => v_assign_cast_reg_406(22),
      Q => addr_din(22),
      R => '0'
    );
\v_assign_cast_reg_406_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_cast_reg_4061,
      D => v_assign_cast_reg_406(23),
      Q => addr_din(23),
      R => '0'
    );
\v_assign_cast_reg_406_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_cast_reg_4061,
      D => v_assign_cast_reg_406(24),
      Q => addr_din(24),
      R => '0'
    );
\v_assign_cast_reg_406_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_cast_reg_4061,
      D => v_assign_cast_reg_406(25),
      Q => addr_din(25),
      R => '0'
    );
\v_assign_cast_reg_406_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_cast_reg_4061,
      D => v_assign_cast_reg_406(2),
      Q => addr_din(2),
      R => '0'
    );
\v_assign_cast_reg_406_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_cast_reg_4061,
      D => v_assign_cast_reg_406(3),
      Q => addr_din(3),
      R => '0'
    );
\v_assign_cast_reg_406_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_cast_reg_4061,
      D => v_assign_cast_reg_406(4),
      Q => addr_din(4),
      R => '0'
    );
\v_assign_cast_reg_406_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_cast_reg_4061,
      D => v_assign_cast_reg_406(5),
      Q => addr_din(5),
      R => '0'
    );
\v_assign_cast_reg_406_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_cast_reg_4061,
      D => v_assign_cast_reg_406(6),
      Q => addr_din(6),
      R => '0'
    );
\v_assign_cast_reg_406_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_cast_reg_4061,
      D => v_assign_cast_reg_406(7),
      Q => addr_din(7),
      R => '0'
    );
\v_assign_cast_reg_406_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_cast_reg_4061,
      D => v_assign_cast_reg_406(8),
      Q => addr_din(8),
      R => '0'
    );
\v_assign_cast_reg_406_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => v_assign_cast_reg_4061,
      D => v_assign_cast_reg_406(9),
      Q => addr_din(9),
      R => '0'
    );
\v_assign_reg_133[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => curr_off_1_reg_414(0),
      I1 => ap_CS_fsm_state12,
      I2 => crc2fra_1_empty_n,
      I3 => addr_full_n,
      I4 => rgbv_full_n,
      I5 => mot1_fu_180_p3(0),
      O => p_1_in(0)
    );
\v_assign_reg_133[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => curr_off_1_reg_414(10),
      I1 => ap_CS_fsm_state12,
      I2 => crc2fra_1_empty_n,
      I3 => addr_full_n,
      I4 => rgbv_full_n,
      I5 => curr_off_fu_238_p2(10),
      O => p_1_in(10)
    );
\v_assign_reg_133[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => curr_off_1_reg_414(11),
      I1 => ap_CS_fsm_state12,
      I2 => crc2fra_1_empty_n,
      I3 => addr_full_n,
      I4 => rgbv_full_n,
      I5 => curr_off_fu_238_p2(11),
      O => p_1_in(11)
    );
\v_assign_reg_133[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => curr_off_1_reg_414(12),
      I1 => ap_CS_fsm_state12,
      I2 => crc2fra_1_empty_n,
      I3 => addr_full_n,
      I4 => rgbv_full_n,
      I5 => curr_off_fu_238_p2(12),
      O => p_1_in(12)
    );
\v_assign_reg_133[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => curr_off_1_reg_414(13),
      I1 => ap_CS_fsm_state12,
      I2 => crc2fra_1_empty_n,
      I3 => addr_full_n,
      I4 => rgbv_full_n,
      I5 => curr_off_fu_238_p2(13),
      O => p_1_in(13)
    );
\v_assign_reg_133[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => curr_off_1_reg_414(14),
      I1 => ap_CS_fsm_state12,
      I2 => crc2fra_1_empty_n,
      I3 => addr_full_n,
      I4 => rgbv_full_n,
      I5 => curr_off_fu_238_p2(14),
      O => p_1_in(14)
    );
\v_assign_reg_133[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => curr_off_1_reg_414(15),
      I1 => ap_CS_fsm_state12,
      I2 => crc2fra_1_empty_n,
      I3 => addr_full_n,
      I4 => rgbv_full_n,
      I5 => curr_off_fu_238_p2(15),
      O => p_1_in(15)
    );
\v_assign_reg_133[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => curr_off_1_reg_414(16),
      I1 => ap_CS_fsm_state12,
      I2 => crc2fra_1_empty_n,
      I3 => addr_full_n,
      I4 => rgbv_full_n,
      I5 => curr_off_fu_238_p2(16),
      O => p_1_in(16)
    );
\v_assign_reg_133[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => curr_off_1_reg_414(17),
      I1 => ap_CS_fsm_state12,
      I2 => crc2fra_1_empty_n,
      I3 => addr_full_n,
      I4 => rgbv_full_n,
      I5 => curr_off_fu_238_p2(17),
      O => p_1_in(17)
    );
\v_assign_reg_133[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => curr_off_1_reg_414(18),
      I1 => ap_CS_fsm_state12,
      I2 => crc2fra_1_empty_n,
      I3 => addr_full_n,
      I4 => rgbv_full_n,
      I5 => curr_off_fu_238_p2(18),
      O => p_1_in(18)
    );
\v_assign_reg_133[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => curr_off_1_reg_414(19),
      I1 => ap_CS_fsm_state12,
      I2 => crc2fra_1_empty_n,
      I3 => addr_full_n,
      I4 => rgbv_full_n,
      I5 => curr_off_fu_238_p2(19),
      O => p_1_in(19)
    );
\v_assign_reg_133[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => curr_off_1_reg_414(1),
      I1 => ap_CS_fsm_state12,
      I2 => crc2fra_1_empty_n,
      I3 => addr_full_n,
      I4 => rgbv_full_n,
      I5 => mot1_fu_180_p3(1),
      O => p_1_in(1)
    );
\v_assign_reg_133[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => curr_off_1_reg_414(20),
      I1 => ap_CS_fsm_state12,
      I2 => crc2fra_1_empty_n,
      I3 => addr_full_n,
      I4 => rgbv_full_n,
      I5 => curr_off_fu_238_p2(20),
      O => p_1_in(20)
    );
\v_assign_reg_133[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => curr_off_1_reg_414(21),
      I1 => ap_CS_fsm_state12,
      I2 => crc2fra_1_empty_n,
      I3 => addr_full_n,
      I4 => rgbv_full_n,
      I5 => curr_off_fu_238_p2(21),
      O => p_1_in(21)
    );
\v_assign_reg_133[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => curr_off_1_reg_414(22),
      I1 => ap_CS_fsm_state12,
      I2 => crc2fra_1_empty_n,
      I3 => addr_full_n,
      I4 => rgbv_full_n,
      I5 => curr_off_fu_238_p2(22),
      O => p_1_in(22)
    );
\v_assign_reg_133[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => curr_off_1_reg_414(23),
      I1 => ap_CS_fsm_state12,
      I2 => crc2fra_1_empty_n,
      I3 => addr_full_n,
      I4 => rgbv_full_n,
      I5 => curr_off_fu_238_p2(23),
      O => p_1_in(23)
    );
\v_assign_reg_133[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => curr_off_1_reg_414(24),
      I1 => ap_CS_fsm_state12,
      I2 => crc2fra_1_empty_n,
      I3 => addr_full_n,
      I4 => rgbv_full_n,
      I5 => curr_off_fu_238_p2(24),
      O => p_1_in(24)
    );
\v_assign_reg_133[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAEAAAAAA"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[11]_0\,
      I1 => icmp_ln96_fu_198_p2,
      I2 => icmp_ln51_fu_186_p2,
      I3 => crc2fra_1_empty_n,
      I4 => ap_CS_fsm_state9,
      I5 => icmp_ln60_fu_192_p2,
      O => \v_assign_reg_133[25]_i_1_n_8\
    );
\v_assign_reg_133[25]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \v_assign_reg_133[25]_i_6_n_8\,
      I1 => \v_assign_reg_133[25]_i_9_n_8\,
      I2 => \^reg_168_reg[7]_0\(6),
      I3 => \^reg_168_reg[7]_0\(5),
      I4 => \^reg_164_reg[7]_0\(1),
      O => \v_assign_reg_133[25]_i_10_n_8\
    );
\v_assign_reg_133[25]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \^reg_164_reg[7]_0\(2),
      I1 => \^reg_164_reg[7]_0\(0),
      I2 => \^reg_164_reg[7]_0\(1),
      O => \v_assign_reg_133[25]_i_11_n_8\
    );
\v_assign_reg_133[25]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEEFE"
    )
        port map (
      I0 => \^reg_168_reg[7]_0\(6),
      I1 => \^reg_168_reg[7]_0\(3),
      I2 => \^reg_164_reg[7]_0\(6),
      I3 => \^reg_164_reg[7]_0\(7),
      I4 => \^reg_168_reg[7]_0\(0),
      O => \v_assign_reg_133[25]_i_12_n_8\
    );
\v_assign_reg_133[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => curr_off_1_reg_414(25),
      I1 => ap_CS_fsm_state12,
      I2 => crc2fra_1_empty_n,
      I3 => addr_full_n,
      I4 => rgbv_full_n,
      I5 => curr_off_fu_238_p2(25),
      O => p_1_in(25)
    );
\v_assign_reg_133[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \v_assign_reg_133[25]_i_6_n_8\,
      I1 => \v_assign_reg_133[25]_i_7_n_8\,
      I2 => \v_assign_reg_133[25]_i_8_n_8\,
      I3 => \^reg_168_reg[7]_0\(5),
      I4 => \^reg_168_reg[7]_0\(6),
      I5 => \v_assign_reg_133[25]_i_9_n_8\,
      O => icmp_ln96_fu_198_p2
    );
\v_assign_reg_133[25]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \v_assign_reg_133[25]_i_10_n_8\,
      I1 => \^reg_164_reg[7]_0\(5),
      I2 => \^reg_168_reg[7]_0\(7),
      I3 => \^reg_164_reg[7]_0\(3),
      I4 => \^reg_164_reg[7]_0\(4),
      I5 => \v_assign_reg_133[25]_i_11_n_8\,
      O => icmp_ln51_fu_186_p2
    );
\v_assign_reg_133[25]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => \v_assign_reg_133[25]_i_10_n_8\,
      I1 => \^reg_164_reg[7]_0\(5),
      I2 => \^reg_168_reg[7]_0\(7),
      I3 => \^reg_164_reg[7]_0\(4),
      I4 => \^reg_164_reg[7]_0\(3),
      I5 => \v_assign_reg_133[25]_i_11_n_8\,
      O => icmp_ln60_fu_192_p2
    );
\v_assign_reg_133[25]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D0DD"
    )
        port map (
      I0 => \^reg_168_reg[7]_0\(4),
      I1 => \^reg_168_reg[7]_0\(5),
      I2 => \^reg_168_reg[7]_0\(2),
      I3 => \^reg_168_reg[7]_0\(1),
      I4 => \v_assign_reg_133[25]_i_12_n_8\,
      O => \v_assign_reg_133[25]_i_6_n_8\
    );
\v_assign_reg_133[25]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \^reg_164_reg[7]_0\(0),
      I1 => \^reg_164_reg[7]_0\(1),
      I2 => \^reg_164_reg[7]_0\(5),
      I3 => \^reg_168_reg[7]_0\(7),
      O => \v_assign_reg_133[25]_i_7_n_8\
    );
\v_assign_reg_133[25]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^reg_164_reg[7]_0\(3),
      I1 => \^reg_164_reg[7]_0\(4),
      O => \v_assign_reg_133[25]_i_8_n_8\
    );
\v_assign_reg_133[25]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^reg_168_reg[7]_0\(2),
      I1 => \^reg_168_reg[7]_0\(0),
      I2 => \^reg_164_reg[7]_0\(2),
      I3 => \^reg_168_reg[7]_0\(3),
      I4 => \^reg_164_reg[7]_0\(7),
      O => \v_assign_reg_133[25]_i_9_n_8\
    );
\v_assign_reg_133[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => curr_off_1_reg_414(2),
      I1 => ap_CS_fsm_state12,
      I2 => crc2fra_1_empty_n,
      I3 => addr_full_n,
      I4 => rgbv_full_n,
      I5 => mot1_fu_180_p3(2),
      O => p_1_in(2)
    );
\v_assign_reg_133[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => curr_off_1_reg_414(3),
      I1 => ap_CS_fsm_state12,
      I2 => crc2fra_1_empty_n,
      I3 => addr_full_n,
      I4 => rgbv_full_n,
      I5 => mot1_fu_180_p3(3),
      O => p_1_in(3)
    );
\v_assign_reg_133[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => curr_off_1_reg_414(4),
      I1 => ap_CS_fsm_state12,
      I2 => crc2fra_1_empty_n,
      I3 => addr_full_n,
      I4 => rgbv_full_n,
      I5 => mot1_fu_180_p3(4),
      O => p_1_in(4)
    );
\v_assign_reg_133[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => curr_off_1_reg_414(5),
      I1 => ap_CS_fsm_state12,
      I2 => crc2fra_1_empty_n,
      I3 => addr_full_n,
      I4 => rgbv_full_n,
      I5 => mot1_fu_180_p3(5),
      O => p_1_in(5)
    );
\v_assign_reg_133[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => curr_off_1_reg_414(6),
      I1 => ap_CS_fsm_state12,
      I2 => crc2fra_1_empty_n,
      I3 => addr_full_n,
      I4 => rgbv_full_n,
      I5 => curr_off_fu_238_p2(6),
      O => p_1_in(6)
    );
\v_assign_reg_133[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => curr_off_1_reg_414(7),
      I1 => ap_CS_fsm_state12,
      I2 => crc2fra_1_empty_n,
      I3 => addr_full_n,
      I4 => rgbv_full_n,
      I5 => curr_off_fu_238_p2(7),
      O => p_1_in(7)
    );
\v_assign_reg_133[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => curr_off_1_reg_414(8),
      I1 => ap_CS_fsm_state12,
      I2 => crc2fra_1_empty_n,
      I3 => addr_full_n,
      I4 => rgbv_full_n,
      I5 => curr_off_fu_238_p2(8),
      O => p_1_in(8)
    );
\v_assign_reg_133[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => curr_off_1_reg_414(9),
      I1 => ap_CS_fsm_state12,
      I2 => crc2fra_1_empty_n,
      I3 => addr_full_n,
      I4 => rgbv_full_n,
      I5 => curr_off_fu_238_p2(9),
      O => p_1_in(9)
    );
\v_assign_reg_133_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_133[25]_i_1_n_8\,
      D => p_1_in(0),
      Q => v_assign_cast_reg_406(0),
      R => '0'
    );
\v_assign_reg_133_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_133[25]_i_1_n_8\,
      D => p_1_in(10),
      Q => v_assign_cast_reg_406(10),
      R => '0'
    );
\v_assign_reg_133_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_133[25]_i_1_n_8\,
      D => p_1_in(11),
      Q => v_assign_cast_reg_406(11),
      R => '0'
    );
\v_assign_reg_133_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_133[25]_i_1_n_8\,
      D => p_1_in(12),
      Q => v_assign_cast_reg_406(12),
      R => '0'
    );
\v_assign_reg_133_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_133[25]_i_1_n_8\,
      D => p_1_in(13),
      Q => v_assign_cast_reg_406(13),
      R => '0'
    );
\v_assign_reg_133_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_133[25]_i_1_n_8\,
      D => p_1_in(14),
      Q => v_assign_cast_reg_406(14),
      R => '0'
    );
\v_assign_reg_133_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_133[25]_i_1_n_8\,
      D => p_1_in(15),
      Q => v_assign_cast_reg_406(15),
      R => '0'
    );
\v_assign_reg_133_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_133[25]_i_1_n_8\,
      D => p_1_in(16),
      Q => v_assign_cast_reg_406(16),
      R => '0'
    );
\v_assign_reg_133_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_133[25]_i_1_n_8\,
      D => p_1_in(17),
      Q => v_assign_cast_reg_406(17),
      R => '0'
    );
\v_assign_reg_133_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_133[25]_i_1_n_8\,
      D => p_1_in(18),
      Q => v_assign_cast_reg_406(18),
      R => '0'
    );
\v_assign_reg_133_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_133[25]_i_1_n_8\,
      D => p_1_in(19),
      Q => v_assign_cast_reg_406(19),
      R => '0'
    );
\v_assign_reg_133_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_133[25]_i_1_n_8\,
      D => p_1_in(1),
      Q => v_assign_cast_reg_406(1),
      R => '0'
    );
\v_assign_reg_133_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_133[25]_i_1_n_8\,
      D => p_1_in(20),
      Q => v_assign_cast_reg_406(20),
      R => '0'
    );
\v_assign_reg_133_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_133[25]_i_1_n_8\,
      D => p_1_in(21),
      Q => v_assign_cast_reg_406(21),
      R => '0'
    );
\v_assign_reg_133_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_133[25]_i_1_n_8\,
      D => p_1_in(22),
      Q => v_assign_cast_reg_406(22),
      R => '0'
    );
\v_assign_reg_133_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_133[25]_i_1_n_8\,
      D => p_1_in(23),
      Q => v_assign_cast_reg_406(23),
      R => '0'
    );
\v_assign_reg_133_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_133[25]_i_1_n_8\,
      D => p_1_in(24),
      Q => v_assign_cast_reg_406(24),
      R => '0'
    );
\v_assign_reg_133_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_133[25]_i_1_n_8\,
      D => p_1_in(25),
      Q => v_assign_cast_reg_406(25),
      R => '0'
    );
\v_assign_reg_133_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_133[25]_i_1_n_8\,
      D => p_1_in(2),
      Q => v_assign_cast_reg_406(2),
      R => '0'
    );
\v_assign_reg_133_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_133[25]_i_1_n_8\,
      D => p_1_in(3),
      Q => v_assign_cast_reg_406(3),
      R => '0'
    );
\v_assign_reg_133_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_133[25]_i_1_n_8\,
      D => p_1_in(4),
      Q => v_assign_cast_reg_406(4),
      R => '0'
    );
\v_assign_reg_133_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_133[25]_i_1_n_8\,
      D => p_1_in(5),
      Q => v_assign_cast_reg_406(5),
      R => '0'
    );
\v_assign_reg_133_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_133[25]_i_1_n_8\,
      D => p_1_in(6),
      Q => v_assign_cast_reg_406(6),
      R => '0'
    );
\v_assign_reg_133_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_133[25]_i_1_n_8\,
      D => p_1_in(7),
      Q => v_assign_cast_reg_406(7),
      R => '0'
    );
\v_assign_reg_133_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_133[25]_i_1_n_8\,
      D => p_1_in(8),
      Q => v_assign_cast_reg_406(8),
      R => '0'
    );
\v_assign_reg_133_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \v_assign_reg_133[25]_i_1_n_8\,
      D => p_1_in(9),
      Q => v_assign_cast_reg_406(9),
      R => '0'
    );
\val_V_5_reg_351_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \val_V_5_reg_351_reg[0]_0\(0),
      D => D(0),
      Q => mot1_fu_180_p3(0),
      R => '0'
    );
\val_V_5_reg_351_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \val_V_5_reg_351_reg[0]_0\(0),
      D => D(1),
      Q => mot1_fu_180_p3(1),
      R => '0'
    );
\val_V_5_reg_351_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \val_V_5_reg_351_reg[0]_0\(0),
      D => D(2),
      Q => mot1_fu_180_p3(2),
      R => '0'
    );
\val_V_5_reg_351_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \val_V_5_reg_351_reg[0]_0\(0),
      D => D(3),
      Q => mot1_fu_180_p3(3),
      R => '0'
    );
\val_V_5_reg_351_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \val_V_5_reg_351_reg[0]_0\(0),
      D => D(4),
      Q => mot1_fu_180_p3(4),
      R => '0'
    );
\val_V_5_reg_351_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \val_V_5_reg_351_reg[0]_0\(0),
      D => D(5),
      Q => mot1_fu_180_p3(5),
      R => '0'
    );
\val_V_5_reg_351_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \val_V_5_reg_351_reg[0]_0\(0),
      D => D(6),
      Q => mot1_fu_180_p3(6),
      R => '0'
    );
\val_V_5_reg_351_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \val_V_5_reg_351_reg[0]_0\(0),
      D => D(7),
      Q => mot1_fu_180_p3(7),
      R => '0'
    );
\val_V_6_reg_356_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \val_V_6_reg_356_reg[0]_0\(0),
      D => D(0),
      Q => mot1_fu_180_p3(8),
      R => '0'
    );
\val_V_6_reg_356_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \val_V_6_reg_356_reg[0]_0\(0),
      D => D(1),
      Q => mot1_fu_180_p3(9),
      R => '0'
    );
\val_V_6_reg_356_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \val_V_6_reg_356_reg[0]_0\(0),
      D => D(2),
      Q => mot1_fu_180_p3(10),
      R => '0'
    );
\val_V_6_reg_356_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \val_V_6_reg_356_reg[0]_0\(0),
      D => D(3),
      Q => mot1_fu_180_p3(11),
      R => '0'
    );
\val_V_6_reg_356_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \val_V_6_reg_356_reg[0]_0\(0),
      D => D(4),
      Q => mot1_fu_180_p3(12),
      R => '0'
    );
\val_V_6_reg_356_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \val_V_6_reg_356_reg[0]_0\(0),
      D => D(5),
      Q => mot1_fu_180_p3(13),
      R => '0'
    );
\val_V_6_reg_356_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \val_V_6_reg_356_reg[0]_0\(0),
      D => D(6),
      Q => mot1_fu_180_p3(14),
      R => '0'
    );
\val_V_6_reg_356_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \val_V_6_reg_356_reg[0]_0\(0),
      D => D(7),
      Q => mot1_fu_180_p3(15),
      R => '0'
    );
\val_V_7_reg_361_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => E(0),
      D => D(0),
      Q => p_shl2_fu_264_p4(7),
      R => '0'
    );
\val_V_7_reg_361_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => E(0),
      D => D(1),
      Q => p_shl2_fu_264_p4(8),
      R => '0'
    );
\val_V_7_reg_361_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => E(0),
      D => D(2),
      Q => p_shl2_fu_264_p4(9),
      R => '0'
    );
\val_V_7_reg_361_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => E(0),
      D => D(3),
      Q => p_shl2_fu_264_p4(10),
      R => '0'
    );
\val_V_7_reg_361_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => E(0),
      D => D(4),
      Q => p_shl2_fu_264_p4(11),
      R => '0'
    );
\val_V_7_reg_361_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => E(0),
      D => D(5),
      Q => p_shl2_fu_264_p4(12),
      R => '0'
    );
\val_V_7_reg_361_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => E(0),
      D => D(6),
      Q => p_shl2_fu_264_p4(13),
      R => '0'
    );
\val_V_7_reg_361_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => E(0),
      D => D(7),
      Q => p_shl2_fu_264_p4(14),
      R => '0'
    );
\val_V_8_reg_369_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \val_V_8_reg_369_reg[0]_0\(0),
      D => D(0),
      Q => p_shl2_fu_264_p4(15),
      R => '0'
    );
\val_V_8_reg_369_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \val_V_8_reg_369_reg[0]_0\(0),
      D => D(1),
      Q => \val_V_8_reg_369_reg_n_8_[1]\,
      R => '0'
    );
\val_V_8_reg_369_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \val_V_8_reg_369_reg[0]_0\(0),
      D => D(2),
      Q => \val_V_8_reg_369_reg_n_8_[2]\,
      R => '0'
    );
\val_V_8_reg_369_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \val_V_8_reg_369_reg[0]_0\(0),
      D => D(3),
      Q => \val_V_8_reg_369_reg_n_8_[3]\,
      R => '0'
    );
\val_V_8_reg_369_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \val_V_8_reg_369_reg[0]_0\(0),
      D => D(4),
      Q => \val_V_8_reg_369_reg_n_8_[4]\,
      R => '0'
    );
\val_V_8_reg_369_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \val_V_8_reg_369_reg[0]_0\(0),
      D => D(5),
      Q => \val_V_8_reg_369_reg_n_8_[5]\,
      R => '0'
    );
\val_V_8_reg_369_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \val_V_8_reg_369_reg[0]_0\(0),
      D => D(6),
      Q => \val_V_8_reg_369_reg_n_8_[6]\,
      R => '0'
    );
\val_V_8_reg_369_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \val_V_8_reg_369_reg[0]_0\(0),
      D => D(7),
      Q => \val_V_8_reg_369_reg_n_8_[7]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_ModuleCompute_macg8j_DSP48_3 is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clock : in STD_LOGIC;
    e_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    C : in STD_LOGIC_VECTOR ( 14 downto 0 );
    e_empty_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_ModuleCompute_macg8j_DSP48_3 : entity is "ModuleCompute_macg8j_DSP48_3";
end bd_0_hls_inst_0_ModuleCompute_macg8j_DSP48_3;

architecture STRUCTURE of bd_0_hls_inst_0_ModuleCompute_macg8j_DSP48_3 is
  signal ap_NS_fsm11_out : STD_LOGIC;
  signal NLW_p_RnM_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_RnM_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_RnM_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_RnM_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 16 );
  signal NLW_p_RnM_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
p_RnM: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => e_dout(7),
      A(28) => e_dout(7),
      A(27) => e_dout(7),
      A(26) => e_dout(7),
      A(25) => e_dout(7),
      A(24) => e_dout(7),
      A(23) => e_dout(7),
      A(22) => e_dout(7),
      A(21) => e_dout(7),
      A(20) => e_dout(7),
      A(19) => e_dout(7),
      A(18) => e_dout(7),
      A(17) => e_dout(7),
      A(16) => e_dout(7),
      A(15) => e_dout(7),
      A(14) => e_dout(7),
      A(13) => e_dout(7),
      A(12) => e_dout(7),
      A(11) => e_dout(7),
      A(10) => e_dout(7),
      A(9) => e_dout(7),
      A(8) => e_dout(7),
      A(7 downto 0) => e_dout(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_RnM_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => e_dout(7),
      B(16) => e_dout(7),
      B(15) => e_dout(7),
      B(14) => e_dout(7),
      B(13) => e_dout(7),
      B(12) => e_dout(7),
      B(11) => e_dout(7),
      B(10) => e_dout(7),
      B(9) => e_dout(7),
      B(8) => e_dout(7),
      B(7 downto 0) => e_dout(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_RnM_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => C(14),
      C(46) => C(14),
      C(45) => C(14),
      C(44) => C(14),
      C(43) => C(14),
      C(42) => C(14),
      C(41) => C(14),
      C(40) => C(14),
      C(39) => C(14),
      C(38) => C(14),
      C(37) => C(14),
      C(36) => C(14),
      C(35) => C(14),
      C(34) => C(14),
      C(33) => C(14),
      C(32) => C(14),
      C(31) => C(14),
      C(30) => C(14),
      C(29) => C(14),
      C(28) => C(14),
      C(27) => C(14),
      C(26) => C(14),
      C(25) => C(14),
      C(24) => C(14),
      C(23) => C(14),
      C(22) => C(14),
      C(21) => C(14),
      C(20) => C(14),
      C(19) => C(14),
      C(18) => C(14),
      C(17) => C(14),
      C(16) => C(14),
      C(15 downto 2) => C(14 downto 1),
      C(1) => '0',
      C(0) => C(0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_RnM_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_RnM_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => ap_NS_fsm11_out,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => ap_NS_fsm11_out,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => Q(1),
      CLK => clock,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_RnM_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_p_RnM_OVERFLOW_UNCONNECTED,
      P(47 downto 16) => NLW_p_RnM_P_UNCONNECTED(47 downto 16),
      P(15 downto 0) => P(15 downto 0),
      PATTERNBDETECT => NLW_p_RnM_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_RnM_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_RnM_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_RnM_UNDERFLOW_UNCONNECTED
    );
p_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => e_empty_n,
      I1 => Q(0),
      O => ap_NS_fsm11_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_Seuil_calc2_mac_mdEe_DSP48_0 is
  port (
    P : out STD_LOGIC_VECTOR ( 16 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    p_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    p_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    p_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    p_3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \p_0108_0_reg_221_reg[5]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \p_0108_0_reg_221_reg[9]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \p_0108_0_reg_221_reg[13]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \p_0108_0_reg_221_reg[17]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    p_4 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clock : in STD_LOGIC;
    p_5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    p_6 : in STD_LOGIC;
    dbl2scalc_1_empty_n : in STD_LOGIC;
    p_7 : in STD_LOGIC;
    detect_1_full_n : in STD_LOGIC;
    p_8 : in STD_LOGIC;
    p_9 : in STD_LOGIC;
    \res_2_V_reg_897_reg[5]\ : in STD_LOGIC;
    \res_2_V_reg_897_reg[5]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \res_2_V_reg_897_reg[5]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 18 downto 0 );
    ap_enable_reg_pp0_iter3 : in STD_LOGIC;
    \sum_V_reg_892_reg[21]\ : in STD_LOGIC_VECTOR ( 18 downto 0 );
    p_10 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_enable_reg_pp0_iter2 : in STD_LOGIC;
    p_11 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_Seuil_calc2_mac_mdEe_DSP48_0 : entity is "Seuil_calc2_mac_mdEe_DSP48_0";
end bd_0_hls_inst_0_Seuil_calc2_mac_mdEe_DSP48_0;

architecture STRUCTURE of bd_0_hls_inst_0_Seuil_calc2_mac_mdEe_DSP48_0 is
  signal \^p\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal grp_fu_664_p0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ret_V_reg_8820 : STD_LOGIC;
  signal \sum_V_reg_892[10]_i_2_n_8\ : STD_LOGIC;
  signal \sum_V_reg_892[10]_i_3_n_8\ : STD_LOGIC;
  signal \sum_V_reg_892[10]_i_4_n_8\ : STD_LOGIC;
  signal \sum_V_reg_892[10]_i_5_n_8\ : STD_LOGIC;
  signal \sum_V_reg_892[14]_i_2_n_8\ : STD_LOGIC;
  signal \sum_V_reg_892[14]_i_3_n_8\ : STD_LOGIC;
  signal \sum_V_reg_892[14]_i_4_n_8\ : STD_LOGIC;
  signal \sum_V_reg_892[14]_i_5_n_8\ : STD_LOGIC;
  signal \sum_V_reg_892[18]_i_2_n_8\ : STD_LOGIC;
  signal \sum_V_reg_892[18]_i_3_n_8\ : STD_LOGIC;
  signal \sum_V_reg_892[18]_i_4_n_8\ : STD_LOGIC;
  signal \sum_V_reg_892[18]_i_5_n_8\ : STD_LOGIC;
  signal \sum_V_reg_892[2]_i_2_n_8\ : STD_LOGIC;
  signal \sum_V_reg_892[2]_i_3_n_8\ : STD_LOGIC;
  signal \sum_V_reg_892[2]_i_4_n_8\ : STD_LOGIC;
  signal \sum_V_reg_892[6]_i_2_n_8\ : STD_LOGIC;
  signal \sum_V_reg_892[6]_i_3_n_8\ : STD_LOGIC;
  signal \sum_V_reg_892[6]_i_4_n_8\ : STD_LOGIC;
  signal \sum_V_reg_892[6]_i_5_n_8\ : STD_LOGIC;
  signal \sum_V_reg_892_reg[10]_i_1_n_10\ : STD_LOGIC;
  signal \sum_V_reg_892_reg[10]_i_1_n_11\ : STD_LOGIC;
  signal \sum_V_reg_892_reg[10]_i_1_n_8\ : STD_LOGIC;
  signal \sum_V_reg_892_reg[10]_i_1_n_9\ : STD_LOGIC;
  signal \sum_V_reg_892_reg[14]_i_1_n_10\ : STD_LOGIC;
  signal \sum_V_reg_892_reg[14]_i_1_n_11\ : STD_LOGIC;
  signal \sum_V_reg_892_reg[14]_i_1_n_8\ : STD_LOGIC;
  signal \sum_V_reg_892_reg[14]_i_1_n_9\ : STD_LOGIC;
  signal \sum_V_reg_892_reg[18]_i_1_n_10\ : STD_LOGIC;
  signal \sum_V_reg_892_reg[18]_i_1_n_11\ : STD_LOGIC;
  signal \sum_V_reg_892_reg[18]_i_1_n_9\ : STD_LOGIC;
  signal \sum_V_reg_892_reg[2]_i_1_n_10\ : STD_LOGIC;
  signal \sum_V_reg_892_reg[2]_i_1_n_11\ : STD_LOGIC;
  signal \sum_V_reg_892_reg[2]_i_1_n_8\ : STD_LOGIC;
  signal \sum_V_reg_892_reg[2]_i_1_n_9\ : STD_LOGIC;
  signal \sum_V_reg_892_reg[6]_i_1_n_10\ : STD_LOGIC;
  signal \sum_V_reg_892_reg[6]_i_1_n_11\ : STD_LOGIC;
  signal \sum_V_reg_892_reg[6]_i_1_n_8\ : STD_LOGIC;
  signal \sum_V_reg_892_reg[6]_i_1_n_9\ : STD_LOGIC;
  signal NLW_p_RnM_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_RnM_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_RnM_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_RnM_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 17 );
  signal NLW_p_RnM_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_sum_V_reg_892_reg[18]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of p_RnM : label is "{SYNTH-12 {cell *THIS*}}";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \sum_V_reg_892_reg[10]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sum_V_reg_892_reg[14]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sum_V_reg_892_reg[18]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sum_V_reg_892_reg[2]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \sum_V_reg_892_reg[6]_i_1\ : label is 11;
begin
  P(16 downto 0) <= \^p\(16 downto 0);
p_RnM: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => grp_fu_664_p0(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_RnM_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0011",
      B(17 downto 8) => B"0000000000",
      B(7 downto 0) => grp_fu_664_p0(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_RnM_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 16) => B"00000000000000000000000000000000",
      C(15 downto 0) => p_5(15 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_RnM_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_RnM_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => ret_V_reg_8820,
      CLK => clock,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_RnM_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_p_RnM_OVERFLOW_UNCONNECTED,
      P(47 downto 17) => NLW_p_RnM_P_UNCONNECTED(47 downto 17),
      P(16 downto 0) => \^p\(16 downto 0),
      PATTERNBDETECT => NLW_p_RnM_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_RnM_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_RnM_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_RnM_UNDERFLOW_UNCONNECTED
    );
\p_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A008A8A00000000"
    )
        port map (
      I0 => p_6,
      I1 => dbl2scalc_1_empty_n,
      I2 => p_7,
      I3 => detect_1_full_n,
      I4 => p_8,
      I5 => p_9,
      O => ret_V_reg_8820
    );
p_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_10(7),
      I1 => ap_enable_reg_pp0_iter2,
      I2 => p_11(7),
      O => grp_fu_664_p0(7)
    );
p_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_10(6),
      I1 => ap_enable_reg_pp0_iter2,
      I2 => p_11(6),
      O => grp_fu_664_p0(6)
    );
p_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_10(5),
      I1 => ap_enable_reg_pp0_iter2,
      I2 => p_11(5),
      O => grp_fu_664_p0(5)
    );
p_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_10(4),
      I1 => ap_enable_reg_pp0_iter2,
      I2 => p_11(4),
      O => grp_fu_664_p0(4)
    );
p_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_10(3),
      I1 => ap_enable_reg_pp0_iter2,
      I2 => p_11(3),
      O => grp_fu_664_p0(3)
    );
p_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_10(2),
      I1 => ap_enable_reg_pp0_iter2,
      I2 => p_11(2),
      O => grp_fu_664_p0(2)
    );
p_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_10(1),
      I1 => ap_enable_reg_pp0_iter2,
      I2 => p_11(1),
      O => grp_fu_664_p0(1)
    );
p_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_10(0),
      I1 => ap_enable_reg_pp0_iter2,
      I2 => p_11(0),
      O => grp_fu_664_p0(0)
    );
\res_2_V_reg_897[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \res_2_V_reg_897_reg[5]\,
      I1 => \res_2_V_reg_897_reg[5]_0\,
      I2 => D(0),
      I3 => D(1),
      I4 => D(2),
      I5 => \res_2_V_reg_897_reg[5]_1\,
      O => SR(0)
    );
\sum_V_fu_454_p2_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => Q(6),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \sum_V_reg_892_reg[21]\(6),
      I3 => \^p\(6),
      O => \p_0108_0_reg_221_reg[9]\(3)
    );
\sum_V_fu_454_p2_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => Q(5),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \sum_V_reg_892_reg[21]\(5),
      I3 => \^p\(5),
      O => \p_0108_0_reg_221_reg[9]\(2)
    );
\sum_V_fu_454_p2_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => Q(4),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \sum_V_reg_892_reg[21]\(4),
      I3 => \^p\(4),
      O => \p_0108_0_reg_221_reg[9]\(1)
    );
\sum_V_fu_454_p2_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => Q(3),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \sum_V_reg_892_reg[21]\(3),
      I3 => \^p\(3),
      O => \p_0108_0_reg_221_reg[9]\(0)
    );
\sum_V_fu_454_p2_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => Q(10),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \sum_V_reg_892_reg[21]\(10),
      I3 => \^p\(10),
      O => \p_0108_0_reg_221_reg[13]\(3)
    );
\sum_V_fu_454_p2_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => Q(9),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \sum_V_reg_892_reg[21]\(9),
      I3 => \^p\(9),
      O => \p_0108_0_reg_221_reg[13]\(2)
    );
\sum_V_fu_454_p2_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => Q(8),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \sum_V_reg_892_reg[21]\(8),
      I3 => \^p\(8),
      O => \p_0108_0_reg_221_reg[13]\(1)
    );
\sum_V_fu_454_p2_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => Q(7),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \sum_V_reg_892_reg[21]\(7),
      I3 => \^p\(7),
      O => \p_0108_0_reg_221_reg[13]\(0)
    );
\sum_V_fu_454_p2_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => Q(14),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \sum_V_reg_892_reg[21]\(14),
      I3 => \^p\(14),
      O => \p_0108_0_reg_221_reg[17]\(3)
    );
\sum_V_fu_454_p2_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => Q(13),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \sum_V_reg_892_reg[21]\(13),
      I3 => \^p\(13),
      O => \p_0108_0_reg_221_reg[17]\(2)
    );
\sum_V_fu_454_p2_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => Q(12),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \sum_V_reg_892_reg[21]\(12),
      I3 => \^p\(12),
      O => \p_0108_0_reg_221_reg[17]\(1)
    );
\sum_V_fu_454_p2_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => Q(11),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \sum_V_reg_892_reg[21]\(11),
      I3 => \^p\(11),
      O => \p_0108_0_reg_221_reg[17]\(0)
    );
\sum_V_fu_454_p2_carry__3_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^p\(16),
      I1 => Q(17),
      I2 => ap_enable_reg_pp0_iter3,
      I3 => \sum_V_reg_892_reg[21]\(17),
      O => p_4(2)
    );
\sum_V_fu_454_p2_carry__3_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^p\(16),
      I1 => Q(16),
      I2 => ap_enable_reg_pp0_iter3,
      I3 => \sum_V_reg_892_reg[21]\(16),
      O => p_4(1)
    );
\sum_V_fu_454_p2_carry__3_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => Q(15),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \sum_V_reg_892_reg[21]\(15),
      I3 => \^p\(15),
      O => p_4(0)
    );
sum_V_fu_454_p2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => Q(2),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \sum_V_reg_892_reg[21]\(2),
      I3 => \^p\(2),
      O => \p_0108_0_reg_221_reg[5]\(2)
    );
sum_V_fu_454_p2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => Q(1),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \sum_V_reg_892_reg[21]\(1),
      I3 => \^p\(1),
      O => \p_0108_0_reg_221_reg[5]\(1)
    );
sum_V_fu_454_p2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => Q(0),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => \sum_V_reg_892_reg[21]\(0),
      I3 => \^p\(0),
      O => \p_0108_0_reg_221_reg[5]\(0)
    );
\sum_V_reg_892[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^p\(10),
      I1 => Q(10),
      I2 => ap_enable_reg_pp0_iter3,
      I3 => \sum_V_reg_892_reg[21]\(10),
      O => \sum_V_reg_892[10]_i_2_n_8\
    );
\sum_V_reg_892[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^p\(9),
      I1 => Q(9),
      I2 => ap_enable_reg_pp0_iter3,
      I3 => \sum_V_reg_892_reg[21]\(9),
      O => \sum_V_reg_892[10]_i_3_n_8\
    );
\sum_V_reg_892[10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^p\(8),
      I1 => Q(8),
      I2 => ap_enable_reg_pp0_iter3,
      I3 => \sum_V_reg_892_reg[21]\(8),
      O => \sum_V_reg_892[10]_i_4_n_8\
    );
\sum_V_reg_892[10]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^p\(7),
      I1 => Q(7),
      I2 => ap_enable_reg_pp0_iter3,
      I3 => \sum_V_reg_892_reg[21]\(7),
      O => \sum_V_reg_892[10]_i_5_n_8\
    );
\sum_V_reg_892[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^p\(14),
      I1 => Q(14),
      I2 => ap_enable_reg_pp0_iter3,
      I3 => \sum_V_reg_892_reg[21]\(14),
      O => \sum_V_reg_892[14]_i_2_n_8\
    );
\sum_V_reg_892[14]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^p\(13),
      I1 => Q(13),
      I2 => ap_enable_reg_pp0_iter3,
      I3 => \sum_V_reg_892_reg[21]\(13),
      O => \sum_V_reg_892[14]_i_3_n_8\
    );
\sum_V_reg_892[14]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^p\(12),
      I1 => Q(12),
      I2 => ap_enable_reg_pp0_iter3,
      I3 => \sum_V_reg_892_reg[21]\(12),
      O => \sum_V_reg_892[14]_i_4_n_8\
    );
\sum_V_reg_892[14]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^p\(11),
      I1 => Q(11),
      I2 => ap_enable_reg_pp0_iter3,
      I3 => \sum_V_reg_892_reg[21]\(11),
      O => \sum_V_reg_892[14]_i_5_n_8\
    );
\sum_V_reg_892[18]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^p\(16),
      I1 => Q(18),
      I2 => ap_enable_reg_pp0_iter3,
      I3 => \sum_V_reg_892_reg[21]\(18),
      O => \sum_V_reg_892[18]_i_2_n_8\
    );
\sum_V_reg_892[18]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^p\(16),
      I1 => Q(17),
      I2 => ap_enable_reg_pp0_iter3,
      I3 => \sum_V_reg_892_reg[21]\(17),
      O => \sum_V_reg_892[18]_i_3_n_8\
    );
\sum_V_reg_892[18]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^p\(16),
      I1 => Q(16),
      I2 => ap_enable_reg_pp0_iter3,
      I3 => \sum_V_reg_892_reg[21]\(16),
      O => \sum_V_reg_892[18]_i_4_n_8\
    );
\sum_V_reg_892[18]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^p\(15),
      I1 => Q(15),
      I2 => ap_enable_reg_pp0_iter3,
      I3 => \sum_V_reg_892_reg[21]\(15),
      O => \sum_V_reg_892[18]_i_5_n_8\
    );
\sum_V_reg_892[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^p\(2),
      I1 => Q(2),
      I2 => ap_enable_reg_pp0_iter3,
      I3 => \sum_V_reg_892_reg[21]\(2),
      O => \sum_V_reg_892[2]_i_2_n_8\
    );
\sum_V_reg_892[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^p\(1),
      I1 => Q(1),
      I2 => ap_enable_reg_pp0_iter3,
      I3 => \sum_V_reg_892_reg[21]\(1),
      O => \sum_V_reg_892[2]_i_3_n_8\
    );
\sum_V_reg_892[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^p\(0),
      I1 => Q(0),
      I2 => ap_enable_reg_pp0_iter3,
      I3 => \sum_V_reg_892_reg[21]\(0),
      O => \sum_V_reg_892[2]_i_4_n_8\
    );
\sum_V_reg_892[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^p\(6),
      I1 => Q(6),
      I2 => ap_enable_reg_pp0_iter3,
      I3 => \sum_V_reg_892_reg[21]\(6),
      O => \sum_V_reg_892[6]_i_2_n_8\
    );
\sum_V_reg_892[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^p\(5),
      I1 => Q(5),
      I2 => ap_enable_reg_pp0_iter3,
      I3 => \sum_V_reg_892_reg[21]\(5),
      O => \sum_V_reg_892[6]_i_3_n_8\
    );
\sum_V_reg_892[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^p\(4),
      I1 => Q(4),
      I2 => ap_enable_reg_pp0_iter3,
      I3 => \sum_V_reg_892_reg[21]\(4),
      O => \sum_V_reg_892[6]_i_4_n_8\
    );
\sum_V_reg_892[6]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^p\(3),
      I1 => Q(3),
      I2 => ap_enable_reg_pp0_iter3,
      I3 => \sum_V_reg_892_reg[21]\(3),
      O => \sum_V_reg_892[6]_i_5_n_8\
    );
\sum_V_reg_892_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_V_reg_892_reg[6]_i_1_n_8\,
      CO(3) => \sum_V_reg_892_reg[10]_i_1_n_8\,
      CO(2) => \sum_V_reg_892_reg[10]_i_1_n_9\,
      CO(1) => \sum_V_reg_892_reg[10]_i_1_n_10\,
      CO(0) => \sum_V_reg_892_reg[10]_i_1_n_11\,
      CYINIT => '0',
      DI(3 downto 0) => \^p\(10 downto 7),
      O(3 downto 0) => p_1(3 downto 0),
      S(3) => \sum_V_reg_892[10]_i_2_n_8\,
      S(2) => \sum_V_reg_892[10]_i_3_n_8\,
      S(1) => \sum_V_reg_892[10]_i_4_n_8\,
      S(0) => \sum_V_reg_892[10]_i_5_n_8\
    );
\sum_V_reg_892_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_V_reg_892_reg[10]_i_1_n_8\,
      CO(3) => \sum_V_reg_892_reg[14]_i_1_n_8\,
      CO(2) => \sum_V_reg_892_reg[14]_i_1_n_9\,
      CO(1) => \sum_V_reg_892_reg[14]_i_1_n_10\,
      CO(0) => \sum_V_reg_892_reg[14]_i_1_n_11\,
      CYINIT => '0',
      DI(3 downto 0) => \^p\(14 downto 11),
      O(3 downto 0) => p_2(3 downto 0),
      S(3) => \sum_V_reg_892[14]_i_2_n_8\,
      S(2) => \sum_V_reg_892[14]_i_3_n_8\,
      S(1) => \sum_V_reg_892[14]_i_4_n_8\,
      S(0) => \sum_V_reg_892[14]_i_5_n_8\
    );
\sum_V_reg_892_reg[18]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_V_reg_892_reg[14]_i_1_n_8\,
      CO(3) => \NLW_sum_V_reg_892_reg[18]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \sum_V_reg_892_reg[18]_i_1_n_9\,
      CO(1) => \sum_V_reg_892_reg[18]_i_1_n_10\,
      CO(0) => \sum_V_reg_892_reg[18]_i_1_n_11\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \^p\(16),
      DI(1 downto 0) => \^p\(16 downto 15),
      O(3 downto 0) => p_3(3 downto 0),
      S(3) => \sum_V_reg_892[18]_i_2_n_8\,
      S(2) => \sum_V_reg_892[18]_i_3_n_8\,
      S(1) => \sum_V_reg_892[18]_i_4_n_8\,
      S(0) => \sum_V_reg_892[18]_i_5_n_8\
    );
\sum_V_reg_892_reg[2]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum_V_reg_892_reg[2]_i_1_n_8\,
      CO(2) => \sum_V_reg_892_reg[2]_i_1_n_9\,
      CO(1) => \sum_V_reg_892_reg[2]_i_1_n_10\,
      CO(0) => \sum_V_reg_892_reg[2]_i_1_n_11\,
      CYINIT => '0',
      DI(3 downto 1) => \^p\(2 downto 0),
      DI(0) => '0',
      O(3 downto 0) => O(3 downto 0),
      S(3) => \sum_V_reg_892[2]_i_2_n_8\,
      S(2) => \sum_V_reg_892[2]_i_3_n_8\,
      S(1) => \sum_V_reg_892[2]_i_4_n_8\,
      S(0) => S(0)
    );
\sum_V_reg_892_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_V_reg_892_reg[2]_i_1_n_8\,
      CO(3) => \sum_V_reg_892_reg[6]_i_1_n_8\,
      CO(2) => \sum_V_reg_892_reg[6]_i_1_n_9\,
      CO(1) => \sum_V_reg_892_reg[6]_i_1_n_10\,
      CO(0) => \sum_V_reg_892_reg[6]_i_1_n_11\,
      CYINIT => '0',
      DI(3 downto 0) => \^p\(6 downto 3),
      O(3 downto 0) => p_0(3 downto 0),
      S(3) => \sum_V_reg_892[6]_i_2_n_8\,
      S(2) => \sum_V_reg_892[6]_i_3_n_8\,
      S(1) => \sum_V_reg_892[6]_i_4_n_8\,
      S(0) => \sum_V_reg_892[6]_i_5_n_8\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_fifo_w1_d1024_A_shiftReg is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    detect_1_dout : out STD_LOGIC;
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC;
    dbl2tsep_1_empty_n : in STD_LOGIC;
    \tmp_reg_173_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm[4]_i_3_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \tmp_reg_173_reg[0]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    tmp_reg_173 : in STD_LOGIC;
    ce : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    clock : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_fifo_w1_d1024_A_shiftReg : entity is "fifo_w1_d1024_A_shiftReg";
end bd_0_hls_inst_0_fifo_w1_d1024_A_shiftReg;

architecture STRUCTURE of bd_0_hls_inst_0_fifo_w1_d1024_A_shiftReg is
  signal \SRL_SIG_reg[1023][0]_mux__0_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_mux__10_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_mux__11_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_mux__12_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_mux__13_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_mux__14_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_mux__15_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_mux__16_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_mux__17_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_mux__18_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_mux__19_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_mux__1_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_mux__20_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_mux__21_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_mux__22_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_mux__2_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_mux__3_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_mux__4_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_mux__5_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_mux__6_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_mux__7_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_mux__8_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_mux__9_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_mux_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__0_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__0_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__10_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__10_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__11_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__11_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__12_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__12_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__13_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__13_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__14_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__14_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__15_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__15_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__16_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__16_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__17_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__17_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__18_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__18_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__19_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__19_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__1_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__1_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__20_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__20_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__21_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__21_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__22_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__22_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__23_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__23_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__24_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__24_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__25_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__25_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__26_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__26_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__27_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__27_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__28_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__28_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__29_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__29_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__2_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__2_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__30_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__3_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__3_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__4_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__4_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__5_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__5_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__6_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__6_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__7_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__7_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__8_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__8_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__9_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32__9_n_9\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32_n_8\ : STD_LOGIC;
  signal \SRL_SIG_reg[1023][0]_srl32_n_9\ : STD_LOGIC;
  signal a : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \ap_CS_fsm[4]_i_4_n_8\ : STD_LOGIC;
  signal \ap_CS_fsm[4]_i_5_n_8\ : STD_LOGIC;
  signal \^detect_1_dout\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[1023][0]_srl32__30_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name : string;
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__0\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__0\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__0 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__1\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__1\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__1 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__10\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__10\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__10 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__11\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__11\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__11 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__12\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__12\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__12 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__13\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__13\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__13 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__14\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__14\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__14 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__15\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__15\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__15 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__16\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__16\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__16 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__17\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__17\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__17 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__18\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__18\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__18 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__19\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__19\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__19 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__2\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__2\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__2 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__20\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__20\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__20 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__21\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__21\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__21 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__22\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__22\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__22 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__23\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__23\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__23 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__24\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__24\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__24 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__25\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__25\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__25 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__26\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__26\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__26 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__27\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__27\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__27 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__28\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__28\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__28 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__29\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__29\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__29 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__3\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__3\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__3 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__30\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__30\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__30 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__4\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__4\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__4 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__5\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__5\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__5 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__6\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__6\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__6 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__7\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__7\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__7 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__8\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__8\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__8 ";
  attribute srl_bus_name of \SRL_SIG_reg[1023][0]_srl32__9\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023] ";
  attribute srl_name of \SRL_SIG_reg[1023][0]_srl32__9\ : label is "U0/\grp_Detecteur2_fu_226/detect_1_fifo_U/U_fifo_w1_d1024_A_shiftReg/SRL_SIG_reg[1023][0]_srl32__9 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i_0_reg_104[8]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \tmp_reg_173[0]_i_1\ : label is "soft_lutpair82";
begin
  detect_1_dout <= \^detect_1_dout\;
\SRL_SIG_reg[1023][0]_mux\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SRL_SIG_reg[1023][0]_srl32_n_8\,
      I1 => \SRL_SIG_reg[1023][0]_srl32__0_n_8\,
      O => \SRL_SIG_reg[1023][0]_mux_n_8\,
      S => \ap_CS_fsm[4]_i_3_0\(0)
    );
\SRL_SIG_reg[1023][0]_mux__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SRL_SIG_reg[1023][0]_srl32__1_n_8\,
      I1 => \SRL_SIG_reg[1023][0]_srl32__2_n_8\,
      O => \SRL_SIG_reg[1023][0]_mux__0_n_8\,
      S => \ap_CS_fsm[4]_i_3_0\(0)
    );
\SRL_SIG_reg[1023][0]_mux__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SRL_SIG_reg[1023][0]_srl32__3_n_8\,
      I1 => \SRL_SIG_reg[1023][0]_srl32__4_n_8\,
      O => \SRL_SIG_reg[1023][0]_mux__1_n_8\,
      S => \ap_CS_fsm[4]_i_3_0\(0)
    );
\SRL_SIG_reg[1023][0]_mux__10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SRL_SIG_reg[1023][0]_srl32__21_n_8\,
      I1 => \SRL_SIG_reg[1023][0]_srl32__22_n_8\,
      O => \SRL_SIG_reg[1023][0]_mux__10_n_8\,
      S => \ap_CS_fsm[4]_i_3_0\(0)
    );
\SRL_SIG_reg[1023][0]_mux__11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SRL_SIG_reg[1023][0]_srl32__23_n_8\,
      I1 => \SRL_SIG_reg[1023][0]_srl32__24_n_8\,
      O => \SRL_SIG_reg[1023][0]_mux__11_n_8\,
      S => \ap_CS_fsm[4]_i_3_0\(0)
    );
\SRL_SIG_reg[1023][0]_mux__12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SRL_SIG_reg[1023][0]_srl32__25_n_8\,
      I1 => \SRL_SIG_reg[1023][0]_srl32__26_n_8\,
      O => \SRL_SIG_reg[1023][0]_mux__12_n_8\,
      S => \ap_CS_fsm[4]_i_3_0\(0)
    );
\SRL_SIG_reg[1023][0]_mux__13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SRL_SIG_reg[1023][0]_srl32__27_n_8\,
      I1 => \SRL_SIG_reg[1023][0]_srl32__28_n_8\,
      O => \SRL_SIG_reg[1023][0]_mux__13_n_8\,
      S => \ap_CS_fsm[4]_i_3_0\(0)
    );
\SRL_SIG_reg[1023][0]_mux__14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SRL_SIG_reg[1023][0]_srl32__29_n_8\,
      I1 => \SRL_SIG_reg[1023][0]_srl32__30_n_8\,
      O => \SRL_SIG_reg[1023][0]_mux__14_n_8\,
      S => \ap_CS_fsm[4]_i_3_0\(0)
    );
\SRL_SIG_reg[1023][0]_mux__15\: unisim.vcomponents.MUXF8
     port map (
      I0 => \SRL_SIG_reg[1023][0]_mux_n_8\,
      I1 => \SRL_SIG_reg[1023][0]_mux__0_n_8\,
      O => \SRL_SIG_reg[1023][0]_mux__15_n_8\,
      S => \ap_CS_fsm[4]_i_3_0\(1)
    );
\SRL_SIG_reg[1023][0]_mux__16\: unisim.vcomponents.MUXF8
     port map (
      I0 => \SRL_SIG_reg[1023][0]_mux__1_n_8\,
      I1 => \SRL_SIG_reg[1023][0]_mux__2_n_8\,
      O => \SRL_SIG_reg[1023][0]_mux__16_n_8\,
      S => \ap_CS_fsm[4]_i_3_0\(1)
    );
\SRL_SIG_reg[1023][0]_mux__17\: unisim.vcomponents.MUXF8
     port map (
      I0 => \SRL_SIG_reg[1023][0]_mux__3_n_8\,
      I1 => \SRL_SIG_reg[1023][0]_mux__4_n_8\,
      O => \SRL_SIG_reg[1023][0]_mux__17_n_8\,
      S => \ap_CS_fsm[4]_i_3_0\(1)
    );
\SRL_SIG_reg[1023][0]_mux__18\: unisim.vcomponents.MUXF8
     port map (
      I0 => \SRL_SIG_reg[1023][0]_mux__5_n_8\,
      I1 => \SRL_SIG_reg[1023][0]_mux__6_n_8\,
      O => \SRL_SIG_reg[1023][0]_mux__18_n_8\,
      S => \ap_CS_fsm[4]_i_3_0\(1)
    );
\SRL_SIG_reg[1023][0]_mux__19\: unisim.vcomponents.MUXF8
     port map (
      I0 => \SRL_SIG_reg[1023][0]_mux__7_n_8\,
      I1 => \SRL_SIG_reg[1023][0]_mux__8_n_8\,
      O => \SRL_SIG_reg[1023][0]_mux__19_n_8\,
      S => \ap_CS_fsm[4]_i_3_0\(1)
    );
\SRL_SIG_reg[1023][0]_mux__2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SRL_SIG_reg[1023][0]_srl32__5_n_8\,
      I1 => \SRL_SIG_reg[1023][0]_srl32__6_n_8\,
      O => \SRL_SIG_reg[1023][0]_mux__2_n_8\,
      S => \ap_CS_fsm[4]_i_3_0\(0)
    );
\SRL_SIG_reg[1023][0]_mux__20\: unisim.vcomponents.MUXF8
     port map (
      I0 => \SRL_SIG_reg[1023][0]_mux__9_n_8\,
      I1 => \SRL_SIG_reg[1023][0]_mux__10_n_8\,
      O => \SRL_SIG_reg[1023][0]_mux__20_n_8\,
      S => \ap_CS_fsm[4]_i_3_0\(1)
    );
\SRL_SIG_reg[1023][0]_mux__21\: unisim.vcomponents.MUXF8
     port map (
      I0 => \SRL_SIG_reg[1023][0]_mux__11_n_8\,
      I1 => \SRL_SIG_reg[1023][0]_mux__12_n_8\,
      O => \SRL_SIG_reg[1023][0]_mux__21_n_8\,
      S => \ap_CS_fsm[4]_i_3_0\(1)
    );
\SRL_SIG_reg[1023][0]_mux__22\: unisim.vcomponents.MUXF8
     port map (
      I0 => \SRL_SIG_reg[1023][0]_mux__13_n_8\,
      I1 => \SRL_SIG_reg[1023][0]_mux__14_n_8\,
      O => \SRL_SIG_reg[1023][0]_mux__22_n_8\,
      S => \ap_CS_fsm[4]_i_3_0\(1)
    );
\SRL_SIG_reg[1023][0]_mux__3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SRL_SIG_reg[1023][0]_srl32__7_n_8\,
      I1 => \SRL_SIG_reg[1023][0]_srl32__8_n_8\,
      O => \SRL_SIG_reg[1023][0]_mux__3_n_8\,
      S => \ap_CS_fsm[4]_i_3_0\(0)
    );
\SRL_SIG_reg[1023][0]_mux__4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SRL_SIG_reg[1023][0]_srl32__9_n_8\,
      I1 => \SRL_SIG_reg[1023][0]_srl32__10_n_8\,
      O => \SRL_SIG_reg[1023][0]_mux__4_n_8\,
      S => \ap_CS_fsm[4]_i_3_0\(0)
    );
\SRL_SIG_reg[1023][0]_mux__5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SRL_SIG_reg[1023][0]_srl32__11_n_8\,
      I1 => \SRL_SIG_reg[1023][0]_srl32__12_n_8\,
      O => \SRL_SIG_reg[1023][0]_mux__5_n_8\,
      S => \ap_CS_fsm[4]_i_3_0\(0)
    );
\SRL_SIG_reg[1023][0]_mux__6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SRL_SIG_reg[1023][0]_srl32__13_n_8\,
      I1 => \SRL_SIG_reg[1023][0]_srl32__14_n_8\,
      O => \SRL_SIG_reg[1023][0]_mux__6_n_8\,
      S => \ap_CS_fsm[4]_i_3_0\(0)
    );
\SRL_SIG_reg[1023][0]_mux__7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SRL_SIG_reg[1023][0]_srl32__15_n_8\,
      I1 => \SRL_SIG_reg[1023][0]_srl32__16_n_8\,
      O => \SRL_SIG_reg[1023][0]_mux__7_n_8\,
      S => \ap_CS_fsm[4]_i_3_0\(0)
    );
\SRL_SIG_reg[1023][0]_mux__8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SRL_SIG_reg[1023][0]_srl32__17_n_8\,
      I1 => \SRL_SIG_reg[1023][0]_srl32__18_n_8\,
      O => \SRL_SIG_reg[1023][0]_mux__8_n_8\,
      S => \ap_CS_fsm[4]_i_3_0\(0)
    );
\SRL_SIG_reg[1023][0]_mux__9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \SRL_SIG_reg[1023][0]_srl32__19_n_8\,
      I1 => \SRL_SIG_reg[1023][0]_srl32__20_n_8\,
      O => \SRL_SIG_reg[1023][0]_mux__9_n_8\,
      S => \ap_CS_fsm[4]_i_3_0\(0)
    );
\SRL_SIG_reg[1023][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \in\(0),
      Q => \SRL_SIG_reg[1023][0]_srl32_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__0\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__0_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__0_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__1\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__0_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__1_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__1_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__10\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__9_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__10_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__10_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__11\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__10_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__11_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__11_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__12\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__11_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__12_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__12_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__13\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__12_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__13_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__13_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__14\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__13_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__14_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__14_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__15\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__14_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__15_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__15_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__16\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__15_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__16_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__16_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__17\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__16_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__17_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__17_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__18\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__17_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__18_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__18_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__19\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__18_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__19_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__19_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__2\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__1_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__2_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__2_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__20\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__19_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__20_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__20_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__21\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__20_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__21_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__21_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__22\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__21_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__22_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__22_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__23\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__22_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__23_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__23_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__24\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__23_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__24_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__24_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__25\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__24_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__25_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__25_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__26\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__25_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__26_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__26_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__27\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__26_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__27_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__27_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__27_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__28_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__28_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__29\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__28_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__29_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__29_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__3\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__2_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__3_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__3_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__30\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__29_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__30_n_8\,
      Q31 => \NLW_SRL_SIG_reg[1023][0]_srl32__30_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[1023][0]_srl32__4\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__3_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__4_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__4_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__5\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__4_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__5_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__5_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__6\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__5_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__6_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__6_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__7\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__6_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__7_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__7_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__8\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__7_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__8_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__8_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32__9\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \SRL_SIG_reg[1023][0]_srl32__8_n_9\,
      Q => \SRL_SIG_reg[1023][0]_srl32__9_n_8\,
      Q31 => \SRL_SIG_reg[1023][0]_srl32__9_n_9\
    );
\SRL_SIG_reg[1023][0]_srl32_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \tmp_reg_173_reg[0]_0\(4),
      I1 => \tmp_reg_173_reg[0]_0\(6),
      O => a(4)
    );
\SRL_SIG_reg[1023][0]_srl32_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \tmp_reg_173_reg[0]_0\(3),
      I1 => \tmp_reg_173_reg[0]_0\(6),
      O => a(3)
    );
\SRL_SIG_reg[1023][0]_srl32_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \tmp_reg_173_reg[0]_0\(2),
      I1 => \tmp_reg_173_reg[0]_0\(6),
      O => a(2)
    );
\SRL_SIG_reg[1023][0]_srl32_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \tmp_reg_173_reg[0]_0\(1),
      I1 => \tmp_reg_173_reg[0]_0\(6),
      O => a(1)
    );
\SRL_SIG_reg[1023][0]_srl32_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \tmp_reg_173_reg[0]_0\(0),
      I1 => \tmp_reg_173_reg[0]_0\(6),
      O => a(0)
    );
\ap_CS_fsm[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \ap_CS_fsm[4]_i_4_n_8\,
      I1 => \tmp_reg_173_reg[0]_0\(5),
      I2 => \tmp_reg_173_reg[0]_0\(6),
      I3 => \ap_CS_fsm[4]_i_5_n_8\,
      O => \^detect_1_dout\
    );
\ap_CS_fsm[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \SRL_SIG_reg[1023][0]_mux__22_n_8\,
      I1 => \SRL_SIG_reg[1023][0]_mux__21_n_8\,
      I2 => \ap_CS_fsm[4]_i_3_0\(3),
      I3 => \SRL_SIG_reg[1023][0]_mux__20_n_8\,
      I4 => \ap_CS_fsm[4]_i_3_0\(2),
      I5 => \SRL_SIG_reg[1023][0]_mux__19_n_8\,
      O => \ap_CS_fsm[4]_i_4_n_8\
    );
\ap_CS_fsm[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \SRL_SIG_reg[1023][0]_mux__18_n_8\,
      I1 => \SRL_SIG_reg[1023][0]_mux__17_n_8\,
      I2 => \ap_CS_fsm[4]_i_3_0\(3),
      I3 => \SRL_SIG_reg[1023][0]_mux__16_n_8\,
      I4 => \ap_CS_fsm[4]_i_3_0\(2),
      I5 => \SRL_SIG_reg[1023][0]_mux__15_n_8\,
      O => \ap_CS_fsm[4]_i_5_n_8\
    );
\i_0_reg_104[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^detect_1_dout\,
      I1 => dbl2tsep_1_empty_n,
      I2 => \tmp_reg_173_reg[0]\,
      I3 => Q(0),
      O => SR(0)
    );
\tmp_reg_173[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^detect_1_dout\,
      I1 => Q(0),
      I2 => \tmp_reg_173_reg[0]\,
      I3 => dbl2tsep_1_empty_n,
      I4 => tmp_reg_173,
      O => \ap_CS_fsm_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_fifo_w1_d32_A_shiftReg is
  port (
    bit2byt_1_dout : out STD_LOGIC;
    grp_BitDecider_fu_292_s_din : in STD_LOGIC;
    clock : in STD_LOGIC;
    \v_assign_reg_81_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \v_assign_reg_81_reg[0]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_fifo_w1_d32_A_shiftReg : entity is "fifo_w1_d32_A_shiftReg";
end bd_0_hls_inst_0_fifo_w1_d32_A_shiftReg;

architecture STRUCTURE of bd_0_hls_inst_0_fifo_w1_d32_A_shiftReg is
  signal a : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ce : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \SRL_SIG_reg[31][0]_srl32\ : label is "U0/\bit2byt_1_fifo_U/U_fifo_w1_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name : string;
  attribute srl_name of \SRL_SIG_reg[31][0]_srl32\ : label is "U0/\bit2byt_1_fifo_U/U_fifo_w1_d32_A_shiftReg/SRL_SIG_reg[31][0]_srl32 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \SRL_SIG_reg[31][0]_srl32_i_2__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \SRL_SIG_reg[31][0]_srl32_i_3__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \SRL_SIG_reg[31][0]_srl32_i_4__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \SRL_SIG_reg[31][0]_srl32_i_5__1\ : label is "soft_lutpair1";
begin
\SRL_SIG_reg[31][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => grp_BitDecider_fu_292_s_din,
      Q => bit2byt_1_dout,
      Q31 => \NLW_SRL_SIG_reg[31][0]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][0]_srl32_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \v_assign_reg_81_reg[0]\,
      I1 => Q(0),
      O => ce
    );
\SRL_SIG_reg[31][0]_srl32_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_assign_reg_81_reg[0]_0\(4),
      I1 => \v_assign_reg_81_reg[0]_0\(5),
      O => a(4)
    );
\SRL_SIG_reg[31][0]_srl32_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_assign_reg_81_reg[0]_0\(3),
      I1 => \v_assign_reg_81_reg[0]_0\(5),
      O => a(3)
    );
\SRL_SIG_reg[31][0]_srl32_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_assign_reg_81_reg[0]_0\(2),
      I1 => \v_assign_reg_81_reg[0]_0\(5),
      O => a(2)
    );
\SRL_SIG_reg[31][0]_srl32_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_assign_reg_81_reg[0]_0\(1),
      I1 => \v_assign_reg_81_reg[0]_0\(5),
      O => a(1)
    );
\SRL_SIG_reg[31][0]_srl32_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_assign_reg_81_reg[0]_0\(0),
      I1 => \v_assign_reg_81_reg[0]_0\(5),
      O => a(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_fifo_w8_d1024_A is
  port (
    full_n_reg_0 : out STD_LOGIC;
    empty_n_reg_0 : out STD_LOGIC;
    dbl2scalc_1_empty_n : out STD_LOGIC;
    \usedw_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    full_n_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    full_n_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \usedw_reg[7]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \usedw_reg[8]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \dout_buf_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clock : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    empty_n_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout_valid_reg_0 : in STD_LOGIC;
    pop : in STD_LOGIC;
    mod2dbl_1_empty_n : in STD_LOGIC;
    empty_n_reg_2 : in STD_LOGIC;
    ap_CS_fsm_pp0_stage0 : in STD_LOGIC;
    ap_block_pp0_stage0_110010_in : in STD_LOGIC;
    ap_enable_reg_pp0_iter0 : in STD_LOGIC;
    pop_0 : in STD_LOGIC;
    \dout_buf_reg[0]_0\ : in STD_LOGIC;
    \dout_buf_reg[1]_0\ : in STD_LOGIC;
    \dout_buf_reg[2]_0\ : in STD_LOGIC;
    \dout_buf_reg[3]_0\ : in STD_LOGIC;
    \dout_buf_reg[4]_0\ : in STD_LOGIC;
    \dout_buf_reg[5]_0\ : in STD_LOGIC;
    \dout_buf_reg[6]_0\ : in STD_LOGIC;
    \dout_buf_reg[7]_1\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_fifo_w8_d1024_A : entity is "fifo_w8_d1024_A";
end bd_0_hls_inst_0_fifo_w8_d1024_A;

architecture STRUCTURE of bd_0_hls_inst_0_fifo_w8_d1024_A is
  signal \^dbl2scalc_1_empty_n\ : STD_LOGIC;
  signal \dout_buf[0]_i_1_n_8\ : STD_LOGIC;
  signal \dout_buf[1]_i_1_n_8\ : STD_LOGIC;
  signal \dout_buf[2]_i_1_n_8\ : STD_LOGIC;
  signal \dout_buf[3]_i_1_n_8\ : STD_LOGIC;
  signal \dout_buf[4]_i_1_n_8\ : STD_LOGIC;
  signal \dout_buf[5]_i_1_n_8\ : STD_LOGIC;
  signal \dout_buf[6]_i_1_n_8\ : STD_LOGIC;
  signal \dout_buf[7]_i_2_n_8\ : STD_LOGIC;
  signal empty_n0 : STD_LOGIC;
  signal \^empty_n_reg_0\ : STD_LOGIC;
  signal full_n0 : STD_LOGIC;
  signal full_n_i_2_n_8 : STD_LOGIC;
  signal full_n_i_3_n_8 : STD_LOGIC;
  signal \^full_n_reg_0\ : STD_LOGIC;
  signal mem_reg_i_10_n_8 : STD_LOGIC;
  signal mem_reg_i_12_n_8 : STD_LOGIC;
  signal mem_reg_i_13_n_8 : STD_LOGIC;
  signal mem_reg_i_1_n_8 : STD_LOGIC;
  signal mem_reg_i_2_n_8 : STD_LOGIC;
  signal mem_reg_i_3_n_8 : STD_LOGIC;
  signal mem_reg_i_4_n_8 : STD_LOGIC;
  signal mem_reg_i_5_n_8 : STD_LOGIC;
  signal mem_reg_i_6_n_8 : STD_LOGIC;
  signal mem_reg_i_7_n_8 : STD_LOGIC;
  signal mem_reg_i_8_n_8 : STD_LOGIC;
  signal mem_reg_i_9_n_8 : STD_LOGIC;
  signal q_buf : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal raddr : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal show_ahead : STD_LOGIC;
  signal show_ahead0 : STD_LOGIC;
  signal show_ahead_i_2_n_8 : STD_LOGIC;
  signal show_ahead_i_3_n_8 : STD_LOGIC;
  signal \usedw[0]_i_1_n_8\ : STD_LOGIC;
  signal usedw_reg : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal \^usedw_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal waddr : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \waddr[9]_i_2_n_8\ : STD_LOGIC;
  signal wnext : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_mem_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_mem_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_mem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dout_buf[0]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \dout_buf[1]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \dout_buf[2]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \dout_buf[3]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \dout_buf[4]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \dout_buf[5]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \dout_buf[6]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \dout_buf[7]_i_2\ : label is "soft_lutpair69";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 8192;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "grp_Detecteur2_fu_226/dbl2scalc_1_fifo_U/mem";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg : label is "RAM_TDP";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of mem_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of mem_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of mem_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of mem_reg : label is 7;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg : label is 7;
  attribute SOFT_HLUTNM of \waddr[1]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \waddr[2]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \waddr[3]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \waddr[4]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \waddr[6]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \waddr[7]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \waddr[8]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \waddr[9]_i_1\ : label is "soft_lutpair64";
begin
  dbl2scalc_1_empty_n <= \^dbl2scalc_1_empty_n\;
  empty_n_reg_0 <= \^empty_n_reg_0\;
  full_n_reg_0 <= \^full_n_reg_0\;
  \usedw_reg[7]_0\(7 downto 0) <= \^usedw_reg[7]_0\(7 downto 0);
\dout_buf[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \dout_buf_reg[0]_0\,
      I1 => q_buf(0),
      I2 => show_ahead,
      O => \dout_buf[0]_i_1_n_8\
    );
\dout_buf[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \dout_buf_reg[1]_0\,
      I1 => q_buf(1),
      I2 => show_ahead,
      O => \dout_buf[1]_i_1_n_8\
    );
\dout_buf[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \dout_buf_reg[2]_0\,
      I1 => q_buf(2),
      I2 => show_ahead,
      O => \dout_buf[2]_i_1_n_8\
    );
\dout_buf[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \dout_buf_reg[3]_0\,
      I1 => q_buf(3),
      I2 => show_ahead,
      O => \dout_buf[3]_i_1_n_8\
    );
\dout_buf[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \dout_buf_reg[4]_0\,
      I1 => q_buf(4),
      I2 => show_ahead,
      O => \dout_buf[4]_i_1_n_8\
    );
\dout_buf[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \dout_buf_reg[5]_0\,
      I1 => q_buf(5),
      I2 => show_ahead,
      O => \dout_buf[5]_i_1_n_8\
    );
\dout_buf[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \dout_buf_reg[6]_0\,
      I1 => q_buf(6),
      I2 => show_ahead,
      O => \dout_buf[6]_i_1_n_8\
    );
\dout_buf[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \dout_buf_reg[7]_1\,
      I1 => q_buf(7),
      I2 => show_ahead,
      O => \dout_buf[7]_i_2_n_8\
    );
\dout_buf_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => \dout_buf[0]_i_1_n_8\,
      Q => \dout_buf_reg[7]_0\(0),
      R => reset
    );
\dout_buf_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => \dout_buf[1]_i_1_n_8\,
      Q => \dout_buf_reg[7]_0\(1),
      R => reset
    );
\dout_buf_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => \dout_buf[2]_i_1_n_8\,
      Q => \dout_buf_reg[7]_0\(2),
      R => reset
    );
\dout_buf_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => \dout_buf[3]_i_1_n_8\,
      Q => \dout_buf_reg[7]_0\(3),
      R => reset
    );
\dout_buf_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => \dout_buf[4]_i_1_n_8\,
      Q => \dout_buf_reg[7]_0\(4),
      R => reset
    );
\dout_buf_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => \dout_buf[5]_i_1_n_8\,
      Q => \dout_buf_reg[7]_0\(5),
      R => reset
    );
\dout_buf_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => \dout_buf[6]_i_1_n_8\,
      Q => \dout_buf_reg[7]_0\(6),
      R => reset
    );
\dout_buf_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => \dout_buf[7]_i_2_n_8\,
      Q => \dout_buf_reg[7]_0\(7),
      R => reset
    );
dout_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => dout_valid_reg_0,
      Q => \^dbl2scalc_1_empty_n\,
      R => reset
    );
\empty_n_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^full_n_reg_0\,
      I1 => empty_n_reg_2,
      I2 => mod2dbl_1_empty_n,
      I3 => pop_0,
      O => full_n_reg_2(0)
    );
\empty_n_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4000FFFF"
    )
        port map (
      I0 => pop,
      I1 => mod2dbl_1_empty_n,
      I2 => empty_n_reg_2,
      I3 => \^full_n_reg_0\,
      I4 => \^usedw_reg[7]_0\(0),
      I5 => show_ahead_i_2_n_8,
      O => empty_n0
    );
empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n_reg_1(0),
      D => empty_n0,
      Q => \^empty_n_reg_0\,
      R => reset
    );
\full_n_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAA6AAA6AAA6AAA"
    )
        port map (
      I0 => pop,
      I1 => \^full_n_reg_0\,
      I2 => empty_n_reg_2,
      I3 => mod2dbl_1_empty_n,
      I4 => full_n_i_2_n_8,
      I5 => full_n_i_3_n_8,
      O => full_n0
    );
full_n_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^usedw_reg[7]_0\(7),
      I1 => \^usedw_reg[7]_0\(6),
      I2 => \^usedw_reg[7]_0\(5),
      I3 => \^usedw_reg[7]_0\(1),
      O => full_n_i_2_n_8
    );
full_n_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => usedw_reg(9),
      I1 => usedw_reg(8),
      I2 => \^usedw_reg[7]_0\(2),
      I3 => \^usedw_reg[7]_0\(3),
      I4 => \^usedw_reg[7]_0\(4),
      I5 => \^usedw_reg[7]_0\(0),
      O => full_n_i_3_n_8
    );
full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => empty_n_reg_1(0),
      D => full_n0,
      Q => \^full_n_reg_0\,
      S => reset
    );
mem_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 4) => waddr(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13) => mem_reg_i_1_n_8,
      ADDRBWRADDR(12) => mem_reg_i_2_n_8,
      ADDRBWRADDR(11) => mem_reg_i_3_n_8,
      ADDRBWRADDR(10) => mem_reg_i_4_n_8,
      ADDRBWRADDR(9) => mem_reg_i_5_n_8,
      ADDRBWRADDR(8) => mem_reg_i_6_n_8,
      ADDRBWRADDR(7) => mem_reg_i_7_n_8,
      ADDRBWRADDR(6) => mem_reg_i_8_n_8,
      ADDRBWRADDR(5) => mem_reg_i_9_n_8,
      ADDRBWRADDR(4) => mem_reg_i_10_n_8,
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => clock,
      CLKBWRCLK => clock,
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => Q(7 downto 0),
      DIBDI(15 downto 0) => B"0000000011111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_mem_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 8) => NLW_mem_reg_DOBDO_UNCONNECTED(15 downto 8),
      DOBDO(7 downto 0) => q_buf(7 downto 0),
      DOPADOP(1 downto 0) => NLW_mem_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_mem_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => \^full_n_reg_0\,
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => E(0),
      WEA(0) => E(0),
      WEBWE(3 downto 0) => B"0000"
    );
mem_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => raddr(9),
      I1 => pop,
      I2 => raddr(8),
      I3 => raddr(6),
      I4 => mem_reg_i_12_n_8,
      I5 => raddr(7),
      O => mem_reg_i_1_n_8
    );
mem_reg_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"59999999AAAAAAAA"
    )
        port map (
      I0 => raddr(0),
      I1 => \^dbl2scalc_1_empty_n\,
      I2 => ap_CS_fsm_pp0_stage0,
      I3 => ap_block_pp0_stage0_110010_in,
      I4 => ap_enable_reg_pp0_iter0,
      I5 => \^empty_n_reg_0\,
      O => mem_reg_i_10_n_8
    );
mem_reg_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => raddr(5),
      I1 => raddr(4),
      I2 => raddr(1),
      I3 => raddr(2),
      I4 => raddr(0),
      I5 => raddr(3),
      O => mem_reg_i_12_n_8
    );
mem_reg_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => pop,
      I1 => raddr(1),
      I2 => raddr(2),
      I3 => raddr(0),
      I4 => raddr(3),
      O => mem_reg_i_13_n_8
    );
mem_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => raddr(6),
      I1 => mem_reg_i_12_n_8,
      I2 => raddr(7),
      I3 => pop,
      I4 => raddr(8),
      O => mem_reg_i_2_n_8
    );
mem_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => raddr(7),
      I1 => raddr(6),
      I2 => mem_reg_i_12_n_8,
      I3 => pop,
      O => mem_reg_i_3_n_8
    );
mem_reg_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mem_reg_i_12_n_8,
      I1 => pop,
      I2 => raddr(6),
      O => mem_reg_i_4_n_8
    );
mem_reg_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => raddr(5),
      I1 => mem_reg_i_13_n_8,
      I2 => raddr(4),
      O => mem_reg_i_5_n_8
    );
mem_reg_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => raddr(4),
      I1 => raddr(3),
      I2 => raddr(0),
      I3 => raddr(2),
      I4 => raddr(1),
      I5 => pop,
      O => mem_reg_i_6_n_8
    );
mem_reg_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => raddr(3),
      I1 => raddr(1),
      I2 => pop,
      I3 => raddr(0),
      I4 => raddr(2),
      O => mem_reg_i_7_n_8
    );
mem_reg_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => raddr(2),
      I1 => raddr(0),
      I2 => pop,
      I3 => raddr(1),
      O => mem_reg_i_8_n_8
    );
mem_reg_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => raddr(1),
      I1 => pop,
      I2 => raddr(0),
      O => mem_reg_i_9_n_8
    );
\p_0_out__24_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^full_n_reg_0\,
      I1 => empty_n_reg_2,
      I2 => mod2dbl_1_empty_n,
      I3 => pop_0,
      O => full_n_reg_1(0)
    );
\p_0_out_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^usedw_reg[7]_0\(7),
      I1 => usedw_reg(8),
      O => \usedw_reg[7]_1\(3)
    );
\p_0_out_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^usedw_reg[7]_0\(6),
      I1 => \^usedw_reg[7]_0\(7),
      O => \usedw_reg[7]_1\(2)
    );
\p_0_out_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^usedw_reg[7]_0\(5),
      I1 => \^usedw_reg[7]_0\(6),
      O => \usedw_reg[7]_1\(1)
    );
\p_0_out_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^usedw_reg[7]_0\(4),
      I1 => \^usedw_reg[7]_0\(5),
      O => \usedw_reg[7]_1\(0)
    );
\p_0_out_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => usedw_reg(8),
      I1 => usedw_reg(9),
      O => \usedw_reg[8]_0\(0)
    );
\p_0_out_carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^full_n_reg_0\,
      I1 => empty_n_reg_2,
      I2 => mod2dbl_1_empty_n,
      I3 => pop,
      O => DI(0)
    );
p_0_out_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^usedw_reg[7]_0\(3),
      I1 => \^usedw_reg[7]_0\(4),
      O => S(3)
    );
p_0_out_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^usedw_reg[7]_0\(2),
      I1 => \^usedw_reg[7]_0\(3),
      O => S(2)
    );
p_0_out_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^usedw_reg[7]_0\(1),
      I1 => \^usedw_reg[7]_0\(2),
      O => S(1)
    );
\p_0_out_carry_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65555555"
    )
        port map (
      I0 => \^usedw_reg[7]_0\(1),
      I1 => pop,
      I2 => mod2dbl_1_empty_n,
      I3 => empty_n_reg_2,
      I4 => \^full_n_reg_0\,
      O => S(0)
    );
\raddr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => mem_reg_i_10_n_8,
      Q => raddr(0),
      R => reset
    );
\raddr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => mem_reg_i_9_n_8,
      Q => raddr(1),
      R => reset
    );
\raddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => mem_reg_i_8_n_8,
      Q => raddr(2),
      R => reset
    );
\raddr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => mem_reg_i_7_n_8,
      Q => raddr(3),
      R => reset
    );
\raddr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => mem_reg_i_6_n_8,
      Q => raddr(4),
      R => reset
    );
\raddr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => mem_reg_i_5_n_8,
      Q => raddr(5),
      R => reset
    );
\raddr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => mem_reg_i_4_n_8,
      Q => raddr(6),
      R => reset
    );
\raddr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => mem_reg_i_3_n_8,
      Q => raddr(7),
      R => reset
    );
\raddr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => mem_reg_i_2_n_8,
      Q => raddr(8),
      R => reset
    );
\raddr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => mem_reg_i_1_n_8,
      Q => raddr(9),
      R => reset
    );
\show_ahead_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000D0000000"
    )
        port map (
      I0 => \^usedw_reg[7]_0\(0),
      I1 => pop,
      I2 => mod2dbl_1_empty_n,
      I3 => empty_n_reg_2,
      I4 => \^full_n_reg_0\,
      I5 => show_ahead_i_2_n_8,
      O => show_ahead0
    );
show_ahead_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^usedw_reg[7]_0\(3),
      I1 => \^usedw_reg[7]_0\(6),
      I2 => \^usedw_reg[7]_0\(4),
      I3 => show_ahead_i_3_n_8,
      O => show_ahead_i_2_n_8
    );
show_ahead_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => usedw_reg(9),
      I1 => usedw_reg(8),
      I2 => \^usedw_reg[7]_0\(5),
      I3 => \^usedw_reg[7]_0\(7),
      I4 => \^usedw_reg[7]_0\(1),
      I5 => \^usedw_reg[7]_0\(2),
      O => show_ahead_i_3_n_8
    );
show_ahead_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => show_ahead0,
      Q => show_ahead,
      R => reset
    );
\usedw[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^usedw_reg[7]_0\(0),
      O => \usedw[0]_i_1_n_8\
    );
\usedw_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n_reg_1(0),
      D => \usedw[0]_i_1_n_8\,
      Q => \^usedw_reg[7]_0\(0),
      R => reset
    );
\usedw_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n_reg_1(0),
      D => D(0),
      Q => \^usedw_reg[7]_0\(1),
      R => reset
    );
\usedw_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n_reg_1(0),
      D => D(1),
      Q => \^usedw_reg[7]_0\(2),
      R => reset
    );
\usedw_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n_reg_1(0),
      D => D(2),
      Q => \^usedw_reg[7]_0\(3),
      R => reset
    );
\usedw_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n_reg_1(0),
      D => D(3),
      Q => \^usedw_reg[7]_0\(4),
      R => reset
    );
\usedw_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n_reg_1(0),
      D => D(4),
      Q => \^usedw_reg[7]_0\(5),
      R => reset
    );
\usedw_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n_reg_1(0),
      D => D(5),
      Q => \^usedw_reg[7]_0\(6),
      R => reset
    );
\usedw_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n_reg_1(0),
      D => D(6),
      Q => \^usedw_reg[7]_0\(7),
      R => reset
    );
\usedw_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n_reg_1(0),
      D => D(7),
      Q => usedw_reg(8),
      R => reset
    );
\usedw_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n_reg_1(0),
      D => D(8),
      Q => usedw_reg(9),
      R => reset
    );
\waddr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => waddr(0),
      O => wnext(0)
    );
\waddr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => waddr(0),
      I1 => waddr(1),
      O => wnext(1)
    );
\waddr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => waddr(1),
      I1 => waddr(0),
      I2 => waddr(2),
      O => wnext(2)
    );
\waddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => waddr(2),
      I1 => waddr(0),
      I2 => waddr(1),
      I3 => waddr(3),
      O => wnext(3)
    );
\waddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => waddr(3),
      I1 => waddr(1),
      I2 => waddr(0),
      I3 => waddr(2),
      I4 => waddr(4),
      O => wnext(4)
    );
\waddr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => waddr(4),
      I1 => waddr(2),
      I2 => waddr(0),
      I3 => waddr(1),
      I4 => waddr(3),
      I5 => waddr(5),
      O => wnext(5)
    );
\waddr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \waddr[9]_i_2_n_8\,
      I1 => waddr(6),
      O => wnext(6)
    );
\waddr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => waddr(6),
      I1 => \waddr[9]_i_2_n_8\,
      I2 => waddr(7),
      O => wnext(7)
    );
\waddr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => waddr(7),
      I1 => \waddr[9]_i_2_n_8\,
      I2 => waddr(6),
      I3 => waddr(8),
      O => wnext(8)
    );
\waddr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => waddr(8),
      I1 => waddr(6),
      I2 => \waddr[9]_i_2_n_8\,
      I3 => waddr(7),
      I4 => waddr(9),
      O => wnext(9)
    );
\waddr[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => waddr(4),
      I1 => waddr(2),
      I2 => waddr(0),
      I3 => waddr(1),
      I4 => waddr(3),
      I5 => waddr(5),
      O => \waddr[9]_i_2_n_8\
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => E(0),
      D => wnext(0),
      Q => waddr(0),
      R => reset
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => E(0),
      D => wnext(1),
      Q => waddr(1),
      R => reset
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => E(0),
      D => wnext(2),
      Q => waddr(2),
      R => reset
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => E(0),
      D => wnext(3),
      Q => waddr(3),
      R => reset
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => E(0),
      D => wnext(4),
      Q => waddr(4),
      R => reset
    );
\waddr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => E(0),
      D => wnext(5),
      Q => waddr(5),
      R => reset
    );
\waddr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => E(0),
      D => wnext(6),
      Q => waddr(6),
      R => reset
    );
\waddr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => E(0),
      D => wnext(7),
      Q => waddr(7),
      R => reset
    );
\waddr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => E(0),
      D => wnext(8),
      Q => waddr(8),
      R => reset
    );
\waddr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => E(0),
      D => wnext(9),
      Q => waddr(9),
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_fifo_w8_d1024_A_3 is
  port (
    full_n_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    empty_n_reg_0 : out STD_LOGIC;
    \q_tmp_reg[0]_0\ : out STD_LOGIC;
    \q_tmp_reg[1]_0\ : out STD_LOGIC;
    \q_tmp_reg[2]_0\ : out STD_LOGIC;
    \q_tmp_reg[3]_0\ : out STD_LOGIC;
    \q_tmp_reg[4]_0\ : out STD_LOGIC;
    \q_tmp_reg[5]_0\ : out STD_LOGIC;
    \q_tmp_reg[6]_0\ : out STD_LOGIC;
    \q_tmp_reg[7]_0\ : out STD_LOGIC;
    dbl2tsep_1_empty_n : out STD_LOGIC;
    \usedw_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \usedw_reg[7]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \usedw_reg[8]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \dout_buf_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clock : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    reset : in STD_LOGIC;
    empty_n_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout_valid_reg_0 : in STD_LOGIC;
    pop : in STD_LOGIC;
    mod2dbl_1_empty_n : in STD_LOGIC;
    \q_tmp_reg[0]_1\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_fifo_w8_d1024_A_3 : entity is "fifo_w8_d1024_A";
end bd_0_hls_inst_0_fifo_w8_d1024_A_3;

architecture STRUCTURE of bd_0_hls_inst_0_fifo_w8_d1024_A_3 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \dout_buf[0]_i_1_n_8\ : STD_LOGIC;
  signal \dout_buf[1]_i_1_n_8\ : STD_LOGIC;
  signal \dout_buf[2]_i_1_n_8\ : STD_LOGIC;
  signal \dout_buf[3]_i_1_n_8\ : STD_LOGIC;
  signal \dout_buf[4]_i_1_n_8\ : STD_LOGIC;
  signal \dout_buf[5]_i_1_n_8\ : STD_LOGIC;
  signal \dout_buf[6]_i_1_n_8\ : STD_LOGIC;
  signal \dout_buf[7]_i_1_n_8\ : STD_LOGIC;
  signal \empty_n_i_2__1_n_8\ : STD_LOGIC;
  signal empty_n_i_3_n_8 : STD_LOGIC;
  signal empty_n_i_4_n_8 : STD_LOGIC;
  signal \full_n_i_1__1_n_8\ : STD_LOGIC;
  signal \full_n_i_2__0_n_8\ : STD_LOGIC;
  signal \full_n_i_3__0_n_8\ : STD_LOGIC;
  signal \^full_n_reg_0\ : STD_LOGIC;
  signal \mem_reg_i_10__0_n_8\ : STD_LOGIC;
  signal \mem_reg_i_11__1_n_8\ : STD_LOGIC;
  signal \mem_reg_i_1__0_n_8\ : STD_LOGIC;
  signal \mem_reg_i_2__0_n_8\ : STD_LOGIC;
  signal \mem_reg_i_3__0_n_8\ : STD_LOGIC;
  signal \mem_reg_i_4__0_n_8\ : STD_LOGIC;
  signal \mem_reg_i_5__0_n_8\ : STD_LOGIC;
  signal \mem_reg_i_6__0_n_8\ : STD_LOGIC;
  signal \mem_reg_i_7__0_n_8\ : STD_LOGIC;
  signal \mem_reg_i_8__1_n_8\ : STD_LOGIC;
  signal \mem_reg_i_9__0_n_8\ : STD_LOGIC;
  signal q_buf : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^q_tmp_reg[0]_0\ : STD_LOGIC;
  signal \^q_tmp_reg[1]_0\ : STD_LOGIC;
  signal \^q_tmp_reg[2]_0\ : STD_LOGIC;
  signal \^q_tmp_reg[3]_0\ : STD_LOGIC;
  signal \^q_tmp_reg[4]_0\ : STD_LOGIC;
  signal \^q_tmp_reg[5]_0\ : STD_LOGIC;
  signal \^q_tmp_reg[6]_0\ : STD_LOGIC;
  signal \^q_tmp_reg[7]_0\ : STD_LOGIC;
  signal \raddr[4]_i_1_n_8\ : STD_LOGIC;
  signal \raddr[5]_i_1_n_8\ : STD_LOGIC;
  signal \raddr[6]_i_1_n_8\ : STD_LOGIC;
  signal \raddr[7]_i_1_n_8\ : STD_LOGIC;
  signal \raddr[8]_i_1__0_n_8\ : STD_LOGIC;
  signal \raddr[9]_i_2_n_8\ : STD_LOGIC;
  signal \raddr_reg_n_8_[0]\ : STD_LOGIC;
  signal \raddr_reg_n_8_[1]\ : STD_LOGIC;
  signal \raddr_reg_n_8_[2]\ : STD_LOGIC;
  signal \raddr_reg_n_8_[3]\ : STD_LOGIC;
  signal \raddr_reg_n_8_[4]\ : STD_LOGIC;
  signal \raddr_reg_n_8_[5]\ : STD_LOGIC;
  signal \raddr_reg_n_8_[6]\ : STD_LOGIC;
  signal \raddr_reg_n_8_[7]\ : STD_LOGIC;
  signal \raddr_reg_n_8_[8]\ : STD_LOGIC;
  signal \raddr_reg_n_8_[9]\ : STD_LOGIC;
  signal show_ahead0 : STD_LOGIC;
  signal show_ahead_reg_n_8 : STD_LOGIC;
  signal \usedw[0]_i_1__0_n_8\ : STD_LOGIC;
  signal usedw_reg : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal \^usedw_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal waddr : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \waddr[9]_i_2__0_n_8\ : STD_LOGIC;
  signal wnext : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_mem_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_mem_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_mem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dout_buf[0]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \dout_buf[1]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \dout_buf[2]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \dout_buf[3]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \dout_buf[4]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \dout_buf[5]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \dout_buf[6]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \dout_buf[7]_i_1\ : label is "soft_lutpair78";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 8192;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "grp_Detecteur2_fu_226/dbl2tsep_1_fifo_U/mem";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg : label is "RAM_TDP";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of mem_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of mem_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of mem_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of mem_reg : label is 7;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg : label is 7;
  attribute SOFT_HLUTNM of \raddr[6]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \raddr[7]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \raddr[8]_i_1__0\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \raddr[9]_i_2\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \waddr[1]_i_1__0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \waddr[2]_i_1__0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \waddr[3]_i_1__0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \waddr[4]_i_1__0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \waddr[6]_i_1__0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \waddr[7]_i_1__0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \waddr[8]_i_1__0\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \waddr[9]_i_1__0\ : label is "soft_lutpair73";
begin
  E(0) <= \^e\(0);
  full_n_reg_0 <= \^full_n_reg_0\;
  \q_tmp_reg[0]_0\ <= \^q_tmp_reg[0]_0\;
  \q_tmp_reg[1]_0\ <= \^q_tmp_reg[1]_0\;
  \q_tmp_reg[2]_0\ <= \^q_tmp_reg[2]_0\;
  \q_tmp_reg[3]_0\ <= \^q_tmp_reg[3]_0\;
  \q_tmp_reg[4]_0\ <= \^q_tmp_reg[4]_0\;
  \q_tmp_reg[5]_0\ <= \^q_tmp_reg[5]_0\;
  \q_tmp_reg[6]_0\ <= \^q_tmp_reg[6]_0\;
  \q_tmp_reg[7]_0\ <= \^q_tmp_reg[7]_0\;
  \usedw_reg[7]_0\(7 downto 0) <= \^usedw_reg[7]_0\(7 downto 0);
\dout_buf[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^q_tmp_reg[0]_0\,
      I1 => q_buf(0),
      I2 => show_ahead_reg_n_8,
      O => \dout_buf[0]_i_1_n_8\
    );
\dout_buf[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^q_tmp_reg[1]_0\,
      I1 => q_buf(1),
      I2 => show_ahead_reg_n_8,
      O => \dout_buf[1]_i_1_n_8\
    );
\dout_buf[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^q_tmp_reg[2]_0\,
      I1 => q_buf(2),
      I2 => show_ahead_reg_n_8,
      O => \dout_buf[2]_i_1_n_8\
    );
\dout_buf[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^q_tmp_reg[3]_0\,
      I1 => q_buf(3),
      I2 => show_ahead_reg_n_8,
      O => \dout_buf[3]_i_1_n_8\
    );
\dout_buf[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^q_tmp_reg[4]_0\,
      I1 => q_buf(4),
      I2 => show_ahead_reg_n_8,
      O => \dout_buf[4]_i_1_n_8\
    );
\dout_buf[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^q_tmp_reg[5]_0\,
      I1 => q_buf(5),
      I2 => show_ahead_reg_n_8,
      O => \dout_buf[5]_i_1_n_8\
    );
\dout_buf[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^q_tmp_reg[6]_0\,
      I1 => q_buf(6),
      I2 => show_ahead_reg_n_8,
      O => \dout_buf[6]_i_1_n_8\
    );
\dout_buf[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^q_tmp_reg[7]_0\,
      I1 => q_buf(7),
      I2 => show_ahead_reg_n_8,
      O => \dout_buf[7]_i_1_n_8\
    );
\dout_buf_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => \dout_buf[0]_i_1_n_8\,
      Q => \dout_buf_reg[7]_0\(0),
      R => reset
    );
\dout_buf_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => \dout_buf[1]_i_1_n_8\,
      Q => \dout_buf_reg[7]_0\(1),
      R => reset
    );
\dout_buf_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => \dout_buf[2]_i_1_n_8\,
      Q => \dout_buf_reg[7]_0\(2),
      R => reset
    );
\dout_buf_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => \dout_buf[3]_i_1_n_8\,
      Q => \dout_buf_reg[7]_0\(3),
      R => reset
    );
\dout_buf_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => \dout_buf[4]_i_1_n_8\,
      Q => \dout_buf_reg[7]_0\(4),
      R => reset
    );
\dout_buf_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => \dout_buf[5]_i_1_n_8\,
      Q => \dout_buf_reg[7]_0\(5),
      R => reset
    );
\dout_buf_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => \dout_buf[6]_i_1_n_8\,
      Q => \dout_buf_reg[7]_0\(6),
      R => reset
    );
\dout_buf_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => \dout_buf[7]_i_1_n_8\,
      Q => \dout_buf_reg[7]_0\(7),
      R => reset
    );
dout_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => dout_valid_reg_0,
      Q => dbl2tsep_1_empty_n,
      R => reset
    );
\empty_n_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4000FFFF"
    )
        port map (
      I0 => pop,
      I1 => mod2dbl_1_empty_n,
      I2 => \^full_n_reg_0\,
      I3 => \q_tmp_reg[0]_1\,
      I4 => \^usedw_reg[7]_0\(0),
      I5 => empty_n_i_3_n_8,
      O => \empty_n_i_2__1_n_8\
    );
empty_n_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^usedw_reg[7]_0\(5),
      I1 => \^usedw_reg[7]_0\(7),
      I2 => \^usedw_reg[7]_0\(6),
      I3 => empty_n_i_4_n_8,
      O => empty_n_i_3_n_8
    );
empty_n_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => usedw_reg(9),
      I1 => usedw_reg(8),
      I2 => \^usedw_reg[7]_0\(2),
      I3 => \^usedw_reg[7]_0\(3),
      I4 => \^usedw_reg[7]_0\(1),
      I5 => \^usedw_reg[7]_0\(4),
      O => empty_n_i_4_n_8
    );
empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n_reg_1(0),
      D => \empty_n_i_2__1_n_8\,
      Q => empty_n_reg_0,
      R => reset
    );
\full_n_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7F7F80008080"
    )
        port map (
      I0 => mod2dbl_1_empty_n,
      I1 => \^full_n_reg_0\,
      I2 => \q_tmp_reg[0]_1\,
      I3 => \full_n_i_2__0_n_8\,
      I4 => \^usedw_reg[7]_0\(0),
      I5 => pop,
      O => \full_n_i_1__1_n_8\
    );
\full_n_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \^usedw_reg[7]_0\(2),
      I1 => \^usedw_reg[7]_0\(1),
      I2 => \^usedw_reg[7]_0\(7),
      I3 => \full_n_i_3__0_n_8\,
      O => \full_n_i_2__0_n_8\
    );
\full_n_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => usedw_reg(9),
      I1 => usedw_reg(8),
      I2 => \^usedw_reg[7]_0\(3),
      I3 => \^usedw_reg[7]_0\(5),
      I4 => \^usedw_reg[7]_0\(4),
      I5 => \^usedw_reg[7]_0\(6),
      O => \full_n_i_3__0_n_8\
    );
full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => empty_n_reg_1(0),
      D => \full_n_i_1__1_n_8\,
      Q => \^full_n_reg_0\,
      S => reset
    );
mem_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 4) => waddr(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13) => \mem_reg_i_1__0_n_8\,
      ADDRBWRADDR(12) => \mem_reg_i_2__0_n_8\,
      ADDRBWRADDR(11) => \mem_reg_i_3__0_n_8\,
      ADDRBWRADDR(10) => \mem_reg_i_4__0_n_8\,
      ADDRBWRADDR(9) => \mem_reg_i_5__0_n_8\,
      ADDRBWRADDR(8) => \mem_reg_i_6__0_n_8\,
      ADDRBWRADDR(7) => \mem_reg_i_7__0_n_8\,
      ADDRBWRADDR(6) => \mem_reg_i_8__1_n_8\,
      ADDRBWRADDR(5) => \mem_reg_i_9__0_n_8\,
      ADDRBWRADDR(4) => \mem_reg_i_10__0_n_8\,
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => clock,
      CLKBWRCLK => clock,
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => Q(7 downto 0),
      DIBDI(15 downto 0) => B"0000000011111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_mem_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 8) => NLW_mem_reg_DOBDO_UNCONNECTED(15 downto 8),
      DOBDO(7 downto 0) => q_buf(7 downto 0),
      DOPADOP(1 downto 0) => NLW_mem_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_mem_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => \^full_n_reg_0\,
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => \^e\(0),
      WEA(0) => \^e\(0),
      WEBWE(3 downto 0) => B"0000"
    );
\mem_reg_i_10__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \raddr_reg_n_8_[0]\,
      I1 => pop,
      O => \mem_reg_i_10__0_n_8\
    );
\mem_reg_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mod2dbl_1_empty_n,
      I1 => \^full_n_reg_0\,
      I2 => \q_tmp_reg[0]_1\,
      O => \^e\(0)
    );
\mem_reg_i_11__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \raddr_reg_n_8_[5]\,
      I1 => \raddr_reg_n_8_[3]\,
      I2 => \raddr_reg_n_8_[2]\,
      I3 => \raddr_reg_n_8_[0]\,
      I4 => \raddr_reg_n_8_[1]\,
      I5 => \raddr_reg_n_8_[4]\,
      O => \mem_reg_i_11__1_n_8\
    );
\mem_reg_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \raddr_reg_n_8_[7]\,
      I1 => \raddr_reg_n_8_[6]\,
      I2 => \mem_reg_i_11__1_n_8\,
      I3 => \raddr_reg_n_8_[8]\,
      I4 => pop,
      I5 => \raddr_reg_n_8_[9]\,
      O => \mem_reg_i_1__0_n_8\
    );
\mem_reg_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => \mem_reg_i_11__1_n_8\,
      I1 => \raddr_reg_n_8_[6]\,
      I2 => \raddr_reg_n_8_[7]\,
      I3 => pop,
      I4 => \raddr_reg_n_8_[8]\,
      O => \mem_reg_i_2__0_n_8\
    );
\mem_reg_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => \mem_reg_i_11__1_n_8\,
      I1 => \raddr_reg_n_8_[6]\,
      I2 => pop,
      I3 => \raddr_reg_n_8_[7]\,
      O => \mem_reg_i_3__0_n_8\
    );
\mem_reg_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \mem_reg_i_11__1_n_8\,
      I1 => pop,
      I2 => \raddr_reg_n_8_[6]\,
      O => \mem_reg_i_4__0_n_8\
    );
\mem_reg_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \raddr[5]_i_1_n_8\,
      I1 => pop,
      I2 => \raddr_reg_n_8_[5]\,
      O => \mem_reg_i_5__0_n_8\
    );
\mem_reg_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \raddr_reg_n_8_[1]\,
      I1 => \raddr_reg_n_8_[0]\,
      I2 => \raddr_reg_n_8_[2]\,
      I3 => \raddr_reg_n_8_[3]\,
      I4 => pop,
      I5 => \raddr_reg_n_8_[4]\,
      O => \mem_reg_i_6__0_n_8\
    );
\mem_reg_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \raddr_reg_n_8_[3]\,
      I1 => \raddr_reg_n_8_[1]\,
      I2 => pop,
      I3 => \raddr_reg_n_8_[0]\,
      I4 => \raddr_reg_n_8_[2]\,
      O => \mem_reg_i_7__0_n_8\
    );
\mem_reg_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \raddr_reg_n_8_[2]\,
      I1 => \raddr_reg_n_8_[0]\,
      I2 => pop,
      I3 => \raddr_reg_n_8_[1]\,
      O => \mem_reg_i_8__1_n_8\
    );
\mem_reg_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \raddr_reg_n_8_[1]\,
      I1 => pop,
      I2 => \raddr_reg_n_8_[0]\,
      O => \mem_reg_i_9__0_n_8\
    );
\p_0_out__24_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^usedw_reg[7]_0\(7),
      I1 => usedw_reg(8),
      O => \usedw_reg[7]_1\(3)
    );
\p_0_out__24_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^usedw_reg[7]_0\(6),
      I1 => \^usedw_reg[7]_0\(7),
      O => \usedw_reg[7]_1\(2)
    );
\p_0_out__24_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^usedw_reg[7]_0\(5),
      I1 => \^usedw_reg[7]_0\(6),
      O => \usedw_reg[7]_1\(1)
    );
\p_0_out__24_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^usedw_reg[7]_0\(4),
      I1 => \^usedw_reg[7]_0\(5),
      O => \usedw_reg[7]_1\(0)
    );
\p_0_out__24_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => usedw_reg(8),
      I1 => usedw_reg(9),
      O => \usedw_reg[8]_0\(0)
    );
\p_0_out__24_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^usedw_reg[7]_0\(3),
      I1 => \^usedw_reg[7]_0\(4),
      O => S(3)
    );
\p_0_out__24_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^usedw_reg[7]_0\(2),
      I1 => \^usedw_reg[7]_0\(3),
      O => S(2)
    );
\p_0_out__24_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^usedw_reg[7]_0\(1),
      I1 => \^usedw_reg[7]_0\(2),
      O => S(1)
    );
\p_0_out__24_carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"65555555"
    )
        port map (
      I0 => \^usedw_reg[7]_0\(1),
      I1 => pop,
      I2 => mod2dbl_1_empty_n,
      I3 => \^full_n_reg_0\,
      I4 => \q_tmp_reg[0]_1\,
      O => S(0)
    );
\q_tmp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \^e\(0),
      D => Q(0),
      Q => \^q_tmp_reg[0]_0\,
      R => reset
    );
\q_tmp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \^e\(0),
      D => Q(1),
      Q => \^q_tmp_reg[1]_0\,
      R => reset
    );
\q_tmp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \^e\(0),
      D => Q(2),
      Q => \^q_tmp_reg[2]_0\,
      R => reset
    );
\q_tmp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \^e\(0),
      D => Q(3),
      Q => \^q_tmp_reg[3]_0\,
      R => reset
    );
\q_tmp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \^e\(0),
      D => Q(4),
      Q => \^q_tmp_reg[4]_0\,
      R => reset
    );
\q_tmp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \^e\(0),
      D => Q(5),
      Q => \^q_tmp_reg[5]_0\,
      R => reset
    );
\q_tmp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \^e\(0),
      D => Q(6),
      Q => \^q_tmp_reg[6]_0\,
      R => reset
    );
\q_tmp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \^e\(0),
      D => Q(7),
      Q => \^q_tmp_reg[7]_0\,
      R => reset
    );
\raddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \raddr_reg_n_8_[4]\,
      I1 => \raddr_reg_n_8_[1]\,
      I2 => \raddr_reg_n_8_[0]\,
      I3 => \raddr_reg_n_8_[2]\,
      I4 => \raddr_reg_n_8_[3]\,
      O => \raddr[4]_i_1_n_8\
    );
\raddr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \raddr_reg_n_8_[5]\,
      I1 => \raddr_reg_n_8_[3]\,
      I2 => \raddr_reg_n_8_[2]\,
      I3 => \raddr_reg_n_8_[0]\,
      I4 => \raddr_reg_n_8_[1]\,
      I5 => \raddr_reg_n_8_[4]\,
      O => \raddr[5]_i_1_n_8\
    );
\raddr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \raddr_reg_n_8_[6]\,
      I1 => \mem_reg_i_11__1_n_8\,
      O => \raddr[6]_i_1_n_8\
    );
\raddr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \raddr_reg_n_8_[7]\,
      I1 => \mem_reg_i_11__1_n_8\,
      I2 => \raddr_reg_n_8_[6]\,
      O => \raddr[7]_i_1_n_8\
    );
\raddr[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9AAA"
    )
        port map (
      I0 => \raddr_reg_n_8_[8]\,
      I1 => \mem_reg_i_11__1_n_8\,
      I2 => \raddr_reg_n_8_[6]\,
      I3 => \raddr_reg_n_8_[7]\,
      O => \raddr[8]_i_1__0_n_8\
    );
\raddr[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AAAAA"
    )
        port map (
      I0 => \raddr_reg_n_8_[9]\,
      I1 => \raddr_reg_n_8_[7]\,
      I2 => \raddr_reg_n_8_[6]\,
      I3 => \mem_reg_i_11__1_n_8\,
      I4 => \raddr_reg_n_8_[8]\,
      O => \raddr[9]_i_2_n_8\
    );
\raddr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \mem_reg_i_10__0_n_8\,
      Q => \raddr_reg_n_8_[0]\,
      R => reset
    );
\raddr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \mem_reg_i_9__0_n_8\,
      Q => \raddr_reg_n_8_[1]\,
      R => reset
    );
\raddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \mem_reg_i_8__1_n_8\,
      Q => \raddr_reg_n_8_[2]\,
      R => reset
    );
\raddr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \mem_reg_i_7__0_n_8\,
      Q => \raddr_reg_n_8_[3]\,
      R => reset
    );
\raddr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => \raddr[4]_i_1_n_8\,
      Q => \raddr_reg_n_8_[4]\,
      R => reset
    );
\raddr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => \raddr[5]_i_1_n_8\,
      Q => \raddr_reg_n_8_[5]\,
      R => reset
    );
\raddr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => \raddr[6]_i_1_n_8\,
      Q => \raddr_reg_n_8_[6]\,
      R => reset
    );
\raddr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => \raddr[7]_i_1_n_8\,
      Q => \raddr_reg_n_8_[7]\,
      R => reset
    );
\raddr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => \raddr[8]_i_1__0_n_8\,
      Q => \raddr_reg_n_8_[8]\,
      R => reset
    );
\raddr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => \raddr[9]_i_2_n_8\,
      Q => \raddr_reg_n_8_[9]\,
      R => reset
    );
\show_ahead_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000040004000"
    )
        port map (
      I0 => empty_n_i_3_n_8,
      I1 => mod2dbl_1_empty_n,
      I2 => \^full_n_reg_0\,
      I3 => \q_tmp_reg[0]_1\,
      I4 => pop,
      I5 => \^usedw_reg[7]_0\(0),
      O => show_ahead0
    );
show_ahead_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => show_ahead0,
      Q => show_ahead_reg_n_8,
      R => reset
    );
\usedw[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^usedw_reg[7]_0\(0),
      O => \usedw[0]_i_1__0_n_8\
    );
\usedw_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n_reg_1(0),
      D => \usedw[0]_i_1__0_n_8\,
      Q => \^usedw_reg[7]_0\(0),
      R => reset
    );
\usedw_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n_reg_1(0),
      D => D(0),
      Q => \^usedw_reg[7]_0\(1),
      R => reset
    );
\usedw_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n_reg_1(0),
      D => D(1),
      Q => \^usedw_reg[7]_0\(2),
      R => reset
    );
\usedw_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n_reg_1(0),
      D => D(2),
      Q => \^usedw_reg[7]_0\(3),
      R => reset
    );
\usedw_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n_reg_1(0),
      D => D(3),
      Q => \^usedw_reg[7]_0\(4),
      R => reset
    );
\usedw_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n_reg_1(0),
      D => D(4),
      Q => \^usedw_reg[7]_0\(5),
      R => reset
    );
\usedw_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n_reg_1(0),
      D => D(5),
      Q => \^usedw_reg[7]_0\(6),
      R => reset
    );
\usedw_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n_reg_1(0),
      D => D(6),
      Q => \^usedw_reg[7]_0\(7),
      R => reset
    );
\usedw_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n_reg_1(0),
      D => D(7),
      Q => usedw_reg(8),
      R => reset
    );
\usedw_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n_reg_1(0),
      D => D(8),
      Q => usedw_reg(9),
      R => reset
    );
\waddr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => waddr(0),
      O => wnext(0)
    );
\waddr[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => waddr(0),
      I1 => waddr(1),
      O => wnext(1)
    );
\waddr[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => waddr(1),
      I1 => waddr(0),
      I2 => waddr(2),
      O => wnext(2)
    );
\waddr[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => waddr(2),
      I1 => waddr(0),
      I2 => waddr(1),
      I3 => waddr(3),
      O => wnext(3)
    );
\waddr[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => waddr(3),
      I1 => waddr(1),
      I2 => waddr(0),
      I3 => waddr(2),
      I4 => waddr(4),
      O => wnext(4)
    );
\waddr[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => waddr(4),
      I1 => waddr(2),
      I2 => waddr(0),
      I3 => waddr(1),
      I4 => waddr(3),
      I5 => waddr(5),
      O => wnext(5)
    );
\waddr[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \waddr[9]_i_2__0_n_8\,
      I1 => waddr(6),
      O => wnext(6)
    );
\waddr[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => waddr(6),
      I1 => \waddr[9]_i_2__0_n_8\,
      I2 => waddr(7),
      O => wnext(7)
    );
\waddr[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => waddr(7),
      I1 => \waddr[9]_i_2__0_n_8\,
      I2 => waddr(6),
      I3 => waddr(8),
      O => wnext(8)
    );
\waddr[9]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => waddr(8),
      I1 => waddr(6),
      I2 => \waddr[9]_i_2__0_n_8\,
      I3 => waddr(7),
      I4 => waddr(9),
      O => wnext(9)
    );
\waddr[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => waddr(4),
      I1 => waddr(2),
      I2 => waddr(0),
      I3 => waddr(1),
      I4 => waddr(3),
      I5 => waddr(5),
      O => \waddr[9]_i_2__0_n_8\
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \^e\(0),
      D => wnext(0),
      Q => waddr(0),
      R => reset
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \^e\(0),
      D => wnext(1),
      Q => waddr(1),
      R => reset
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \^e\(0),
      D => wnext(2),
      Q => waddr(2),
      R => reset
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \^e\(0),
      D => wnext(3),
      Q => waddr(3),
      R => reset
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \^e\(0),
      D => wnext(4),
      Q => waddr(4),
      R => reset
    );
\waddr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \^e\(0),
      D => wnext(5),
      Q => waddr(5),
      R => reset
    );
\waddr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \^e\(0),
      D => wnext(6),
      Q => waddr(6),
      R => reset
    );
\waddr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \^e\(0),
      D => wnext(7),
      Q => waddr(7),
      R => reset
    );
\waddr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \^e\(0),
      D => wnext(8),
      Q => waddr(8),
      R => reset
    );
\waddr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \^e\(0),
      D => wnext(9),
      Q => waddr(9),
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_fifo_w8_d1024_A_x is
  port (
    mod2dbl_1_full_n : out STD_LOGIC;
    mod2dbl_1_empty_n : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clock : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    push : in STD_LOGIC;
    reset : in STD_LOGIC;
    dbl2tsep_1_full_n : in STD_LOGIC;
    dbl2scalc_1_full_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_fifo_w8_d1024_A_x : entity is "fifo_w8_d1024_A_x";
end bd_0_hls_inst_0_fifo_w8_d1024_A_x;

architecture STRUCTURE of bd_0_hls_inst_0_fifo_w8_d1024_A_x is
  signal \dout_valid_i_1__1_n_8\ : STD_LOGIC;
  signal empty_n : STD_LOGIC;
  signal empty_n0 : STD_LOGIC;
  signal \empty_n_i_3__0_n_8\ : STD_LOGIC;
  signal \empty_n_i_4__0_n_8\ : STD_LOGIC;
  signal empty_n_reg_n_8 : STD_LOGIC;
  signal full_n0 : STD_LOGIC;
  signal \full_n_i_2__1_n_8\ : STD_LOGIC;
  signal \full_n_i_3__1_n_8\ : STD_LOGIC;
  signal \mem_reg_i_10__1_n_8\ : STD_LOGIC;
  signal \mem_reg_i_12__0_n_8\ : STD_LOGIC;
  signal \mem_reg_i_13__0_n_8\ : STD_LOGIC;
  signal \mem_reg_i_1__1_n_8\ : STD_LOGIC;
  signal \mem_reg_i_2__1_n_8\ : STD_LOGIC;
  signal \mem_reg_i_3__1_n_8\ : STD_LOGIC;
  signal \mem_reg_i_4__1_n_8\ : STD_LOGIC;
  signal \mem_reg_i_5__1_n_8\ : STD_LOGIC;
  signal \mem_reg_i_6__1_n_8\ : STD_LOGIC;
  signal \mem_reg_i_7__1_n_8\ : STD_LOGIC;
  signal \mem_reg_i_8__0_n_8\ : STD_LOGIC;
  signal \mem_reg_i_9__1_n_8\ : STD_LOGIC;
  signal \^mod2dbl_1_empty_n\ : STD_LOGIC;
  signal \^mod2dbl_1_full_n\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_out_carry__0_i_1__0_n_8\ : STD_LOGIC;
  signal \p_0_out_carry__0_i_2__0_n_8\ : STD_LOGIC;
  signal \p_0_out_carry__0_i_3__0_n_8\ : STD_LOGIC;
  signal \p_0_out_carry__0_i_4__0_n_8\ : STD_LOGIC;
  signal \p_0_out_carry__0_n_10\ : STD_LOGIC;
  signal \p_0_out_carry__0_n_11\ : STD_LOGIC;
  signal \p_0_out_carry__0_n_12\ : STD_LOGIC;
  signal \p_0_out_carry__0_n_13\ : STD_LOGIC;
  signal \p_0_out_carry__0_n_14\ : STD_LOGIC;
  signal \p_0_out_carry__0_n_15\ : STD_LOGIC;
  signal \p_0_out_carry__0_n_8\ : STD_LOGIC;
  signal \p_0_out_carry__0_n_9\ : STD_LOGIC;
  signal \p_0_out_carry__1_i_1__0_n_8\ : STD_LOGIC;
  signal \p_0_out_carry__1_n_15\ : STD_LOGIC;
  signal \p_0_out_carry_i_2__0_n_8\ : STD_LOGIC;
  signal \p_0_out_carry_i_3__0_n_8\ : STD_LOGIC;
  signal \p_0_out_carry_i_4__0_n_8\ : STD_LOGIC;
  signal p_0_out_carry_i_5_n_8 : STD_LOGIC;
  signal p_0_out_carry_n_10 : STD_LOGIC;
  signal p_0_out_carry_n_11 : STD_LOGIC;
  signal p_0_out_carry_n_12 : STD_LOGIC;
  signal p_0_out_carry_n_13 : STD_LOGIC;
  signal p_0_out_carry_n_14 : STD_LOGIC;
  signal p_0_out_carry_n_15 : STD_LOGIC;
  signal p_0_out_carry_n_8 : STD_LOGIC;
  signal p_0_out_carry_n_9 : STD_LOGIC;
  signal pop : STD_LOGIC;
  signal q_buf : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal q_tmp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal raddr : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \raddr[4]_i_1__0_n_8\ : STD_LOGIC;
  signal \raddr[5]_i_1__0_n_8\ : STD_LOGIC;
  signal \raddr[7]_i_1__0_n_8\ : STD_LOGIC;
  signal \raddr[8]_i_2_n_8\ : STD_LOGIC;
  signal show_ahead : STD_LOGIC;
  signal show_ahead0 : STD_LOGIC;
  signal usedw14_out : STD_LOGIC;
  signal \usedw[0]_i_1__1_n_8\ : STD_LOGIC;
  signal usedw_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal waddr : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \waddr[9]_i_2__1_n_8\ : STD_LOGIC;
  signal wnext : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_mem_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_mem_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_mem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_p_0_out_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p_0_out_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dout_buf[0]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \dout_buf[1]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \dout_buf[2]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \dout_buf[3]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \dout_buf[4]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \dout_buf[5]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \dout_buf[6]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \dout_buf[7]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of empty_n_i_2 : label is "soft_lutpair129";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 8192;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "mod2dbl_1_fifo_U/mem";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg : label is "RAM_TDP";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of mem_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of mem_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of mem_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of mem_reg : label is 7;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg : label is 7;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of p_0_out_carry : label is 35;
  attribute METHODOLOGY_DRC_VIOS of p_0_out_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \p_0_out_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \p_0_out_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \p_0_out_carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \p_0_out_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \raddr[7]_i_1__0\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \raddr[8]_i_2\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \usedw[0]_i_1__1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \waddr[1]_i_1__1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \waddr[2]_i_1__1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \waddr[3]_i_1__1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \waddr[4]_i_1__1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \waddr[6]_i_1__1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \waddr[7]_i_1__1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \waddr[8]_i_1__1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \waddr[9]_i_1__1\ : label is "soft_lutpair127";
begin
  mod2dbl_1_empty_n <= \^mod2dbl_1_empty_n\;
  mod2dbl_1_full_n <= \^mod2dbl_1_full_n\;
\dout_buf[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(0),
      I1 => q_buf(0),
      I2 => show_ahead,
      O => p_0_in(0)
    );
\dout_buf[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(1),
      I1 => q_buf(1),
      I2 => show_ahead,
      O => p_0_in(1)
    );
\dout_buf[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(2),
      I1 => q_buf(2),
      I2 => show_ahead,
      O => p_0_in(2)
    );
\dout_buf[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(3),
      I1 => q_buf(3),
      I2 => show_ahead,
      O => p_0_in(3)
    );
\dout_buf[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(4),
      I1 => q_buf(4),
      I2 => show_ahead,
      O => p_0_in(4)
    );
\dout_buf[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(5),
      I1 => q_buf(5),
      I2 => show_ahead,
      O => p_0_in(5)
    );
\dout_buf[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(6),
      I1 => q_buf(6),
      I2 => show_ahead,
      O => p_0_in(6)
    );
\dout_buf[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => q_tmp(7),
      I1 => q_buf(7),
      I2 => show_ahead,
      O => p_0_in(7)
    );
\dout_buf_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => p_0_in(0),
      Q => Q(0),
      R => reset
    );
\dout_buf_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => p_0_in(1),
      Q => Q(1),
      R => reset
    );
\dout_buf_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => p_0_in(2),
      Q => Q(2),
      R => reset
    );
\dout_buf_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => p_0_in(3),
      Q => Q(3),
      R => reset
    );
\dout_buf_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => p_0_in(4),
      Q => Q(4),
      R => reset
    );
\dout_buf_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => p_0_in(5),
      Q => Q(5),
      R => reset
    );
\dout_buf_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => p_0_in(6),
      Q => Q(6),
      R => reset
    );
\dout_buf_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => p_0_in(7),
      Q => Q(7),
      R => reset
    );
\dout_valid_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF2A"
    )
        port map (
      I0 => \^mod2dbl_1_empty_n\,
      I1 => dbl2tsep_1_full_n,
      I2 => dbl2scalc_1_full_n,
      I3 => empty_n_reg_n_8,
      O => \dout_valid_i_1__1_n_8\
    );
dout_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \dout_valid_i_1__1_n_8\,
      Q => \^mod2dbl_1_empty_n\,
      R => reset
    );
empty_n_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5999AAAA"
    )
        port map (
      I0 => push,
      I1 => \^mod2dbl_1_empty_n\,
      I2 => dbl2tsep_1_full_n,
      I3 => dbl2scalc_1_full_n,
      I4 => empty_n_reg_n_8,
      O => empty_n
    );
empty_n_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => pop,
      I1 => push,
      I2 => usedw_reg(0),
      I3 => \empty_n_i_3__0_n_8\,
      O => empty_n0
    );
\empty_n_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => usedw_reg(8),
      I1 => usedw_reg(9),
      I2 => usedw_reg(1),
      I3 => \empty_n_i_4__0_n_8\,
      O => \empty_n_i_3__0_n_8\
    );
\empty_n_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => usedw_reg(6),
      I1 => usedw_reg(5),
      I2 => usedw_reg(4),
      I3 => usedw_reg(7),
      I4 => usedw_reg(2),
      I5 => usedw_reg(3),
      O => \empty_n_i_4__0_n_8\
    );
empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n,
      D => empty_n0,
      Q => empty_n_reg_n_8,
      R => reset
    );
full_n_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF00FF00F700FF0"
    )
        port map (
      I0 => usedw_reg(9),
      I1 => usedw_reg(8),
      I2 => push,
      I3 => pop,
      I4 => \full_n_i_2__1_n_8\,
      I5 => \full_n_i_3__1_n_8\,
      O => full_n0
    );
\full_n_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => usedw_reg(3),
      I1 => usedw_reg(2),
      I2 => usedw_reg(0),
      I3 => usedw_reg(1),
      O => \full_n_i_2__1_n_8\
    );
\full_n_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => usedw_reg(5),
      I1 => usedw_reg(4),
      I2 => usedw_reg(7),
      I3 => usedw_reg(6),
      O => \full_n_i_3__1_n_8\
    );
full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => empty_n,
      D => full_n0,
      Q => \^mod2dbl_1_full_n\,
      S => reset
    );
mem_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 4) => waddr(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13) => \mem_reg_i_1__1_n_8\,
      ADDRBWRADDR(12) => \mem_reg_i_2__1_n_8\,
      ADDRBWRADDR(11) => \mem_reg_i_3__1_n_8\,
      ADDRBWRADDR(10) => \mem_reg_i_4__1_n_8\,
      ADDRBWRADDR(9) => \mem_reg_i_5__1_n_8\,
      ADDRBWRADDR(8) => \mem_reg_i_6__1_n_8\,
      ADDRBWRADDR(7) => \mem_reg_i_7__1_n_8\,
      ADDRBWRADDR(6) => \mem_reg_i_8__0_n_8\,
      ADDRBWRADDR(5) => \mem_reg_i_9__1_n_8\,
      ADDRBWRADDR(4) => \mem_reg_i_10__1_n_8\,
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => clock,
      CLKBWRCLK => clock,
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => D(7 downto 0),
      DIBDI(15 downto 0) => B"0000000011111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_mem_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 8) => NLW_mem_reg_DOBDO_UNCONNECTED(15 downto 8),
      DOBDO(7 downto 0) => q_buf(7 downto 0),
      DOPADOP(1 downto 0) => NLW_mem_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_mem_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => \^mod2dbl_1_full_n\,
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => push,
      WEA(0) => push,
      WEBWE(3 downto 0) => B"0000"
    );
\mem_reg_i_10__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5999AAAA"
    )
        port map (
      I0 => raddr(0),
      I1 => \^mod2dbl_1_empty_n\,
      I2 => dbl2tsep_1_full_n,
      I3 => dbl2scalc_1_full_n,
      I4 => empty_n_reg_n_8,
      O => \mem_reg_i_10__1_n_8\
    );
\mem_reg_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => raddr(5),
      I1 => raddr(3),
      I2 => raddr(2),
      I3 => raddr(0),
      I4 => raddr(1),
      I5 => raddr(4),
      O => \mem_reg_i_12__0_n_8\
    );
\mem_reg_i_13__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => raddr(6),
      I1 => \mem_reg_i_12__0_n_8\,
      O => \mem_reg_i_13__0_n_8\
    );
\mem_reg_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA6AAAAAAA"
    )
        port map (
      I0 => raddr(9),
      I1 => pop,
      I2 => raddr(8),
      I3 => raddr(7),
      I4 => raddr(6),
      I5 => \mem_reg_i_12__0_n_8\,
      O => \mem_reg_i_1__1_n_8\
    );
\mem_reg_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => raddr(6),
      I1 => \mem_reg_i_12__0_n_8\,
      I2 => raddr(7),
      I3 => pop,
      I4 => raddr(8),
      O => \mem_reg_i_2__1_n_8\
    );
\mem_reg_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF777780008888"
    )
        port map (
      I0 => \mem_reg_i_13__0_n_8\,
      I1 => empty_n_reg_n_8,
      I2 => dbl2scalc_1_full_n,
      I3 => dbl2tsep_1_full_n,
      I4 => \^mod2dbl_1_empty_n\,
      I5 => raddr(7),
      O => \mem_reg_i_3__1_n_8\
    );
\mem_reg_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAA9A9A9A9A"
    )
        port map (
      I0 => raddr(6),
      I1 => \mem_reg_i_12__0_n_8\,
      I2 => empty_n_reg_n_8,
      I3 => dbl2scalc_1_full_n,
      I4 => dbl2tsep_1_full_n,
      I5 => \^mod2dbl_1_empty_n\,
      O => \mem_reg_i_4__1_n_8\
    );
\mem_reg_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBBBB80008888"
    )
        port map (
      I0 => \raddr[5]_i_1__0_n_8\,
      I1 => empty_n_reg_n_8,
      I2 => dbl2scalc_1_full_n,
      I3 => dbl2tsep_1_full_n,
      I4 => \^mod2dbl_1_empty_n\,
      I5 => raddr(5),
      O => \mem_reg_i_5__1_n_8\
    );
\mem_reg_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => raddr(1),
      I1 => raddr(0),
      I2 => raddr(2),
      I3 => raddr(3),
      I4 => pop,
      I5 => raddr(4),
      O => \mem_reg_i_6__1_n_8\
    );
\mem_reg_i_7__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => raddr(3),
      I1 => raddr(2),
      I2 => raddr(1),
      I3 => pop,
      I4 => raddr(0),
      O => \mem_reg_i_7__1_n_8\
    );
\mem_reg_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => raddr(2),
      I1 => raddr(0),
      I2 => pop,
      I3 => raddr(1),
      O => \mem_reg_i_8__0_n_8\
    );
\mem_reg_i_9__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAA6666AAAAAAAA"
    )
        port map (
      I0 => raddr(1),
      I1 => empty_n_reg_n_8,
      I2 => dbl2scalc_1_full_n,
      I3 => dbl2tsep_1_full_n,
      I4 => \^mod2dbl_1_empty_n\,
      I5 => raddr(0),
      O => \mem_reg_i_9__1_n_8\
    );
p_0_out_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p_0_out_carry_n_8,
      CO(2) => p_0_out_carry_n_9,
      CO(1) => p_0_out_carry_n_10,
      CO(0) => p_0_out_carry_n_11,
      CYINIT => usedw_reg(0),
      DI(3 downto 1) => usedw_reg(3 downto 1),
      DI(0) => usedw14_out,
      O(3) => p_0_out_carry_n_12,
      O(2) => p_0_out_carry_n_13,
      O(1) => p_0_out_carry_n_14,
      O(0) => p_0_out_carry_n_15,
      S(3) => \p_0_out_carry_i_2__0_n_8\,
      S(2) => \p_0_out_carry_i_3__0_n_8\,
      S(1) => \p_0_out_carry_i_4__0_n_8\,
      S(0) => p_0_out_carry_i_5_n_8
    );
\p_0_out_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => p_0_out_carry_n_8,
      CO(3) => \p_0_out_carry__0_n_8\,
      CO(2) => \p_0_out_carry__0_n_9\,
      CO(1) => \p_0_out_carry__0_n_10\,
      CO(0) => \p_0_out_carry__0_n_11\,
      CYINIT => '0',
      DI(3 downto 0) => usedw_reg(7 downto 4),
      O(3) => \p_0_out_carry__0_n_12\,
      O(2) => \p_0_out_carry__0_n_13\,
      O(1) => \p_0_out_carry__0_n_14\,
      O(0) => \p_0_out_carry__0_n_15\,
      S(3) => \p_0_out_carry__0_i_1__0_n_8\,
      S(2) => \p_0_out_carry__0_i_2__0_n_8\,
      S(1) => \p_0_out_carry__0_i_3__0_n_8\,
      S(0) => \p_0_out_carry__0_i_4__0_n_8\
    );
\p_0_out_carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => usedw_reg(7),
      I1 => usedw_reg(8),
      O => \p_0_out_carry__0_i_1__0_n_8\
    );
\p_0_out_carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => usedw_reg(6),
      I1 => usedw_reg(7),
      O => \p_0_out_carry__0_i_2__0_n_8\
    );
\p_0_out_carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => usedw_reg(5),
      I1 => usedw_reg(6),
      O => \p_0_out_carry__0_i_3__0_n_8\
    );
\p_0_out_carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => usedw_reg(4),
      I1 => usedw_reg(5),
      O => \p_0_out_carry__0_i_4__0_n_8\
    );
\p_0_out_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_0_out_carry__0_n_8\,
      CO(3 downto 0) => \NLW_p_0_out_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_p_0_out_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \p_0_out_carry__1_n_15\,
      S(3 downto 1) => B"000",
      S(0) => \p_0_out_carry__1_i_1__0_n_8\
    );
\p_0_out_carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => usedw_reg(8),
      I1 => usedw_reg(9),
      O => \p_0_out_carry__1_i_1__0_n_8\
    );
p_0_out_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0888AAAA"
    )
        port map (
      I0 => push,
      I1 => \^mod2dbl_1_empty_n\,
      I2 => dbl2tsep_1_full_n,
      I3 => dbl2scalc_1_full_n,
      I4 => empty_n_reg_n_8,
      O => usedw14_out
    );
\p_0_out_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => usedw_reg(3),
      I1 => usedw_reg(4),
      O => \p_0_out_carry_i_2__0_n_8\
    );
\p_0_out_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => usedw_reg(2),
      I1 => usedw_reg(3),
      O => \p_0_out_carry_i_3__0_n_8\
    );
\p_0_out_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => usedw_reg(1),
      I1 => usedw_reg(2),
      O => \p_0_out_carry_i_4__0_n_8\
    );
p_0_out_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAA666655555555"
    )
        port map (
      I0 => usedw_reg(1),
      I1 => empty_n_reg_n_8,
      I2 => dbl2scalc_1_full_n,
      I3 => dbl2tsep_1_full_n,
      I4 => \^mod2dbl_1_empty_n\,
      I5 => push,
      O => p_0_out_carry_i_5_n_8
    );
\q_tmp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => push,
      D => D(0),
      Q => q_tmp(0),
      R => reset
    );
\q_tmp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => push,
      D => D(1),
      Q => q_tmp(1),
      R => reset
    );
\q_tmp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => push,
      D => D(2),
      Q => q_tmp(2),
      R => reset
    );
\q_tmp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => push,
      D => D(3),
      Q => q_tmp(3),
      R => reset
    );
\q_tmp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => push,
      D => D(4),
      Q => q_tmp(4),
      R => reset
    );
\q_tmp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => push,
      D => D(5),
      Q => q_tmp(5),
      R => reset
    );
\q_tmp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => push,
      D => D(6),
      Q => q_tmp(6),
      R => reset
    );
\q_tmp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => push,
      D => D(7),
      Q => q_tmp(7),
      R => reset
    );
\raddr[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => raddr(4),
      I1 => raddr(1),
      I2 => raddr(0),
      I3 => raddr(2),
      I4 => raddr(3),
      O => \raddr[4]_i_1__0_n_8\
    );
\raddr[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => raddr(5),
      I1 => raddr(3),
      I2 => raddr(2),
      I3 => raddr(0),
      I4 => raddr(1),
      I5 => raddr(4),
      O => \raddr[5]_i_1__0_n_8\
    );
\raddr[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => raddr(7),
      I1 => \mem_reg_i_12__0_n_8\,
      I2 => raddr(6),
      O => \raddr[7]_i_1__0_n_8\
    );
\raddr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80AA"
    )
        port map (
      I0 => empty_n_reg_n_8,
      I1 => dbl2scalc_1_full_n,
      I2 => dbl2tsep_1_full_n,
      I3 => \^mod2dbl_1_empty_n\,
      O => pop
    );
\raddr[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => raddr(8),
      I1 => raddr(6),
      I2 => \mem_reg_i_12__0_n_8\,
      I3 => raddr(7),
      O => \raddr[8]_i_2_n_8\
    );
\raddr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \mem_reg_i_10__1_n_8\,
      Q => raddr(0),
      R => reset
    );
\raddr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \mem_reg_i_9__1_n_8\,
      Q => raddr(1),
      R => reset
    );
\raddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \mem_reg_i_8__0_n_8\,
      Q => raddr(2),
      R => reset
    );
\raddr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \mem_reg_i_7__1_n_8\,
      Q => raddr(3),
      R => reset
    );
\raddr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => \raddr[4]_i_1__0_n_8\,
      Q => raddr(4),
      R => reset
    );
\raddr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => \raddr[5]_i_1__0_n_8\,
      Q => raddr(5),
      R => reset
    );
\raddr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \mem_reg_i_4__1_n_8\,
      Q => raddr(6),
      R => reset
    );
\raddr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => \raddr[7]_i_1__0_n_8\,
      Q => raddr(7),
      R => reset
    );
\raddr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => pop,
      D => \raddr[8]_i_2_n_8\,
      Q => raddr(8),
      R => reset
    );
\raddr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \mem_reg_i_1__1_n_8\,
      Q => raddr(9),
      R => reset
    );
show_ahead_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2202"
    )
        port map (
      I0 => push,
      I1 => \empty_n_i_3__0_n_8\,
      I2 => usedw_reg(0),
      I3 => pop,
      O => show_ahead0
    );
show_ahead_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => show_ahead0,
      Q => show_ahead,
      R => reset
    );
\usedw[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => usedw_reg(0),
      O => \usedw[0]_i_1__1_n_8\
    );
\usedw_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n,
      D => \usedw[0]_i_1__1_n_8\,
      Q => usedw_reg(0),
      R => reset
    );
\usedw_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n,
      D => p_0_out_carry_n_15,
      Q => usedw_reg(1),
      R => reset
    );
\usedw_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n,
      D => p_0_out_carry_n_14,
      Q => usedw_reg(2),
      R => reset
    );
\usedw_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n,
      D => p_0_out_carry_n_13,
      Q => usedw_reg(3),
      R => reset
    );
\usedw_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n,
      D => p_0_out_carry_n_12,
      Q => usedw_reg(4),
      R => reset
    );
\usedw_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n,
      D => \p_0_out_carry__0_n_15\,
      Q => usedw_reg(5),
      R => reset
    );
\usedw_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n,
      D => \p_0_out_carry__0_n_14\,
      Q => usedw_reg(6),
      R => reset
    );
\usedw_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n,
      D => \p_0_out_carry__0_n_13\,
      Q => usedw_reg(7),
      R => reset
    );
\usedw_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n,
      D => \p_0_out_carry__0_n_12\,
      Q => usedw_reg(8),
      R => reset
    );
\usedw_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => empty_n,
      D => \p_0_out_carry__1_n_15\,
      Q => usedw_reg(9),
      R => reset
    );
\waddr[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => waddr(0),
      O => wnext(0)
    );
\waddr[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => waddr(0),
      I1 => waddr(1),
      O => wnext(1)
    );
\waddr[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => waddr(1),
      I1 => waddr(0),
      I2 => waddr(2),
      O => wnext(2)
    );
\waddr[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => waddr(2),
      I1 => waddr(0),
      I2 => waddr(1),
      I3 => waddr(3),
      O => wnext(3)
    );
\waddr[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => waddr(3),
      I1 => waddr(1),
      I2 => waddr(0),
      I3 => waddr(2),
      I4 => waddr(4),
      O => wnext(4)
    );
\waddr[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => waddr(4),
      I1 => waddr(2),
      I2 => waddr(0),
      I3 => waddr(1),
      I4 => waddr(3),
      I5 => waddr(5),
      O => wnext(5)
    );
\waddr[6]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \waddr[9]_i_2__1_n_8\,
      I1 => waddr(6),
      O => wnext(6)
    );
\waddr[7]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => waddr(6),
      I1 => \waddr[9]_i_2__1_n_8\,
      I2 => waddr(7),
      O => wnext(7)
    );
\waddr[8]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => waddr(7),
      I1 => \waddr[9]_i_2__1_n_8\,
      I2 => waddr(6),
      I3 => waddr(8),
      O => wnext(8)
    );
\waddr[9]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => waddr(8),
      I1 => waddr(6),
      I2 => \waddr[9]_i_2__1_n_8\,
      I3 => waddr(7),
      I4 => waddr(9),
      O => wnext(9)
    );
\waddr[9]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => waddr(4),
      I1 => waddr(2),
      I2 => waddr(0),
      I3 => waddr(1),
      I4 => waddr(3),
      I5 => waddr(5),
      O => \waddr[9]_i_2__1_n_8\
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => push,
      D => wnext(0),
      Q => waddr(0),
      R => reset
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => push,
      D => wnext(1),
      Q => waddr(1),
      R => reset
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => push,
      D => wnext(2),
      Q => waddr(2),
      R => reset
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => push,
      D => wnext(3),
      Q => waddr(3),
      R => reset
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => push,
      D => wnext(4),
      Q => waddr(4),
      R => reset
    );
\waddr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => push,
      D => wnext(5),
      Q => waddr(5),
      R => reset
    );
\waddr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => push,
      D => wnext(6),
      Q => waddr(6),
      R => reset
    );
\waddr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => push,
      D => wnext(7),
      Q => waddr(7),
      R => reset
    );
\waddr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => push,
      D => wnext(8),
      Q => waddr(8),
      R => reset
    );
\waddr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => push,
      D => wnext(9),
      Q => waddr(9),
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_fifo_w8_d32_A_shiftReg is
  port (
    ce : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \val_V_reg_70_reg[7]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \val_V_reg_70_reg[0]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \val_V_reg_70_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clock : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_fifo_w8_d32_A_shiftReg : entity is "fifo_w8_d32_A_shiftReg";
end bd_0_hls_inst_0_fifo_w8_d32_A_shiftReg;

architecture STRUCTURE of bd_0_hls_inst_0_fifo_w8_d32_A_shiftReg is
  signal a : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^ce\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][1]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][2]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][3]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][4]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][5]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][6]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][7]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \SRL_SIG_reg[31][0]_srl32\ : label is "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name : string;
  attribute srl_name of \SRL_SIG_reg[31][0]_srl32\ : label is "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][0]_srl32 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \SRL_SIG_reg[31][0]_srl32_i_2__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \SRL_SIG_reg[31][0]_srl32_i_3__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \SRL_SIG_reg[31][0]_srl32_i_4__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \SRL_SIG_reg[31][0]_srl32_i_5__0\ : label is "soft_lutpair20";
  attribute srl_bus_name of \SRL_SIG_reg[31][1]_srl32\ : label is "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name of \SRL_SIG_reg[31][1]_srl32\ : label is "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][1]_srl32 ";
  attribute srl_bus_name of \SRL_SIG_reg[31][2]_srl32\ : label is "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name of \SRL_SIG_reg[31][2]_srl32\ : label is "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][2]_srl32 ";
  attribute srl_bus_name of \SRL_SIG_reg[31][3]_srl32\ : label is "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name of \SRL_SIG_reg[31][3]_srl32\ : label is "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][3]_srl32 ";
  attribute srl_bus_name of \SRL_SIG_reg[31][4]_srl32\ : label is "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name of \SRL_SIG_reg[31][4]_srl32\ : label is "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][4]_srl32 ";
  attribute srl_bus_name of \SRL_SIG_reg[31][5]_srl32\ : label is "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name of \SRL_SIG_reg[31][5]_srl32\ : label is "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][5]_srl32 ";
  attribute srl_bus_name of \SRL_SIG_reg[31][6]_srl32\ : label is "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name of \SRL_SIG_reg[31][6]_srl32\ : label is "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][6]_srl32 ";
  attribute srl_bus_name of \SRL_SIG_reg[31][7]_srl32\ : label is "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name of \SRL_SIG_reg[31][7]_srl32\ : label is "U0/\dow2bit_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][7]_srl32 ";
begin
  ce <= \^ce\;
\SRL_SIG_reg[31][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => \^ce\,
      CLK => clock,
      D => \val_V_reg_70_reg[7]_0\(0),
      Q => \out\(0),
      Q31 => \NLW_SRL_SIG_reg[31][0]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][0]_srl32_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \val_V_reg_70_reg[7]\,
      I1 => Q(0),
      O => \^ce\
    );
\SRL_SIG_reg[31][0]_srl32_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \val_V_reg_70_reg[0]\(4),
      I1 => \val_V_reg_70_reg[0]\(5),
      O => a(4)
    );
\SRL_SIG_reg[31][0]_srl32_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \val_V_reg_70_reg[0]\(3),
      I1 => \val_V_reg_70_reg[0]\(5),
      O => a(3)
    );
\SRL_SIG_reg[31][0]_srl32_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \val_V_reg_70_reg[0]\(2),
      I1 => \val_V_reg_70_reg[0]\(5),
      O => a(2)
    );
\SRL_SIG_reg[31][0]_srl32_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \val_V_reg_70_reg[0]\(1),
      I1 => \val_V_reg_70_reg[0]\(5),
      O => a(1)
    );
\SRL_SIG_reg[31][0]_srl32_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \val_V_reg_70_reg[0]\(0),
      I1 => \val_V_reg_70_reg[0]\(5),
      O => a(0)
    );
\SRL_SIG_reg[31][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => \^ce\,
      CLK => clock,
      D => \val_V_reg_70_reg[7]_0\(1),
      Q => \out\(1),
      Q31 => \NLW_SRL_SIG_reg[31][1]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][2]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => \^ce\,
      CLK => clock,
      D => \val_V_reg_70_reg[7]_0\(2),
      Q => \out\(2),
      Q31 => \NLW_SRL_SIG_reg[31][2]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][3]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => \^ce\,
      CLK => clock,
      D => \val_V_reg_70_reg[7]_0\(3),
      Q => \out\(3),
      Q31 => \NLW_SRL_SIG_reg[31][3]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][4]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => \^ce\,
      CLK => clock,
      D => \val_V_reg_70_reg[7]_0\(4),
      Q => \out\(4),
      Q31 => \NLW_SRL_SIG_reg[31][4]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][5]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => \^ce\,
      CLK => clock,
      D => \val_V_reg_70_reg[7]_0\(5),
      Q => \out\(5),
      Q31 => \NLW_SRL_SIG_reg[31][5]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][6]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => \^ce\,
      CLK => clock,
      D => \val_V_reg_70_reg[7]_0\(6),
      Q => \out\(6),
      Q31 => \NLW_SRL_SIG_reg[31][6]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][7]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => \^ce\,
      CLK => clock,
      D => \val_V_reg_70_reg[7]_0\(7),
      Q => \out\(7),
      Q31 => \NLW_SRL_SIG_reg[31][7]_srl32_Q31_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_fifo_w8_d32_A_shiftReg_4 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ce : in STD_LOGIC;
    \val_V_reg_92_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clock : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_fifo_w8_d32_A_shiftReg_4 : entity is "fifo_w8_d32_A_shiftReg";
end bd_0_hls_inst_0_fifo_w8_d32_A_shiftReg_4;

architecture STRUCTURE of bd_0_hls_inst_0_fifo_w8_d32_A_shiftReg_4 is
  signal a : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_SRL_SIG_reg[31][0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][1]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][2]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][3]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][4]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][5]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][6]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][7]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \SRL_SIG_reg[31][0]_srl32\ : label is "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name : string;
  attribute srl_name of \SRL_SIG_reg[31][0]_srl32\ : label is "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][0]_srl32 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \SRL_SIG_reg[31][0]_srl32_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \SRL_SIG_reg[31][0]_srl32_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \SRL_SIG_reg[31][0]_srl32_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \SRL_SIG_reg[31][0]_srl32_i_5\ : label is "soft_lutpair15";
  attribute srl_bus_name of \SRL_SIG_reg[31][1]_srl32\ : label is "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name of \SRL_SIG_reg[31][1]_srl32\ : label is "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][1]_srl32 ";
  attribute srl_bus_name of \SRL_SIG_reg[31][2]_srl32\ : label is "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name of \SRL_SIG_reg[31][2]_srl32\ : label is "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][2]_srl32 ";
  attribute srl_bus_name of \SRL_SIG_reg[31][3]_srl32\ : label is "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name of \SRL_SIG_reg[31][3]_srl32\ : label is "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][3]_srl32 ";
  attribute srl_bus_name of \SRL_SIG_reg[31][4]_srl32\ : label is "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name of \SRL_SIG_reg[31][4]_srl32\ : label is "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][4]_srl32 ";
  attribute srl_bus_name of \SRL_SIG_reg[31][5]_srl32\ : label is "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name of \SRL_SIG_reg[31][5]_srl32\ : label is "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][5]_srl32 ";
  attribute srl_bus_name of \SRL_SIG_reg[31][6]_srl32\ : label is "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name of \SRL_SIG_reg[31][6]_srl32\ : label is "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][6]_srl32 ";
  attribute srl_bus_name of \SRL_SIG_reg[31][7]_srl32\ : label is "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name of \SRL_SIG_reg[31][7]_srl32\ : label is "U0/\det2dow_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][7]_srl32 ";
begin
\SRL_SIG_reg[31][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \val_V_reg_92_reg[7]\(0),
      Q => \out\(0),
      Q31 => \NLW_SRL_SIG_reg[31][0]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][0]_srl32_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      O => a(4)
    );
\SRL_SIG_reg[31][0]_srl32_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(3),
      I1 => Q(5),
      O => a(3)
    );
\SRL_SIG_reg[31][0]_srl32_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(2),
      I1 => Q(5),
      O => a(2)
    );
\SRL_SIG_reg[31][0]_srl32_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(1),
      I1 => Q(5),
      O => a(1)
    );
\SRL_SIG_reg[31][0]_srl32_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(0),
      I1 => Q(5),
      O => a(0)
    );
\SRL_SIG_reg[31][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \val_V_reg_92_reg[7]\(1),
      Q => \out\(1),
      Q31 => \NLW_SRL_SIG_reg[31][1]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][2]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \val_V_reg_92_reg[7]\(2),
      Q => \out\(2),
      Q31 => \NLW_SRL_SIG_reg[31][2]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][3]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \val_V_reg_92_reg[7]\(3),
      Q => \out\(3),
      Q31 => \NLW_SRL_SIG_reg[31][3]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][4]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \val_V_reg_92_reg[7]\(4),
      Q => \out\(4),
      Q31 => \NLW_SRL_SIG_reg[31][4]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][5]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \val_V_reg_92_reg[7]\(5),
      Q => \out\(5),
      Q31 => \NLW_SRL_SIG_reg[31][5]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][6]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \val_V_reg_92_reg[7]\(6),
      Q => \out\(6),
      Q31 => \NLW_SRL_SIG_reg[31][6]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][7]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \val_V_reg_92_reg[7]\(7),
      Q => \out\(7),
      Q31 => \NLW_SRL_SIG_reg[31][7]_srl32_Q31_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_fifo_w8_d32_A_shiftReg_5 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ce : in STD_LOGIC;
    \val_V_6_reg_356_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clock : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_fifo_w8_d32_A_shiftReg_5 : entity is "fifo_w8_d32_A_shiftReg";
end bd_0_hls_inst_0_fifo_w8_d32_A_shiftReg_5;

architecture STRUCTURE of bd_0_hls_inst_0_fifo_w8_d32_A_shiftReg_5 is
  signal a : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_SRL_SIG_reg[31][0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][1]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][2]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][3]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][4]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][5]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][6]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][7]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \SRL_SIG_reg[31][0]_srl32\ : label is "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name : string;
  attribute srl_name of \SRL_SIG_reg[31][0]_srl32\ : label is "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][0]_srl32 ";
  attribute srl_bus_name of \SRL_SIG_reg[31][1]_srl32\ : label is "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name of \SRL_SIG_reg[31][1]_srl32\ : label is "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][1]_srl32 ";
  attribute srl_bus_name of \SRL_SIG_reg[31][2]_srl32\ : label is "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name of \SRL_SIG_reg[31][2]_srl32\ : label is "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][2]_srl32 ";
  attribute srl_bus_name of \SRL_SIG_reg[31][3]_srl32\ : label is "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name of \SRL_SIG_reg[31][3]_srl32\ : label is "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][3]_srl32 ";
  attribute srl_bus_name of \SRL_SIG_reg[31][4]_srl32\ : label is "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name of \SRL_SIG_reg[31][4]_srl32\ : label is "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][4]_srl32 ";
  attribute srl_bus_name of \SRL_SIG_reg[31][5]_srl32\ : label is "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name of \SRL_SIG_reg[31][5]_srl32\ : label is "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][5]_srl32 ";
  attribute srl_bus_name of \SRL_SIG_reg[31][6]_srl32\ : label is "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name of \SRL_SIG_reg[31][6]_srl32\ : label is "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][6]_srl32 ";
  attribute srl_bus_name of \SRL_SIG_reg[31][7]_srl32\ : label is "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name of \SRL_SIG_reg[31][7]_srl32\ : label is "U0/\crc2fra_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][7]_srl32 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \SRL_SIG_reg[31][7]_srl32_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \SRL_SIG_reg[31][7]_srl32_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \SRL_SIG_reg[31][7]_srl32_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \SRL_SIG_reg[31][7]_srl32_i_5\ : label is "soft_lutpair9";
begin
\SRL_SIG_reg[31][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \val_V_6_reg_356_reg[7]\(0),
      Q => \out\(0),
      Q31 => \NLW_SRL_SIG_reg[31][0]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \val_V_6_reg_356_reg[7]\(1),
      Q => \out\(1),
      Q31 => \NLW_SRL_SIG_reg[31][1]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][2]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \val_V_6_reg_356_reg[7]\(2),
      Q => \out\(2),
      Q31 => \NLW_SRL_SIG_reg[31][2]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][3]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \val_V_6_reg_356_reg[7]\(3),
      Q => \out\(3),
      Q31 => \NLW_SRL_SIG_reg[31][3]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][4]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \val_V_6_reg_356_reg[7]\(4),
      Q => \out\(4),
      Q31 => \NLW_SRL_SIG_reg[31][4]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][5]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \val_V_6_reg_356_reg[7]\(5),
      Q => \out\(5),
      Q31 => \NLW_SRL_SIG_reg[31][5]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][6]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \val_V_6_reg_356_reg[7]\(6),
      Q => \out\(6),
      Q31 => \NLW_SRL_SIG_reg[31][6]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][7]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ce,
      CLK => clock,
      D => \val_V_6_reg_356_reg[7]\(7),
      Q => \out\(7),
      Q31 => \NLW_SRL_SIG_reg[31][7]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][7]_srl32_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      O => a(4)
    );
\SRL_SIG_reg[31][7]_srl32_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(3),
      I1 => Q(5),
      O => a(3)
    );
\SRL_SIG_reg[31][7]_srl32_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(2),
      I1 => Q(5),
      O => a(2)
    );
\SRL_SIG_reg[31][7]_srl32_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(1),
      I1 => Q(5),
      O => a(1)
    );
\SRL_SIG_reg[31][7]_srl32_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(0),
      I1 => Q(5),
      O => a(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_fifo_w8_d32_A_shiftReg_6 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ap_NS_fsm : in STD_LOGIC_VECTOR ( 0 to 0 );
    \in\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clock : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_fifo_w8_d32_A_shiftReg_6 : entity is "fifo_w8_d32_A_shiftReg";
end bd_0_hls_inst_0_fifo_w8_d32_A_shiftReg_6;

architecture STRUCTURE of bd_0_hls_inst_0_fifo_w8_d32_A_shiftReg_6 is
  signal a : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_SRL_SIG_reg[31][0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][1]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][2]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][3]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][4]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][5]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][6]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_SRL_SIG_reg[31][7]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \SRL_SIG_reg[31][0]_srl32\ : label is "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name : string;
  attribute srl_name of \SRL_SIG_reg[31][0]_srl32\ : label is "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][0]_srl32 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \SRL_SIG_reg[31][0]_srl32_i_1__2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \SRL_SIG_reg[31][0]_srl32_i_2__2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \SRL_SIG_reg[31][0]_srl32_i_3__2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \SRL_SIG_reg[31][0]_srl32_i_4__2\ : label is "soft_lutpair5";
  attribute srl_bus_name of \SRL_SIG_reg[31][1]_srl32\ : label is "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name of \SRL_SIG_reg[31][1]_srl32\ : label is "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][1]_srl32 ";
  attribute srl_bus_name of \SRL_SIG_reg[31][2]_srl32\ : label is "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name of \SRL_SIG_reg[31][2]_srl32\ : label is "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][2]_srl32 ";
  attribute srl_bus_name of \SRL_SIG_reg[31][3]_srl32\ : label is "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name of \SRL_SIG_reg[31][3]_srl32\ : label is "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][3]_srl32 ";
  attribute srl_bus_name of \SRL_SIG_reg[31][4]_srl32\ : label is "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name of \SRL_SIG_reg[31][4]_srl32\ : label is "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][4]_srl32 ";
  attribute srl_bus_name of \SRL_SIG_reg[31][5]_srl32\ : label is "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name of \SRL_SIG_reg[31][5]_srl32\ : label is "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][5]_srl32 ";
  attribute srl_bus_name of \SRL_SIG_reg[31][6]_srl32\ : label is "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name of \SRL_SIG_reg[31][6]_srl32\ : label is "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][6]_srl32 ";
  attribute srl_bus_name of \SRL_SIG_reg[31][7]_srl32\ : label is "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31] ";
  attribute srl_name of \SRL_SIG_reg[31][7]_srl32\ : label is "U0/\byt2crc_1_fifo_U/U_fifo_w8_d32_A_shiftReg/SRL_SIG_reg[31][7]_srl32 ";
begin
\SRL_SIG_reg[31][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ap_NS_fsm(0),
      CLK => clock,
      D => \in\(0),
      Q => \out\(0),
      Q31 => \NLW_SRL_SIG_reg[31][0]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][0]_srl32_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      O => a(4)
    );
\SRL_SIG_reg[31][0]_srl32_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(3),
      I1 => Q(5),
      O => a(3)
    );
\SRL_SIG_reg[31][0]_srl32_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(2),
      I1 => Q(5),
      O => a(2)
    );
\SRL_SIG_reg[31][0]_srl32_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(1),
      I1 => Q(5),
      O => a(1)
    );
\SRL_SIG_reg[31][0]_srl32_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(0),
      I1 => Q(5),
      O => a(0)
    );
\SRL_SIG_reg[31][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ap_NS_fsm(0),
      CLK => clock,
      D => \in\(1),
      Q => \out\(1),
      Q31 => \NLW_SRL_SIG_reg[31][1]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][2]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ap_NS_fsm(0),
      CLK => clock,
      D => \in\(2),
      Q => \out\(2),
      Q31 => \NLW_SRL_SIG_reg[31][2]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][3]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ap_NS_fsm(0),
      CLK => clock,
      D => \in\(3),
      Q => \out\(3),
      Q31 => \NLW_SRL_SIG_reg[31][3]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][4]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ap_NS_fsm(0),
      CLK => clock,
      D => \in\(4),
      Q => \out\(4),
      Q31 => \NLW_SRL_SIG_reg[31][4]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][5]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ap_NS_fsm(0),
      CLK => clock,
      D => \in\(5),
      Q => \out\(5),
      Q31 => \NLW_SRL_SIG_reg[31][5]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][6]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ap_NS_fsm(0),
      CLK => clock,
      D => \in\(6),
      Q => \out\(6),
      Q31 => \NLW_SRL_SIG_reg[31][6]_srl32_Q31_UNCONNECTED\
    );
\SRL_SIG_reg[31][7]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => a(4 downto 0),
      CE => ap_NS_fsm(0),
      CLK => clock,
      D => \in\(7),
      Q => \out\(7),
      Q31 => \NLW_SRL_SIG_reg[31][7]_srl32_Q31_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_trames_separ2_do_gen is
  port (
    tmp_reg_173 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    internal_full_n_reg : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    pop : out STD_LOGIC;
    dout_valid_reg : out STD_LOGIC;
    \mOutPtr_reg[1]\ : out STD_LOGIC;
    \mOutPtr_reg[0]\ : out STD_LOGIC;
    \mOutPtr_reg[0]_0\ : out STD_LOGIC;
    internal_empty_n_reg : out STD_LOGIC;
    internal_empty_n3_out : out STD_LOGIC;
    \ap_CS_fsm_reg[1]_0\ : out STD_LOGIC;
    \tmp_reg_173_reg[0]_0\ : in STD_LOGIC;
    clock : in STD_LOGIC;
    dbl2tsep_1_empty_n : in STD_LOGIC;
    detect_1_empty_n : in STD_LOGIC;
    detect_1_dout : in STD_LOGIC;
    ce : in STD_LOGIC;
    \dout_buf_reg[7]\ : in STD_LOGIC;
    internal_empty_n_reg_0 : in STD_LOGIC;
    internal_empty_n_reg_1 : in STD_LOGIC;
    internal_empty_n_reg_2 : in STD_LOGIC;
    \mOutPtr_reg[5]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    det2dow_1_empty_n : in STD_LOGIC;
    \mOutPtr_reg[2]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    det2dow_1_full_n : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_trames_separ2_do_gen : entity is "trames_separ2_do_gen";
end bd_0_hls_inst_0_trames_separ2_do_gen;

architecture STRUCTURE of bd_0_hls_inst_0_trames_separ2_do_gen is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ap_CS_fsm[1]_i_2_n_8\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_3_n_8\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_2_n_8\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_3_n_8\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_4_n_8\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_5_n_8\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_6_n_8\ : STD_LOGIC;
  signal \ap_CS_fsm[4]_i_2__0_n_8\ : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_CS_fsm_state5 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal ap_NS_fsm13_out : STD_LOGIC;
  signal e_read3 : STD_LOGIC;
  signal i1_0_reg_1150 : STD_LOGIC;
  signal \i1_0_reg_115[10]_i_4_n_8\ : STD_LOGIC;
  signal i1_0_reg_115_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \i2_0_reg_126[7]_i_1_n_8\ : STD_LOGIC;
  signal \i2_0_reg_126[7]_i_4_n_8\ : STD_LOGIC;
  signal i2_0_reg_126_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i_0_reg_1040 : STD_LOGIC;
  signal \i_0_reg_104[8]_i_4_n_8\ : STD_LOGIC;
  signal i_0_reg_104_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal i_1_fu_155_p2 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal i_2_fu_167_p2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i_fu_143_p2 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^internal_full_n_reg\ : STD_LOGIC;
  signal \^tmp_reg_173\ : STD_LOGIC;
  signal tmp_reg_1730 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1__0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_3\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_3\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_4\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_5\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \ap_CS_fsm[4]_i_2__0\ : label is "soft_lutpair92";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute SOFT_HLUTNM of \i1_0_reg_115[1]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \i1_0_reg_115[2]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \i1_0_reg_115[3]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \i1_0_reg_115[4]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \i1_0_reg_115[6]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \i1_0_reg_115[7]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \i1_0_reg_115[8]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \i1_0_reg_115[9]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \i2_0_reg_126[0]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \i2_0_reg_126[1]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \i2_0_reg_126[2]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \i2_0_reg_126[3]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \i2_0_reg_126[4]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \i2_0_reg_126[6]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \i2_0_reg_126[7]_i_3\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \i_0_reg_104[1]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \i_0_reg_104[2]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \i_0_reg_104[3]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \i_0_reg_104[4]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \i_0_reg_104[6]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \i_0_reg_104[7]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \i_0_reg_104[8]_i_3\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \mOutPtr[10]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \raddr[9]_i_3\ : label is "soft_lutpair91";
begin
  Q(0) <= \^q\(0);
  internal_full_n_reg <= \^internal_full_n_reg\;
  tmp_reg_173 <= \^tmp_reg_173\;
\SRL_SIG_reg[31][0]_srl32_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => i_0_reg_1040,
      I1 => e_read3,
      I2 => i1_0_reg_1150,
      O => \^internal_full_n_reg\
    );
\ap_CS_fsm[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8888"
    )
        port map (
      I0 => ap_CS_fsm_state5,
      I1 => \ap_CS_fsm[1]_i_2_n_8\,
      I2 => dbl2tsep_1_empty_n,
      I3 => detect_1_empty_n,
      I4 => \^q\(0),
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000010FFFFFFFF"
    )
        port map (
      I0 => \ap_CS_fsm[1]_i_3_n_8\,
      I1 => i2_0_reg_126_reg(3),
      I2 => i2_0_reg_126_reg(7),
      I3 => i2_0_reg_126_reg(2),
      I4 => i2_0_reg_126_reg(1),
      I5 => \^tmp_reg_173\,
      O => \ap_CS_fsm[1]_i_2_n_8\
    );
\ap_CS_fsm[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => i2_0_reg_126_reg(4),
      I1 => i2_0_reg_126_reg(0),
      I2 => i2_0_reg_126_reg(6),
      I3 => i2_0_reg_126_reg(5),
      O => \ap_CS_fsm[1]_i_3_n_8\
    );
\ap_CS_fsm[2]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F0F0FD"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => \ap_CS_fsm[3]_i_3_n_8\,
      I2 => SR(0),
      I3 => \^q\(0),
      I4 => ap_CS_fsm_state5,
      I5 => ap_CS_fsm_state4,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[3]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44F4"
    )
        port map (
      I0 => \ap_CS_fsm[3]_i_2_n_8\,
      I1 => ap_CS_fsm_state4,
      I2 => ap_CS_fsm_state3,
      I3 => \ap_CS_fsm[3]_i_3_n_8\,
      O => ap_NS_fsm(3)
    );
\ap_CS_fsm[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => i1_0_reg_115_reg(2),
      I1 => i1_0_reg_115_reg(4),
      I2 => i1_0_reg_115_reg(8),
      I3 => i1_0_reg_115_reg(9),
      I4 => \ap_CS_fsm[3]_i_4_n_8\,
      I5 => \ap_CS_fsm[3]_i_5_n_8\,
      O => \ap_CS_fsm[3]_i_2_n_8\
    );
\ap_CS_fsm[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => i_0_reg_104_reg(5),
      I1 => i_0_reg_104_reg(6),
      I2 => i_0_reg_104_reg(1),
      I3 => \ap_CS_fsm[3]_i_6_n_8\,
      O => \ap_CS_fsm[3]_i_3_n_8\
    );
\ap_CS_fsm[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
        port map (
      I0 => i1_0_reg_115_reg(1),
      I1 => i1_0_reg_115_reg(0),
      I2 => i1_0_reg_115_reg(6),
      I3 => i1_0_reg_115_reg(3),
      O => \ap_CS_fsm[3]_i_4_n_8\
    );
\ap_CS_fsm[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => i1_0_reg_115_reg(10),
      I1 => i1_0_reg_115_reg(1),
      I2 => i1_0_reg_115_reg(7),
      I3 => i1_0_reg_115_reg(5),
      O => \ap_CS_fsm[3]_i_5_n_8\
    );
\ap_CS_fsm[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => i_0_reg_104_reg(8),
      I1 => i_0_reg_104_reg(3),
      I2 => i_0_reg_104_reg(2),
      I3 => i_0_reg_104_reg(4),
      I4 => i_0_reg_104_reg(0),
      I5 => i_0_reg_104_reg(7),
      O => \ap_CS_fsm[3]_i_6_n_8\
    );
\ap_CS_fsm[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF5555D555"
    )
        port map (
      I0 => \ap_CS_fsm[4]_i_2__0_n_8\,
      I1 => dbl2tsep_1_empty_n,
      I2 => detect_1_empty_n,
      I3 => \^q\(0),
      I4 => detect_1_dout,
      I5 => \i2_0_reg_126[7]_i_1_n_8\,
      O => ap_NS_fsm(4)
    );
\ap_CS_fsm[4]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \ap_CS_fsm[1]_i_2_n_8\,
      I1 => ap_CS_fsm_state5,
      O => \ap_CS_fsm[4]_i_2__0_n_8\
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => \^q\(0),
      S => reset
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => reset
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state4,
      R => reset
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(4),
      Q => ap_CS_fsm_state5,
      R => reset
    );
\dout_valid_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1500"
    )
        port map (
      I0 => \^internal_full_n_reg\,
      I1 => \^q\(0),
      I2 => detect_1_empty_n,
      I3 => dbl2tsep_1_empty_n,
      I4 => \dout_buf_reg[7]\,
      O => \ap_CS_fsm_reg[1]_0\
    );
\i1_0_reg_115[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i1_0_reg_115_reg(0),
      O => i_1_fu_155_p2(0)
    );
\i1_0_reg_115[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => \ap_CS_fsm[3]_i_3_n_8\,
      O => ap_NS_fsm13_out
    );
\i1_0_reg_115[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => dbl2tsep_1_empty_n,
      I1 => detect_1_empty_n,
      I2 => det2dow_1_full_n,
      I3 => ap_CS_fsm_state4,
      I4 => \ap_CS_fsm[3]_i_2_n_8\,
      O => i1_0_reg_1150
    );
\i1_0_reg_115[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => i1_0_reg_115_reg(10),
      I1 => i1_0_reg_115_reg(8),
      I2 => i1_0_reg_115_reg(6),
      I3 => \i1_0_reg_115[10]_i_4_n_8\,
      I4 => i1_0_reg_115_reg(7),
      I5 => i1_0_reg_115_reg(9),
      O => i_1_fu_155_p2(10)
    );
\i1_0_reg_115[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => i1_0_reg_115_reg(5),
      I1 => i1_0_reg_115_reg(3),
      I2 => i1_0_reg_115_reg(0),
      I3 => i1_0_reg_115_reg(1),
      I4 => i1_0_reg_115_reg(2),
      I5 => i1_0_reg_115_reg(4),
      O => \i1_0_reg_115[10]_i_4_n_8\
    );
\i1_0_reg_115[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i1_0_reg_115_reg(0),
      I1 => i1_0_reg_115_reg(1),
      O => i_1_fu_155_p2(1)
    );
\i1_0_reg_115[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => i1_0_reg_115_reg(2),
      I1 => i1_0_reg_115_reg(1),
      I2 => i1_0_reg_115_reg(0),
      O => i_1_fu_155_p2(2)
    );
\i1_0_reg_115[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => i1_0_reg_115_reg(3),
      I1 => i1_0_reg_115_reg(0),
      I2 => i1_0_reg_115_reg(1),
      I3 => i1_0_reg_115_reg(2),
      O => i_1_fu_155_p2(3)
    );
\i1_0_reg_115[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => i1_0_reg_115_reg(4),
      I1 => i1_0_reg_115_reg(2),
      I2 => i1_0_reg_115_reg(1),
      I3 => i1_0_reg_115_reg(0),
      I4 => i1_0_reg_115_reg(3),
      O => i_1_fu_155_p2(4)
    );
\i1_0_reg_115[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => i1_0_reg_115_reg(5),
      I1 => i1_0_reg_115_reg(3),
      I2 => i1_0_reg_115_reg(0),
      I3 => i1_0_reg_115_reg(1),
      I4 => i1_0_reg_115_reg(2),
      I5 => i1_0_reg_115_reg(4),
      O => i_1_fu_155_p2(5)
    );
\i1_0_reg_115[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i1_0_reg_115_reg(6),
      I1 => \i1_0_reg_115[10]_i_4_n_8\,
      O => i_1_fu_155_p2(6)
    );
\i1_0_reg_115[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => i1_0_reg_115_reg(7),
      I1 => \i1_0_reg_115[10]_i_4_n_8\,
      I2 => i1_0_reg_115_reg(6),
      O => i_1_fu_155_p2(7)
    );
\i1_0_reg_115[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => i1_0_reg_115_reg(8),
      I1 => i1_0_reg_115_reg(6),
      I2 => \i1_0_reg_115[10]_i_4_n_8\,
      I3 => i1_0_reg_115_reg(7),
      O => i_1_fu_155_p2(8)
    );
\i1_0_reg_115[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => i1_0_reg_115_reg(9),
      I1 => i1_0_reg_115_reg(7),
      I2 => \i1_0_reg_115[10]_i_4_n_8\,
      I3 => i1_0_reg_115_reg(6),
      I4 => i1_0_reg_115_reg(8),
      O => i_1_fu_155_p2(9)
    );
\i1_0_reg_115_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i1_0_reg_1150,
      D => i_1_fu_155_p2(0),
      Q => i1_0_reg_115_reg(0),
      R => ap_NS_fsm13_out
    );
\i1_0_reg_115_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i1_0_reg_1150,
      D => i_1_fu_155_p2(10),
      Q => i1_0_reg_115_reg(10),
      R => ap_NS_fsm13_out
    );
\i1_0_reg_115_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i1_0_reg_1150,
      D => i_1_fu_155_p2(1),
      Q => i1_0_reg_115_reg(1),
      R => ap_NS_fsm13_out
    );
\i1_0_reg_115_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i1_0_reg_1150,
      D => i_1_fu_155_p2(2),
      Q => i1_0_reg_115_reg(2),
      R => ap_NS_fsm13_out
    );
\i1_0_reg_115_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i1_0_reg_1150,
      D => i_1_fu_155_p2(3),
      Q => i1_0_reg_115_reg(3),
      R => ap_NS_fsm13_out
    );
\i1_0_reg_115_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i1_0_reg_1150,
      D => i_1_fu_155_p2(4),
      Q => i1_0_reg_115_reg(4),
      R => ap_NS_fsm13_out
    );
\i1_0_reg_115_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i1_0_reg_1150,
      D => i_1_fu_155_p2(5),
      Q => i1_0_reg_115_reg(5),
      R => ap_NS_fsm13_out
    );
\i1_0_reg_115_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i1_0_reg_1150,
      D => i_1_fu_155_p2(6),
      Q => i1_0_reg_115_reg(6),
      R => ap_NS_fsm13_out
    );
\i1_0_reg_115_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i1_0_reg_1150,
      D => i_1_fu_155_p2(7),
      Q => i1_0_reg_115_reg(7),
      R => ap_NS_fsm13_out
    );
\i1_0_reg_115_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i1_0_reg_1150,
      D => i_1_fu_155_p2(8),
      Q => i1_0_reg_115_reg(8),
      R => ap_NS_fsm13_out
    );
\i1_0_reg_115_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i1_0_reg_1150,
      D => i_1_fu_155_p2(9),
      Q => i1_0_reg_115_reg(9),
      R => ap_NS_fsm13_out
    );
\i2_0_reg_126[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i2_0_reg_126_reg(0),
      O => i_2_fu_167_p2(0)
    );
\i2_0_reg_126[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i2_0_reg_126_reg(0),
      I1 => i2_0_reg_126_reg(1),
      O => i_2_fu_167_p2(1)
    );
\i2_0_reg_126[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => i2_0_reg_126_reg(2),
      I1 => i2_0_reg_126_reg(1),
      I2 => i2_0_reg_126_reg(0),
      O => i_2_fu_167_p2(2)
    );
\i2_0_reg_126[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => i2_0_reg_126_reg(3),
      I1 => i2_0_reg_126_reg(0),
      I2 => i2_0_reg_126_reg(1),
      I3 => i2_0_reg_126_reg(2),
      O => i_2_fu_167_p2(3)
    );
\i2_0_reg_126[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => i2_0_reg_126_reg(4),
      I1 => i2_0_reg_126_reg(2),
      I2 => i2_0_reg_126_reg(1),
      I3 => i2_0_reg_126_reg(0),
      I4 => i2_0_reg_126_reg(3),
      O => i_2_fu_167_p2(4)
    );
\i2_0_reg_126[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => i2_0_reg_126_reg(5),
      I1 => i2_0_reg_126_reg(3),
      I2 => i2_0_reg_126_reg(0),
      I3 => i2_0_reg_126_reg(1),
      I4 => i2_0_reg_126_reg(2),
      I5 => i2_0_reg_126_reg(4),
      O => i_2_fu_167_p2(5)
    );
\i2_0_reg_126[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i2_0_reg_126_reg(6),
      I1 => \i2_0_reg_126[7]_i_4_n_8\,
      O => i_2_fu_167_p2(6)
    );
\i2_0_reg_126[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ap_CS_fsm[3]_i_2_n_8\,
      I1 => ap_CS_fsm_state4,
      O => \i2_0_reg_126[7]_i_1_n_8\
    );
\i2_0_reg_126[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => dbl2tsep_1_empty_n,
      I1 => detect_1_empty_n,
      I2 => det2dow_1_full_n,
      I3 => ap_CS_fsm_state5,
      I4 => \ap_CS_fsm[1]_i_2_n_8\,
      O => e_read3
    );
\i2_0_reg_126[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => i2_0_reg_126_reg(7),
      I1 => \i2_0_reg_126[7]_i_4_n_8\,
      I2 => i2_0_reg_126_reg(6),
      O => i_2_fu_167_p2(7)
    );
\i2_0_reg_126[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => i2_0_reg_126_reg(5),
      I1 => i2_0_reg_126_reg(3),
      I2 => i2_0_reg_126_reg(0),
      I3 => i2_0_reg_126_reg(1),
      I4 => i2_0_reg_126_reg(2),
      I5 => i2_0_reg_126_reg(4),
      O => \i2_0_reg_126[7]_i_4_n_8\
    );
\i2_0_reg_126_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => e_read3,
      D => i_2_fu_167_p2(0),
      Q => i2_0_reg_126_reg(0),
      R => \i2_0_reg_126[7]_i_1_n_8\
    );
\i2_0_reg_126_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => e_read3,
      D => i_2_fu_167_p2(1),
      Q => i2_0_reg_126_reg(1),
      R => \i2_0_reg_126[7]_i_1_n_8\
    );
\i2_0_reg_126_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => e_read3,
      D => i_2_fu_167_p2(2),
      Q => i2_0_reg_126_reg(2),
      R => \i2_0_reg_126[7]_i_1_n_8\
    );
\i2_0_reg_126_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => e_read3,
      D => i_2_fu_167_p2(3),
      Q => i2_0_reg_126_reg(3),
      R => \i2_0_reg_126[7]_i_1_n_8\
    );
\i2_0_reg_126_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => e_read3,
      D => i_2_fu_167_p2(4),
      Q => i2_0_reg_126_reg(4),
      R => \i2_0_reg_126[7]_i_1_n_8\
    );
\i2_0_reg_126_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => e_read3,
      D => i_2_fu_167_p2(5),
      Q => i2_0_reg_126_reg(5),
      R => \i2_0_reg_126[7]_i_1_n_8\
    );
\i2_0_reg_126_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => e_read3,
      D => i_2_fu_167_p2(6),
      Q => i2_0_reg_126_reg(6),
      R => \i2_0_reg_126[7]_i_1_n_8\
    );
\i2_0_reg_126_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => e_read3,
      D => i_2_fu_167_p2(7),
      Q => i2_0_reg_126_reg(7),
      R => \i2_0_reg_126[7]_i_1_n_8\
    );
\i_0_reg_104[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_0_reg_104_reg(0),
      O => i_fu_143_p2(0)
    );
\i_0_reg_104[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_0_reg_104_reg(0),
      I1 => i_0_reg_104_reg(1),
      O => i_fu_143_p2(1)
    );
\i_0_reg_104[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => i_0_reg_104_reg(2),
      I1 => i_0_reg_104_reg(1),
      I2 => i_0_reg_104_reg(0),
      O => i_fu_143_p2(2)
    );
\i_0_reg_104[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => i_0_reg_104_reg(3),
      I1 => i_0_reg_104_reg(0),
      I2 => i_0_reg_104_reg(1),
      I3 => i_0_reg_104_reg(2),
      O => i_fu_143_p2(3)
    );
\i_0_reg_104[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => i_0_reg_104_reg(4),
      I1 => i_0_reg_104_reg(2),
      I2 => i_0_reg_104_reg(1),
      I3 => i_0_reg_104_reg(0),
      I4 => i_0_reg_104_reg(3),
      O => i_fu_143_p2(4)
    );
\i_0_reg_104[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => i_0_reg_104_reg(5),
      I1 => i_0_reg_104_reg(3),
      I2 => i_0_reg_104_reg(0),
      I3 => i_0_reg_104_reg(1),
      I4 => i_0_reg_104_reg(2),
      I5 => i_0_reg_104_reg(4),
      O => i_fu_143_p2(5)
    );
\i_0_reg_104[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_0_reg_104_reg(6),
      I1 => \i_0_reg_104[8]_i_4_n_8\,
      O => i_fu_143_p2(6)
    );
\i_0_reg_104[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => i_0_reg_104_reg(7),
      I1 => \i_0_reg_104[8]_i_4_n_8\,
      I2 => i_0_reg_104_reg(6),
      O => i_fu_143_p2(7)
    );
\i_0_reg_104[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => det2dow_1_full_n,
      I1 => detect_1_empty_n,
      I2 => dbl2tsep_1_empty_n,
      I3 => \ap_CS_fsm[3]_i_3_n_8\,
      I4 => ap_CS_fsm_state3,
      O => i_0_reg_1040
    );
\i_0_reg_104[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => i_0_reg_104_reg(8),
      I1 => i_0_reg_104_reg(6),
      I2 => \i_0_reg_104[8]_i_4_n_8\,
      I3 => i_0_reg_104_reg(7),
      O => i_fu_143_p2(8)
    );
\i_0_reg_104[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => i_0_reg_104_reg(5),
      I1 => i_0_reg_104_reg(3),
      I2 => i_0_reg_104_reg(0),
      I3 => i_0_reg_104_reg(1),
      I4 => i_0_reg_104_reg(2),
      I5 => i_0_reg_104_reg(4),
      O => \i_0_reg_104[8]_i_4_n_8\
    );
\i_0_reg_104_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i_0_reg_1040,
      D => i_fu_143_p2(0),
      Q => i_0_reg_104_reg(0),
      R => SR(0)
    );
\i_0_reg_104_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i_0_reg_1040,
      D => i_fu_143_p2(1),
      Q => i_0_reg_104_reg(1),
      R => SR(0)
    );
\i_0_reg_104_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i_0_reg_1040,
      D => i_fu_143_p2(2),
      Q => i_0_reg_104_reg(2),
      R => SR(0)
    );
\i_0_reg_104_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i_0_reg_1040,
      D => i_fu_143_p2(3),
      Q => i_0_reg_104_reg(3),
      R => SR(0)
    );
\i_0_reg_104_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i_0_reg_1040,
      D => i_fu_143_p2(4),
      Q => i_0_reg_104_reg(4),
      R => SR(0)
    );
\i_0_reg_104_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i_0_reg_1040,
      D => i_fu_143_p2(5),
      Q => i_0_reg_104_reg(5),
      R => SR(0)
    );
\i_0_reg_104_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i_0_reg_1040,
      D => i_fu_143_p2(6),
      Q => i_0_reg_104_reg(6),
      R => SR(0)
    );
\i_0_reg_104_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i_0_reg_1040,
      D => i_fu_143_p2(7),
      Q => i_0_reg_104_reg(7),
      R => SR(0)
    );
\i_0_reg_104_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i_0_reg_1040,
      D => i_fu_143_p2(8),
      Q => i_0_reg_104_reg(8),
      R => SR(0)
    );
internal_empty_n_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => internal_empty_n_reg_0,
      I1 => i1_0_reg_1150,
      I2 => e_read3,
      I3 => i_0_reg_1040,
      I4 => internal_empty_n_reg_1,
      I5 => internal_empty_n_reg_2,
      O => \mOutPtr_reg[1]\
    );
internal_empty_n_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FE00FE00FEFEFE"
    )
        port map (
      I0 => i1_0_reg_1150,
      I1 => e_read3,
      I2 => i_0_reg_1040,
      I3 => det2dow_1_empty_n,
      I4 => \mOutPtr_reg[2]\(1),
      I5 => \mOutPtr_reg[2]\(0),
      O => internal_empty_n3_out
    );
internal_full_n_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF80"
    )
        port map (
      I0 => dbl2tsep_1_empty_n,
      I1 => detect_1_empty_n,
      I2 => \^q\(0),
      I3 => i1_0_reg_1150,
      I4 => e_read3,
      I5 => i_0_reg_1040,
      O => dout_valid_reg
    );
\mOutPtr[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1555EAAA"
    )
        port map (
      I0 => \^internal_full_n_reg\,
      I1 => \^q\(0),
      I2 => detect_1_empty_n,
      I3 => dbl2tsep_1_empty_n,
      I4 => ce,
      O => E(0)
    );
\mOutPtr[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100010001000000"
    )
        port map (
      I0 => i1_0_reg_1150,
      I1 => e_read3,
      I2 => i_0_reg_1040,
      I3 => det2dow_1_empty_n,
      I4 => \mOutPtr_reg[2]\(1),
      I5 => \mOutPtr_reg[2]\(0),
      O => internal_empty_n_reg
    );
\mOutPtr[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888880"
    )
        port map (
      I0 => \mOutPtr_reg[5]\(0),
      I1 => \mOutPtr_reg[5]\(1),
      I2 => internal_empty_n_reg_1,
      I3 => i_0_reg_1040,
      I4 => e_read3,
      I5 => i1_0_reg_1150,
      O => \mOutPtr_reg[0]_0\
    );
\mOutPtr[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => internal_empty_n_reg_1,
      I1 => i_0_reg_1040,
      I2 => e_read3,
      I3 => i1_0_reg_1150,
      I4 => \mOutPtr_reg[5]\(0),
      I5 => \mOutPtr_reg[5]\(1),
      O => \mOutPtr_reg[0]\
    );
\p_0_out__49_carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBBBBB"
    )
        port map (
      I0 => ce,
      I1 => \^internal_full_n_reg\,
      I2 => \^q\(0),
      I3 => detect_1_empty_n,
      I4 => dbl2tsep_1_empty_n,
      O => DI(0)
    );
\raddr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAAAAAAA"
    )
        port map (
      I0 => \dout_buf_reg[7]\,
      I1 => tmp_reg_1730,
      I2 => i1_0_reg_1150,
      I3 => e_read3,
      I4 => i_0_reg_1040,
      I5 => dbl2tsep_1_empty_n,
      O => pop
    );
\raddr[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(0),
      I1 => detect_1_empty_n,
      I2 => dbl2tsep_1_empty_n,
      O => tmp_reg_1730
    );
\tmp_reg_173_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \tmp_reg_173_reg[0]_0\,
      Q => \^tmp_reg_173\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_BitDecider is
  port (
    grp_BitDecider_fu_292_s_din : out STD_LOGIC;
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    internal_empty_n3_out : out STD_LOGIC;
    clock : in STD_LOGIC;
    dow2bit_1_empty_n : in STD_LOGIC;
    bit2byt_1_full_n : in STD_LOGIC;
    grp_BitsToBytes_fu_306_e_read : in STD_LOGIC;
    reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_BitDecider : entity is "BitDecider";
end bd_0_hls_inst_0_BitDecider;

architecture STRUCTURE of bd_0_hls_inst_0_BitDecider is
begin
grp_BitDecider_do_gen_fu_58: entity work.bd_0_hls_inst_0_BitDecider_do_gen
     port map (
      D(7 downto 0) => D(7 downto 0),
      E(0) => E(0),
      Q(2 downto 0) => Q(2 downto 0),
      \ap_CS_fsm_reg[1]_0\ => \ap_CS_fsm_reg[1]\,
      bit2byt_1_full_n => bit2byt_1_full_n,
      clock => clock,
      dow2bit_1_empty_n => dow2bit_1_empty_n,
      grp_BitDecider_fu_292_s_din => grp_BitDecider_fu_292_s_din,
      grp_BitsToBytes_fu_306_e_read => grp_BitsToBytes_fu_306_e_read,
      internal_empty_n3_out => internal_empty_n3_out,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_BitsToBytes is
  port (
    grp_BitsToBytes_fu_306_e_read : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[3]\ : out STD_LOGIC;
    \q_0_reg_93_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \in\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    bit2byt_1_full_n : in STD_LOGIC;
    bit2byt_1_empty_n : in STD_LOGIC;
    byt2crc_1_full_n : in STD_LOGIC;
    reset : in STD_LOGIC;
    clock : in STD_LOGIC;
    bit2byt_1_dout : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_BitsToBytes : entity is "BitsToBytes";
end bd_0_hls_inst_0_BitsToBytes;

architecture STRUCTURE of bd_0_hls_inst_0_BitsToBytes is
begin
grp_BitsToBytes_do_gen_fu_58: entity work.bd_0_hls_inst_0_BitsToBytes_do_gen
     port map (
      E(0) => grp_BitsToBytes_fu_306_e_read,
      Q(0) => Q(0),
      \ap_CS_fsm_reg[3]\(0) => E(0),
      \ap_CS_fsm_reg[3]_0\ => \ap_CS_fsm_reg[3]\,
      bit2byt_1_dout => bit2byt_1_dout,
      bit2byt_1_empty_n => bit2byt_1_empty_n,
      bit2byt_1_full_n => bit2byt_1_full_n,
      byt2crc_1_full_n => byt2crc_1_full_n,
      clock => clock,
      \in\(7 downto 0) => \in\(7 downto 0),
      \q_0_reg_93_reg[2]_0\(0) => \q_0_reg_93_reg[2]\(0),
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_CRCCheck_do_gen_ibkb is
  port (
    \i3_0_reg_213_reg[4]\ : out STD_LOGIC;
    \i3_0_reg_213_reg[5]\ : out STD_LOGIC;
    \icmp_ln41_reg_658_reg[0]\ : out STD_LOGIC;
    \i3_0_reg_213_reg[6]\ : out STD_LOGIC;
    icmp_ln41_reg_6580 : out STD_LOGIC;
    \q0_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clock : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \q0[7]_i_5\ : in STD_LOGIC;
    crc2fra_1_full_n : in STD_LOGIC;
    \q0_reg[0]\ : in STD_LOGIC;
    icmp_ln68_reg_711 : in STD_LOGIC;
    \i_0_reg_168_reg[6]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \i_0_reg_168_reg[6]_0\ : in STD_LOGIC;
    byt2crc_1_empty_n : in STD_LOGIC;
    \q0_reg[0]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    ap_enable_reg_pp1_iter0 : in STD_LOGIC;
    \q0_reg[0]_1\ : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_CRCCheck_do_gen_ibkb : entity is "CRCCheck_do_gen_ibkb";
end bd_0_hls_inst_0_CRCCheck_do_gen_ibkb;

architecture STRUCTURE of bd_0_hls_inst_0_CRCCheck_do_gen_ibkb is
begin
CRCCheck_do_gen_ibkb_ram_U: entity work.bd_0_hls_inst_0_CRCCheck_do_gen_ibkb_ram
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      ap_enable_reg_pp1_iter0 => ap_enable_reg_pp1_iter0,
      byt2crc_1_empty_n => byt2crc_1_empty_n,
      clock => clock,
      crc2fra_1_full_n => crc2fra_1_full_n,
      \i3_0_reg_213_reg[4]\ => \i3_0_reg_213_reg[4]\,
      \i3_0_reg_213_reg[5]\ => \i3_0_reg_213_reg[5]\,
      \i3_0_reg_213_reg[6]\ => \i3_0_reg_213_reg[6]\,
      \i_0_reg_168_reg[6]\ => \i_0_reg_168_reg[6]\,
      \i_0_reg_168_reg[6]_0\ => \i_0_reg_168_reg[6]_0\,
      icmp_ln41_reg_6580 => icmp_ln41_reg_6580,
      \icmp_ln41_reg_658_reg[0]\ => \icmp_ln41_reg_658_reg[0]\,
      icmp_ln68_reg_711 => icmp_ln68_reg_711,
      \out\(7 downto 0) => \out\(7 downto 0),
      \q0[7]_i_5_0\ => \q0[7]_i_5\,
      \q0_reg[0]_0\ => \q0_reg[0]\,
      \q0_reg[0]_1\(6 downto 0) => \q0_reg[0]_0\(6 downto 0),
      \q0_reg[0]_2\(6 downto 0) => \q0_reg[0]_1\(6 downto 0),
      \q0_reg[7]_0\(7 downto 0) => \q0_reg[7]\(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_DownSampling is
  port (
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \ap_CS_fsm_reg[1]_0\ : out STD_LOGIC;
    \trunc_ln_reg_97_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    det2dow_1_empty_n : in STD_LOGIC;
    ce : in STD_LOGIC;
    dow2bit_1_full_n : in STD_LOGIC;
    reset : in STD_LOGIC;
    clock : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    e_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \trunc_ln_reg_97_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_DownSampling : entity is "DownSampling";
end bd_0_hls_inst_0_DownSampling;

architecture STRUCTURE of bd_0_hls_inst_0_DownSampling is
begin
grp_DownSampling_do_gen_fu_56: entity work.bd_0_hls_inst_0_DownSampling_do_gen
     port map (
      E(0) => E(0),
      Q(2 downto 0) => Q(2 downto 0),
      \ap_CS_fsm_reg[1]_0\(0) => \ap_CS_fsm_reg[1]\(0),
      \ap_CS_fsm_reg[1]_1\ => \ap_CS_fsm_reg[1]_0\,
      ce => ce,
      clock => clock,
      det2dow_1_empty_n => det2dow_1_empty_n,
      dow2bit_1_full_n => dow2bit_1_full_n,
      e_dout(7 downto 0) => e_dout(7 downto 0),
      reset => reset,
      \trunc_ln_reg_97_reg[0]_0\(0) => \trunc_ln_reg_97_reg[0]\(0),
      \trunc_ln_reg_97_reg[7]_0\(7 downto 0) => \trunc_ln_reg_97_reg[7]\(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_FrameProcessing is
  port (
    \ap_CS_fsm_reg[9]\ : out STD_LOGIC;
    internal_empty_n_reg : out STD_LOGIC;
    \ap_CS_fsm_reg[11]\ : out STD_LOGIC;
    \ap_CS_fsm_reg[9]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \reg_168_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \reg_164_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    addr_din : out STD_LOGIC_VECTOR ( 25 downto 0 );
    clock : in STD_LOGIC;
    ce : in STD_LOGIC;
    crc2fra_1_empty_n : in STD_LOGIC;
    rgbv_full_n : in STD_LOGIC;
    addr_full_n : in STD_LOGIC;
    \ap_CS_fsm_reg[2]\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \val_V_8_reg_369_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \val_V_5_reg_351_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \val_V_6_reg_356_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_FrameProcessing : entity is "FrameProcessing";
end bd_0_hls_inst_0_FrameProcessing;

architecture STRUCTURE of bd_0_hls_inst_0_FrameProcessing is
begin
grp_FrameProcessing_do_gen_fu_64: entity work.bd_0_hls_inst_0_FrameProcessing_do_gen
     port map (
      D(7 downto 0) => D(7 downto 0),
      E(0) => E(0),
      Q(4 downto 0) => Q(4 downto 0),
      addr_din(25 downto 0) => addr_din(25 downto 0),
      addr_full_n => addr_full_n,
      \ap_CS_fsm_reg[11]_0\ => \ap_CS_fsm_reg[11]\,
      \ap_CS_fsm_reg[2]_0\ => \ap_CS_fsm_reg[2]\,
      \ap_CS_fsm_reg[9]_0\ => \ap_CS_fsm_reg[9]\,
      \ap_CS_fsm_reg[9]_1\ => \ap_CS_fsm_reg[9]_0\,
      ce => ce,
      clock => clock,
      crc2fra_1_empty_n => crc2fra_1_empty_n,
      internal_empty_n_reg => internal_empty_n_reg,
      \reg_164_reg[7]_0\(7 downto 0) => \reg_164_reg[7]\(7 downto 0),
      \reg_168_reg[7]_0\(7 downto 0) => \reg_168_reg[7]\(7 downto 0),
      reset => reset,
      rgbv_full_n => rgbv_full_n,
      \val_V_5_reg_351_reg[0]_0\(0) => \val_V_5_reg_351_reg[0]\(0),
      \val_V_6_reg_356_reg[0]_0\(0) => \val_V_6_reg_356_reg[0]\(0),
      \val_V_8_reg_369_reg[0]_0\(0) => \val_V_8_reg_369_reg[0]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_ModuleCompute_macg8j is
  port (
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clock : in STD_LOGIC;
    e_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    C : in STD_LOGIC_VECTOR ( 14 downto 0 );
    e_empty_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_ModuleCompute_macg8j : entity is "ModuleCompute_macg8j";
end bd_0_hls_inst_0_ModuleCompute_macg8j;

architecture STRUCTURE of bd_0_hls_inst_0_ModuleCompute_macg8j is
begin
ModuleCompute_macg8j_DSP48_3_U: entity work.bd_0_hls_inst_0_ModuleCompute_macg8j_DSP48_3
     port map (
      C(14 downto 0) => C(14 downto 0),
      P(15 downto 0) => P(15 downto 0),
      Q(1 downto 0) => Q(1 downto 0),
      clock => clock,
      e_dout(7 downto 0) => e_dout(7 downto 0),
      e_empty_n => e_empty_n
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_Seuil_calc2_mac_mdEe is
  port (
    P : out STD_LOGIC_VECTOR ( 16 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \^p\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    p_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    p_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    p_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \p_0108_0_reg_221_reg[5]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \p_0108_0_reg_221_reg[9]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \p_0108_0_reg_221_reg[13]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \p_0108_0_reg_221_reg[17]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    p_3 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clock : in STD_LOGIC;
    p_4 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    p_5 : in STD_LOGIC;
    dbl2scalc_1_empty_n : in STD_LOGIC;
    p_6 : in STD_LOGIC;
    detect_1_full_n : in STD_LOGIC;
    p_7 : in STD_LOGIC;
    p_8 : in STD_LOGIC;
    \res_2_V_reg_897_reg[5]\ : in STD_LOGIC;
    \res_2_V_reg_897_reg[5]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \res_2_V_reg_897_reg[5]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 18 downto 0 );
    ap_enable_reg_pp0_iter3 : in STD_LOGIC;
    \sum_V_reg_892_reg[21]\ : in STD_LOGIC_VECTOR ( 18 downto 0 );
    p_9 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_enable_reg_pp0_iter2 : in STD_LOGIC;
    p_10 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_Seuil_calc2_mac_mdEe : entity is "Seuil_calc2_mac_mdEe";
end bd_0_hls_inst_0_Seuil_calc2_mac_mdEe;

architecture STRUCTURE of bd_0_hls_inst_0_Seuil_calc2_mac_mdEe is
begin
Seuil_calc2_mac_mdEe_DSP48_0_U: entity work.bd_0_hls_inst_0_Seuil_calc2_mac_mdEe_DSP48_0
     port map (
      D(2 downto 0) => D(2 downto 0),
      O(3 downto 0) => O(3 downto 0),
      P(16 downto 0) => P(16 downto 0),
      Q(18 downto 0) => Q(18 downto 0),
      S(0) => S(0),
      SR(0) => SR(0),
      ap_enable_reg_pp0_iter2 => ap_enable_reg_pp0_iter2,
      ap_enable_reg_pp0_iter3 => ap_enable_reg_pp0_iter3,
      clock => clock,
      dbl2scalc_1_empty_n => dbl2scalc_1_empty_n,
      detect_1_full_n => detect_1_full_n,
      p_0(3 downto 0) => \^p\(3 downto 0),
      \p_0108_0_reg_221_reg[13]\(3 downto 0) => \p_0108_0_reg_221_reg[13]\(3 downto 0),
      \p_0108_0_reg_221_reg[17]\(3 downto 0) => \p_0108_0_reg_221_reg[17]\(3 downto 0),
      \p_0108_0_reg_221_reg[5]\(2 downto 0) => \p_0108_0_reg_221_reg[5]\(2 downto 0),
      \p_0108_0_reg_221_reg[9]\(3 downto 0) => \p_0108_0_reg_221_reg[9]\(3 downto 0),
      p_1(3 downto 0) => p_0(3 downto 0),
      p_10(7 downto 0) => p_9(7 downto 0),
      p_11(7 downto 0) => p_10(7 downto 0),
      p_2(3 downto 0) => p_1(3 downto 0),
      p_3(3 downto 0) => p_2(3 downto 0),
      p_4(2 downto 0) => p_3(2 downto 0),
      p_5(15 downto 0) => p_4(15 downto 0),
      p_6 => p_5,
      p_7 => p_6,
      p_8 => p_7,
      p_9 => p_8,
      \res_2_V_reg_897_reg[5]\ => \res_2_V_reg_897_reg[5]\,
      \res_2_V_reg_897_reg[5]_0\ => \res_2_V_reg_897_reg[5]_0\,
      \res_2_V_reg_897_reg[5]_1\ => \res_2_V_reg_897_reg[5]_1\,
      \sum_V_reg_892_reg[21]\(18 downto 0) => \sum_V_reg_892_reg[21]\(18 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_fifo_w1_d1024_A is
  port (
    detect_1_full_n : out STD_LOGIC;
    detect_1_empty_n : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    detect_1_dout : out STD_LOGIC;
    \mOutPtr_reg[8]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \mOutPtr_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \mOutPtr_reg[9]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clock : in STD_LOGIC;
    dbl2tsep_1_empty_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    ce : in STD_LOGIC;
    tmp_reg_173 : in STD_LOGIC;
    \mOutPtr_reg[4]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \in\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_fifo_w1_d1024_A : entity is "fifo_w1_d1024_A";
end bd_0_hls_inst_0_fifo_w1_d1024_A;

architecture STRUCTURE of bd_0_hls_inst_0_fifo_w1_d1024_A is
  signal a : STD_LOGIC_VECTOR ( 8 downto 5 );
  signal \^detect_1_empty_n\ : STD_LOGIC;
  signal \^detect_1_full_n\ : STD_LOGIC;
  signal internal_empty_n_i_1_n_8 : STD_LOGIC;
  signal \internal_empty_n_i_2__0_n_8\ : STD_LOGIC;
  signal \internal_empty_n_i_3__0_n_8\ : STD_LOGIC;
  signal internal_empty_n_i_4_n_8 : STD_LOGIC;
  signal internal_full_n_i_1_n_8 : STD_LOGIC;
  signal \internal_full_n_i_2__4_n_8\ : STD_LOGIC;
  signal internal_full_n_i_4_n_8 : STD_LOGIC;
  signal internal_full_n_i_5_n_8 : STD_LOGIC;
  signal \mOutPtr[0]_i_1_n_8\ : STD_LOGIC;
  signal mOutPtr_reg : STD_LOGIC_VECTOR ( 10 downto 9 );
  signal \^moutptr_reg[8]_0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[4]_i_7\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \internal_empty_n_i_2__0\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \internal_empty_n_i_3__0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of internal_full_n_i_4 : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of internal_full_n_i_5 : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1\ : label is "soft_lutpair83";
begin
  detect_1_empty_n <= \^detect_1_empty_n\;
  detect_1_full_n <= \^detect_1_full_n\;
  \mOutPtr_reg[8]_0\(8 downto 0) <= \^moutptr_reg[8]_0\(8 downto 0);
\SRL_SIG_reg[1023][0]_mux__15_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^moutptr_reg[8]_0\(6),
      I1 => mOutPtr_reg(10),
      O => a(6)
    );
\SRL_SIG_reg[1023][0]_mux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^moutptr_reg[8]_0\(5),
      I1 => mOutPtr_reg(10),
      O => a(5)
    );
U_fifo_w1_d1024_A_shiftReg: entity work.bd_0_hls_inst_0_fifo_w1_d1024_A_shiftReg
     port map (
      Q(0) => Q(0),
      SR(0) => SR(0),
      \ap_CS_fsm[4]_i_3_0\(3 downto 0) => a(8 downto 5),
      \ap_CS_fsm_reg[1]\ => \ap_CS_fsm_reg[1]\,
      ce => ce,
      clock => clock,
      dbl2tsep_1_empty_n => dbl2tsep_1_empty_n,
      detect_1_dout => detect_1_dout,
      \in\(0) => \in\(0),
      tmp_reg_173 => tmp_reg_173,
      \tmp_reg_173_reg[0]\ => \^detect_1_empty_n\,
      \tmp_reg_173_reg[0]_0\(6 downto 5) => mOutPtr_reg(10 downto 9),
      \tmp_reg_173_reg[0]_0\(4 downto 0) => \^moutptr_reg[8]_0\(4 downto 0)
    );
\ap_CS_fsm[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^moutptr_reg[8]_0\(8),
      I1 => mOutPtr_reg(10),
      O => a(8)
    );
\ap_CS_fsm[4]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^moutptr_reg[8]_0\(7),
      I1 => mOutPtr_reg(10),
      O => a(7)
    );
internal_empty_n_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FB30"
    )
        port map (
      I0 => \internal_empty_n_i_2__0_n_8\,
      I1 => internal_full_n_reg_0,
      I2 => ce,
      I3 => \^detect_1_empty_n\,
      I4 => reset,
      O => internal_empty_n_i_1_n_8
    );
\internal_empty_n_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^moutptr_reg[8]_0\(2),
      I1 => \^moutptr_reg[8]_0\(7),
      I2 => \^moutptr_reg[8]_0\(0),
      I3 => \internal_empty_n_i_3__0_n_8\,
      I4 => internal_empty_n_i_4_n_8,
      O => \internal_empty_n_i_2__0_n_8\
    );
\internal_empty_n_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => mOutPtr_reg(10),
      I1 => mOutPtr_reg(9),
      I2 => \^moutptr_reg[8]_0\(8),
      I3 => \^moutptr_reg[8]_0\(3),
      O => \internal_empty_n_i_3__0_n_8\
    );
internal_empty_n_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^moutptr_reg[8]_0\(5),
      I1 => \^moutptr_reg[8]_0\(4),
      I2 => \^moutptr_reg[8]_0\(6),
      I3 => \^moutptr_reg[8]_0\(1),
      O => internal_empty_n_i_4_n_8
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => internal_empty_n_i_1_n_8,
      Q => \^detect_1_empty_n\,
      R => '0'
    );
internal_full_n_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAF8FFFA"
    )
        port map (
      I0 => \^detect_1_full_n\,
      I1 => \internal_full_n_i_2__4_n_8\,
      I2 => reset,
      I3 => internal_full_n_reg_0,
      I4 => ce,
      O => internal_full_n_i_1_n_8
    );
\internal_full_n_i_2__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFDF"
    )
        port map (
      I0 => \^moutptr_reg[8]_0\(6),
      I1 => \^moutptr_reg[8]_0\(0),
      I2 => \^moutptr_reg[8]_0\(1),
      I3 => internal_full_n_i_4_n_8,
      I4 => internal_full_n_i_5_n_8,
      O => \internal_full_n_i_2__4_n_8\
    );
internal_full_n_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => mOutPtr_reg(10),
      I1 => \^moutptr_reg[8]_0\(8),
      I2 => mOutPtr_reg(9),
      I3 => \^moutptr_reg[8]_0\(3),
      O => internal_full_n_i_4_n_8
    );
internal_full_n_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^moutptr_reg[8]_0\(4),
      I1 => \^moutptr_reg[8]_0\(2),
      I2 => \^moutptr_reg[8]_0\(7),
      I3 => \^moutptr_reg[8]_0\(5),
      O => internal_full_n_i_5_n_8
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => '1',
      D => internal_full_n_i_1_n_8,
      Q => \^detect_1_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^moutptr_reg[8]_0\(0),
      O => \mOutPtr[0]_i_1_n_8\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => E(0),
      D => \mOutPtr[0]_i_1_n_8\,
      Q => \^moutptr_reg[8]_0\(0),
      S => reset
    );
\mOutPtr_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => E(0),
      D => D(9),
      Q => mOutPtr_reg(10),
      S => reset
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => E(0),
      D => D(0),
      Q => \^moutptr_reg[8]_0\(1),
      S => reset
    );
\mOutPtr_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => E(0),
      D => D(1),
      Q => \^moutptr_reg[8]_0\(2),
      S => reset
    );
\mOutPtr_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => E(0),
      D => D(2),
      Q => \^moutptr_reg[8]_0\(3),
      S => reset
    );
\mOutPtr_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => E(0),
      D => D(3),
      Q => \^moutptr_reg[8]_0\(4),
      S => reset
    );
\mOutPtr_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => E(0),
      D => D(4),
      Q => \^moutptr_reg[8]_0\(5),
      S => reset
    );
\mOutPtr_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => E(0),
      D => D(5),
      Q => \^moutptr_reg[8]_0\(6),
      S => reset
    );
\mOutPtr_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => E(0),
      D => D(6),
      Q => \^moutptr_reg[8]_0\(7),
      S => reset
    );
\mOutPtr_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => E(0),
      D => D(7),
      Q => \^moutptr_reg[8]_0\(8),
      S => reset
    );
\mOutPtr_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => E(0),
      D => D(8),
      Q => mOutPtr_reg(9),
      S => reset
    );
\p_0_out__49_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^moutptr_reg[8]_0\(7),
      I1 => \^moutptr_reg[8]_0\(8),
      O => \mOutPtr_reg[7]_0\(3)
    );
\p_0_out__49_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^moutptr_reg[8]_0\(6),
      I1 => \^moutptr_reg[8]_0\(7),
      O => \mOutPtr_reg[7]_0\(2)
    );
\p_0_out__49_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^moutptr_reg[8]_0\(5),
      I1 => \^moutptr_reg[8]_0\(6),
      O => \mOutPtr_reg[7]_0\(1)
    );
\p_0_out__49_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^moutptr_reg[8]_0\(4),
      I1 => \^moutptr_reg[8]_0\(5),
      O => \mOutPtr_reg[7]_0\(0)
    );
\p_0_out__49_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mOutPtr_reg(9),
      I1 => mOutPtr_reg(10),
      O => \mOutPtr_reg[9]_0\(1)
    );
\p_0_out__49_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^moutptr_reg[8]_0\(8),
      I1 => mOutPtr_reg(9),
      O => \mOutPtr_reg[9]_0\(0)
    );
\p_0_out__49_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^moutptr_reg[8]_0\(3),
      I1 => \^moutptr_reg[8]_0\(4),
      O => S(3)
    );
\p_0_out__49_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^moutptr_reg[8]_0\(2),
      I1 => \^moutptr_reg[8]_0\(3),
      O => S(2)
    );
\p_0_out__49_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^moutptr_reg[8]_0\(1),
      I1 => \^moutptr_reg[8]_0\(2),
      O => S(1)
    );
\p_0_out__49_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA55556AAA"
    )
        port map (
      I0 => \^moutptr_reg[8]_0\(1),
      I1 => dbl2tsep_1_empty_n,
      I2 => \^detect_1_empty_n\,
      I3 => Q(0),
      I4 => \mOutPtr_reg[4]_0\,
      I5 => ce,
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_fifo_w1_d32_A is
  port (
    bit2byt_1_dout : out STD_LOGIC;
    bit2byt_1_full_n : out STD_LOGIC;
    bit2byt_1_empty_n : out STD_LOGIC;
    grp_BitDecider_fu_292_s_din : in STD_LOGIC;
    clock : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    grp_BitsToBytes_fu_306_e_read : in STD_LOGIC;
    reset : in STD_LOGIC;
    internal_empty_n3_out : in STD_LOGIC;
    \mOutPtr_reg[4]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_fifo_w1_d32_A : entity is "fifo_w1_d32_A";
end bd_0_hls_inst_0_fifo_w1_d32_A;

architecture STRUCTURE of bd_0_hls_inst_0_fifo_w1_d32_A is
  signal \^bit2byt_1_empty_n\ : STD_LOGIC;
  signal \^bit2byt_1_full_n\ : STD_LOGIC;
  signal \internal_empty_n_i_1__2_n_8\ : STD_LOGIC;
  signal \internal_empty_n_i_2__2_n_8\ : STD_LOGIC;
  signal \internal_full_n_i_1__2_n_8\ : STD_LOGIC;
  signal \internal_full_n_i_2__1_n_8\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__2_n_8\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__1_n_8\ : STD_LOGIC;
  signal \mOutPtr[2]_i_1__2_n_8\ : STD_LOGIC;
  signal \mOutPtr[3]_i_1__1_n_8\ : STD_LOGIC;
  signal \mOutPtr[4]_i_1__1_n_8\ : STD_LOGIC;
  signal \mOutPtr[5]_i_2__1_n_8\ : STD_LOGIC;
  signal \mOutPtr[5]_i_3__1_n_8\ : STD_LOGIC;
  signal mOutPtr_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \internal_empty_n_i_2__2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1__2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1__1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \mOutPtr[3]_i_1__1\ : label is "soft_lutpair2";
begin
  bit2byt_1_empty_n <= \^bit2byt_1_empty_n\;
  bit2byt_1_full_n <= \^bit2byt_1_full_n\;
U_fifo_w1_d32_A_shiftReg: entity work.bd_0_hls_inst_0_fifo_w1_d32_A_shiftReg
     port map (
      Q(0) => Q(0),
      bit2byt_1_dout => bit2byt_1_dout,
      clock => clock,
      grp_BitDecider_fu_292_s_din => grp_BitDecider_fu_292_s_din,
      \v_assign_reg_81_reg[0]\ => \^bit2byt_1_full_n\,
      \v_assign_reg_81_reg[0]_0\(5 downto 0) => mOutPtr_reg(5 downto 0)
    );
\internal_empty_n_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EFEFEF00"
    )
        port map (
      I0 => mOutPtr_reg(4),
      I1 => mOutPtr_reg(5),
      I2 => \internal_empty_n_i_2__2_n_8\,
      I3 => internal_empty_n3_out,
      I4 => \^bit2byt_1_empty_n\,
      I5 => reset,
      O => \internal_empty_n_i_1__2_n_8\
    );
\internal_empty_n_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => mOutPtr_reg(1),
      I1 => mOutPtr_reg(0),
      I2 => \mOutPtr_reg[4]_0\,
      I3 => mOutPtr_reg(3),
      I4 => mOutPtr_reg(2),
      O => \internal_empty_n_i_2__2_n_8\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \internal_empty_n_i_1__2_n_8\,
      Q => \^bit2byt_1_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFB0"
    )
        port map (
      I0 => \internal_full_n_i_2__1_n_8\,
      I1 => Q(0),
      I2 => \^bit2byt_1_full_n\,
      I3 => grp_BitsToBytes_fu_306_e_read,
      I4 => reset,
      O => \internal_full_n_i_1__2_n_8\
    );
\internal_full_n_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFFFFFFFFFF"
    )
        port map (
      I0 => mOutPtr_reg(5),
      I1 => mOutPtr_reg(4),
      I2 => mOutPtr_reg(0),
      I3 => mOutPtr_reg(1),
      I4 => mOutPtr_reg(2),
      I5 => mOutPtr_reg(3),
      O => \internal_full_n_i_2__1_n_8\
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => '1',
      D => \internal_full_n_i_1__2_n_8\,
      Q => \^bit2byt_1_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mOutPtr_reg(0),
      O => \mOutPtr[0]_i_1__2_n_8\
    );
\mOutPtr[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"708F8F70"
    )
        port map (
      I0 => \^bit2byt_1_full_n\,
      I1 => Q(0),
      I2 => grp_BitsToBytes_fu_306_e_read,
      I3 => mOutPtr_reg(0),
      I4 => mOutPtr_reg(1),
      O => \mOutPtr[1]_i_1__1_n_8\
    );
\mOutPtr[2]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AA9A9A96A6A6A6A"
    )
        port map (
      I0 => mOutPtr_reg(2),
      I1 => mOutPtr_reg(0),
      I2 => mOutPtr_reg(1),
      I3 => \^bit2byt_1_full_n\,
      I4 => Q(0),
      I5 => grp_BitsToBytes_fu_306_e_read,
      O => \mOutPtr[2]_i_1__2_n_8\
    );
\mOutPtr[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF40FD02"
    )
        port map (
      I0 => \mOutPtr_reg[4]_0\,
      I1 => mOutPtr_reg(1),
      I2 => mOutPtr_reg(0),
      I3 => mOutPtr_reg(3),
      I4 => mOutPtr_reg(2),
      O => \mOutPtr[3]_i_1__1_n_8\
    );
\mOutPtr[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA96AAAAAAA"
    )
        port map (
      I0 => mOutPtr_reg(4),
      I1 => mOutPtr_reg(2),
      I2 => mOutPtr_reg(3),
      I3 => mOutPtr_reg(0),
      I4 => mOutPtr_reg(1),
      I5 => \mOutPtr_reg[4]_0\,
      O => \mOutPtr[4]_i_1__1_n_8\
    );
\mOutPtr[5]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \mOutPtr[5]_i_3__1_n_8\,
      I1 => mOutPtr_reg(5),
      I2 => mOutPtr_reg(4),
      O => \mOutPtr[5]_i_2__1_n_8\
    );
\mOutPtr[5]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555554D5555555"
    )
        port map (
      I0 => mOutPtr_reg(4),
      I1 => mOutPtr_reg(2),
      I2 => mOutPtr_reg(3),
      I3 => mOutPtr_reg(0),
      I4 => mOutPtr_reg(1),
      I5 => \mOutPtr_reg[4]_0\,
      O => \mOutPtr[5]_i_3__1_n_8\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => E(0),
      D => \mOutPtr[0]_i_1__2_n_8\,
      Q => mOutPtr_reg(0),
      S => reset
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => E(0),
      D => \mOutPtr[1]_i_1__1_n_8\,
      Q => mOutPtr_reg(1),
      S => reset
    );
\mOutPtr_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => E(0),
      D => \mOutPtr[2]_i_1__2_n_8\,
      Q => mOutPtr_reg(2),
      S => reset
    );
\mOutPtr_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => E(0),
      D => \mOutPtr[3]_i_1__1_n_8\,
      Q => mOutPtr_reg(3),
      S => reset
    );
\mOutPtr_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => E(0),
      D => \mOutPtr[4]_i_1__1_n_8\,
      Q => mOutPtr_reg(4),
      S => reset
    );
\mOutPtr_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => E(0),
      D => \mOutPtr[5]_i_2__1_n_8\,
      Q => mOutPtr_reg(5),
      S => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_fifo_w8_d32_A is
  port (
    byt2crc_1_full_n : out STD_LOGIC;
    byt2crc_1_empty_n : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clock : in STD_LOGIC;
    ap_NS_fsm : in STD_LOGIC_VECTOR ( 0 to 0 );
    internal_full_n_reg_0 : in STD_LOGIC;
    internal_full_n_reg_1 : in STD_LOGIC;
    reset : in STD_LOGIC;
    \mOutPtr_reg[1]_0\ : in STD_LOGIC;
    internal_empty_n3_out : in STD_LOGIC;
    \in\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_fifo_w8_d32_A : entity is "fifo_w8_d32_A";
end bd_0_hls_inst_0_fifo_w8_d32_A;

architecture STRUCTURE of bd_0_hls_inst_0_fifo_w8_d32_A is
  signal \^byt2crc_1_empty_n\ : STD_LOGIC;
  signal \^byt2crc_1_full_n\ : STD_LOGIC;
  signal \internal_empty_n_i_1__3_n_8\ : STD_LOGIC;
  signal \internal_empty_n_i_2__3_n_8\ : STD_LOGIC;
  signal \internal_full_n_i_1__3_n_8\ : STD_LOGIC;
  signal \internal_full_n_i_2__2_n_8\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__3_n_8\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__2_n_8\ : STD_LOGIC;
  signal \mOutPtr[2]_i_1_n_8\ : STD_LOGIC;
  signal \mOutPtr[3]_i_1__2_n_8\ : STD_LOGIC;
  signal \mOutPtr[4]_i_1__2_n_8\ : STD_LOGIC;
  signal \mOutPtr[5]_i_2__2_n_8\ : STD_LOGIC;
  signal \mOutPtr[5]_i_4__0_n_8\ : STD_LOGIC;
  signal mOutPtr_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \internal_empty_n_i_2__3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1__2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mOutPtr[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mOutPtr[3]_i_1__2\ : label is "soft_lutpair6";
begin
  byt2crc_1_empty_n <= \^byt2crc_1_empty_n\;
  byt2crc_1_full_n <= \^byt2crc_1_full_n\;
U_fifo_w8_d32_A_shiftReg: entity work.bd_0_hls_inst_0_fifo_w8_d32_A_shiftReg_6
     port map (
      Q(5 downto 0) => mOutPtr_reg(5 downto 0),
      ap_NS_fsm(0) => ap_NS_fsm(0),
      clock => clock,
      \in\(7 downto 0) => \in\(7 downto 0),
      \out\(7 downto 0) => \out\(7 downto 0)
    );
\internal_empty_n_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EFEFEF00"
    )
        port map (
      I0 => mOutPtr_reg(4),
      I1 => mOutPtr_reg(5),
      I2 => \internal_empty_n_i_2__3_n_8\,
      I3 => internal_empty_n3_out,
      I4 => \^byt2crc_1_empty_n\,
      I5 => reset,
      O => \internal_empty_n_i_1__3_n_8\
    );
\internal_empty_n_i_2__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => mOutPtr_reg(1),
      I1 => mOutPtr_reg(0),
      I2 => \mOutPtr_reg[1]_0\,
      I3 => mOutPtr_reg(3),
      I4 => mOutPtr_reg(2),
      O => \internal_empty_n_i_2__3_n_8\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \internal_empty_n_i_1__3_n_8\,
      Q => \^byt2crc_1_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAFAFAF8A"
    )
        port map (
      I0 => \^byt2crc_1_full_n\,
      I1 => \internal_full_n_i_2__2_n_8\,
      I2 => ap_NS_fsm(0),
      I3 => internal_full_n_reg_0,
      I4 => internal_full_n_reg_1,
      I5 => reset,
      O => \internal_full_n_i_1__3_n_8\
    );
\internal_full_n_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFFFFFFFFFF"
    )
        port map (
      I0 => mOutPtr_reg(5),
      I1 => mOutPtr_reg(4),
      I2 => mOutPtr_reg(0),
      I3 => mOutPtr_reg(1),
      I4 => mOutPtr_reg(2),
      I5 => mOutPtr_reg(3),
      O => \internal_full_n_i_2__2_n_8\
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => '1',
      D => \internal_full_n_i_1__3_n_8\,
      Q => \^byt2crc_1_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mOutPtr_reg(0),
      O => \mOutPtr[0]_i_1__3_n_8\
    );
\mOutPtr[1]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \mOutPtr_reg[1]_0\,
      I1 => mOutPtr_reg(0),
      I2 => mOutPtr_reg(1),
      O => \mOutPtr[1]_i_1__2_n_8\
    );
\mOutPtr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA9"
    )
        port map (
      I0 => mOutPtr_reg(2),
      I1 => \mOutPtr_reg[1]_0\,
      I2 => mOutPtr_reg(0),
      I3 => mOutPtr_reg(1),
      O => \mOutPtr[2]_i_1_n_8\
    );
\mOutPtr[3]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => mOutPtr_reg(1),
      I1 => mOutPtr_reg(0),
      I2 => \mOutPtr_reg[1]_0\,
      I3 => mOutPtr_reg(3),
      I4 => mOutPtr_reg(2),
      O => \mOutPtr[3]_i_1__2_n_8\
    );
\mOutPtr[4]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAA9"
    )
        port map (
      I0 => mOutPtr_reg(4),
      I1 => mOutPtr_reg(2),
      I2 => mOutPtr_reg(3),
      I3 => \mOutPtr_reg[1]_0\,
      I4 => mOutPtr_reg(0),
      I5 => mOutPtr_reg(1),
      O => \mOutPtr[4]_i_1__2_n_8\
    );
\mOutPtr[5]_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \mOutPtr[5]_i_4__0_n_8\,
      I1 => mOutPtr_reg(5),
      I2 => mOutPtr_reg(4),
      O => \mOutPtr[5]_i_2__2_n_8\
    );
\mOutPtr[5]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D555555555555554"
    )
        port map (
      I0 => mOutPtr_reg(4),
      I1 => mOutPtr_reg(2),
      I2 => mOutPtr_reg(3),
      I3 => \mOutPtr_reg[1]_0\,
      I4 => mOutPtr_reg(0),
      I5 => mOutPtr_reg(1),
      O => \mOutPtr[5]_i_4__0_n_8\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => E(0),
      D => \mOutPtr[0]_i_1__3_n_8\,
      Q => mOutPtr_reg(0),
      S => reset
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => E(0),
      D => \mOutPtr[1]_i_1__2_n_8\,
      Q => mOutPtr_reg(1),
      S => reset
    );
\mOutPtr_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => E(0),
      D => \mOutPtr[2]_i_1_n_8\,
      Q => mOutPtr_reg(2),
      S => reset
    );
\mOutPtr_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => E(0),
      D => \mOutPtr[3]_i_1__2_n_8\,
      Q => mOutPtr_reg(3),
      S => reset
    );
\mOutPtr_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => E(0),
      D => \mOutPtr[4]_i_1__2_n_8\,
      Q => mOutPtr_reg(4),
      S => reset
    );
\mOutPtr_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => E(0),
      D => \mOutPtr[5]_i_2__2_n_8\,
      Q => mOutPtr_reg(5),
      S => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_fifo_w8_d32_A_0 is
  port (
    crc2fra_1_full_n : out STD_LOGIC;
    crc2fra_1_empty_n : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    internal_empty_n_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    internal_empty_n_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    internal_empty_n_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    internal_empty_n_reg_3 : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clock : in STD_LOGIC;
    ce : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    reset : in STD_LOGIC;
    \mOutPtr_reg[1]_0\ : in STD_LOGIC;
    \mOutPtr_reg[5]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \val_V_6_reg_356_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \mOutPtr_reg[5]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_fifo_w8_d32_A_0 : entity is "fifo_w8_d32_A";
end bd_0_hls_inst_0_fifo_w8_d32_A_0;

architecture STRUCTURE of bd_0_hls_inst_0_fifo_w8_d32_A_0 is
  signal \^crc2fra_1_empty_n\ : STD_LOGIC;
  signal \^crc2fra_1_full_n\ : STD_LOGIC;
  signal \internal_empty_n_i_1__4_n_8\ : STD_LOGIC;
  signal \internal_empty_n_i_2__4_n_8\ : STD_LOGIC;
  signal \internal_empty_n_i_3__3_n_8\ : STD_LOGIC;
  signal \internal_full_n_i_1__4_n_8\ : STD_LOGIC;
  signal \internal_full_n_i_2__3_n_8\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__4_n_8\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__3_n_8\ : STD_LOGIC;
  signal \mOutPtr[2]_i_1__3_n_8\ : STD_LOGIC;
  signal \mOutPtr[3]_i_1__3_n_8\ : STD_LOGIC;
  signal \mOutPtr[4]_i_1__3_n_8\ : STD_LOGIC;
  signal \mOutPtr[5]_i_2__3_n_8\ : STD_LOGIC;
  signal \mOutPtr[5]_i_4__1_n_8\ : STD_LOGIC;
  signal mOutPtr_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \internal_empty_n_i_2__4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \internal_empty_n_i_3__3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1__3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \mOutPtr[2]_i_1__3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \mOutPtr[3]_i_1__3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \mOutPtr[5]_i_2__3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \val_V_5_reg_351[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \val_V_6_reg_356[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \val_V_7_reg_361[7]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \val_V_8_reg_369[7]_i_1\ : label is "soft_lutpair14";
begin
  crc2fra_1_empty_n <= \^crc2fra_1_empty_n\;
  crc2fra_1_full_n <= \^crc2fra_1_full_n\;
U_fifo_w8_d32_A_shiftReg: entity work.bd_0_hls_inst_0_fifo_w8_d32_A_shiftReg_5
     port map (
      Q(5 downto 0) => mOutPtr_reg(5 downto 0),
      ce => ce,
      clock => clock,
      \out\(7 downto 0) => \out\(7 downto 0),
      \val_V_6_reg_356_reg[7]\(7 downto 0) => \val_V_6_reg_356_reg[7]\(7 downto 0)
    );
\ap_CS_fsm[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^crc2fra_1_empty_n\,
      I1 => Q(0),
      O => internal_empty_n_reg_3
    );
\internal_empty_n_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFEF0F00"
    )
        port map (
      I0 => \internal_empty_n_i_2__4_n_8\,
      I1 => \internal_empty_n_i_3__3_n_8\,
      I2 => internal_full_n_reg_0,
      I3 => ce,
      I4 => \^crc2fra_1_empty_n\,
      I5 => reset,
      O => \internal_empty_n_i_1__4_n_8\
    );
\internal_empty_n_i_2__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => mOutPtr_reg(5),
      I1 => mOutPtr_reg(4),
      I2 => mOutPtr_reg(3),
      I3 => mOutPtr_reg(2),
      O => \internal_empty_n_i_2__4_n_8\
    );
\internal_empty_n_i_3__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => mOutPtr_reg(1),
      I1 => mOutPtr_reg(0),
      O => \internal_empty_n_i_3__3_n_8\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \internal_empty_n_i_1__4_n_8\,
      Q => \^crc2fra_1_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAF8A"
    )
        port map (
      I0 => \^crc2fra_1_full_n\,
      I1 => \internal_full_n_i_2__3_n_8\,
      I2 => ce,
      I3 => internal_full_n_reg_0,
      I4 => reset,
      O => \internal_full_n_i_1__4_n_8\
    );
\internal_full_n_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFFFFFFFFFF"
    )
        port map (
      I0 => mOutPtr_reg(5),
      I1 => mOutPtr_reg(4),
      I2 => mOutPtr_reg(0),
      I3 => mOutPtr_reg(1),
      I4 => mOutPtr_reg(2),
      I5 => mOutPtr_reg(3),
      O => \internal_full_n_i_2__3_n_8\
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => '1',
      D => \internal_full_n_i_1__4_n_8\,
      Q => \^crc2fra_1_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mOutPtr_reg(0),
      O => \mOutPtr[0]_i_1__4_n_8\
    );
\mOutPtr[1]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \mOutPtr_reg[1]_0\,
      I1 => mOutPtr_reg(0),
      I2 => mOutPtr_reg(1),
      O => \mOutPtr[1]_i_1__3_n_8\
    );
\mOutPtr[2]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA9"
    )
        port map (
      I0 => mOutPtr_reg(2),
      I1 => \mOutPtr_reg[1]_0\,
      I2 => mOutPtr_reg(0),
      I3 => mOutPtr_reg(1),
      O => \mOutPtr[2]_i_1__3_n_8\
    );
\mOutPtr[3]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => mOutPtr_reg(1),
      I1 => mOutPtr_reg(0),
      I2 => \mOutPtr_reg[1]_0\,
      I3 => mOutPtr_reg(3),
      I4 => mOutPtr_reg(2),
      O => \mOutPtr[3]_i_1__3_n_8\
    );
\mOutPtr[4]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAA9"
    )
        port map (
      I0 => mOutPtr_reg(4),
      I1 => mOutPtr_reg(1),
      I2 => mOutPtr_reg(0),
      I3 => \mOutPtr_reg[1]_0\,
      I4 => mOutPtr_reg(3),
      I5 => mOutPtr_reg(2),
      O => \mOutPtr[4]_i_1__3_n_8\
    );
\mOutPtr[5]_i_2__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAA9"
    )
        port map (
      I0 => mOutPtr_reg(5),
      I1 => mOutPtr_reg(4),
      I2 => mOutPtr_reg(2),
      I3 => mOutPtr_reg(3),
      I4 => \mOutPtr[5]_i_4__1_n_8\,
      O => \mOutPtr[5]_i_2__3_n_8\
    );
\mOutPtr[5]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD000000FFFFFFFD"
    )
        port map (
      I0 => \^crc2fra_1_empty_n\,
      I1 => \mOutPtr_reg[5]_0\,
      I2 => ce,
      I3 => mOutPtr_reg(0),
      I4 => mOutPtr_reg(1),
      I5 => mOutPtr_reg(2),
      O => \mOutPtr[5]_i_4__1_n_8\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => \mOutPtr_reg[5]_1\(0),
      D => \mOutPtr[0]_i_1__4_n_8\,
      Q => mOutPtr_reg(0),
      S => reset
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => \mOutPtr_reg[5]_1\(0),
      D => \mOutPtr[1]_i_1__3_n_8\,
      Q => mOutPtr_reg(1),
      S => reset
    );
\mOutPtr_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => \mOutPtr_reg[5]_1\(0),
      D => \mOutPtr[2]_i_1__3_n_8\,
      Q => mOutPtr_reg(2),
      S => reset
    );
\mOutPtr_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => \mOutPtr_reg[5]_1\(0),
      D => \mOutPtr[3]_i_1__3_n_8\,
      Q => mOutPtr_reg(3),
      S => reset
    );
\mOutPtr_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => \mOutPtr_reg[5]_1\(0),
      D => \mOutPtr[4]_i_1__3_n_8\,
      Q => mOutPtr_reg(4),
      S => reset
    );
\mOutPtr_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => \mOutPtr_reg[5]_1\(0),
      D => \mOutPtr[5]_i_2__3_n_8\,
      Q => mOutPtr_reg(5),
      S => reset
    );
\val_V_5_reg_351[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^crc2fra_1_empty_n\,
      I1 => Q(1),
      O => E(0)
    );
\val_V_6_reg_356[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^crc2fra_1_empty_n\,
      I1 => Q(2),
      O => internal_empty_n_reg_0(0)
    );
\val_V_7_reg_361[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^crc2fra_1_empty_n\,
      I1 => Q(3),
      O => internal_empty_n_reg_1(0)
    );
\val_V_8_reg_369[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^crc2fra_1_empty_n\,
      I1 => Q(4),
      O => internal_empty_n_reg_2(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_fifo_w8_d32_A_1 is
  port (
    det2dow_1_full_n : out STD_LOGIC;
    det2dow_1_empty_n : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    internal_empty_n_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mOutPtr_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \mOutPtr_reg[1]_1\ : out STD_LOGIC;
    \mOutPtr_reg[2]_0\ : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clock : in STD_LOGIC;
    ce : in STD_LOGIC;
    reset : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    internal_empty_n_reg_1 : in STD_LOGIC;
    internal_empty_n3_out : in STD_LOGIC;
    \mOutPtr_reg[2]_1\ : in STD_LOGIC;
    \mOutPtr_reg[5]_0\ : in STD_LOGIC;
    \mOutPtr_reg[5]_1\ : in STD_LOGIC;
    \val_V_reg_92_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \mOutPtr_reg[5]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_fifo_w8_d32_A_1 : entity is "fifo_w8_d32_A";
end bd_0_hls_inst_0_fifo_w8_d32_A_1;

architecture STRUCTURE of bd_0_hls_inst_0_fifo_w8_d32_A_1 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^det2dow_1_empty_n\ : STD_LOGIC;
  signal \^det2dow_1_full_n\ : STD_LOGIC;
  signal \internal_empty_n_i_1__0_n_8\ : STD_LOGIC;
  signal \^internal_empty_n_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \internal_full_n_i_1__0_n_8\ : STD_LOGIC;
  signal internal_full_n_i_2_n_8 : STD_LOGIC;
  signal \mOutPtr[0]_i_1__0_n_8\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1_n_8\ : STD_LOGIC;
  signal \mOutPtr[2]_i_1__0_n_8\ : STD_LOGIC;
  signal \mOutPtr[3]_i_1_n_8\ : STD_LOGIC;
  signal \mOutPtr[4]_i_1_n_8\ : STD_LOGIC;
  signal \mOutPtr[5]_i_2_n_8\ : STD_LOGIC;
  signal mOutPtr_reg : STD_LOGIC_VECTOR ( 5 downto 2 );
  signal \^moutptr_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \internal_empty_n_i_4__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \mOutPtr[2]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \mOutPtr[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \trunc_ln_reg_97[7]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \val_V_reg_92[7]_i_1\ : label is "soft_lutpair18";
begin
  E(0) <= \^e\(0);
  det2dow_1_empty_n <= \^det2dow_1_empty_n\;
  det2dow_1_full_n <= \^det2dow_1_full_n\;
  internal_empty_n_reg_0(0) <= \^internal_empty_n_reg_0\(0);
  \mOutPtr_reg[1]_0\(1 downto 0) <= \^moutptr_reg[1]_0\(1 downto 0);
U_fifo_w8_d32_A_shiftReg: entity work.bd_0_hls_inst_0_fifo_w8_d32_A_shiftReg_4
     port map (
      Q(5 downto 2) => mOutPtr_reg(5 downto 2),
      Q(1 downto 0) => \^moutptr_reg[1]_0\(1 downto 0),
      ce => ce,
      clock => clock,
      \out\(7 downto 0) => \out\(7 downto 0),
      \val_V_reg_92_reg[7]\(7 downto 0) => \val_V_reg_92_reg[7]\(7 downto 0)
    );
\internal_empty_n_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEFEFE00"
    )
        port map (
      I0 => mOutPtr_reg(4),
      I1 => mOutPtr_reg(5),
      I2 => internal_empty_n_reg_1,
      I3 => internal_empty_n3_out,
      I4 => \^det2dow_1_empty_n\,
      I5 => reset,
      O => \internal_empty_n_i_1__0_n_8\
    );
\internal_empty_n_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^moutptr_reg[1]_0\(1),
      I1 => \^moutptr_reg[1]_0\(0),
      O => \mOutPtr_reg[1]_1\
    );
internal_empty_n_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mOutPtr_reg(2),
      I1 => mOutPtr_reg(3),
      O => \mOutPtr_reg[2]_0\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \internal_empty_n_i_1__0_n_8\,
      Q => \^det2dow_1_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAFAFAF8A"
    )
        port map (
      I0 => \^det2dow_1_full_n\,
      I1 => internal_full_n_i_2_n_8,
      I2 => ce,
      I3 => \^e\(0),
      I4 => \^internal_empty_n_reg_0\(0),
      I5 => reset,
      O => \internal_full_n_i_1__0_n_8\
    );
internal_full_n_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF7FFFFF"
    )
        port map (
      I0 => mOutPtr_reg(3),
      I1 => mOutPtr_reg(2),
      I2 => mOutPtr_reg(4),
      I3 => \^moutptr_reg[1]_0\(0),
      I4 => \^moutptr_reg[1]_0\(1),
      I5 => mOutPtr_reg(5),
      O => internal_full_n_i_2_n_8
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => '1',
      D => \internal_full_n_i_1__0_n_8\,
      Q => \^det2dow_1_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^moutptr_reg[1]_0\(0),
      O => \mOutPtr[0]_i_1__0_n_8\
    );
\mOutPtr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E0FF1FFF1F00E0"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => \^det2dow_1_empty_n\,
      I3 => ce,
      I4 => \^moutptr_reg[1]_0\(0),
      I5 => \^moutptr_reg[1]_0\(1),
      O => \mOutPtr[1]_i_1_n_8\
    );
\mOutPtr[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A96A"
    )
        port map (
      I0 => mOutPtr_reg(2),
      I1 => \^moutptr_reg[1]_0\(0),
      I2 => \^moutptr_reg[1]_0\(1),
      I3 => \mOutPtr_reg[2]_1\,
      O => \mOutPtr[2]_i_1__0_n_8\
    );
\mOutPtr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF40FD02"
    )
        port map (
      I0 => \mOutPtr_reg[2]_1\,
      I1 => \^moutptr_reg[1]_0\(1),
      I2 => \^moutptr_reg[1]_0\(0),
      I3 => mOutPtr_reg(3),
      I4 => mOutPtr_reg(2),
      O => \mOutPtr[3]_i_1_n_8\
    );
\mOutPtr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAA9AA"
    )
        port map (
      I0 => mOutPtr_reg(4),
      I1 => mOutPtr_reg(2),
      I2 => mOutPtr_reg(3),
      I3 => \mOutPtr_reg[2]_1\,
      I4 => \^moutptr_reg[1]_0\(0),
      I5 => \^moutptr_reg[1]_0\(1),
      O => \mOutPtr[4]_i_1_n_8\
    );
\mOutPtr[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFF2000FFF3000C"
    )
        port map (
      I0 => \mOutPtr_reg[5]_0\,
      I1 => \mOutPtr_reg[5]_1\,
      I2 => mOutPtr_reg(3),
      I3 => mOutPtr_reg(2),
      I4 => mOutPtr_reg(5),
      I5 => mOutPtr_reg(4),
      O => \mOutPtr[5]_i_2_n_8\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => \mOutPtr_reg[5]_2\(0),
      D => \mOutPtr[0]_i_1__0_n_8\,
      Q => \^moutptr_reg[1]_0\(0),
      S => reset
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => \mOutPtr_reg[5]_2\(0),
      D => \mOutPtr[1]_i_1_n_8\,
      Q => \^moutptr_reg[1]_0\(1),
      S => reset
    );
\mOutPtr_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => \mOutPtr_reg[5]_2\(0),
      D => \mOutPtr[2]_i_1__0_n_8\,
      Q => mOutPtr_reg(2),
      S => reset
    );
\mOutPtr_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => \mOutPtr_reg[5]_2\(0),
      D => \mOutPtr[3]_i_1_n_8\,
      Q => mOutPtr_reg(3),
      S => reset
    );
\mOutPtr_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => \mOutPtr_reg[5]_2\(0),
      D => \mOutPtr[4]_i_1_n_8\,
      Q => mOutPtr_reg(4),
      S => reset
    );
\mOutPtr_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => \mOutPtr_reg[5]_2\(0),
      D => \mOutPtr[5]_i_2_n_8\,
      Q => mOutPtr_reg(5),
      S => reset
    );
\trunc_ln_reg_97[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^det2dow_1_empty_n\,
      I1 => Q(1),
      O => \^e\(0)
    );
\val_V_reg_92[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^det2dow_1_empty_n\,
      I1 => Q(0),
      O => \^internal_empty_n_reg_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_fifo_w8_d32_A_2 is
  port (
    dow2bit_1_full_n : out STD_LOGIC;
    dow2bit_1_empty_n : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mOutPtr_reg[5]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \val_V_reg_70_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_fifo_w8_d32_A_2 : entity is "fifo_w8_d32_A";
end bd_0_hls_inst_0_fifo_w8_d32_A_2;

architecture STRUCTURE of bd_0_hls_inst_0_fifo_w8_d32_A_2 is
  signal ce : STD_LOGIC;
  signal \^dow2bit_1_empty_n\ : STD_LOGIC;
  signal \^dow2bit_1_full_n\ : STD_LOGIC;
  signal \internal_empty_n_i_1__1_n_8\ : STD_LOGIC;
  signal \internal_empty_n_i_2__1_n_8\ : STD_LOGIC;
  signal \internal_empty_n_i_3__4_n_8\ : STD_LOGIC;
  signal \internal_full_n_i_1__1_n_8\ : STD_LOGIC;
  signal \internal_full_n_i_2__0_n_8\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__1_n_8\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__0_n_8\ : STD_LOGIC;
  signal \mOutPtr[2]_i_1__1_n_8\ : STD_LOGIC;
  signal \mOutPtr[3]_i_1__0_n_8\ : STD_LOGIC;
  signal \mOutPtr[4]_i_1__0_n_8\ : STD_LOGIC;
  signal \mOutPtr[4]_i_2__3_n_8\ : STD_LOGIC;
  signal \mOutPtr[5]_i_1__3_n_8\ : STD_LOGIC;
  signal \mOutPtr[5]_i_2__0_n_8\ : STD_LOGIC;
  signal \mOutPtr[5]_i_3__0_n_8\ : STD_LOGIC;
  signal mOutPtr_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \internal_empty_n_i_2__1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \internal_empty_n_i_3__4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1__1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \mOutPtr[2]_i_1__1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \mOutPtr[3]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \mOutPtr[4]_i_2__3\ : label is "soft_lutpair23";
begin
  dow2bit_1_empty_n <= \^dow2bit_1_empty_n\;
  dow2bit_1_full_n <= \^dow2bit_1_full_n\;
U_fifo_w8_d32_A_shiftReg: entity work.bd_0_hls_inst_0_fifo_w8_d32_A_shiftReg
     port map (
      Q(0) => Q(0),
      ce => ce,
      clock => clock,
      \out\(7 downto 0) => \out\(7 downto 0),
      \val_V_reg_70_reg[0]\(5 downto 0) => mOutPtr_reg(5 downto 0),
      \val_V_reg_70_reg[7]\ => \^dow2bit_1_full_n\,
      \val_V_reg_70_reg[7]_0\(7 downto 0) => \val_V_reg_70_reg[7]\(7 downto 0)
    );
\internal_empty_n_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EFEFEF00"
    )
        port map (
      I0 => mOutPtr_reg(4),
      I1 => mOutPtr_reg(5),
      I2 => \internal_empty_n_i_2__1_n_8\,
      I3 => \internal_empty_n_i_3__4_n_8\,
      I4 => \^dow2bit_1_empty_n\,
      I5 => reset,
      O => \internal_empty_n_i_1__1_n_8\
    );
\internal_empty_n_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => mOutPtr_reg(1),
      I1 => mOutPtr_reg(0),
      I2 => \mOutPtr[4]_i_2__3_n_8\,
      I3 => mOutPtr_reg(3),
      I4 => mOutPtr_reg(2),
      O => \internal_empty_n_i_2__1_n_8\
    );
\internal_empty_n_i_3__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"57000000"
    )
        port map (
      I0 => \^dow2bit_1_empty_n\,
      I1 => \mOutPtr_reg[5]_0\(1),
      I2 => \mOutPtr_reg[5]_0\(0),
      I3 => Q(0),
      I4 => \^dow2bit_1_full_n\,
      O => \internal_empty_n_i_3__4_n_8\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \internal_empty_n_i_1__1_n_8\,
      Q => \^dow2bit_1_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBF33"
    )
        port map (
      I0 => \internal_full_n_i_2__0_n_8\,
      I1 => internal_full_n_reg_0,
      I2 => Q(0),
      I3 => \^dow2bit_1_full_n\,
      I4 => reset,
      O => \internal_full_n_i_1__1_n_8\
    );
\internal_full_n_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF7FFFFF"
    )
        port map (
      I0 => mOutPtr_reg(3),
      I1 => mOutPtr_reg(2),
      I2 => mOutPtr_reg(4),
      I3 => mOutPtr_reg(0),
      I4 => mOutPtr_reg(1),
      I5 => mOutPtr_reg(5),
      O => \internal_full_n_i_2__0_n_8\
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => '1',
      D => \internal_full_n_i_1__1_n_8\,
      Q => \^dow2bit_1_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mOutPtr_reg(0),
      O => \mOutPtr[0]_i_1__1_n_8\
    );
\mOutPtr[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E0FF1FFF1F00E0"
    )
        port map (
      I0 => \mOutPtr_reg[5]_0\(0),
      I1 => \mOutPtr_reg[5]_0\(1),
      I2 => \^dow2bit_1_empty_n\,
      I3 => ce,
      I4 => mOutPtr_reg(0),
      I5 => mOutPtr_reg(1),
      O => \mOutPtr[1]_i_1__0_n_8\
    );
\mOutPtr[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A96A"
    )
        port map (
      I0 => mOutPtr_reg(2),
      I1 => mOutPtr_reg(0),
      I2 => mOutPtr_reg(1),
      I3 => \mOutPtr[4]_i_2__3_n_8\,
      O => \mOutPtr[2]_i_1__1_n_8\
    );
\mOutPtr[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF40FD02"
    )
        port map (
      I0 => \mOutPtr[4]_i_2__3_n_8\,
      I1 => mOutPtr_reg(1),
      I2 => mOutPtr_reg(0),
      I3 => mOutPtr_reg(3),
      I4 => mOutPtr_reg(2),
      O => \mOutPtr[3]_i_1__0_n_8\
    );
\mOutPtr[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA96AAAAAAA"
    )
        port map (
      I0 => mOutPtr_reg(4),
      I1 => mOutPtr_reg(2),
      I2 => mOutPtr_reg(3),
      I3 => mOutPtr_reg(0),
      I4 => mOutPtr_reg(1),
      I5 => \mOutPtr[4]_i_2__3_n_8\,
      O => \mOutPtr[4]_i_1__0_n_8\
    );
\mOutPtr[4]_i_2__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70707000"
    )
        port map (
      I0 => Q(0),
      I1 => \^dow2bit_1_full_n\,
      I2 => \^dow2bit_1_empty_n\,
      I3 => \mOutPtr_reg[5]_0\(1),
      I4 => \mOutPtr_reg[5]_0\(0),
      O => \mOutPtr[4]_i_2__3_n_8\
    );
\mOutPtr[5]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78787888"
    )
        port map (
      I0 => Q(0),
      I1 => \^dow2bit_1_full_n\,
      I2 => \^dow2bit_1_empty_n\,
      I3 => \mOutPtr_reg[5]_0\(1),
      I4 => \mOutPtr_reg[5]_0\(0),
      O => \mOutPtr[5]_i_1__3_n_8\
    );
\mOutPtr[5]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \mOutPtr[5]_i_3__0_n_8\,
      I1 => mOutPtr_reg(5),
      I2 => mOutPtr_reg(4),
      O => \mOutPtr[5]_i_2__0_n_8\
    );
\mOutPtr[5]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555554D5555555"
    )
        port map (
      I0 => mOutPtr_reg(4),
      I1 => mOutPtr_reg(2),
      I2 => mOutPtr_reg(3),
      I3 => mOutPtr_reg(0),
      I4 => mOutPtr_reg(1),
      I5 => \mOutPtr[4]_i_2__3_n_8\,
      O => \mOutPtr[5]_i_3__0_n_8\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => \mOutPtr[5]_i_1__3_n_8\,
      D => \mOutPtr[0]_i_1__1_n_8\,
      Q => mOutPtr_reg(0),
      S => reset
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => \mOutPtr[5]_i_1__3_n_8\,
      D => \mOutPtr[1]_i_1__0_n_8\,
      Q => mOutPtr_reg(1),
      S => reset
    );
\mOutPtr_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => \mOutPtr[5]_i_1__3_n_8\,
      D => \mOutPtr[2]_i_1__1_n_8\,
      Q => mOutPtr_reg(2),
      S => reset
    );
\mOutPtr_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => \mOutPtr[5]_i_1__3_n_8\,
      D => \mOutPtr[3]_i_1__0_n_8\,
      Q => mOutPtr_reg(3),
      S => reset
    );
\mOutPtr_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => \mOutPtr[5]_i_1__3_n_8\,
      D => \mOutPtr[4]_i_1__0_n_8\,
      Q => mOutPtr_reg(4),
      S => reset
    );
\mOutPtr_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => \mOutPtr[5]_i_1__3_n_8\,
      D => \mOutPtr[5]_i_2__0_n_8\,
      Q => mOutPtr_reg(5),
      S => reset
    );
\val_V_reg_70[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^dow2bit_1_empty_n\,
      I1 => \mOutPtr_reg[5]_0\(0),
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_trames_separ2 is
  port (
    tmp_reg_173 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    internal_full_n_reg : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    pop : out STD_LOGIC;
    dout_valid_reg : out STD_LOGIC;
    \mOutPtr_reg[1]\ : out STD_LOGIC;
    \mOutPtr_reg[0]\ : out STD_LOGIC;
    \mOutPtr_reg[0]_0\ : out STD_LOGIC;
    internal_empty_n_reg : out STD_LOGIC;
    internal_empty_n3_out : out STD_LOGIC;
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC;
    \tmp_reg_173_reg[0]\ : in STD_LOGIC;
    clock : in STD_LOGIC;
    dbl2tsep_1_empty_n : in STD_LOGIC;
    detect_1_empty_n : in STD_LOGIC;
    detect_1_dout : in STD_LOGIC;
    ce : in STD_LOGIC;
    \dout_buf_reg[7]\ : in STD_LOGIC;
    internal_empty_n_reg_0 : in STD_LOGIC;
    internal_empty_n_reg_1 : in STD_LOGIC;
    internal_empty_n_reg_2 : in STD_LOGIC;
    \mOutPtr_reg[5]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    det2dow_1_empty_n : in STD_LOGIC;
    \mOutPtr_reg[2]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    det2dow_1_full_n : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_trames_separ2 : entity is "trames_separ2";
end bd_0_hls_inst_0_trames_separ2;

architecture STRUCTURE of bd_0_hls_inst_0_trames_separ2 is
begin
grp_trames_separ2_do_gen_fu_60: entity work.bd_0_hls_inst_0_trames_separ2_do_gen
     port map (
      DI(0) => DI(0),
      E(0) => E(0),
      Q(0) => Q(0),
      SR(0) => SR(0),
      \ap_CS_fsm_reg[1]_0\ => \ap_CS_fsm_reg[1]\,
      ce => ce,
      clock => clock,
      dbl2tsep_1_empty_n => dbl2tsep_1_empty_n,
      det2dow_1_empty_n => det2dow_1_empty_n,
      det2dow_1_full_n => det2dow_1_full_n,
      detect_1_dout => detect_1_dout,
      detect_1_empty_n => detect_1_empty_n,
      \dout_buf_reg[7]\ => \dout_buf_reg[7]\,
      dout_valid_reg => dout_valid_reg,
      internal_empty_n3_out => internal_empty_n3_out,
      internal_empty_n_reg => internal_empty_n_reg,
      internal_empty_n_reg_0 => internal_empty_n_reg_0,
      internal_empty_n_reg_1 => internal_empty_n_reg_1,
      internal_empty_n_reg_2 => internal_empty_n_reg_2,
      internal_full_n_reg => internal_full_n_reg,
      \mOutPtr_reg[0]\ => \mOutPtr_reg[0]\,
      \mOutPtr_reg[0]_0\ => \mOutPtr_reg[0]_0\,
      \mOutPtr_reg[1]\ => \mOutPtr_reg[1]\,
      \mOutPtr_reg[2]\(1 downto 0) => \mOutPtr_reg[2]\(1 downto 0),
      \mOutPtr_reg[5]\(1 downto 0) => \mOutPtr_reg[5]\(1 downto 0),
      pop => pop,
      reset => reset,
      tmp_reg_173 => tmp_reg_173,
      \tmp_reg_173_reg[0]_0\ => \tmp_reg_173_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_CRCCheck_do_gen is
  port (
    \i3_0_reg_213_reg[6]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    internal_empty_n_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \i1_0_reg_180_reg[2]_0\ : out STD_LOGIC;
    \icmp_ln41_reg_658_reg[0]_0\ : out STD_LOGIC;
    internal_empty_n3_out : out STD_LOGIC;
    \icmp_ln68_reg_711_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ce : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \ap_CS_fsm_reg[7]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clock : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \q0[7]_i_5\ : in STD_LOGIC;
    byt2crc_1_empty_n : in STD_LOGIC;
    reset : in STD_LOGIC;
    \mOutPtr_reg[5]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    crc2fra_1_full_n : in STD_LOGIC;
    \mOutPtr_reg[5]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_CRCCheck_do_gen : entity is "CRCCheck_do_gen";
end bd_0_hls_inst_0_CRCCheck_do_gen;

architecture STRUCTURE of bd_0_hls_inst_0_CRCCheck_do_gen is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal R_0_reg_156 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \R_0_reg_156[0]_i_1_n_8\ : STD_LOGIC;
  signal \R_0_reg_156[10]_i_1_n_8\ : STD_LOGIC;
  signal \R_0_reg_156[11]_i_1_n_8\ : STD_LOGIC;
  signal \R_0_reg_156[12]_i_1_n_8\ : STD_LOGIC;
  signal \R_0_reg_156[13]_i_1_n_8\ : STD_LOGIC;
  signal \R_0_reg_156[14]_i_1_n_8\ : STD_LOGIC;
  signal \R_0_reg_156[15]_i_1_n_8\ : STD_LOGIC;
  signal \R_0_reg_156[16]_i_1_n_8\ : STD_LOGIC;
  signal \R_0_reg_156[17]_i_1_n_8\ : STD_LOGIC;
  signal \R_0_reg_156[18]_i_1_n_8\ : STD_LOGIC;
  signal \R_0_reg_156[19]_i_1_n_8\ : STD_LOGIC;
  signal \R_0_reg_156[1]_i_1_n_8\ : STD_LOGIC;
  signal \R_0_reg_156[20]_i_1_n_8\ : STD_LOGIC;
  signal \R_0_reg_156[21]_i_1_n_8\ : STD_LOGIC;
  signal \R_0_reg_156[22]_i_1_n_8\ : STD_LOGIC;
  signal \R_0_reg_156[23]_i_1_n_8\ : STD_LOGIC;
  signal \R_0_reg_156[24]_i_1_n_8\ : STD_LOGIC;
  signal \R_0_reg_156[25]_i_1_n_8\ : STD_LOGIC;
  signal \R_0_reg_156[2]_i_1_n_8\ : STD_LOGIC;
  signal \R_0_reg_156[31]_i_1_n_8\ : STD_LOGIC;
  signal \R_0_reg_156[31]_i_2_n_8\ : STD_LOGIC;
  signal \R_0_reg_156[31]_i_3_n_8\ : STD_LOGIC;
  signal \R_0_reg_156[3]_i_1_n_8\ : STD_LOGIC;
  signal \R_0_reg_156[4]_i_1_n_8\ : STD_LOGIC;
  signal \R_0_reg_156[5]_i_1_n_8\ : STD_LOGIC;
  signal \R_0_reg_156[6]_i_1_n_8\ : STD_LOGIC;
  signal \R_0_reg_156[7]_i_1_n_8\ : STD_LOGIC;
  signal \R_0_reg_156[8]_i_1_n_8\ : STD_LOGIC;
  signal \R_0_reg_156[9]_i_1_n_8\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_3__0_n_8\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_4__0_n_8\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_5__0_n_8\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_6__0_n_8\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_7_n_8\ : STD_LOGIC;
  signal \ap_CS_fsm[7]_i_2_n_8\ : STD_LOGIC;
  signal \ap_CS_fsm[7]_i_4_n_8\ : STD_LOGIC;
  signal \ap_CS_fsm[7]_i_5_n_8\ : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
  signal ap_CS_fsm_pp1_stage0 : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state6 : STD_LOGIC;
  signal ap_CS_fsm_state7 : STD_LOGIC;
  signal ap_CS_fsm_state8 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal ap_NS_fsm115_out : STD_LOGIC;
  signal ap_NS_fsm117_out : STD_LOGIC;
  signal \ap_NS_fsm3_inferred__0/i__carry__0_n_10\ : STD_LOGIC;
  signal \ap_NS_fsm3_inferred__0/i__carry__0_n_11\ : STD_LOGIC;
  signal \ap_NS_fsm3_inferred__0/i__carry__0_n_8\ : STD_LOGIC;
  signal \ap_NS_fsm3_inferred__0/i__carry__0_n_9\ : STD_LOGIC;
  signal \ap_NS_fsm3_inferred__0/i__carry__1_n_10\ : STD_LOGIC;
  signal \ap_NS_fsm3_inferred__0/i__carry__1_n_11\ : STD_LOGIC;
  signal \ap_NS_fsm3_inferred__0/i__carry_n_10\ : STD_LOGIC;
  signal \ap_NS_fsm3_inferred__0/i__carry_n_11\ : STD_LOGIC;
  signal \ap_NS_fsm3_inferred__0/i__carry_n_8\ : STD_LOGIC;
  signal \ap_NS_fsm3_inferred__0/i__carry_n_9\ : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0_i_1_n_8 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_1_n_8 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_reg_n_8 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2_i_1_n_8 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2_reg_n_8 : STD_LOGIC;
  signal ap_enable_reg_pp1_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp1_iter0_i_1_n_8 : STD_LOGIC;
  signal ap_enable_reg_pp1_iter1_i_1_n_8 : STD_LOGIC;
  signal ap_enable_reg_pp1_iter1_reg_n_8 : STD_LOGIC;
  signal crc_0_reg_191 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal crc_fu_603_p3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal crc_t_3_1_fu_106 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal crc_t_3_1_fu_1060 : STD_LOGIC;
  signal crc_t_3_2_fu_110 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal crc_t_3_2_fu_1100 : STD_LOGIC;
  signal crc_t_3_3_fu_114 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal crc_t_3_3_fu_1140 : STD_LOGIC;
  signal crc_t_3_fu_102 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal crc_t_3_fu_1020 : STD_LOGIC;
  signal din4 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \i1_0_reg_180[0]_i_1_n_8\ : STD_LOGIC;
  signal \i1_0_reg_180[1]_i_1_n_8\ : STD_LOGIC;
  signal \i1_0_reg_180[2]_i_1_n_8\ : STD_LOGIC;
  signal \^i1_0_reg_180_reg[2]_0\ : STD_LOGIC;
  signal \i1_0_reg_180_reg_n_8_[0]\ : STD_LOGIC;
  signal \i1_0_reg_180_reg_n_8_[1]\ : STD_LOGIC;
  signal \i1_0_reg_180_reg_n_8_[2]\ : STD_LOGIC;
  signal \i2_0_reg_202[2]_i_2_n_8\ : STD_LOGIC;
  signal \i2_0_reg_202_reg_n_8_[0]\ : STD_LOGIC;
  signal \i2_0_reg_202_reg_n_8_[1]\ : STD_LOGIC;
  signal \i2_0_reg_202_reg_n_8_[2]\ : STD_LOGIC;
  signal i3_0_reg_2130 : STD_LOGIC;
  signal \i3_0_reg_213[6]_i_4_n_8\ : STD_LOGIC;
  signal i3_0_reg_213_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal i_0_reg_168 : STD_LOGIC;
  signal \i_0_reg_168_reg_n_8_[0]\ : STD_LOGIC;
  signal \i_0_reg_168_reg_n_8_[1]\ : STD_LOGIC;
  signal \i_0_reg_168_reg_n_8_[2]\ : STD_LOGIC;
  signal \i_0_reg_168_reg_n_8_[3]\ : STD_LOGIC;
  signal \i_0_reg_168_reg_n_8_[4]\ : STD_LOGIC;
  signal \i_0_reg_168_reg_n_8_[5]\ : STD_LOGIC;
  signal \i_0_reg_168_reg_n_8_[6]\ : STD_LOGIC;
  signal i_5_fu_230_p2 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal i_5_reg_6620 : STD_LOGIC;
  signal \i_5_reg_662[2]_i_2_n_8\ : STD_LOGIC;
  signal \i_5_reg_662[4]_i_2_n_8\ : STD_LOGIC;
  signal \i_5_reg_662[6]_i_3_n_8\ : STD_LOGIC;
  signal \i_5_reg_662[6]_i_4_n_8\ : STD_LOGIC;
  signal i_5_reg_662_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal i_6_fu_557_p2 : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal i_7_fu_623_p2 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \i__carry__0_i_1_n_8\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_8\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_8\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_8\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_8\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_8\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_8\ : STD_LOGIC;
  signal \i__carry_i_1_n_8\ : STD_LOGIC;
  signal \i__carry_i_2_n_8\ : STD_LOGIC;
  signal \i__carry_i_3_n_8\ : STD_LOGIC;
  signal \i__carry_i_4_n_8\ : STD_LOGIC;
  signal icmp_ln41_fu_224_p2 : STD_LOGIC;
  signal icmp_ln41_reg_6580 : STD_LOGIC;
  signal \icmp_ln41_reg_658[0]_i_1_n_8\ : STD_LOGIC;
  signal icmp_ln41_reg_658_pp0_iter1_reg : STD_LOGIC;
  signal \icmp_ln41_reg_658_pp0_iter1_reg[0]_i_1_n_8\ : STD_LOGIC;
  signal \icmp_ln41_reg_658_reg_n_8_[0]\ : STD_LOGIC;
  signal icmp_ln63_fu_611_p2 : STD_LOGIC;
  signal icmp_ln68_fu_617_p2 : STD_LOGIC;
  signal icmp_ln68_reg_711 : STD_LOGIC;
  signal \icmp_ln68_reg_711[0]_i_1_n_8\ : STD_LOGIC;
  signal lshr_ln49_3_reg_672 : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal lshr_ln49_3_reg_6720 : STD_LOGIC;
  signal \lshr_ln49_3_reg_672[0]_i_1_n_8\ : STD_LOGIC;
  signal \lshr_ln49_3_reg_672[0]_i_2_n_8\ : STD_LOGIC;
  signal \lshr_ln49_3_reg_672[11]_i_1_n_8\ : STD_LOGIC;
  signal \lshr_ln49_3_reg_672[12]_i_1_n_8\ : STD_LOGIC;
  signal \lshr_ln49_3_reg_672[12]_i_2_n_8\ : STD_LOGIC;
  signal \lshr_ln49_3_reg_672[14]_i_2_n_8\ : STD_LOGIC;
  signal \lshr_ln49_3_reg_672[15]_i_2_n_8\ : STD_LOGIC;
  signal \lshr_ln49_3_reg_672[16]_i_2_n_8\ : STD_LOGIC;
  signal \lshr_ln49_3_reg_672[17]_i_2_n_8\ : STD_LOGIC;
  signal \lshr_ln49_3_reg_672[19]_i_2_n_8\ : STD_LOGIC;
  signal \lshr_ln49_3_reg_672[1]_i_2_n_8\ : STD_LOGIC;
  signal \lshr_ln49_3_reg_672[20]_i_1_n_8\ : STD_LOGIC;
  signal \lshr_ln49_3_reg_672[20]_i_2_n_8\ : STD_LOGIC;
  signal \lshr_ln49_3_reg_672[21]_i_2_n_8\ : STD_LOGIC;
  signal \lshr_ln49_3_reg_672[22]_i_2_n_8\ : STD_LOGIC;
  signal \lshr_ln49_3_reg_672[24]_i_1_n_8\ : STD_LOGIC;
  signal \lshr_ln49_3_reg_672[29]_i_2_n_8\ : STD_LOGIC;
  signal \lshr_ln49_3_reg_672[2]_i_1_n_8\ : STD_LOGIC;
  signal \lshr_ln49_3_reg_672[2]_i_2_n_8\ : STD_LOGIC;
  signal \lshr_ln49_3_reg_672[30]_i_1_n_8\ : STD_LOGIC;
  signal \lshr_ln49_3_reg_672[30]_i_2_n_8\ : STD_LOGIC;
  signal \lshr_ln49_3_reg_672[30]_i_3_n_8\ : STD_LOGIC;
  signal \lshr_ln49_3_reg_672[3]_i_1_n_8\ : STD_LOGIC;
  signal \lshr_ln49_3_reg_672[4]_i_2_n_8\ : STD_LOGIC;
  signal \lshr_ln49_3_reg_672[5]_i_1_n_8\ : STD_LOGIC;
  signal \lshr_ln49_3_reg_672[5]_i_2_n_8\ : STD_LOGIC;
  signal \lshr_ln49_3_reg_672[6]_i_1_n_8\ : STD_LOGIC;
  signal \lshr_ln49_3_reg_672[7]_i_2_n_8\ : STD_LOGIC;
  signal \lshr_ln49_3_reg_672[9]_i_1_n_8\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 29 downto 1 );
  signal select_ln49_2_reg_667 : STD_LOGIC;
  signal \select_ln49_2_reg_667[0]_i_2_n_8\ : STD_LOGIC;
  signal \select_ln49_2_reg_667[0]_i_3_n_8\ : STD_LOGIC;
  signal \select_ln49_2_reg_667[0]_i_4_n_8\ : STD_LOGIC;
  signal \select_ln49_2_reg_667[0]_i_5_n_8\ : STD_LOGIC;
  signal \NLW_ap_NS_fsm3_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ap_NS_fsm3_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ap_NS_fsm3_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ap_NS_fsm3_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \R_0_reg_156[0]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \R_0_reg_156[10]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \R_0_reg_156[11]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \R_0_reg_156[12]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \R_0_reg_156[14]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \R_0_reg_156[15]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \R_0_reg_156[16]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \R_0_reg_156[17]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \R_0_reg_156[18]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \R_0_reg_156[19]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \R_0_reg_156[1]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \R_0_reg_156[21]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \R_0_reg_156[22]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \R_0_reg_156[23]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \R_0_reg_156[25]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \R_0_reg_156[2]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \R_0_reg_156[31]_i_3\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \R_0_reg_156[4]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \R_0_reg_156[5]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \R_0_reg_156[6]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \R_0_reg_156[7]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \R_0_reg_156[8]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \R_0_reg_156[9]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \SRL_SIG_reg[31][7]_srl32_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \ap_CS_fsm[7]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \ap_CS_fsm[7]_i_4\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \ap_CS_fsm[7]_i_5\ : label is "soft_lutpair46";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[6]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[7]\ : label is "none";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \ap_NS_fsm3_inferred__0/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ap_NS_fsm3_inferred__0/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ap_NS_fsm3_inferred__0/i__carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \i2_0_reg_202[0]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \i2_0_reg_202[1]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \i2_0_reg_202[2]_i_3\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \i3_0_reg_213[1]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \i3_0_reg_213[2]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \i3_0_reg_213[3]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \i3_0_reg_213[4]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \i3_0_reg_213[6]_i_4\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \i_5_reg_662[0]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \i_5_reg_662[2]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \i_5_reg_662[6]_i_4\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \icmp_ln41_reg_658[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \icmp_ln68_reg_711[0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \lshr_ln49_3_reg_672[0]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \lshr_ln49_3_reg_672[12]_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \lshr_ln49_3_reg_672[14]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \lshr_ln49_3_reg_672[15]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \lshr_ln49_3_reg_672[15]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \lshr_ln49_3_reg_672[17]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \lshr_ln49_3_reg_672[1]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \lshr_ln49_3_reg_672[21]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \lshr_ln49_3_reg_672[24]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \lshr_ln49_3_reg_672[25]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \lshr_ln49_3_reg_672[27]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \lshr_ln49_3_reg_672[29]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \lshr_ln49_3_reg_672[2]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \lshr_ln49_3_reg_672[30]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \lshr_ln49_3_reg_672[30]_i_3\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \lshr_ln49_3_reg_672[4]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \lshr_ln49_3_reg_672[5]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \lshr_ln49_3_reg_672[7]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \mOutPtr[5]_i_1__2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \select_ln49_2_reg_667[0]_i_3\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \select_ln49_2_reg_667[0]_i_4\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \select_ln49_2_reg_667[0]_i_5\ : label is "soft_lutpair57";
begin
  E(0) <= \^e\(0);
  \i1_0_reg_180_reg[2]_0\ <= \^i1_0_reg_180_reg[2]_0\;
\R_0_reg_156[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(4),
      I1 => select_ln49_2_reg_667,
      I2 => lshr_ln49_3_reg_672(0),
      O => \R_0_reg_156[0]_i_1_n_8\
    );
\R_0_reg_156[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(1),
      I1 => lshr_ln49_3_reg_672(0),
      I2 => lshr_ln49_3_reg_672(14),
      I3 => lshr_ln49_3_reg_672(2),
      O => \R_0_reg_156[10]_i_1_n_8\
    );
\R_0_reg_156[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(15),
      I1 => lshr_ln49_3_reg_672(2),
      I2 => lshr_ln49_3_reg_672(1),
      I3 => lshr_ln49_3_reg_672(3),
      I4 => select_ln49_2_reg_667,
      O => \R_0_reg_156[11]_i_1_n_8\
    );
\R_0_reg_156[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(16),
      I1 => lshr_ln49_3_reg_672(3),
      I2 => select_ln49_2_reg_667,
      I3 => lshr_ln49_3_reg_672(2),
      O => \R_0_reg_156[12]_i_1_n_8\
    );
\R_0_reg_156[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(3),
      I1 => lshr_ln49_3_reg_672(17),
      O => \R_0_reg_156[13]_i_1_n_8\
    );
\R_0_reg_156[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(18),
      I1 => select_ln49_2_reg_667,
      I2 => lshr_ln49_3_reg_672(0),
      O => \R_0_reg_156[14]_i_1_n_8\
    );
\R_0_reg_156[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(19),
      I1 => lshr_ln49_3_reg_672(1),
      I2 => lshr_ln49_3_reg_672(0),
      O => \R_0_reg_156[15]_i_1_n_8\
    );
\R_0_reg_156[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(2),
      I1 => lshr_ln49_3_reg_672(1),
      I2 => select_ln49_2_reg_667,
      I3 => lshr_ln49_3_reg_672(20),
      O => \R_0_reg_156[16]_i_1_n_8\
    );
\R_0_reg_156[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(21),
      I1 => lshr_ln49_3_reg_672(0),
      I2 => lshr_ln49_3_reg_672(2),
      I3 => lshr_ln49_3_reg_672(3),
      O => \R_0_reg_156[17]_i_1_n_8\
    );
\R_0_reg_156[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(0),
      I1 => lshr_ln49_3_reg_672(1),
      I2 => lshr_ln49_3_reg_672(22),
      I3 => lshr_ln49_3_reg_672(3),
      O => \R_0_reg_156[18]_i_1_n_8\
    );
\R_0_reg_156[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(0),
      I1 => select_ln49_2_reg_667,
      I2 => lshr_ln49_3_reg_672(23),
      I3 => lshr_ln49_3_reg_672(1),
      I4 => lshr_ln49_3_reg_672(2),
      O => \R_0_reg_156[19]_i_1_n_8\
    );
\R_0_reg_156[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(5),
      I1 => lshr_ln49_3_reg_672(1),
      I2 => lshr_ln49_3_reg_672(0),
      I3 => select_ln49_2_reg_667,
      O => \R_0_reg_156[1]_i_1_n_8\
    );
\R_0_reg_156[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(24),
      I1 => lshr_ln49_3_reg_672(1),
      I2 => lshr_ln49_3_reg_672(0),
      I3 => lshr_ln49_3_reg_672(2),
      I4 => select_ln49_2_reg_667,
      I5 => lshr_ln49_3_reg_672(3),
      O => \R_0_reg_156[20]_i_1_n_8\
    );
\R_0_reg_156[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(3),
      I1 => lshr_ln49_3_reg_672(25),
      I2 => lshr_ln49_3_reg_672(1),
      I3 => lshr_ln49_3_reg_672(2),
      O => \R_0_reg_156[21]_i_1_n_8\
    );
\R_0_reg_156[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(0),
      I1 => lshr_ln49_3_reg_672(26),
      I2 => lshr_ln49_3_reg_672(2),
      I3 => select_ln49_2_reg_667,
      I4 => lshr_ln49_3_reg_672(3),
      O => \R_0_reg_156[22]_i_1_n_8\
    );
\R_0_reg_156[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(1),
      I1 => lshr_ln49_3_reg_672(27),
      I2 => lshr_ln49_3_reg_672(3),
      I3 => select_ln49_2_reg_667,
      O => \R_0_reg_156[23]_i_1_n_8\
    );
\R_0_reg_156[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(2),
      I1 => lshr_ln49_3_reg_672(28),
      O => \R_0_reg_156[24]_i_1_n_8\
    );
\R_0_reg_156[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(3),
      I1 => select_ln49_2_reg_667,
      I2 => lshr_ln49_3_reg_672(29),
      O => \R_0_reg_156[25]_i_1_n_8\
    );
\R_0_reg_156[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(1),
      I1 => lshr_ln49_3_reg_672(2),
      I2 => lshr_ln49_3_reg_672(0),
      I3 => select_ln49_2_reg_667,
      I4 => lshr_ln49_3_reg_672(6),
      O => \R_0_reg_156[2]_i_1_n_8\
    );
\R_0_reg_156[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A8A8AAA8A8A"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => icmp_ln41_reg_658_pp0_iter1_reg,
      I2 => ap_enable_reg_pp0_iter2_reg_n_8,
      I3 => byt2crc_1_empty_n,
      I4 => ap_enable_reg_pp0_iter1_reg_n_8,
      I5 => \icmp_ln41_reg_658_reg_n_8_[0]\,
      O => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABABABAAABABA"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => icmp_ln41_reg_658_pp0_iter1_reg,
      I2 => ap_enable_reg_pp0_iter2_reg_n_8,
      I3 => byt2crc_1_empty_n,
      I4 => ap_enable_reg_pp0_iter1_reg_n_8,
      I5 => \icmp_ln41_reg_658_reg_n_8_[0]\,
      O => \R_0_reg_156[31]_i_2_n_8\
    );
\R_0_reg_156[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => select_ln49_2_reg_667,
      I1 => lshr_ln49_3_reg_672(3),
      O => \R_0_reg_156[31]_i_3_n_8\
    );
\R_0_reg_156[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(2),
      I1 => select_ln49_2_reg_667,
      I2 => lshr_ln49_3_reg_672(3),
      I3 => lshr_ln49_3_reg_672(7),
      I4 => lshr_ln49_3_reg_672(1),
      I5 => lshr_ln49_3_reg_672(0),
      O => \R_0_reg_156[3]_i_1_n_8\
    );
\R_0_reg_156[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(3),
      I1 => lshr_ln49_3_reg_672(8),
      I2 => lshr_ln49_3_reg_672(1),
      I3 => lshr_ln49_3_reg_672(2),
      O => \R_0_reg_156[4]_i_1_n_8\
    );
\R_0_reg_156[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(9),
      I1 => lshr_ln49_3_reg_672(0),
      I2 => lshr_ln49_3_reg_672(2),
      I3 => lshr_ln49_3_reg_672(3),
      O => \R_0_reg_156[5]_i_1_n_8\
    );
\R_0_reg_156[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(10),
      I1 => lshr_ln49_3_reg_672(1),
      I2 => lshr_ln49_3_reg_672(0),
      I3 => lshr_ln49_3_reg_672(3),
      I4 => select_ln49_2_reg_667,
      O => \R_0_reg_156[6]_i_1_n_8\
    );
\R_0_reg_156[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(2),
      I1 => lshr_ln49_3_reg_672(1),
      I2 => select_ln49_2_reg_667,
      I3 => lshr_ln49_3_reg_672(11),
      O => \R_0_reg_156[7]_i_1_n_8\
    );
\R_0_reg_156[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(12),
      I1 => lshr_ln49_3_reg_672(0),
      I2 => lshr_ln49_3_reg_672(2),
      I3 => lshr_ln49_3_reg_672(3),
      O => \R_0_reg_156[8]_i_1_n_8\
    );
\R_0_reg_156[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(0),
      I1 => lshr_ln49_3_reg_672(1),
      I2 => lshr_ln49_3_reg_672(13),
      I3 => lshr_ln49_3_reg_672(3),
      O => \R_0_reg_156[9]_i_1_n_8\
    );
\R_0_reg_156_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => \R_0_reg_156[0]_i_1_n_8\,
      Q => R_0_reg_156(0),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => \R_0_reg_156[10]_i_1_n_8\,
      Q => R_0_reg_156(10),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => \R_0_reg_156[11]_i_1_n_8\,
      Q => R_0_reg_156(11),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => \R_0_reg_156[12]_i_1_n_8\,
      Q => R_0_reg_156(12),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => \R_0_reg_156[13]_i_1_n_8\,
      Q => R_0_reg_156(13),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => \R_0_reg_156[14]_i_1_n_8\,
      Q => R_0_reg_156(14),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => \R_0_reg_156[15]_i_1_n_8\,
      Q => R_0_reg_156(15),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => \R_0_reg_156[16]_i_1_n_8\,
      Q => R_0_reg_156(16),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => \R_0_reg_156[17]_i_1_n_8\,
      Q => R_0_reg_156(17),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => \R_0_reg_156[18]_i_1_n_8\,
      Q => R_0_reg_156(18),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => \R_0_reg_156[19]_i_1_n_8\,
      Q => R_0_reg_156(19),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => \R_0_reg_156[1]_i_1_n_8\,
      Q => R_0_reg_156(1),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => \R_0_reg_156[20]_i_1_n_8\,
      Q => R_0_reg_156(20),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => \R_0_reg_156[21]_i_1_n_8\,
      Q => R_0_reg_156(21),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => \R_0_reg_156[22]_i_1_n_8\,
      Q => R_0_reg_156(22),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => \R_0_reg_156[23]_i_1_n_8\,
      Q => R_0_reg_156(23),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => \R_0_reg_156[24]_i_1_n_8\,
      Q => R_0_reg_156(24),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => \R_0_reg_156[25]_i_1_n_8\,
      Q => R_0_reg_156(25),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => lshr_ln49_3_reg_672(30),
      Q => R_0_reg_156(26),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => select_ln49_2_reg_667,
      Q => R_0_reg_156(27),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => lshr_ln49_3_reg_672(0),
      Q => R_0_reg_156(28),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => lshr_ln49_3_reg_672(1),
      Q => R_0_reg_156(29),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => \R_0_reg_156[2]_i_1_n_8\,
      Q => R_0_reg_156(2),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => lshr_ln49_3_reg_672(2),
      Q => R_0_reg_156(30),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => \R_0_reg_156[31]_i_3_n_8\,
      Q => R_0_reg_156(31),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => \R_0_reg_156[3]_i_1_n_8\,
      Q => R_0_reg_156(3),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => \R_0_reg_156[4]_i_1_n_8\,
      Q => R_0_reg_156(4),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => \R_0_reg_156[5]_i_1_n_8\,
      Q => R_0_reg_156(5),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => \R_0_reg_156[6]_i_1_n_8\,
      Q => R_0_reg_156(6),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => \R_0_reg_156[7]_i_1_n_8\,
      Q => R_0_reg_156(7),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => \R_0_reg_156[8]_i_1_n_8\,
      Q => R_0_reg_156(8),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\R_0_reg_156_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \R_0_reg_156[31]_i_2_n_8\,
      D => \R_0_reg_156[9]_i_1_n_8\,
      Q => R_0_reg_156(9),
      R => \R_0_reg_156[31]_i_1_n_8\
    );
\SRL_SIG_reg[31][7]_srl32_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => crc2fra_1_full_n,
      I1 => ap_CS_fsm_pp1_stage0,
      I2 => ap_enable_reg_pp1_iter1_reg_n_8,
      I3 => icmp_ln68_reg_711,
      O => ce
    );
\ap_CS_fsm[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFEFEFAAAAAAAA"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => ap_enable_reg_pp0_iter1_reg_n_8,
      I2 => ap_enable_reg_pp0_iter2_reg_n_8,
      I3 => ap_enable_reg_pp0_iter0,
      I4 => icmp_ln41_fu_224_p2,
      I5 => ap_CS_fsm_pp0_stage0,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[3]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AA80"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage0,
      I1 => icmp_ln41_fu_224_p2,
      I2 => ap_enable_reg_pp0_iter0,
      I3 => ap_enable_reg_pp0_iter2_reg_n_8,
      I4 => ap_enable_reg_pp0_iter1_reg_n_8,
      O => ap_NS_fsm(3)
    );
\ap_CS_fsm[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \ap_CS_fsm[3]_i_3__0_n_8\,
      I1 => \ap_CS_fsm[3]_i_4__0_n_8\,
      I2 => \ap_CS_fsm[3]_i_5__0_n_8\,
      I3 => \i_5_reg_662[2]_i_2_n_8\,
      I4 => \ap_CS_fsm[3]_i_6__0_n_8\,
      O => icmp_ln41_fu_224_p2
    );
\ap_CS_fsm[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000505030000000"
    )
        port map (
      I0 => \i_0_reg_168_reg_n_8_[4]\,
      I1 => i_5_reg_662_reg(4),
      I2 => \ap_CS_fsm[3]_i_7_n_8\,
      I3 => i_5_reg_662_reg(6),
      I4 => \i_5_reg_662[6]_i_4_n_8\,
      I5 => \i_0_reg_168_reg_n_8_[6]\,
      O => \ap_CS_fsm[3]_i_3__0_n_8\
    );
\ap_CS_fsm[3]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => i_5_reg_662_reg(5),
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => ap_enable_reg_pp0_iter1_reg_n_8,
      I3 => \icmp_ln41_reg_658_reg_n_8_[0]\,
      I4 => \i_0_reg_168_reg_n_8_[5]\,
      O => \ap_CS_fsm[3]_i_4__0_n_8\
    );
\ap_CS_fsm[3]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => i_5_reg_662_reg(3),
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => ap_enable_reg_pp0_iter1_reg_n_8,
      I3 => \icmp_ln41_reg_658_reg_n_8_[0]\,
      I4 => \i_0_reg_168_reg_n_8_[3]\,
      O => \ap_CS_fsm[3]_i_5__0_n_8\
    );
\ap_CS_fsm[3]_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => i_5_reg_662_reg(1),
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => ap_enable_reg_pp0_iter1_reg_n_8,
      I3 => \icmp_ln41_reg_658_reg_n_8_[0]\,
      I4 => \i_0_reg_168_reg_n_8_[1]\,
      O => \ap_CS_fsm[3]_i_6__0_n_8\
    );
\ap_CS_fsm[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => i_5_reg_662_reg(2),
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => ap_enable_reg_pp0_iter1_reg_n_8,
      I3 => \icmp_ln41_reg_658_reg_n_8_[0]\,
      I4 => \i_0_reg_168_reg_n_8_[2]\,
      O => \ap_CS_fsm[3]_i_7_n_8\
    );
\ap_CS_fsm[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFBAAAA"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => \i1_0_reg_180_reg_n_8_[2]\,
      I2 => \i1_0_reg_180_reg_n_8_[1]\,
      I3 => \i1_0_reg_180_reg_n_8_[0]\,
      I4 => ap_CS_fsm_state7,
      O => ap_NS_fsm(4)
    );
\ap_CS_fsm[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0200"
    )
        port map (
      I0 => \i1_0_reg_180_reg_n_8_[2]\,
      I1 => \i1_0_reg_180_reg_n_8_[1]\,
      I2 => \i1_0_reg_180_reg_n_8_[0]\,
      I3 => ap_CS_fsm_state7,
      I4 => \i2_0_reg_202[2]_i_2_n_8\,
      O => ap_NS_fsm(5)
    );
\ap_CS_fsm[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFFAAAA"
    )
        port map (
      I0 => ap_NS_fsm115_out,
      I1 => ap_enable_reg_pp1_iter0,
      I2 => \ap_CS_fsm[7]_i_4_n_8\,
      I3 => icmp_ln68_fu_617_p2,
      I4 => ap_CS_fsm_pp1_stage0,
      O => ap_NS_fsm(6)
    );
\ap_CS_fsm[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11111111F1111111"
    )
        port map (
      I0 => \ap_CS_fsm[7]_i_2_n_8\,
      I1 => icmp_ln63_fu_611_p2,
      I2 => icmp_ln68_fu_617_p2,
      I3 => ap_enable_reg_pp1_iter0,
      I4 => ap_CS_fsm_pp1_stage0,
      I5 => \ap_CS_fsm[7]_i_4_n_8\,
      O => ap_NS_fsm(7)
    );
\ap_CS_fsm[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \i2_0_reg_202_reg_n_8_[0]\,
      I1 => \i2_0_reg_202_reg_n_8_[2]\,
      I2 => \i2_0_reg_202_reg_n_8_[1]\,
      I3 => ap_CS_fsm_state8,
      O => \ap_CS_fsm[7]_i_2_n_8\
    );
\ap_CS_fsm[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => i3_0_reg_213_reg(3),
      I1 => i3_0_reg_213_reg(4),
      I2 => i3_0_reg_213_reg(2),
      I3 => \ap_CS_fsm[7]_i_5_n_8\,
      O => icmp_ln68_fu_617_p2
    );
\ap_CS_fsm[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => crc2fra_1_full_n,
      I1 => ap_enable_reg_pp1_iter1_reg_n_8,
      I2 => icmp_ln68_reg_711,
      O => \ap_CS_fsm[7]_i_4_n_8\
    );
\ap_CS_fsm[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => i3_0_reg_213_reg(1),
      I1 => i3_0_reg_213_reg(0),
      I2 => i3_0_reg_213_reg(6),
      I3 => i3_0_reg_213_reg(5),
      O => \ap_CS_fsm[7]_i_5_n_8\
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => D(0),
      Q => ap_CS_fsm_state2,
      R => reset
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_pp0_stage0,
      R => reset
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state6,
      R => reset
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(4),
      Q => ap_CS_fsm_state7,
      R => reset
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(5),
      Q => ap_CS_fsm_state8,
      R => reset
    );
\ap_CS_fsm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(6),
      Q => ap_CS_fsm_pp1_stage0,
      R => reset
    );
\ap_CS_fsm_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(7),
      Q => \ap_CS_fsm_reg[7]_0\(0),
      R => reset
    );
\ap_NS_fsm3_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ap_NS_fsm3_inferred__0/i__carry_n_8\,
      CO(2) => \ap_NS_fsm3_inferred__0/i__carry_n_9\,
      CO(1) => \ap_NS_fsm3_inferred__0/i__carry_n_10\,
      CO(0) => \ap_NS_fsm3_inferred__0/i__carry_n_11\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ap_NS_fsm3_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_8\,
      S(2) => \i__carry_i_2_n_8\,
      S(1) => \i__carry_i_3_n_8\,
      S(0) => \i__carry_i_4_n_8\
    );
\ap_NS_fsm3_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ap_NS_fsm3_inferred__0/i__carry_n_8\,
      CO(3) => \ap_NS_fsm3_inferred__0/i__carry__0_n_8\,
      CO(2) => \ap_NS_fsm3_inferred__0/i__carry__0_n_9\,
      CO(1) => \ap_NS_fsm3_inferred__0/i__carry__0_n_10\,
      CO(0) => \ap_NS_fsm3_inferred__0/i__carry__0_n_11\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ap_NS_fsm3_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1_n_8\,
      S(2) => \i__carry__0_i_2_n_8\,
      S(1) => \i__carry__0_i_3_n_8\,
      S(0) => \i__carry__0_i_4_n_8\
    );
\ap_NS_fsm3_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ap_NS_fsm3_inferred__0/i__carry__0_n_8\,
      CO(3) => \NLW_ap_NS_fsm3_inferred__0/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => icmp_ln63_fu_611_p2,
      CO(1) => \ap_NS_fsm3_inferred__0/i__carry__1_n_10\,
      CO(0) => \ap_NS_fsm3_inferred__0/i__carry__1_n_11\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ap_NS_fsm3_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__1_i_1_n_8\,
      S(1) => \i__carry__1_i_2_n_8\,
      S(0) => \i__carry__1_i_3_n_8\
    );
ap_enable_reg_pp0_iter0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007770"
    )
        port map (
      I0 => icmp_ln41_fu_224_p2,
      I1 => icmp_ln41_reg_6580,
      I2 => ap_CS_fsm_state2,
      I3 => ap_enable_reg_pp0_iter0,
      I4 => reset,
      O => ap_enable_reg_pp0_iter0_i_1_n_8
    );
ap_enable_reg_pp0_iter0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_enable_reg_pp0_iter0_i_1_n_8,
      Q => ap_enable_reg_pp0_iter0,
      R => '0'
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055750030"
    )
        port map (
      I0 => icmp_ln41_fu_224_p2,
      I1 => byt2crc_1_empty_n,
      I2 => ap_enable_reg_pp0_iter1_reg_n_8,
      I3 => \icmp_ln41_reg_658_reg_n_8_[0]\,
      I4 => ap_enable_reg_pp0_iter0,
      I5 => reset,
      O => ap_enable_reg_pp0_iter1_i_1_n_8
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_enable_reg_pp0_iter1_i_1_n_8,
      Q => ap_enable_reg_pp0_iter1_reg_n_8,
      R => '0'
    );
ap_enable_reg_pp0_iter2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF00F400"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => ap_enable_reg_pp0_iter2_reg_n_8,
      I2 => byt2crc_1_empty_n,
      I3 => ap_enable_reg_pp0_iter1_reg_n_8,
      I4 => \icmp_ln41_reg_658_reg_n_8_[0]\,
      I5 => reset,
      O => ap_enable_reg_pp0_iter2_i_1_n_8
    );
ap_enable_reg_pp0_iter2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_enable_reg_pp0_iter2_i_1_n_8,
      Q => ap_enable_reg_pp0_iter2_reg_n_8,
      R => '0'
    );
ap_enable_reg_pp1_iter0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F7F7F700"
    )
        port map (
      I0 => icmp_ln68_fu_617_p2,
      I1 => ap_CS_fsm_pp1_stage0,
      I2 => \ap_CS_fsm[7]_i_4_n_8\,
      I3 => ap_NS_fsm115_out,
      I4 => ap_enable_reg_pp1_iter0,
      I5 => reset,
      O => ap_enable_reg_pp1_iter0_i_1_n_8
    );
ap_enable_reg_pp1_iter0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_enable_reg_pp1_iter0_i_1_n_8,
      Q => ap_enable_reg_pp1_iter0,
      R => '0'
    );
ap_enable_reg_pp1_iter1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1100000011300030"
    )
        port map (
      I0 => ap_NS_fsm115_out,
      I1 => reset,
      I2 => ap_enable_reg_pp1_iter0,
      I3 => \ap_CS_fsm[7]_i_4_n_8\,
      I4 => ap_enable_reg_pp1_iter1_reg_n_8,
      I5 => icmp_ln68_fu_617_p2,
      O => ap_enable_reg_pp1_iter1_i_1_n_8
    );
ap_enable_reg_pp1_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_enable_reg_pp1_iter1_i_1_n_8,
      Q => ap_enable_reg_pp1_iter1_reg_n_8,
      R => '0'
    );
\crc_0_reg_191[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => crc_t_3_fu_102(0),
      I1 => crc_t_3_1_fu_106(0),
      I2 => \i2_0_reg_202_reg_n_8_[1]\,
      I3 => crc_t_3_2_fu_110(0),
      I4 => \i2_0_reg_202_reg_n_8_[0]\,
      I5 => crc_t_3_3_fu_114(0),
      O => crc_fu_603_p3(0)
    );
\crc_0_reg_191[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => crc_t_3_fu_102(1),
      I1 => crc_t_3_1_fu_106(1),
      I2 => \i2_0_reg_202_reg_n_8_[1]\,
      I3 => crc_t_3_2_fu_110(1),
      I4 => \i2_0_reg_202_reg_n_8_[0]\,
      I5 => crc_t_3_3_fu_114(1),
      O => crc_fu_603_p3(1)
    );
\crc_0_reg_191[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => crc_t_3_fu_102(2),
      I1 => crc_t_3_1_fu_106(2),
      I2 => \i2_0_reg_202_reg_n_8_[1]\,
      I3 => crc_t_3_2_fu_110(2),
      I4 => \i2_0_reg_202_reg_n_8_[0]\,
      I5 => crc_t_3_3_fu_114(2),
      O => crc_fu_603_p3(2)
    );
\crc_0_reg_191[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => crc_t_3_fu_102(3),
      I1 => crc_t_3_1_fu_106(3),
      I2 => \i2_0_reg_202_reg_n_8_[1]\,
      I3 => crc_t_3_2_fu_110(3),
      I4 => \i2_0_reg_202_reg_n_8_[0]\,
      I5 => crc_t_3_3_fu_114(3),
      O => crc_fu_603_p3(3)
    );
\crc_0_reg_191[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => crc_t_3_fu_102(4),
      I1 => crc_t_3_1_fu_106(4),
      I2 => \i2_0_reg_202_reg_n_8_[1]\,
      I3 => crc_t_3_2_fu_110(4),
      I4 => \i2_0_reg_202_reg_n_8_[0]\,
      I5 => crc_t_3_3_fu_114(4),
      O => crc_fu_603_p3(4)
    );
\crc_0_reg_191[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => crc_t_3_fu_102(5),
      I1 => crc_t_3_1_fu_106(5),
      I2 => \i2_0_reg_202_reg_n_8_[1]\,
      I3 => crc_t_3_2_fu_110(5),
      I4 => \i2_0_reg_202_reg_n_8_[0]\,
      I5 => crc_t_3_3_fu_114(5),
      O => crc_fu_603_p3(5)
    );
\crc_0_reg_191[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => crc_t_3_fu_102(6),
      I1 => crc_t_3_1_fu_106(6),
      I2 => \i2_0_reg_202_reg_n_8_[1]\,
      I3 => crc_t_3_2_fu_110(6),
      I4 => \i2_0_reg_202_reg_n_8_[0]\,
      I5 => crc_t_3_3_fu_114(6),
      O => crc_fu_603_p3(6)
    );
\crc_0_reg_191[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => crc_t_3_fu_102(7),
      I1 => crc_t_3_1_fu_106(7),
      I2 => \i2_0_reg_202_reg_n_8_[1]\,
      I3 => crc_t_3_2_fu_110(7),
      I4 => \i2_0_reg_202_reg_n_8_[0]\,
      I5 => crc_t_3_3_fu_114(7),
      O => crc_fu_603_p3(7)
    );
\crc_0_reg_191_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_fu_603_p3(0),
      Q => crc_0_reg_191(0),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_0_reg_191(2),
      Q => crc_0_reg_191(10),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_0_reg_191(3),
      Q => crc_0_reg_191(11),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_0_reg_191(4),
      Q => crc_0_reg_191(12),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_0_reg_191(5),
      Q => crc_0_reg_191(13),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_0_reg_191(6),
      Q => crc_0_reg_191(14),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_0_reg_191(7),
      Q => crc_0_reg_191(15),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_0_reg_191(8),
      Q => crc_0_reg_191(16),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_0_reg_191(9),
      Q => crc_0_reg_191(17),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_0_reg_191(10),
      Q => crc_0_reg_191(18),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_0_reg_191(11),
      Q => crc_0_reg_191(19),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_fu_603_p3(1),
      Q => crc_0_reg_191(1),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_0_reg_191(12),
      Q => crc_0_reg_191(20),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_0_reg_191(13),
      Q => crc_0_reg_191(21),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_0_reg_191(14),
      Q => crc_0_reg_191(22),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_0_reg_191(15),
      Q => crc_0_reg_191(23),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_0_reg_191(16),
      Q => crc_0_reg_191(24),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_0_reg_191(17),
      Q => crc_0_reg_191(25),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_0_reg_191(18),
      Q => crc_0_reg_191(26),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_0_reg_191(19),
      Q => crc_0_reg_191(27),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_0_reg_191(20),
      Q => crc_0_reg_191(28),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_0_reg_191(21),
      Q => crc_0_reg_191(29),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_fu_603_p3(2),
      Q => crc_0_reg_191(2),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_0_reg_191(22),
      Q => crc_0_reg_191(30),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_0_reg_191(23),
      Q => crc_0_reg_191(31),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_fu_603_p3(3),
      Q => crc_0_reg_191(3),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_fu_603_p3(4),
      Q => crc_0_reg_191(4),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_fu_603_p3(5),
      Q => crc_0_reg_191(5),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_fu_603_p3(6),
      Q => crc_0_reg_191(6),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_fu_603_p3(7),
      Q => crc_0_reg_191(7),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_0_reg_191(0),
      Q => crc_0_reg_191(8),
      R => ap_NS_fsm117_out
    );
\crc_0_reg_191_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => crc_0_reg_191(1),
      Q => crc_0_reg_191(9),
      R => ap_NS_fsm117_out
    );
\crc_t_3_1_fu_106[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => byt2crc_1_empty_n,
      I1 => ap_CS_fsm_state7,
      I2 => \i1_0_reg_180_reg_n_8_[0]\,
      I3 => \i1_0_reg_180_reg_n_8_[1]\,
      O => crc_t_3_1_fu_1060
    );
\crc_t_3_1_fu_106_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_1_fu_1060,
      D => \out\(0),
      Q => crc_t_3_1_fu_106(0),
      R => '0'
    );
\crc_t_3_1_fu_106_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_1_fu_1060,
      D => \out\(1),
      Q => crc_t_3_1_fu_106(1),
      R => '0'
    );
\crc_t_3_1_fu_106_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_1_fu_1060,
      D => \out\(2),
      Q => crc_t_3_1_fu_106(2),
      R => '0'
    );
\crc_t_3_1_fu_106_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_1_fu_1060,
      D => \out\(3),
      Q => crc_t_3_1_fu_106(3),
      R => '0'
    );
\crc_t_3_1_fu_106_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_1_fu_1060,
      D => \out\(4),
      Q => crc_t_3_1_fu_106(4),
      R => '0'
    );
\crc_t_3_1_fu_106_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_1_fu_1060,
      D => \out\(5),
      Q => crc_t_3_1_fu_106(5),
      R => '0'
    );
\crc_t_3_1_fu_106_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_1_fu_1060,
      D => \out\(6),
      Q => crc_t_3_1_fu_106(6),
      R => '0'
    );
\crc_t_3_1_fu_106_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_1_fu_1060,
      D => \out\(7),
      Q => crc_t_3_1_fu_106(7),
      R => '0'
    );
\crc_t_3_2_fu_110[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => byt2crc_1_empty_n,
      I1 => ap_CS_fsm_state7,
      I2 => \i1_0_reg_180_reg_n_8_[1]\,
      I3 => \i1_0_reg_180_reg_n_8_[0]\,
      O => crc_t_3_2_fu_1100
    );
\crc_t_3_2_fu_110_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_2_fu_1100,
      D => \out\(0),
      Q => crc_t_3_2_fu_110(0),
      R => '0'
    );
\crc_t_3_2_fu_110_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_2_fu_1100,
      D => \out\(1),
      Q => crc_t_3_2_fu_110(1),
      R => '0'
    );
\crc_t_3_2_fu_110_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_2_fu_1100,
      D => \out\(2),
      Q => crc_t_3_2_fu_110(2),
      R => '0'
    );
\crc_t_3_2_fu_110_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_2_fu_1100,
      D => \out\(3),
      Q => crc_t_3_2_fu_110(3),
      R => '0'
    );
\crc_t_3_2_fu_110_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_2_fu_1100,
      D => \out\(4),
      Q => crc_t_3_2_fu_110(4),
      R => '0'
    );
\crc_t_3_2_fu_110_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_2_fu_1100,
      D => \out\(5),
      Q => crc_t_3_2_fu_110(5),
      R => '0'
    );
\crc_t_3_2_fu_110_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_2_fu_1100,
      D => \out\(6),
      Q => crc_t_3_2_fu_110(6),
      R => '0'
    );
\crc_t_3_2_fu_110_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_2_fu_1100,
      D => \out\(7),
      Q => crc_t_3_2_fu_110(7),
      R => '0'
    );
\crc_t_3_3_fu_114[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => byt2crc_1_empty_n,
      I1 => ap_CS_fsm_state7,
      I2 => \i1_0_reg_180_reg_n_8_[1]\,
      I3 => \i1_0_reg_180_reg_n_8_[0]\,
      O => crc_t_3_3_fu_1140
    );
\crc_t_3_3_fu_114_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_3_fu_1140,
      D => \out\(0),
      Q => crc_t_3_3_fu_114(0),
      R => '0'
    );
\crc_t_3_3_fu_114_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_3_fu_1140,
      D => \out\(1),
      Q => crc_t_3_3_fu_114(1),
      R => '0'
    );
\crc_t_3_3_fu_114_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_3_fu_1140,
      D => \out\(2),
      Q => crc_t_3_3_fu_114(2),
      R => '0'
    );
\crc_t_3_3_fu_114_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_3_fu_1140,
      D => \out\(3),
      Q => crc_t_3_3_fu_114(3),
      R => '0'
    );
\crc_t_3_3_fu_114_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_3_fu_1140,
      D => \out\(4),
      Q => crc_t_3_3_fu_114(4),
      R => '0'
    );
\crc_t_3_3_fu_114_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_3_fu_1140,
      D => \out\(5),
      Q => crc_t_3_3_fu_114(5),
      R => '0'
    );
\crc_t_3_3_fu_114_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_3_fu_1140,
      D => \out\(6),
      Q => crc_t_3_3_fu_114(6),
      R => '0'
    );
\crc_t_3_3_fu_114_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_3_fu_1140,
      D => \out\(7),
      Q => crc_t_3_3_fu_114(7),
      R => '0'
    );
\crc_t_3_fu_102[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => byt2crc_1_empty_n,
      I1 => ap_CS_fsm_state7,
      I2 => \i1_0_reg_180_reg_n_8_[2]\,
      I3 => \i1_0_reg_180_reg_n_8_[1]\,
      I4 => \i1_0_reg_180_reg_n_8_[0]\,
      O => crc_t_3_fu_1020
    );
\crc_t_3_fu_102_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_fu_1020,
      D => \out\(0),
      Q => crc_t_3_fu_102(0),
      R => '0'
    );
\crc_t_3_fu_102_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_fu_1020,
      D => \out\(1),
      Q => crc_t_3_fu_102(1),
      R => '0'
    );
\crc_t_3_fu_102_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_fu_1020,
      D => \out\(2),
      Q => crc_t_3_fu_102(2),
      R => '0'
    );
\crc_t_3_fu_102_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_fu_1020,
      D => \out\(3),
      Q => crc_t_3_fu_102(3),
      R => '0'
    );
\crc_t_3_fu_102_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_fu_1020,
      D => \out\(4),
      Q => crc_t_3_fu_102(4),
      R => '0'
    );
\crc_t_3_fu_102_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_fu_1020,
      D => \out\(5),
      Q => crc_t_3_fu_102(5),
      R => '0'
    );
\crc_t_3_fu_102_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_fu_1020,
      D => \out\(6),
      Q => crc_t_3_fu_102(6),
      R => '0'
    );
\crc_t_3_fu_102_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => crc_t_3_fu_1020,
      D => \out\(7),
      Q => crc_t_3_fu_102(7),
      R => '0'
    );
\i1_0_reg_180[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000DF0F0F0"
    )
        port map (
      I0 => \i1_0_reg_180_reg_n_8_[2]\,
      I1 => \i1_0_reg_180_reg_n_8_[1]\,
      I2 => \i1_0_reg_180_reg_n_8_[0]\,
      I3 => ap_CS_fsm_state7,
      I4 => byt2crc_1_empty_n,
      I5 => ap_CS_fsm_state6,
      O => \i1_0_reg_180[0]_i_1_n_8\
    );
\i1_0_reg_180[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => byt2crc_1_empty_n,
      I1 => ap_CS_fsm_state7,
      I2 => \i1_0_reg_180_reg_n_8_[0]\,
      I3 => \i1_0_reg_180_reg_n_8_[1]\,
      I4 => ap_CS_fsm_state6,
      O => \i1_0_reg_180[1]_i_1_n_8\
    );
\i1_0_reg_180[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => byt2crc_1_empty_n,
      I1 => ap_CS_fsm_state7,
      I2 => \i1_0_reg_180_reg_n_8_[0]\,
      I3 => \i1_0_reg_180_reg_n_8_[1]\,
      I4 => \i1_0_reg_180_reg_n_8_[2]\,
      I5 => ap_CS_fsm_state6,
      O => \i1_0_reg_180[2]_i_1_n_8\
    );
\i1_0_reg_180_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \i1_0_reg_180[0]_i_1_n_8\,
      Q => \i1_0_reg_180_reg_n_8_[0]\,
      R => '0'
    );
\i1_0_reg_180_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \i1_0_reg_180[1]_i_1_n_8\,
      Q => \i1_0_reg_180_reg_n_8_[1]\,
      R => '0'
    );
\i1_0_reg_180_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \i1_0_reg_180[2]_i_1_n_8\,
      Q => \i1_0_reg_180_reg_n_8_[2]\,
      R => '0'
    );
\i2_0_reg_202[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i2_0_reg_202_reg_n_8_[0]\,
      O => din4(0)
    );
\i2_0_reg_202[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \i2_0_reg_202_reg_n_8_[1]\,
      I1 => \i2_0_reg_202_reg_n_8_[0]\,
      O => i_6_fu_557_p2(1)
    );
\i2_0_reg_202[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => ap_CS_fsm_state7,
      I1 => \i1_0_reg_180_reg_n_8_[0]\,
      I2 => \i1_0_reg_180_reg_n_8_[1]\,
      I3 => \i1_0_reg_180_reg_n_8_[2]\,
      O => ap_NS_fsm117_out
    );
\i2_0_reg_202[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB00"
    )
        port map (
      I0 => \i2_0_reg_202_reg_n_8_[0]\,
      I1 => \i2_0_reg_202_reg_n_8_[2]\,
      I2 => \i2_0_reg_202_reg_n_8_[1]\,
      I3 => ap_CS_fsm_state8,
      O => \i2_0_reg_202[2]_i_2_n_8\
    );
\i2_0_reg_202[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \i2_0_reg_202_reg_n_8_[2]\,
      I1 => \i2_0_reg_202_reg_n_8_[0]\,
      I2 => \i2_0_reg_202_reg_n_8_[1]\,
      O => i_6_fu_557_p2(2)
    );
\i2_0_reg_202_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => din4(0),
      Q => \i2_0_reg_202_reg_n_8_[0]\,
      R => ap_NS_fsm117_out
    );
\i2_0_reg_202_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => i_6_fu_557_p2(1),
      Q => \i2_0_reg_202_reg_n_8_[1]\,
      R => ap_NS_fsm117_out
    );
\i2_0_reg_202_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \i2_0_reg_202[2]_i_2_n_8\,
      D => i_6_fu_557_p2(2),
      Q => \i2_0_reg_202_reg_n_8_[2]\,
      R => ap_NS_fsm117_out
    );
\i3_0_reg_213[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i3_0_reg_213_reg(0),
      O => i_7_fu_623_p2(0)
    );
\i3_0_reg_213[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i3_0_reg_213_reg(0),
      I1 => i3_0_reg_213_reg(1),
      O => i_7_fu_623_p2(1)
    );
\i3_0_reg_213[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => i3_0_reg_213_reg(2),
      I1 => i3_0_reg_213_reg(1),
      I2 => i3_0_reg_213_reg(0),
      O => i_7_fu_623_p2(2)
    );
\i3_0_reg_213[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => i3_0_reg_213_reg(3),
      I1 => i3_0_reg_213_reg(0),
      I2 => i3_0_reg_213_reg(1),
      I3 => i3_0_reg_213_reg(2),
      O => i_7_fu_623_p2(3)
    );
\i3_0_reg_213[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => i3_0_reg_213_reg(4),
      I1 => i3_0_reg_213_reg(2),
      I2 => i3_0_reg_213_reg(1),
      I3 => i3_0_reg_213_reg(0),
      I4 => i3_0_reg_213_reg(3),
      O => i_7_fu_623_p2(4)
    );
\i3_0_reg_213[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => i3_0_reg_213_reg(5),
      I1 => i3_0_reg_213_reg(3),
      I2 => i3_0_reg_213_reg(0),
      I3 => i3_0_reg_213_reg(1),
      I4 => i3_0_reg_213_reg(2),
      I5 => i3_0_reg_213_reg(4),
      O => i_7_fu_623_p2(5)
    );
\i3_0_reg_213[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => icmp_ln63_fu_611_p2,
      I1 => ap_CS_fsm_state8,
      I2 => \i2_0_reg_202_reg_n_8_[1]\,
      I3 => \i2_0_reg_202_reg_n_8_[2]\,
      I4 => \i2_0_reg_202_reg_n_8_[0]\,
      O => ap_NS_fsm115_out
    );
\i3_0_reg_213[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FB000000"
    )
        port map (
      I0 => crc2fra_1_full_n,
      I1 => ap_enable_reg_pp1_iter1_reg_n_8,
      I2 => icmp_ln68_reg_711,
      I3 => ap_CS_fsm_pp1_stage0,
      I4 => ap_enable_reg_pp1_iter0,
      I5 => icmp_ln68_fu_617_p2,
      O => i3_0_reg_2130
    );
\i3_0_reg_213[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => i3_0_reg_213_reg(6),
      I1 => \i3_0_reg_213[6]_i_4_n_8\,
      I2 => i3_0_reg_213_reg(5),
      O => i_7_fu_623_p2(6)
    );
\i3_0_reg_213[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => i3_0_reg_213_reg(4),
      I1 => i3_0_reg_213_reg(2),
      I2 => i3_0_reg_213_reg(1),
      I3 => i3_0_reg_213_reg(0),
      I4 => i3_0_reg_213_reg(3),
      O => \i3_0_reg_213[6]_i_4_n_8\
    );
\i3_0_reg_213_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i3_0_reg_2130,
      D => i_7_fu_623_p2(0),
      Q => i3_0_reg_213_reg(0),
      R => ap_NS_fsm115_out
    );
\i3_0_reg_213_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i3_0_reg_2130,
      D => i_7_fu_623_p2(1),
      Q => i3_0_reg_213_reg(1),
      R => ap_NS_fsm115_out
    );
\i3_0_reg_213_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i3_0_reg_2130,
      D => i_7_fu_623_p2(2),
      Q => i3_0_reg_213_reg(2),
      R => ap_NS_fsm115_out
    );
\i3_0_reg_213_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i3_0_reg_2130,
      D => i_7_fu_623_p2(3),
      Q => i3_0_reg_213_reg(3),
      R => ap_NS_fsm115_out
    );
\i3_0_reg_213_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i3_0_reg_2130,
      D => i_7_fu_623_p2(4),
      Q => i3_0_reg_213_reg(4),
      R => ap_NS_fsm115_out
    );
\i3_0_reg_213_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i3_0_reg_2130,
      D => i_7_fu_623_p2(5),
      Q => i3_0_reg_213_reg(5),
      R => ap_NS_fsm115_out
    );
\i3_0_reg_213_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i3_0_reg_2130,
      D => i_7_fu_623_p2(6),
      Q => i3_0_reg_213_reg(6),
      R => ap_NS_fsm115_out
    );
\i_0_reg_168[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => byt2crc_1_empty_n,
      I2 => ap_CS_fsm_pp0_stage0,
      I3 => ap_enable_reg_pp0_iter1_reg_n_8,
      I4 => \icmp_ln41_reg_658_reg_n_8_[0]\,
      O => i_0_reg_168
    );
\i_0_reg_168_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \^e\(0),
      D => i_5_reg_662_reg(0),
      Q => \i_0_reg_168_reg_n_8_[0]\,
      R => i_0_reg_168
    );
\i_0_reg_168_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \^e\(0),
      D => i_5_reg_662_reg(1),
      Q => \i_0_reg_168_reg_n_8_[1]\,
      R => i_0_reg_168
    );
\i_0_reg_168_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \^e\(0),
      D => i_5_reg_662_reg(2),
      Q => \i_0_reg_168_reg_n_8_[2]\,
      R => i_0_reg_168
    );
\i_0_reg_168_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \^e\(0),
      D => i_5_reg_662_reg(3),
      Q => \i_0_reg_168_reg_n_8_[3]\,
      R => i_0_reg_168
    );
\i_0_reg_168_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \^e\(0),
      D => i_5_reg_662_reg(4),
      Q => \i_0_reg_168_reg_n_8_[4]\,
      R => i_0_reg_168
    );
\i_0_reg_168_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \^e\(0),
      D => i_5_reg_662_reg(5),
      Q => \i_0_reg_168_reg_n_8_[5]\,
      R => i_0_reg_168
    );
\i_0_reg_168_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \^e\(0),
      D => i_5_reg_662_reg(6),
      Q => \i_0_reg_168_reg_n_8_[6]\,
      R => i_0_reg_168
    );
\i_5_reg_662[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4575"
    )
        port map (
      I0 => \i_0_reg_168_reg_n_8_[0]\,
      I1 => \icmp_ln41_reg_658_reg_n_8_[0]\,
      I2 => ap_enable_reg_pp0_iter1_reg_n_8,
      I3 => i_5_reg_662_reg(0),
      O => i_5_fu_230_p2(0)
    );
\i_5_reg_662[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335ACC5A"
    )
        port map (
      I0 => \i_0_reg_168_reg_n_8_[0]\,
      I1 => i_5_reg_662_reg(0),
      I2 => \i_0_reg_168_reg_n_8_[1]\,
      I3 => \i_5_reg_662[6]_i_4_n_8\,
      I4 => i_5_reg_662_reg(1),
      O => i_5_fu_230_p2(1)
    );
\i_5_reg_662[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C553CAACCAACCAA"
    )
        port map (
      I0 => \i_0_reg_168_reg_n_8_[2]\,
      I1 => i_5_reg_662_reg(2),
      I2 => i_5_reg_662_reg(1),
      I3 => \i_5_reg_662[6]_i_4_n_8\,
      I4 => \i_0_reg_168_reg_n_8_[1]\,
      I5 => \i_5_reg_662[2]_i_2_n_8\,
      O => i_5_fu_230_p2(2)
    );
\i_5_reg_662[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => i_5_reg_662_reg(0),
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => ap_enable_reg_pp0_iter1_reg_n_8,
      I3 => \icmp_ln41_reg_658_reg_n_8_[0]\,
      I4 => \i_0_reg_168_reg_n_8_[0]\,
      O => \i_5_reg_662[2]_i_2_n_8\
    );
\i_5_reg_662[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4575BA8A"
    )
        port map (
      I0 => \i_0_reg_168_reg_n_8_[3]\,
      I1 => \icmp_ln41_reg_658_reg_n_8_[0]\,
      I2 => ap_enable_reg_pp0_iter1_reg_n_8,
      I3 => i_5_reg_662_reg(3),
      I4 => \i_5_reg_662[4]_i_2_n_8\,
      O => i_5_fu_230_p2(3)
    );
\i_5_reg_662[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CCC5A5A3CCCAAAA"
    )
        port map (
      I0 => \i_0_reg_168_reg_n_8_[4]\,
      I1 => i_5_reg_662_reg(4),
      I2 => \i_5_reg_662[4]_i_2_n_8\,
      I3 => i_5_reg_662_reg(3),
      I4 => \i_5_reg_662[6]_i_4_n_8\,
      I5 => \i_0_reg_168_reg_n_8_[3]\,
      O => i_5_fu_230_p2(4)
    );
\i_5_reg_662[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0AAC00000000000"
    )
        port map (
      I0 => \i_0_reg_168_reg_n_8_[2]\,
      I1 => i_5_reg_662_reg(2),
      I2 => i_5_reg_662_reg(1),
      I3 => \i_5_reg_662[6]_i_4_n_8\,
      I4 => \i_0_reg_168_reg_n_8_[1]\,
      I5 => \i_5_reg_662[2]_i_2_n_8\,
      O => \i_5_reg_662[4]_i_2_n_8\
    );
\i_5_reg_662[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4575BA8A"
    )
        port map (
      I0 => \i_0_reg_168_reg_n_8_[5]\,
      I1 => \icmp_ln41_reg_658_reg_n_8_[0]\,
      I2 => ap_enable_reg_pp0_iter1_reg_n_8,
      I3 => i_5_reg_662_reg(5),
      I4 => \i_5_reg_662[6]_i_3_n_8\,
      O => i_5_fu_230_p2(5)
    );
\i_5_reg_662[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA8A0000"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0,
      I1 => byt2crc_1_empty_n,
      I2 => ap_enable_reg_pp0_iter1_reg_n_8,
      I3 => \icmp_ln41_reg_658_reg_n_8_[0]\,
      I4 => ap_CS_fsm_pp0_stage0,
      O => i_5_reg_6620
    );
\i_5_reg_662[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CCC5A5A3CCCAAAA"
    )
        port map (
      I0 => \i_0_reg_168_reg_n_8_[6]\,
      I1 => i_5_reg_662_reg(6),
      I2 => \i_5_reg_662[6]_i_3_n_8\,
      I3 => i_5_reg_662_reg(5),
      I4 => \i_5_reg_662[6]_i_4_n_8\,
      I5 => \i_0_reg_168_reg_n_8_[5]\,
      O => i_5_fu_230_p2(6)
    );
\i_5_reg_662[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000A0A0C0000000"
    )
        port map (
      I0 => \i_0_reg_168_reg_n_8_[4]\,
      I1 => i_5_reg_662_reg(4),
      I2 => \i_5_reg_662[4]_i_2_n_8\,
      I3 => i_5_reg_662_reg(3),
      I4 => \i_5_reg_662[6]_i_4_n_8\,
      I5 => \i_0_reg_168_reg_n_8_[3]\,
      O => \i_5_reg_662[6]_i_3_n_8\
    );
\i_5_reg_662[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage0,
      I1 => ap_enable_reg_pp0_iter1_reg_n_8,
      I2 => \icmp_ln41_reg_658_reg_n_8_[0]\,
      O => \i_5_reg_662[6]_i_4_n_8\
    );
\i_5_reg_662_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i_5_reg_6620,
      D => i_5_fu_230_p2(0),
      Q => i_5_reg_662_reg(0),
      R => '0'
    );
\i_5_reg_662_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i_5_reg_6620,
      D => i_5_fu_230_p2(1),
      Q => i_5_reg_662_reg(1),
      R => '0'
    );
\i_5_reg_662_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i_5_reg_6620,
      D => i_5_fu_230_p2(2),
      Q => i_5_reg_662_reg(2),
      R => '0'
    );
\i_5_reg_662_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i_5_reg_6620,
      D => i_5_fu_230_p2(3),
      Q => i_5_reg_662_reg(3),
      R => '0'
    );
\i_5_reg_662_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i_5_reg_6620,
      D => i_5_fu_230_p2(4),
      Q => i_5_reg_662_reg(4),
      R => '0'
    );
\i_5_reg_662_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i_5_reg_6620,
      D => i_5_fu_230_p2(5),
      Q => i_5_reg_662_reg(5),
      R => '0'
    );
\i_5_reg_662_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i_5_reg_6620,
      D => i_5_fu_230_p2(6),
      Q => i_5_reg_662_reg(6),
      R => '0'
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => crc_0_reg_191(21),
      I1 => R_0_reg_156(21),
      I2 => crc_0_reg_191(22),
      I3 => R_0_reg_156(22),
      I4 => R_0_reg_156(23),
      I5 => crc_0_reg_191(23),
      O => \i__carry__0_i_1_n_8\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => R_0_reg_156(20),
      I1 => crc_0_reg_191(20),
      I2 => crc_0_reg_191(18),
      I3 => R_0_reg_156(18),
      I4 => crc_0_reg_191(19),
      I5 => R_0_reg_156(19),
      O => \i__carry__0_i_2_n_8\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => crc_0_reg_191(16),
      I1 => R_0_reg_156(16),
      I2 => crc_0_reg_191(15),
      I3 => R_0_reg_156(15),
      I4 => R_0_reg_156(17),
      I5 => crc_0_reg_191(17),
      O => \i__carry__0_i_3_n_8\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => R_0_reg_156(14),
      I1 => crc_0_reg_191(14),
      I2 => crc_0_reg_191(13),
      I3 => R_0_reg_156(13),
      I4 => crc_0_reg_191(12),
      I5 => R_0_reg_156(12),
      O => \i__carry__0_i_4_n_8\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => R_0_reg_156(31),
      I1 => crc_0_reg_191(31),
      I2 => R_0_reg_156(30),
      I3 => crc_0_reg_191(30),
      O => \i__carry__1_i_1_n_8\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => crc_0_reg_191(27),
      I1 => R_0_reg_156(27),
      I2 => crc_0_reg_191(28),
      I3 => R_0_reg_156(28),
      I4 => R_0_reg_156(29),
      I5 => crc_0_reg_191(29),
      O => \i__carry__1_i_2_n_8\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => crc_0_reg_191(24),
      I1 => R_0_reg_156(24),
      I2 => crc_0_reg_191(25),
      I3 => R_0_reg_156(25),
      I4 => R_0_reg_156(26),
      I5 => crc_0_reg_191(26),
      O => \i__carry__1_i_3_n_8\
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => R_0_reg_156(11),
      I1 => crc_0_reg_191(11),
      I2 => crc_0_reg_191(9),
      I3 => R_0_reg_156(9),
      I4 => crc_0_reg_191(10),
      I5 => R_0_reg_156(10),
      O => \i__carry_i_1_n_8\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => R_0_reg_156(8),
      I1 => crc_0_reg_191(8),
      I2 => crc_0_reg_191(6),
      I3 => R_0_reg_156(6),
      I4 => crc_0_reg_191(7),
      I5 => R_0_reg_156(7),
      O => \i__carry_i_2_n_8\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => R_0_reg_156(5),
      I1 => crc_0_reg_191(5),
      I2 => crc_0_reg_191(3),
      I3 => R_0_reg_156(3),
      I4 => crc_0_reg_191(4),
      I5 => R_0_reg_156(4),
      O => \i__carry_i_3_n_8\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => crc_0_reg_191(2),
      I1 => R_0_reg_156(2),
      I2 => crc_0_reg_191(0),
      I3 => R_0_reg_156(0),
      I4 => R_0_reg_156(1),
      I5 => crc_0_reg_191(1),
      O => \i__carry_i_4_n_8\
    );
ibuffer_V_U: entity work.bd_0_hls_inst_0_CRCCheck_do_gen_ibkb
     port map (
      Q(1) => ap_CS_fsm_pp1_stage0,
      Q(0) => ap_CS_fsm_pp0_stage0,
      ap_enable_reg_pp1_iter0 => ap_enable_reg_pp1_iter0,
      byt2crc_1_empty_n => byt2crc_1_empty_n,
      clock => clock,
      crc2fra_1_full_n => crc2fra_1_full_n,
      \i3_0_reg_213_reg[4]\ => \i3_0_reg_213_reg[6]_0\(0),
      \i3_0_reg_213_reg[5]\ => \i3_0_reg_213_reg[6]_0\(1),
      \i3_0_reg_213_reg[6]\ => \i3_0_reg_213_reg[6]_0\(2),
      \i_0_reg_168_reg[6]\ => ap_enable_reg_pp0_iter1_reg_n_8,
      \i_0_reg_168_reg[6]_0\ => \icmp_ln41_reg_658_reg_n_8_[0]\,
      icmp_ln41_reg_6580 => icmp_ln41_reg_6580,
      \icmp_ln41_reg_658_reg[0]\ => \^e\(0),
      icmp_ln68_reg_711 => icmp_ln68_reg_711,
      \out\(7 downto 0) => \out\(7 downto 0),
      \q0[7]_i_5\ => \q0[7]_i_5\,
      \q0_reg[0]\ => ap_enable_reg_pp1_iter1_reg_n_8,
      \q0_reg[0]_0\(6 downto 0) => i3_0_reg_213_reg(6 downto 0),
      \q0_reg[0]_1\(6) => \i_0_reg_168_reg_n_8_[6]\,
      \q0_reg[0]_1\(5) => \i_0_reg_168_reg_n_8_[5]\,
      \q0_reg[0]_1\(4) => \i_0_reg_168_reg_n_8_[4]\,
      \q0_reg[0]_1\(3) => \i_0_reg_168_reg_n_8_[3]\,
      \q0_reg[0]_1\(2) => \i_0_reg_168_reg_n_8_[2]\,
      \q0_reg[0]_1\(1) => \i_0_reg_168_reg_n_8_[1]\,
      \q0_reg[0]_1\(0) => \i_0_reg_168_reg_n_8_[0]\,
      \q0_reg[7]\(7 downto 0) => Q(7 downto 0)
    );
\icmp_ln41_reg_658[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8B0B8"
    )
        port map (
      I0 => icmp_ln41_fu_224_p2,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => \icmp_ln41_reg_658_reg_n_8_[0]\,
      I3 => ap_enable_reg_pp0_iter1_reg_n_8,
      I4 => byt2crc_1_empty_n,
      O => \icmp_ln41_reg_658[0]_i_1_n_8\
    );
\icmp_ln41_reg_658_pp0_iter1_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDFD8888"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage0,
      I1 => \icmp_ln41_reg_658_reg_n_8_[0]\,
      I2 => ap_enable_reg_pp0_iter1_reg_n_8,
      I3 => byt2crc_1_empty_n,
      I4 => icmp_ln41_reg_658_pp0_iter1_reg,
      O => \icmp_ln41_reg_658_pp0_iter1_reg[0]_i_1_n_8\
    );
\icmp_ln41_reg_658_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \icmp_ln41_reg_658_pp0_iter1_reg[0]_i_1_n_8\,
      Q => icmp_ln41_reg_658_pp0_iter1_reg,
      R => '0'
    );
\icmp_ln41_reg_658_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \icmp_ln41_reg_658[0]_i_1_n_8\,
      Q => \icmp_ln41_reg_658_reg_n_8_[0]\,
      R => '0'
    );
\icmp_ln68_reg_711[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8B0B8"
    )
        port map (
      I0 => icmp_ln68_fu_617_p2,
      I1 => ap_CS_fsm_pp1_stage0,
      I2 => icmp_ln68_reg_711,
      I3 => ap_enable_reg_pp1_iter1_reg_n_8,
      I4 => crc2fra_1_full_n,
      O => \icmp_ln68_reg_711[0]_i_1_n_8\
    );
\icmp_ln68_reg_711_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \icmp_ln68_reg_711[0]_i_1_n_8\,
      Q => icmp_ln68_reg_711,
      R => '0'
    );
\internal_empty_n_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2022222222222222"
    )
        port map (
      I0 => \mOutPtr_reg[5]\(0),
      I1 => \^i1_0_reg_180_reg[2]_0\,
      I2 => \icmp_ln41_reg_658_reg_n_8_[0]\,
      I3 => ap_enable_reg_pp0_iter1_reg_n_8,
      I4 => ap_CS_fsm_pp0_stage0,
      I5 => byt2crc_1_empty_n,
      O => internal_empty_n3_out
    );
\lshr_ln49_3_reg_672[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66A56666995A9999"
    )
        port map (
      I0 => \lshr_ln49_3_reg_672[22]_i_2_n_8\,
      I1 => R_0_reg_156(4),
      I2 => \lshr_ln49_3_reg_672[0]_i_2_n_8\,
      I3 => icmp_ln41_reg_658_pp0_iter1_reg,
      I4 => ap_enable_reg_pp0_iter2_reg_n_8,
      I5 => \out\(4),
      O => \lshr_ln49_3_reg_672[0]_i_1_n_8\
    );
\lshr_ln49_3_reg_672[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(2),
      I1 => lshr_ln49_3_reg_672(1),
      I2 => lshr_ln49_3_reg_672(8),
      I3 => lshr_ln49_3_reg_672(3),
      O => \lshr_ln49_3_reg_672[0]_i_2_n_8\
    );
\lshr_ln49_3_reg_672[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA966955559669"
    )
        port map (
      I0 => \lshr_ln49_3_reg_672[19]_i_2_n_8\,
      I1 => lshr_ln49_3_reg_672(18),
      I2 => select_ln49_2_reg_667,
      I3 => lshr_ln49_3_reg_672(0),
      I4 => \select_ln49_2_reg_667[0]_i_3_n_8\,
      I5 => R_0_reg_156(14),
      O => p_0_in(10)
    );
\lshr_ln49_3_reg_672[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A65656A959A9A95"
    )
        port map (
      I0 => \lshr_ln49_3_reg_672[30]_i_2_n_8\,
      I1 => R_0_reg_156(15),
      I2 => \select_ln49_2_reg_667[0]_i_3_n_8\,
      I3 => lshr_ln49_3_reg_672(19),
      I4 => \select_ln49_2_reg_667[0]_i_5_n_8\,
      I5 => p_0_in(29),
      O => \lshr_ln49_3_reg_672[11]_i_1_n_8\
    );
\lshr_ln49_3_reg_672[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA966955559669"
    )
        port map (
      I0 => \lshr_ln49_3_reg_672[30]_i_2_n_8\,
      I1 => lshr_ln49_3_reg_672(20),
      I2 => select_ln49_2_reg_667,
      I3 => \lshr_ln49_3_reg_672[12]_i_2_n_8\,
      I4 => \select_ln49_2_reg_667[0]_i_3_n_8\,
      I5 => R_0_reg_156(16),
      O => \lshr_ln49_3_reg_672[12]_i_1_n_8\
    );
\lshr_ln49_3_reg_672[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(1),
      I1 => lshr_ln49_3_reg_672(2),
      O => \lshr_ln49_3_reg_672[12]_i_2_n_8\
    );
\lshr_ln49_3_reg_672[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAC33C3CC3"
    )
        port map (
      I0 => R_0_reg_156(17),
      I1 => \select_ln49_2_reg_667[0]_i_4_n_8\,
      I2 => lshr_ln49_3_reg_672(0),
      I3 => select_ln49_2_reg_667,
      I4 => lshr_ln49_3_reg_672(21),
      I5 => \select_ln49_2_reg_667[0]_i_3_n_8\,
      O => p_0_in(13)
    );
\lshr_ln49_3_reg_672[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AA5559"
    )
        port map (
      I0 => \lshr_ln49_3_reg_672[22]_i_2_n_8\,
      I1 => ap_enable_reg_pp0_iter2_reg_n_8,
      I2 => icmp_ln41_reg_658_pp0_iter1_reg,
      I3 => \lshr_ln49_3_reg_672[14]_i_2_n_8\,
      I4 => R_0_reg_156(18),
      O => p_0_in(14)
    );
\lshr_ln49_3_reg_672[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(3),
      I1 => lshr_ln49_3_reg_672(22),
      I2 => lshr_ln49_3_reg_672(1),
      I3 => lshr_ln49_3_reg_672(0),
      O => \lshr_ln49_3_reg_672[14]_i_2_n_8\
    );
\lshr_ln49_3_reg_672[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AA5559"
    )
        port map (
      I0 => \lshr_ln49_3_reg_672[20]_i_2_n_8\,
      I1 => ap_enable_reg_pp0_iter2_reg_n_8,
      I2 => icmp_ln41_reg_658_pp0_iter1_reg,
      I3 => \lshr_ln49_3_reg_672[15]_i_2_n_8\,
      I4 => R_0_reg_156(19),
      O => p_0_in(15)
    );
\lshr_ln49_3_reg_672[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(2),
      I1 => lshr_ln49_3_reg_672(1),
      I2 => lshr_ln49_3_reg_672(23),
      I3 => select_ln49_2_reg_667,
      I4 => lshr_ln49_3_reg_672(0),
      O => \lshr_ln49_3_reg_672[15]_i_2_n_8\
    );
\lshr_ln49_3_reg_672[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A66656695999A99"
    )
        port map (
      I0 => \lshr_ln49_3_reg_672[30]_i_2_n_8\,
      I1 => R_0_reg_156(20),
      I2 => icmp_ln41_reg_658_pp0_iter1_reg,
      I3 => ap_enable_reg_pp0_iter2_reg_n_8,
      I4 => \lshr_ln49_3_reg_672[16]_i_2_n_8\,
      I5 => p_0_in(29),
      O => p_0_in(16)
    );
\lshr_ln49_3_reg_672[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(3),
      I1 => select_ln49_2_reg_667,
      I2 => lshr_ln49_3_reg_672(2),
      I3 => lshr_ln49_3_reg_672(0),
      I4 => lshr_ln49_3_reg_672(1),
      I5 => lshr_ln49_3_reg_672(24),
      O => \lshr_ln49_3_reg_672[16]_i_2_n_8\
    );
\lshr_ln49_3_reg_672[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"995A999966A56666"
    )
        port map (
      I0 => \lshr_ln49_3_reg_672[30]_i_2_n_8\,
      I1 => R_0_reg_156(21),
      I2 => \lshr_ln49_3_reg_672[17]_i_2_n_8\,
      I3 => icmp_ln41_reg_658_pp0_iter1_reg,
      I4 => ap_enable_reg_pp0_iter2_reg_n_8,
      I5 => \lshr_ln49_3_reg_672[22]_i_2_n_8\,
      O => p_0_in(17)
    );
\lshr_ln49_3_reg_672[17]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(2),
      I1 => lshr_ln49_3_reg_672(1),
      I2 => lshr_ln49_3_reg_672(25),
      I3 => lshr_ln49_3_reg_672(3),
      O => \lshr_ln49_3_reg_672[17]_i_2_n_8\
    );
\lshr_ln49_3_reg_672[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AA9A99A56656556"
    )
        port map (
      I0 => \lshr_ln49_3_reg_672[20]_i_2_n_8\,
      I1 => \select_ln49_2_reg_667[0]_i_3_n_8\,
      I2 => lshr_ln49_3_reg_672(0),
      I3 => lshr_ln49_3_reg_672(26),
      I4 => \select_ln49_2_reg_667[0]_i_4_n_8\,
      I5 => R_0_reg_156(22),
      O => p_0_in(18)
    );
\lshr_ln49_3_reg_672[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AA9A99A56656556"
    )
        port map (
      I0 => \lshr_ln49_3_reg_672[19]_i_2_n_8\,
      I1 => \select_ln49_2_reg_667[0]_i_3_n_8\,
      I2 => lshr_ln49_3_reg_672(1),
      I3 => lshr_ln49_3_reg_672(27),
      I4 => \lshr_ln49_3_reg_672[21]_i_2_n_8\,
      I5 => R_0_reg_156(23),
      O => p_0_in(19)
    );
\lshr_ln49_3_reg_672[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \lshr_ln49_3_reg_672[30]_i_2_n_8\,
      I1 => \lshr_ln49_3_reg_672[20]_i_2_n_8\,
      O => \lshr_ln49_3_reg_672[19]_i_2_n_8\
    );
\lshr_ln49_3_reg_672[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A66656695999A99"
    )
        port map (
      I0 => \lshr_ln49_3_reg_672[20]_i_2_n_8\,
      I1 => R_0_reg_156(5),
      I2 => icmp_ln41_reg_658_pp0_iter1_reg,
      I3 => ap_enable_reg_pp0_iter2_reg_n_8,
      I4 => \lshr_ln49_3_reg_672[1]_i_2_n_8\,
      I5 => \out\(5),
      O => p_0_in(1)
    );
\lshr_ln49_3_reg_672[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(3),
      I1 => lshr_ln49_3_reg_672(2),
      I2 => lshr_ln49_3_reg_672(0),
      I3 => lshr_ln49_3_reg_672(9),
      O => \lshr_ln49_3_reg_672[1]_i_2_n_8\
    );
\lshr_ln49_3_reg_672[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F60609F909F9F606"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(28),
      I1 => lshr_ln49_3_reg_672(2),
      I2 => \select_ln49_2_reg_667[0]_i_3_n_8\,
      I3 => R_0_reg_156(24),
      I4 => \lshr_ln49_3_reg_672[20]_i_2_n_8\,
      I5 => \lshr_ln49_3_reg_672[30]_i_2_n_8\,
      O => \lshr_ln49_3_reg_672[20]_i_1_n_8\
    );
\lshr_ln49_3_reg_672[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in(29),
      I1 => \lshr_ln49_3_reg_672[22]_i_2_n_8\,
      O => \lshr_ln49_3_reg_672[20]_i_2_n_8\
    );
\lshr_ln49_3_reg_672[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66665AA59999A55A"
    )
        port map (
      I0 => \lshr_ln49_3_reg_672[30]_i_2_n_8\,
      I1 => R_0_reg_156(25),
      I2 => lshr_ln49_3_reg_672(29),
      I3 => \lshr_ln49_3_reg_672[21]_i_2_n_8\,
      I4 => \select_ln49_2_reg_667[0]_i_3_n_8\,
      I5 => p_0_in(29),
      O => p_0_in(21)
    );
\lshr_ln49_3_reg_672[21]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(3),
      I1 => select_ln49_2_reg_667,
      O => \lshr_ln49_3_reg_672[21]_i_2_n_8\
    );
\lshr_ln49_3_reg_672[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A99959965666A66"
    )
        port map (
      I0 => \lshr_ln49_3_reg_672[30]_i_2_n_8\,
      I1 => R_0_reg_156(26),
      I2 => icmp_ln41_reg_658_pp0_iter1_reg,
      I3 => ap_enable_reg_pp0_iter2_reg_n_8,
      I4 => lshr_ln49_3_reg_672(30),
      I5 => \lshr_ln49_3_reg_672[22]_i_2_n_8\,
      O => p_0_in(22)
    );
\lshr_ln49_3_reg_672[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A99A9AA965565665"
    )
        port map (
      I0 => \out\(0),
      I1 => \select_ln49_2_reg_667[0]_i_3_n_8\,
      I2 => lshr_ln49_3_reg_672(4),
      I3 => select_ln49_2_reg_667,
      I4 => lshr_ln49_3_reg_672(0),
      I5 => R_0_reg_156(0),
      O => \lshr_ln49_3_reg_672[22]_i_2_n_8\
    );
\lshr_ln49_3_reg_672[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5565AA6A"
    )
        port map (
      I0 => p_0_in(29),
      I1 => select_ln49_2_reg_667,
      I2 => ap_enable_reg_pp0_iter2_reg_n_8,
      I3 => icmp_ln41_reg_658_pp0_iter1_reg,
      I4 => R_0_reg_156(27),
      O => p_0_in(23)
    );
\lshr_ln49_3_reg_672[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA9A5595"
    )
        port map (
      I0 => \lshr_ln49_3_reg_672[30]_i_2_n_8\,
      I1 => lshr_ln49_3_reg_672(0),
      I2 => ap_enable_reg_pp0_iter2_reg_n_8,
      I3 => icmp_ln41_reg_658_pp0_iter1_reg,
      I4 => R_0_reg_156(28),
      O => \lshr_ln49_3_reg_672[24]_i_1_n_8\
    );
\lshr_ln49_3_reg_672[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => R_0_reg_156(29),
      I1 => icmp_ln41_reg_658_pp0_iter1_reg,
      I2 => ap_enable_reg_pp0_iter2_reg_n_8,
      I3 => lshr_ln49_3_reg_672(1),
      O => p_0_in(25)
    );
\lshr_ln49_3_reg_672[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => R_0_reg_156(30),
      I1 => icmp_ln41_reg_658_pp0_iter1_reg,
      I2 => ap_enable_reg_pp0_iter2_reg_n_8,
      I3 => lshr_ln49_3_reg_672(2),
      O => p_0_in(26)
    );
\lshr_ln49_3_reg_672[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA3CAAAA"
    )
        port map (
      I0 => R_0_reg_156(31),
      I1 => lshr_ln49_3_reg_672(3),
      I2 => select_ln49_2_reg_667,
      I3 => icmp_ln41_reg_658_pp0_iter1_reg,
      I4 => ap_enable_reg_pp0_iter2_reg_n_8,
      O => p_0_in(27)
    );
\lshr_ln49_3_reg_672[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55553CC3AAAAC33C"
    )
        port map (
      I0 => R_0_reg_156(0),
      I1 => lshr_ln49_3_reg_672(0),
      I2 => select_ln49_2_reg_667,
      I3 => lshr_ln49_3_reg_672(4),
      I4 => \select_ln49_2_reg_667[0]_i_3_n_8\,
      I5 => \out\(0),
      O => p_0_in(28)
    );
\lshr_ln49_3_reg_672[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"566565569AA9A99A"
    )
        port map (
      I0 => \out\(1),
      I1 => \select_ln49_2_reg_667[0]_i_3_n_8\,
      I2 => lshr_ln49_3_reg_672(5),
      I3 => lshr_ln49_3_reg_672(1),
      I4 => \lshr_ln49_3_reg_672[29]_i_2_n_8\,
      I5 => R_0_reg_156(1),
      O => p_0_in(29)
    );
\lshr_ln49_3_reg_672[29]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(0),
      I1 => select_ln49_2_reg_667,
      O => \lshr_ln49_3_reg_672[29]_i_2_n_8\
    );
\lshr_ln49_3_reg_672[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966999696996669"
    )
        port map (
      I0 => \lshr_ln49_3_reg_672[20]_i_2_n_8\,
      I1 => \out\(6),
      I2 => \select_ln49_2_reg_667[0]_i_3_n_8\,
      I3 => \lshr_ln49_3_reg_672[2]_i_2_n_8\,
      I4 => R_0_reg_156(6),
      I5 => \lshr_ln49_3_reg_672[30]_i_2_n_8\,
      O => \lshr_ln49_3_reg_672[2]_i_1_n_8\
    );
\lshr_ln49_3_reg_672[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => select_ln49_2_reg_667,
      I1 => lshr_ln49_3_reg_672(3),
      I2 => lshr_ln49_3_reg_672(0),
      I3 => lshr_ln49_3_reg_672(1),
      I4 => lshr_ln49_3_reg_672(10),
      O => \lshr_ln49_3_reg_672[2]_i_2_n_8\
    );
\lshr_ln49_3_reg_672[30]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lshr_ln49_3_reg_672[30]_i_2_n_8\,
      O => \lshr_ln49_3_reg_672[30]_i_1_n_8\
    );
\lshr_ln49_3_reg_672[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AA5559"
    )
        port map (
      I0 => \out\(2),
      I1 => ap_enable_reg_pp0_iter2_reg_n_8,
      I2 => icmp_ln41_reg_658_pp0_iter1_reg,
      I3 => \lshr_ln49_3_reg_672[30]_i_3_n_8\,
      I4 => R_0_reg_156(2),
      O => \lshr_ln49_3_reg_672[30]_i_2_n_8\
    );
\lshr_ln49_3_reg_672[30]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(6),
      I1 => select_ln49_2_reg_667,
      I2 => lshr_ln49_3_reg_672(0),
      I3 => lshr_ln49_3_reg_672(2),
      I4 => lshr_ln49_3_reg_672(1),
      O => \lshr_ln49_3_reg_672[30]_i_3_n_8\
    );
\lshr_ln49_3_reg_672[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \lshr_ln49_3_reg_672[20]_i_2_n_8\,
      I1 => \lshr_ln49_3_reg_672[30]_i_2_n_8\,
      I2 => R_0_reg_156(7),
      I3 => \select_ln49_2_reg_667[0]_i_3_n_8\,
      I4 => \R_0_reg_156[7]_i_1_n_8\,
      I5 => \out\(7),
      O => \lshr_ln49_3_reg_672[3]_i_1_n_8\
    );
\lshr_ln49_3_reg_672[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A66656695999A99"
    )
        port map (
      I0 => \lshr_ln49_3_reg_672[30]_i_2_n_8\,
      I1 => R_0_reg_156(8),
      I2 => icmp_ln41_reg_658_pp0_iter1_reg,
      I3 => ap_enable_reg_pp0_iter2_reg_n_8,
      I4 => \lshr_ln49_3_reg_672[4]_i_2_n_8\,
      I5 => p_0_in(29),
      O => p_0_in(4)
    );
\lshr_ln49_3_reg_672[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(3),
      I1 => lshr_ln49_3_reg_672(2),
      I2 => lshr_ln49_3_reg_672(0),
      I3 => lshr_ln49_3_reg_672(12),
      O => \lshr_ln49_3_reg_672[4]_i_2_n_8\
    );
\lshr_ln49_3_reg_672[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"995A999966A56666"
    )
        port map (
      I0 => \lshr_ln49_3_reg_672[30]_i_2_n_8\,
      I1 => R_0_reg_156(9),
      I2 => \lshr_ln49_3_reg_672[5]_i_2_n_8\,
      I3 => icmp_ln41_reg_658_pp0_iter1_reg,
      I4 => ap_enable_reg_pp0_iter2_reg_n_8,
      I5 => \lshr_ln49_3_reg_672[22]_i_2_n_8\,
      O => \lshr_ln49_3_reg_672[5]_i_1_n_8\
    );
\lshr_ln49_3_reg_672[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(3),
      I1 => lshr_ln49_3_reg_672(13),
      I2 => lshr_ln49_3_reg_672(1),
      I3 => lshr_ln49_3_reg_672(0),
      O => \lshr_ln49_3_reg_672[5]_i_2_n_8\
    );
\lshr_ln49_3_reg_672[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA966955559669"
    )
        port map (
      I0 => \lshr_ln49_3_reg_672[20]_i_2_n_8\,
      I1 => lshr_ln49_3_reg_672(2),
      I2 => lshr_ln49_3_reg_672(14),
      I3 => \select_ln49_2_reg_667[0]_i_5_n_8\,
      I4 => \select_ln49_2_reg_667[0]_i_3_n_8\,
      I5 => R_0_reg_156(10),
      O => \lshr_ln49_3_reg_672[6]_i_1_n_8\
    );
\lshr_ln49_3_reg_672[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A66656695999A99"
    )
        port map (
      I0 => \lshr_ln49_3_reg_672[30]_i_2_n_8\,
      I1 => R_0_reg_156(11),
      I2 => icmp_ln41_reg_658_pp0_iter1_reg,
      I3 => ap_enable_reg_pp0_iter2_reg_n_8,
      I4 => \lshr_ln49_3_reg_672[7]_i_2_n_8\,
      I5 => p_0_in(29),
      O => p_0_in(7)
    );
\lshr_ln49_3_reg_672[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => select_ln49_2_reg_667,
      I1 => lshr_ln49_3_reg_672(3),
      I2 => lshr_ln49_3_reg_672(1),
      I3 => lshr_ln49_3_reg_672(2),
      I4 => lshr_ln49_3_reg_672(15),
      O => \lshr_ln49_3_reg_672[7]_i_2_n_8\
    );
\lshr_ln49_3_reg_672[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A95959A656A6A65"
    )
        port map (
      I0 => \lshr_ln49_3_reg_672[30]_i_2_n_8\,
      I1 => R_0_reg_156(12),
      I2 => \select_ln49_2_reg_667[0]_i_3_n_8\,
      I3 => lshr_ln49_3_reg_672(16),
      I4 => \select_ln49_2_reg_667[0]_i_4_n_8\,
      I5 => \lshr_ln49_3_reg_672[22]_i_2_n_8\,
      O => p_0_in(8)
    );
\lshr_ln49_3_reg_672[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA69AA55556955"
    )
        port map (
      I0 => \lshr_ln49_3_reg_672[20]_i_2_n_8\,
      I1 => lshr_ln49_3_reg_672(17),
      I2 => lshr_ln49_3_reg_672(3),
      I3 => ap_enable_reg_pp0_iter2_reg_n_8,
      I4 => icmp_ln41_reg_658_pp0_iter1_reg,
      I5 => R_0_reg_156(13),
      O => \lshr_ln49_3_reg_672[9]_i_1_n_8\
    );
\lshr_ln49_3_reg_672_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => \lshr_ln49_3_reg_672[0]_i_1_n_8\,
      Q => lshr_ln49_3_reg_672(0),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => p_0_in(10),
      Q => lshr_ln49_3_reg_672(10),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => \lshr_ln49_3_reg_672[11]_i_1_n_8\,
      Q => lshr_ln49_3_reg_672(11),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => \lshr_ln49_3_reg_672[12]_i_1_n_8\,
      Q => lshr_ln49_3_reg_672(12),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => p_0_in(13),
      Q => lshr_ln49_3_reg_672(13),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => p_0_in(14),
      Q => lshr_ln49_3_reg_672(14),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => p_0_in(15),
      Q => lshr_ln49_3_reg_672(15),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => p_0_in(16),
      Q => lshr_ln49_3_reg_672(16),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => p_0_in(17),
      Q => lshr_ln49_3_reg_672(17),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => p_0_in(18),
      Q => lshr_ln49_3_reg_672(18),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => p_0_in(19),
      Q => lshr_ln49_3_reg_672(19),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => p_0_in(1),
      Q => lshr_ln49_3_reg_672(1),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => \lshr_ln49_3_reg_672[20]_i_1_n_8\,
      Q => lshr_ln49_3_reg_672(20),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => p_0_in(21),
      Q => lshr_ln49_3_reg_672(21),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => p_0_in(22),
      Q => lshr_ln49_3_reg_672(22),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => p_0_in(23),
      Q => lshr_ln49_3_reg_672(23),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => \lshr_ln49_3_reg_672[24]_i_1_n_8\,
      Q => lshr_ln49_3_reg_672(24),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => p_0_in(25),
      Q => lshr_ln49_3_reg_672(25),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => p_0_in(26),
      Q => lshr_ln49_3_reg_672(26),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => p_0_in(27),
      Q => lshr_ln49_3_reg_672(27),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => p_0_in(28),
      Q => lshr_ln49_3_reg_672(28),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => p_0_in(29),
      Q => lshr_ln49_3_reg_672(29),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => \lshr_ln49_3_reg_672[2]_i_1_n_8\,
      Q => lshr_ln49_3_reg_672(2),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => \lshr_ln49_3_reg_672[30]_i_1_n_8\,
      Q => lshr_ln49_3_reg_672(30),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => \lshr_ln49_3_reg_672[3]_i_1_n_8\,
      Q => lshr_ln49_3_reg_672(3),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => p_0_in(4),
      Q => lshr_ln49_3_reg_672(4),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => \lshr_ln49_3_reg_672[5]_i_1_n_8\,
      Q => lshr_ln49_3_reg_672(5),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => \lshr_ln49_3_reg_672[6]_i_1_n_8\,
      Q => lshr_ln49_3_reg_672(6),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => p_0_in(7),
      Q => lshr_ln49_3_reg_672(7),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => p_0_in(8),
      Q => lshr_ln49_3_reg_672(8),
      R => '0'
    );
\lshr_ln49_3_reg_672_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => \lshr_ln49_3_reg_672[9]_i_1_n_8\,
      Q => lshr_ln49_3_reg_672(9),
      R => '0'
    );
\mOutPtr[4]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBBBBBBBBBBBB"
    )
        port map (
      I0 => \mOutPtr_reg[5]\(0),
      I1 => \^i1_0_reg_180_reg[2]_0\,
      I2 => \icmp_ln41_reg_658_reg_n_8_[0]\,
      I3 => ap_enable_reg_pp0_iter1_reg_n_8,
      I4 => ap_CS_fsm_pp0_stage0,
      I5 => byt2crc_1_empty_n,
      O => \icmp_ln41_reg_658_reg[0]_0\
    );
\mOutPtr[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF7FFFFF0080"
    )
        port map (
      I0 => byt2crc_1_empty_n,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => ap_enable_reg_pp0_iter1_reg_n_8,
      I3 => \icmp_ln41_reg_658_reg_n_8_[0]\,
      I4 => \^i1_0_reg_180_reg[2]_0\,
      I5 => \mOutPtr_reg[5]\(0),
      O => internal_empty_n_reg(0)
    );
\mOutPtr[5]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => icmp_ln68_reg_711,
      I1 => ap_enable_reg_pp1_iter1_reg_n_8,
      I2 => ap_CS_fsm_pp1_stage0,
      I3 => crc2fra_1_full_n,
      I4 => \mOutPtr_reg[5]_0\,
      O => \icmp_ln68_reg_711_reg[0]_0\(0)
    );
\mOutPtr[5]_i_3__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD000000"
    )
        port map (
      I0 => \i1_0_reg_180_reg_n_8_[2]\,
      I1 => \i1_0_reg_180_reg_n_8_[1]\,
      I2 => \i1_0_reg_180_reg_n_8_[0]\,
      I3 => ap_CS_fsm_state7,
      I4 => byt2crc_1_empty_n,
      O => \^i1_0_reg_180_reg[2]_0\
    );
\select_ln49_2_reg_667[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B0"
    )
        port map (
      I0 => byt2crc_1_empty_n,
      I1 => ap_enable_reg_pp0_iter1_reg_n_8,
      I2 => ap_CS_fsm_pp0_stage0,
      I3 => \icmp_ln41_reg_658_reg_n_8_[0]\,
      O => lshr_ln49_3_reg_6720
    );
\select_ln49_2_reg_667[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A65656A656A6A65"
    )
        port map (
      I0 => \out\(3),
      I1 => R_0_reg_156(3),
      I2 => \select_ln49_2_reg_667[0]_i_3_n_8\,
      I3 => \select_ln49_2_reg_667[0]_i_4_n_8\,
      I4 => lshr_ln49_3_reg_672(7),
      I5 => \select_ln49_2_reg_667[0]_i_5_n_8\,
      O => \select_ln49_2_reg_667[0]_i_2_n_8\
    );
\select_ln49_2_reg_667[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => icmp_ln41_reg_658_pp0_iter1_reg,
      I1 => ap_enable_reg_pp0_iter2_reg_n_8,
      O => \select_ln49_2_reg_667[0]_i_3_n_8\
    );
\select_ln49_2_reg_667[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(2),
      I1 => select_ln49_2_reg_667,
      I2 => lshr_ln49_3_reg_672(3),
      O => \select_ln49_2_reg_667[0]_i_4_n_8\
    );
\select_ln49_2_reg_667[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lshr_ln49_3_reg_672(0),
      I1 => lshr_ln49_3_reg_672(1),
      O => \select_ln49_2_reg_667[0]_i_5_n_8\
    );
\select_ln49_2_reg_667_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => lshr_ln49_3_reg_6720,
      D => \select_ln49_2_reg_667[0]_i_2_n_8\,
      Q => select_ln49_2_reg_667,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_ModuleCompute_do_gen is
  port (
    e_read : out STD_LOGIC;
    push : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clock : in STD_LOGIC;
    e_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    e_empty_n : in STD_LOGIC;
    mod2dbl_1_full_n : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_ModuleCompute_do_gen : entity is "ModuleCompute_do_gen";
end bd_0_hls_inst_0_ModuleCompute_do_gen;

architecture STRUCTURE of bd_0_hls_inst_0_ModuleCompute_do_gen is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal add_0_i_reg_96 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \add_0_i_reg_96[6]_i_1_n_8\ : STD_LOGIC;
  signal \add_0_i_reg_96[7]_i_1_n_8\ : STD_LOGIC;
  signal add_1_reg_224 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal add_ln99_reg_201 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \ap_CS_fsm[4]_i_2_n_8\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_CS_fsm_state5 : STD_LOGIC;
  signal ap_CS_fsm_state6 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal g2_fu_152_p0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \g2_fu_152_p2__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal i_0_i_reg_107 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal i_0_i_reg_107_0 : STD_LOGIC;
  signal i_fu_136_p2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal i_reg_209 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal i_reg_2090 : STD_LOGIC;
  signal icmp_ln74_fu_158_p2 : STD_LOGIC;
  signal icmp_ln74_reg_219 : STD_LOGIC;
  signal \icmp_ln74_reg_219[0]_i_10_n_8\ : STD_LOGIC;
  signal \icmp_ln74_reg_219[0]_i_11_n_8\ : STD_LOGIC;
  signal \icmp_ln74_reg_219[0]_i_12_n_8\ : STD_LOGIC;
  signal \icmp_ln74_reg_219[0]_i_13_n_8\ : STD_LOGIC;
  signal \icmp_ln74_reg_219[0]_i_14_n_8\ : STD_LOGIC;
  signal \icmp_ln74_reg_219[0]_i_15_n_8\ : STD_LOGIC;
  signal \icmp_ln74_reg_219[0]_i_16_n_8\ : STD_LOGIC;
  signal \icmp_ln74_reg_219[0]_i_17_n_8\ : STD_LOGIC;
  signal \icmp_ln74_reg_219[0]_i_18_n_8\ : STD_LOGIC;
  signal \icmp_ln74_reg_219[0]_i_3_n_8\ : STD_LOGIC;
  signal \icmp_ln74_reg_219[0]_i_4_n_8\ : STD_LOGIC;
  signal \icmp_ln74_reg_219[0]_i_5_n_8\ : STD_LOGIC;
  signal \icmp_ln74_reg_219[0]_i_6_n_8\ : STD_LOGIC;
  signal \icmp_ln74_reg_219[0]_i_7_n_8\ : STD_LOGIC;
  signal \icmp_ln74_reg_219[0]_i_8_n_8\ : STD_LOGIC;
  signal \icmp_ln74_reg_219[0]_i_9_n_8\ : STD_LOGIC;
  signal \icmp_ln74_reg_219_reg[0]_i_1_n_10\ : STD_LOGIC;
  signal \icmp_ln74_reg_219_reg[0]_i_1_n_11\ : STD_LOGIC;
  signal \icmp_ln74_reg_219_reg[0]_i_1_n_9\ : STD_LOGIC;
  signal \icmp_ln74_reg_219_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \icmp_ln74_reg_219_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \icmp_ln74_reg_219_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \icmp_ln74_reg_219_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal p_i_10_n_8 : STD_LOGIC;
  signal p_i_11_n_8 : STD_LOGIC;
  signal p_i_12_n_8 : STD_LOGIC;
  signal p_i_13_n_8 : STD_LOGIC;
  signal p_i_14_n_8 : STD_LOGIC;
  signal p_i_15_n_8 : STD_LOGIC;
  signal p_i_16_n_8 : STD_LOGIC;
  signal p_i_17_n_8 : STD_LOGIC;
  signal p_i_18_n_8 : STD_LOGIC;
  signal p_i_19_n_8 : STD_LOGIC;
  signal p_i_20_n_8 : STD_LOGIC;
  signal p_i_21_n_8 : STD_LOGIC;
  signal p_i_22_n_8 : STD_LOGIC;
  signal p_i_23_n_8 : STD_LOGIC;
  signal p_i_24_n_8 : STD_LOGIC;
  signal p_i_25_n_8 : STD_LOGIC;
  signal p_i_26_n_8 : STD_LOGIC;
  signal p_i_27_n_8 : STD_LOGIC;
  signal p_i_28_n_8 : STD_LOGIC;
  signal p_i_29_n_8 : STD_LOGIC;
  signal p_i_2_n_15 : STD_LOGIC;
  signal p_i_30_n_8 : STD_LOGIC;
  signal p_i_31_n_8 : STD_LOGIC;
  signal p_i_32_n_8 : STD_LOGIC;
  signal p_i_33_n_8 : STD_LOGIC;
  signal p_i_34_n_8 : STD_LOGIC;
  signal p_i_35_n_10 : STD_LOGIC;
  signal p_i_35_n_11 : STD_LOGIC;
  signal p_i_35_n_12 : STD_LOGIC;
  signal p_i_35_n_13 : STD_LOGIC;
  signal p_i_35_n_14 : STD_LOGIC;
  signal p_i_35_n_15 : STD_LOGIC;
  signal p_i_35_n_8 : STD_LOGIC;
  signal p_i_35_n_9 : STD_LOGIC;
  signal p_i_36_n_8 : STD_LOGIC;
  signal p_i_37_n_11 : STD_LOGIC;
  signal p_i_37_n_14 : STD_LOGIC;
  signal p_i_37_n_15 : STD_LOGIC;
  signal p_i_37_n_9 : STD_LOGIC;
  signal p_i_38_n_10 : STD_LOGIC;
  signal p_i_38_n_11 : STD_LOGIC;
  signal p_i_38_n_12 : STD_LOGIC;
  signal p_i_38_n_13 : STD_LOGIC;
  signal p_i_38_n_14 : STD_LOGIC;
  signal p_i_38_n_15 : STD_LOGIC;
  signal p_i_38_n_8 : STD_LOGIC;
  signal p_i_38_n_9 : STD_LOGIC;
  signal p_i_39_n_10 : STD_LOGIC;
  signal p_i_39_n_15 : STD_LOGIC;
  signal p_i_3_n_10 : STD_LOGIC;
  signal p_i_3_n_11 : STD_LOGIC;
  signal p_i_3_n_12 : STD_LOGIC;
  signal p_i_3_n_13 : STD_LOGIC;
  signal p_i_3_n_14 : STD_LOGIC;
  signal p_i_3_n_15 : STD_LOGIC;
  signal p_i_3_n_8 : STD_LOGIC;
  signal p_i_3_n_9 : STD_LOGIC;
  signal p_i_40_n_10 : STD_LOGIC;
  signal p_i_40_n_11 : STD_LOGIC;
  signal p_i_40_n_12 : STD_LOGIC;
  signal p_i_40_n_13 : STD_LOGIC;
  signal p_i_40_n_14 : STD_LOGIC;
  signal p_i_40_n_15 : STD_LOGIC;
  signal p_i_40_n_8 : STD_LOGIC;
  signal p_i_40_n_9 : STD_LOGIC;
  signal p_i_41_n_10 : STD_LOGIC;
  signal p_i_41_n_11 : STD_LOGIC;
  signal p_i_41_n_12 : STD_LOGIC;
  signal p_i_41_n_13 : STD_LOGIC;
  signal p_i_41_n_14 : STD_LOGIC;
  signal p_i_41_n_15 : STD_LOGIC;
  signal p_i_41_n_8 : STD_LOGIC;
  signal p_i_41_n_9 : STD_LOGIC;
  signal p_i_42_n_10 : STD_LOGIC;
  signal p_i_42_n_11 : STD_LOGIC;
  signal p_i_42_n_12 : STD_LOGIC;
  signal p_i_42_n_13 : STD_LOGIC;
  signal p_i_42_n_14 : STD_LOGIC;
  signal p_i_42_n_15 : STD_LOGIC;
  signal p_i_42_n_8 : STD_LOGIC;
  signal p_i_42_n_9 : STD_LOGIC;
  signal p_i_43_n_8 : STD_LOGIC;
  signal p_i_44_n_8 : STD_LOGIC;
  signal p_i_45_n_8 : STD_LOGIC;
  signal p_i_46_n_8 : STD_LOGIC;
  signal p_i_47_n_8 : STD_LOGIC;
  signal p_i_48_n_8 : STD_LOGIC;
  signal p_i_49_n_8 : STD_LOGIC;
  signal p_i_4_n_10 : STD_LOGIC;
  signal p_i_4_n_11 : STD_LOGIC;
  signal p_i_4_n_12 : STD_LOGIC;
  signal p_i_4_n_13 : STD_LOGIC;
  signal p_i_4_n_14 : STD_LOGIC;
  signal p_i_4_n_15 : STD_LOGIC;
  signal p_i_4_n_8 : STD_LOGIC;
  signal p_i_4_n_9 : STD_LOGIC;
  signal p_i_50_n_8 : STD_LOGIC;
  signal p_i_51_n_8 : STD_LOGIC;
  signal p_i_52_n_8 : STD_LOGIC;
  signal p_i_53_n_8 : STD_LOGIC;
  signal p_i_54_n_8 : STD_LOGIC;
  signal p_i_55_n_8 : STD_LOGIC;
  signal p_i_56_n_8 : STD_LOGIC;
  signal p_i_57_n_8 : STD_LOGIC;
  signal p_i_58_n_8 : STD_LOGIC;
  signal p_i_59_n_8 : STD_LOGIC;
  signal p_i_5_n_10 : STD_LOGIC;
  signal p_i_5_n_11 : STD_LOGIC;
  signal p_i_5_n_12 : STD_LOGIC;
  signal p_i_5_n_13 : STD_LOGIC;
  signal p_i_5_n_14 : STD_LOGIC;
  signal p_i_5_n_15 : STD_LOGIC;
  signal p_i_5_n_8 : STD_LOGIC;
  signal p_i_5_n_9 : STD_LOGIC;
  signal p_i_60_n_8 : STD_LOGIC;
  signal p_i_61_n_8 : STD_LOGIC;
  signal p_i_62_n_8 : STD_LOGIC;
  signal p_i_63_n_8 : STD_LOGIC;
  signal p_i_64_n_8 : STD_LOGIC;
  signal p_i_65_n_8 : STD_LOGIC;
  signal p_i_66_n_8 : STD_LOGIC;
  signal p_i_67_n_8 : STD_LOGIC;
  signal p_i_68_n_8 : STD_LOGIC;
  signal p_i_69_n_8 : STD_LOGIC;
  signal p_i_6_n_10 : STD_LOGIC;
  signal p_i_6_n_11 : STD_LOGIC;
  signal p_i_6_n_12 : STD_LOGIC;
  signal p_i_6_n_13 : STD_LOGIC;
  signal p_i_6_n_14 : STD_LOGIC;
  signal p_i_6_n_8 : STD_LOGIC;
  signal p_i_6_n_9 : STD_LOGIC;
  signal p_i_70_n_8 : STD_LOGIC;
  signal p_i_71_n_8 : STD_LOGIC;
  signal p_i_72_n_8 : STD_LOGIC;
  signal p_i_73_n_8 : STD_LOGIC;
  signal p_i_74_n_8 : STD_LOGIC;
  signal p_i_75_n_8 : STD_LOGIC;
  signal p_i_76_n_8 : STD_LOGIC;
  signal p_i_77_n_8 : STD_LOGIC;
  signal p_i_78_n_8 : STD_LOGIC;
  signal p_i_79_n_8 : STD_LOGIC;
  signal p_i_7_n_11 : STD_LOGIC;
  signal p_i_7_n_14 : STD_LOGIC;
  signal p_i_7_n_15 : STD_LOGIC;
  signal p_i_80_n_8 : STD_LOGIC;
  signal p_i_81_n_8 : STD_LOGIC;
  signal p_i_82_n_8 : STD_LOGIC;
  signal p_i_83_n_8 : STD_LOGIC;
  signal p_i_84_n_8 : STD_LOGIC;
  signal p_i_85_n_8 : STD_LOGIC;
  signal p_i_86_n_8 : STD_LOGIC;
  signal p_i_8_n_8 : STD_LOGIC;
  signal p_i_9_n_8 : STD_LOGIC;
  signal \^push\ : STD_LOGIC;
  signal rc_V_reg_83 : STD_LOGIC;
  signal res_reg_214 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal val_V_3_reg_196 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_g2_fu_152_p2_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_g2_fu_152_p2_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_g2_fu_152_p2_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_g2_fu_152_p2_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_g2_fu_152_p2_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_g2_fu_152_p2_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_g2_fu_152_p2_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_g2_fu_152_p2_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_g2_fu_152_p2_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_g2_fu_152_p2_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 16 );
  signal NLW_g2_fu_152_p2_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_icmp_ln74_reg_219_reg[0]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_icmp_ln74_reg_219_reg[0]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_p_i_37_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_p_i_37_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_p_i_39_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_i_39_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_p_i_6_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_p_i_7_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_p_i_7_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \ap_CS_fsm[4]_i_2\ : label is "soft_lutpair124";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute SOFT_HLUTNM of e_read_INST_0 : label is "soft_lutpair125";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of g2_fu_152_p2 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \i_reg_209[1]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \i_reg_209[2]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \i_reg_209[3]_i_2\ : label is "soft_lutpair124";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \icmp_ln74_reg_219_reg[0]_i_1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \icmp_ln74_reg_219_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of p_i_2 : label is 35;
  attribute METHODOLOGY_DRC_VIOS of p_i_2 : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute ADDER_THRESHOLD of p_i_3 : label is 35;
  attribute METHODOLOGY_DRC_VIOS of p_i_3 : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute METHODOLOGY_DRC_VIOS of p_i_35 : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute METHODOLOGY_DRC_VIOS of p_i_37 : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute METHODOLOGY_DRC_VIOS of p_i_38 : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute METHODOLOGY_DRC_VIOS of p_i_39 : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute ADDER_THRESHOLD of p_i_4 : label is 35;
  attribute METHODOLOGY_DRC_VIOS of p_i_4 : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute METHODOLOGY_DRC_VIOS of p_i_40 : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute METHODOLOGY_DRC_VIOS of p_i_41 : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute METHODOLOGY_DRC_VIOS of p_i_42 : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute ADDER_THRESHOLD of p_i_5 : label is 35;
  attribute METHODOLOGY_DRC_VIOS of p_i_5 : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute METHODOLOGY_DRC_VIOS of p_i_6 : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
  attribute METHODOLOGY_DRC_VIOS of p_i_7 : label is "{SYNTH-9 {cell *THIS*} {string 8x8}}";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  push <= \^push\;
ModuleCompute_macg8j_U51: entity work.bd_0_hls_inst_0_ModuleCompute_macg8j
     port map (
      C(14) => p_i_2_n_15,
      C(13) => p_i_3_n_12,
      C(12) => p_i_3_n_13,
      C(11) => p_i_3_n_14,
      C(10) => p_i_3_n_15,
      C(9) => p_i_4_n_12,
      C(8) => p_i_4_n_13,
      C(7) => p_i_4_n_14,
      C(6) => p_i_4_n_15,
      C(5) => p_i_5_n_12,
      C(4) => p_i_5_n_13,
      C(3) => p_i_5_n_14,
      C(2) => p_i_5_n_15,
      C(1) => p_i_6_n_14,
      C(0) => val_V_3_reg_196(0),
      P(15 downto 0) => add_ln99_reg_201(15 downto 0),
      Q(1) => ap_CS_fsm_state4,
      Q(0) => ap_CS_fsm_state2,
      clock => clock,
      e_dout(7 downto 0) => e_dout(7 downto 0),
      e_empty_n => e_empty_n
    );
\add_0_i_reg_96[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => ap_CS_fsm_state4,
      O => \add_0_i_reg_96[6]_i_1_n_8\
    );
\add_0_i_reg_96[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => ap_CS_fsm_state4,
      I2 => add_0_i_reg_96(7),
      O => \add_0_i_reg_96[7]_i_1_n_8\
    );
\add_0_i_reg_96_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \add_0_i_reg_96[6]_i_1_n_8\,
      D => add_1_reg_224(0),
      Q => add_0_i_reg_96(0),
      R => i_0_i_reg_107_0
    );
\add_0_i_reg_96_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \add_0_i_reg_96[6]_i_1_n_8\,
      D => add_1_reg_224(1),
      Q => add_0_i_reg_96(1),
      R => i_0_i_reg_107_0
    );
\add_0_i_reg_96_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \add_0_i_reg_96[6]_i_1_n_8\,
      D => add_1_reg_224(2),
      Q => add_0_i_reg_96(2),
      R => i_0_i_reg_107_0
    );
\add_0_i_reg_96_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \add_0_i_reg_96[6]_i_1_n_8\,
      D => add_1_reg_224(3),
      Q => add_0_i_reg_96(3),
      R => i_0_i_reg_107_0
    );
\add_0_i_reg_96_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \add_0_i_reg_96[6]_i_1_n_8\,
      D => add_1_reg_224(4),
      Q => add_0_i_reg_96(4),
      R => i_0_i_reg_107_0
    );
\add_0_i_reg_96_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \add_0_i_reg_96[6]_i_1_n_8\,
      D => add_1_reg_224(5),
      Q => add_0_i_reg_96(5),
      R => i_0_i_reg_107_0
    );
\add_0_i_reg_96_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \add_0_i_reg_96[6]_i_1_n_8\,
      D => add_1_reg_224(6),
      Q => add_0_i_reg_96(6),
      R => i_0_i_reg_107_0
    );
\add_0_i_reg_96_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => \add_0_i_reg_96[7]_i_1_n_8\,
      Q => add_0_i_reg_96(7),
      R => '0'
    );
\add_1_reg_224[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA8A"
    )
        port map (
      I0 => ap_CS_fsm_state5,
      I1 => i_0_i_reg_107(2),
      I2 => i_0_i_reg_107(3),
      I3 => i_0_i_reg_107(0),
      I4 => i_0_i_reg_107(1),
      O => ap_NS_fsm(5)
    );
\add_1_reg_224_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm(5),
      D => add_0_i_reg_96(1),
      Q => add_1_reg_224(0),
      R => '0'
    );
\add_1_reg_224_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm(5),
      D => add_0_i_reg_96(2),
      Q => add_1_reg_224(1),
      R => '0'
    );
\add_1_reg_224_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm(5),
      D => add_0_i_reg_96(3),
      Q => add_1_reg_224(2),
      R => '0'
    );
\add_1_reg_224_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm(5),
      D => add_0_i_reg_96(4),
      Q => add_1_reg_224(3),
      R => '0'
    );
\add_1_reg_224_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm(5),
      D => add_0_i_reg_96(5),
      Q => add_1_reg_224(4),
      R => '0'
    );
\add_1_reg_224_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm(5),
      D => add_0_i_reg_96(6),
      Q => add_1_reg_224(5),
      R => '0'
    );
\add_1_reg_224_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm(5),
      D => add_0_i_reg_96(7),
      Q => add_1_reg_224(6),
      R => '0'
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^push\,
      I1 => e_empty_n,
      I2 => ap_CS_fsm_state2,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888889D"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => e_empty_n,
      I2 => ap_CS_fsm_state3,
      I3 => ap_CS_fsm_state5,
      I4 => ap_CS_fsm_state4,
      I5 => ap_CS_fsm_state6,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => e_empty_n,
      O => ap_NS_fsm(3)
    );
\ap_CS_fsm[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF2FFF0"
    )
        port map (
      I0 => \ap_CS_fsm[4]_i_2_n_8\,
      I1 => mod2dbl_1_full_n,
      I2 => ap_CS_fsm_state6,
      I3 => ap_CS_fsm_state4,
      I4 => ap_CS_fsm_state5,
      O => ap_NS_fsm(4)
    );
\ap_CS_fsm[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => i_0_i_reg_107(1),
      I1 => i_0_i_reg_107(0),
      I2 => i_0_i_reg_107(3),
      I3 => i_0_i_reg_107(2),
      O => \ap_CS_fsm[4]_i_2_n_8\
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      S => reset
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => reset
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state4,
      R => reset
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(4),
      Q => ap_CS_fsm_state5,
      R => reset
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => ap_NS_fsm(5),
      Q => ap_CS_fsm_state6,
      R => reset
    );
e_read_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => e_empty_n,
      I2 => ap_CS_fsm_state3,
      O => e_read
    );
g2_fu_152_p2: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => g2_fu_152_p0(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_g2_fu_152_p2_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 8) => B"0000000000",
      B(7 downto 0) => g2_fu_152_p0(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_g2_fu_152_p2_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_g2_fu_152_p2_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_g2_fu_152_p2_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_g2_fu_152_p2_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_g2_fu_152_p2_OVERFLOW_UNCONNECTED,
      P(47 downto 16) => NLW_g2_fu_152_p2_P_UNCONNECTED(47 downto 16),
      P(15 downto 0) => \g2_fu_152_p2__0\(15 downto 0),
      PATTERNBDETECT => NLW_g2_fu_152_p2_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_g2_fu_152_p2_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_g2_fu_152_p2_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_g2_fu_152_p2_UNDERFLOW_UNCONNECTED
    );
g2_fu_152_p2_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(7),
      I1 => add_0_i_reg_96(7),
      O => g2_fu_152_p0(7)
    );
g2_fu_152_p2_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(6),
      I1 => add_0_i_reg_96(6),
      O => g2_fu_152_p0(6)
    );
g2_fu_152_p2_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(5),
      I1 => add_0_i_reg_96(5),
      O => g2_fu_152_p0(5)
    );
g2_fu_152_p2_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(4),
      I1 => add_0_i_reg_96(4),
      O => g2_fu_152_p0(4)
    );
g2_fu_152_p2_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(3),
      I1 => add_0_i_reg_96(3),
      O => g2_fu_152_p0(3)
    );
g2_fu_152_p2_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(2),
      I1 => add_0_i_reg_96(2),
      O => g2_fu_152_p0(2)
    );
g2_fu_152_p2_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(1),
      I1 => add_0_i_reg_96(1),
      O => g2_fu_152_p0(1)
    );
g2_fu_152_p2_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => add_0_i_reg_96(0),
      O => g2_fu_152_p0(0)
    );
\i_0_i_reg_107[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => ap_CS_fsm_state6,
      O => i_0_i_reg_107_0
    );
\i_0_i_reg_107_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_CS_fsm_state6,
      D => i_reg_209(0),
      Q => i_0_i_reg_107(0),
      R => i_0_i_reg_107_0
    );
\i_0_i_reg_107_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_CS_fsm_state6,
      D => i_reg_209(1),
      Q => i_0_i_reg_107(1),
      R => i_0_i_reg_107_0
    );
\i_0_i_reg_107_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_CS_fsm_state6,
      D => i_reg_209(2),
      Q => i_0_i_reg_107(2),
      R => i_0_i_reg_107_0
    );
\i_0_i_reg_107_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_CS_fsm_state6,
      D => i_reg_209(3),
      Q => i_0_i_reg_107(3),
      R => i_0_i_reg_107_0
    );
\i_reg_209[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_0_i_reg_107(0),
      O => i_fu_136_p2(0)
    );
\i_reg_209[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_0_i_reg_107(0),
      I1 => i_0_i_reg_107(1),
      O => i_fu_136_p2(1)
    );
\i_reg_209[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => i_0_i_reg_107(2),
      I1 => i_0_i_reg_107(1),
      I2 => i_0_i_reg_107(0),
      O => i_fu_136_p2(2)
    );
\i_reg_209[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA8AAAA"
    )
        port map (
      I0 => ap_CS_fsm_state5,
      I1 => mod2dbl_1_full_n,
      I2 => i_0_i_reg_107(1),
      I3 => i_0_i_reg_107(0),
      I4 => i_0_i_reg_107(3),
      I5 => i_0_i_reg_107(2),
      O => i_reg_2090
    );
\i_reg_209[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => i_0_i_reg_107(3),
      I1 => i_0_i_reg_107(0),
      I2 => i_0_i_reg_107(1),
      I3 => i_0_i_reg_107(2),
      O => i_fu_136_p2(3)
    );
\i_reg_209_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i_reg_2090,
      D => i_fu_136_p2(0),
      Q => i_reg_209(0),
      R => '0'
    );
\i_reg_209_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i_reg_2090,
      D => i_fu_136_p2(1),
      Q => i_reg_209(1),
      R => '0'
    );
\i_reg_209_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i_reg_2090,
      D => i_fu_136_p2(2),
      Q => i_reg_209(2),
      R => '0'
    );
\i_reg_209_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => i_reg_2090,
      D => i_fu_136_p2(3),
      Q => i_reg_209(3),
      R => '0'
    );
\icmp_ln74_reg_219[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \g2_fu_152_p2__0\(8),
      I1 => add_ln99_reg_201(8),
      I2 => \g2_fu_152_p2__0\(9),
      I3 => add_ln99_reg_201(9),
      O => \icmp_ln74_reg_219[0]_i_10_n_8\
    );
\icmp_ln74_reg_219[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \g2_fu_152_p2__0\(6),
      I1 => add_ln99_reg_201(6),
      I2 => add_ln99_reg_201(7),
      I3 => \g2_fu_152_p2__0\(7),
      O => \icmp_ln74_reg_219[0]_i_11_n_8\
    );
\icmp_ln74_reg_219[0]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \g2_fu_152_p2__0\(4),
      I1 => add_ln99_reg_201(4),
      I2 => add_ln99_reg_201(5),
      I3 => \g2_fu_152_p2__0\(5),
      O => \icmp_ln74_reg_219[0]_i_12_n_8\
    );
\icmp_ln74_reg_219[0]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \g2_fu_152_p2__0\(2),
      I1 => add_ln99_reg_201(2),
      I2 => add_ln99_reg_201(3),
      I3 => \g2_fu_152_p2__0\(3),
      O => \icmp_ln74_reg_219[0]_i_13_n_8\
    );
\icmp_ln74_reg_219[0]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \g2_fu_152_p2__0\(0),
      I1 => add_ln99_reg_201(0),
      I2 => add_ln99_reg_201(1),
      I3 => \g2_fu_152_p2__0\(1),
      O => \icmp_ln74_reg_219[0]_i_14_n_8\
    );
\icmp_ln74_reg_219[0]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \g2_fu_152_p2__0\(6),
      I1 => add_ln99_reg_201(6),
      I2 => \g2_fu_152_p2__0\(7),
      I3 => add_ln99_reg_201(7),
      O => \icmp_ln74_reg_219[0]_i_15_n_8\
    );
\icmp_ln74_reg_219[0]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \g2_fu_152_p2__0\(4),
      I1 => add_ln99_reg_201(4),
      I2 => \g2_fu_152_p2__0\(5),
      I3 => add_ln99_reg_201(5),
      O => \icmp_ln74_reg_219[0]_i_16_n_8\
    );
\icmp_ln74_reg_219[0]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \g2_fu_152_p2__0\(2),
      I1 => add_ln99_reg_201(2),
      I2 => \g2_fu_152_p2__0\(3),
      I3 => add_ln99_reg_201(3),
      O => \icmp_ln74_reg_219[0]_i_17_n_8\
    );
\icmp_ln74_reg_219[0]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \g2_fu_152_p2__0\(0),
      I1 => add_ln99_reg_201(0),
      I2 => \g2_fu_152_p2__0\(1),
      I3 => add_ln99_reg_201(1),
      O => \icmp_ln74_reg_219[0]_i_18_n_8\
    );
\icmp_ln74_reg_219[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \g2_fu_152_p2__0\(14),
      I1 => add_ln99_reg_201(14),
      I2 => add_ln99_reg_201(15),
      I3 => \g2_fu_152_p2__0\(15),
      O => \icmp_ln74_reg_219[0]_i_3_n_8\
    );
\icmp_ln74_reg_219[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \g2_fu_152_p2__0\(12),
      I1 => add_ln99_reg_201(12),
      I2 => add_ln99_reg_201(13),
      I3 => \g2_fu_152_p2__0\(13),
      O => \icmp_ln74_reg_219[0]_i_4_n_8\
    );
\icmp_ln74_reg_219[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \g2_fu_152_p2__0\(10),
      I1 => add_ln99_reg_201(10),
      I2 => add_ln99_reg_201(11),
      I3 => \g2_fu_152_p2__0\(11),
      O => \icmp_ln74_reg_219[0]_i_5_n_8\
    );
\icmp_ln74_reg_219[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \g2_fu_152_p2__0\(8),
      I1 => add_ln99_reg_201(8),
      I2 => add_ln99_reg_201(9),
      I3 => \g2_fu_152_p2__0\(9),
      O => \icmp_ln74_reg_219[0]_i_6_n_8\
    );
\icmp_ln74_reg_219[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \g2_fu_152_p2__0\(14),
      I1 => add_ln99_reg_201(14),
      I2 => \g2_fu_152_p2__0\(15),
      I3 => add_ln99_reg_201(15),
      O => \icmp_ln74_reg_219[0]_i_7_n_8\
    );
\icmp_ln74_reg_219[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \g2_fu_152_p2__0\(12),
      I1 => add_ln99_reg_201(12),
      I2 => \g2_fu_152_p2__0\(13),
      I3 => add_ln99_reg_201(13),
      O => \icmp_ln74_reg_219[0]_i_8_n_8\
    );
\icmp_ln74_reg_219[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \g2_fu_152_p2__0\(10),
      I1 => add_ln99_reg_201(10),
      I2 => \g2_fu_152_p2__0\(11),
      I3 => add_ln99_reg_201(11),
      O => \icmp_ln74_reg_219[0]_i_9_n_8\
    );
\icmp_ln74_reg_219_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm(5),
      D => icmp_ln74_fu_158_p2,
      Q => icmp_ln74_reg_219,
      R => '0'
    );
\icmp_ln74_reg_219_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \icmp_ln74_reg_219_reg[0]_i_2_n_8\,
      CO(3) => icmp_ln74_fu_158_p2,
      CO(2) => \icmp_ln74_reg_219_reg[0]_i_1_n_9\,
      CO(1) => \icmp_ln74_reg_219_reg[0]_i_1_n_10\,
      CO(0) => \icmp_ln74_reg_219_reg[0]_i_1_n_11\,
      CYINIT => '0',
      DI(3) => \icmp_ln74_reg_219[0]_i_3_n_8\,
      DI(2) => \icmp_ln74_reg_219[0]_i_4_n_8\,
      DI(1) => \icmp_ln74_reg_219[0]_i_5_n_8\,
      DI(0) => \icmp_ln74_reg_219[0]_i_6_n_8\,
      O(3 downto 0) => \NLW_icmp_ln74_reg_219_reg[0]_i_1_O_UNCONNECTED\(3 downto 0),
      S(3) => \icmp_ln74_reg_219[0]_i_7_n_8\,
      S(2) => \icmp_ln74_reg_219[0]_i_8_n_8\,
      S(1) => \icmp_ln74_reg_219[0]_i_9_n_8\,
      S(0) => \icmp_ln74_reg_219[0]_i_10_n_8\
    );
\icmp_ln74_reg_219_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \icmp_ln74_reg_219_reg[0]_i_2_n_8\,
      CO(2) => \icmp_ln74_reg_219_reg[0]_i_2_n_9\,
      CO(1) => \icmp_ln74_reg_219_reg[0]_i_2_n_10\,
      CO(0) => \icmp_ln74_reg_219_reg[0]_i_2_n_11\,
      CYINIT => '0',
      DI(3) => \icmp_ln74_reg_219[0]_i_11_n_8\,
      DI(2) => \icmp_ln74_reg_219[0]_i_12_n_8\,
      DI(1) => \icmp_ln74_reg_219[0]_i_13_n_8\,
      DI(0) => \icmp_ln74_reg_219[0]_i_14_n_8\,
      O(3 downto 0) => \NLW_icmp_ln74_reg_219_reg[0]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \icmp_ln74_reg_219[0]_i_15_n_8\,
      S(2) => \icmp_ln74_reg_219[0]_i_16_n_8\,
      S(1) => \icmp_ln74_reg_219[0]_i_17_n_8\,
      S(0) => \icmp_ln74_reg_219[0]_i_18_n_8\
    );
mem_reg_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => i_0_i_reg_107(2),
      I1 => i_0_i_reg_107(3),
      I2 => i_0_i_reg_107(0),
      I3 => i_0_i_reg_107(1),
      I4 => mod2dbl_1_full_n,
      I5 => ap_CS_fsm_state5,
      O => \^push\
    );
p_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_i_35_n_15,
      I1 => p_i_38_n_12,
      I2 => p_i_39_n_10,
      O => p_i_10_n_8
    );
p_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_i_37_n_9,
      I1 => p_i_35_n_12,
      I2 => p_i_7_n_15,
      O => p_i_11_n_8
    );
p_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => p_i_37_n_14,
      I1 => p_i_35_n_13,
      I2 => p_i_35_n_12,
      I3 => p_i_37_n_9,
      O => p_i_12_n_8
    );
p_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => p_i_37_n_15,
      I1 => p_i_35_n_14,
      I2 => p_i_35_n_13,
      I3 => p_i_37_n_14,
      O => p_i_13_n_8
    );
p_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => p_i_39_n_10,
      I1 => p_i_38_n_12,
      I2 => p_i_35_n_15,
      I3 => p_i_35_n_14,
      I4 => p_i_37_n_15,
      O => p_i_14_n_8
    );
p_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_i_40_n_12,
      I1 => p_i_38_n_13,
      I2 => p_i_39_n_15,
      O => p_i_15_n_8
    );
p_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_i_40_n_13,
      I1 => p_i_38_n_14,
      I2 => p_i_41_n_12,
      O => p_i_16_n_8
    );
p_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_i_40_n_14,
      I1 => p_i_38_n_15,
      I2 => p_i_41_n_13,
      O => p_i_17_n_8
    );
p_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_i_40_n_15,
      I1 => p_i_42_n_12,
      I2 => p_i_41_n_14,
      O => p_i_18_n_8
    );
p_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_i_15_n_8,
      I1 => p_i_38_n_12,
      I2 => p_i_35_n_15,
      I3 => p_i_39_n_10,
      O => p_i_19_n_8
    );
p_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => p_i_3_n_8,
      CO(3 downto 0) => NLW_p_i_2_CO_UNCONNECTED(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => NLW_p_i_2_O_UNCONNECTED(3 downto 1),
      O(0) => p_i_2_n_15,
      S(3 downto 1) => B"000",
      S(0) => p_i_7_n_14
    );
p_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_i_40_n_12,
      I1 => p_i_38_n_13,
      I2 => p_i_39_n_15,
      I3 => p_i_16_n_8,
      O => p_i_20_n_8
    );
p_i_21: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_i_40_n_13,
      I1 => p_i_38_n_14,
      I2 => p_i_41_n_12,
      I3 => p_i_17_n_8,
      O => p_i_21_n_8
    );
p_i_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_i_40_n_14,
      I1 => p_i_38_n_15,
      I2 => p_i_41_n_13,
      I3 => p_i_18_n_8,
      O => p_i_22_n_8
    );
p_i_23: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_i_42_n_13,
      I1 => p_i_41_n_15,
      O => p_i_23_n_8
    );
p_i_24: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_i_6_n_12,
      I1 => p_i_42_n_14,
      O => p_i_24_n_8
    );
p_i_25: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_i_6_n_13,
      I1 => p_i_42_n_15,
      O => p_i_25_n_8
    );
p_i_26: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_i_40_n_15,
      I1 => p_i_42_n_12,
      I2 => p_i_41_n_14,
      I3 => p_i_23_n_8,
      O => p_i_26_n_8
    );
p_i_27: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => p_i_42_n_13,
      I1 => p_i_41_n_15,
      I2 => p_i_6_n_12,
      I3 => p_i_42_n_14,
      O => p_i_27_n_8
    );
p_i_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => p_i_6_n_13,
      I1 => p_i_42_n_15,
      I2 => p_i_42_n_14,
      I3 => p_i_6_n_12,
      O => p_i_28_n_8
    );
p_i_29: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_i_6_n_13,
      I1 => p_i_42_n_15,
      O => p_i_29_n_8
    );
p_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => p_i_4_n_8,
      CO(3) => p_i_3_n_8,
      CO(2) => p_i_3_n_9,
      CO(1) => p_i_3_n_10,
      CO(0) => p_i_3_n_11,
      CYINIT => '0',
      DI(3) => p_i_7_n_15,
      DI(2) => p_i_8_n_8,
      DI(1) => p_i_9_n_8,
      DI(0) => p_i_10_n_8,
      O(3) => p_i_3_n_12,
      O(2) => p_i_3_n_13,
      O(1) => p_i_3_n_14,
      O(0) => p_i_3_n_15,
      S(3) => p_i_11_n_8,
      S(2) => p_i_12_n_8,
      S(1) => p_i_13_n_8,
      S(0) => p_i_14_n_8
    );
p_i_30: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => val_V_3_reg_196(3),
      I1 => val_V_3_reg_196(2),
      I2 => val_V_3_reg_196(1),
      O => p_i_30_n_8
    );
p_i_31: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => val_V_3_reg_196(0),
      I1 => val_V_3_reg_196(3),
      O => p_i_31_n_8
    );
p_i_32: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1BE4E4E4"
    )
        port map (
      I0 => val_V_3_reg_196(1),
      I1 => val_V_3_reg_196(2),
      I2 => val_V_3_reg_196(3),
      I3 => val_V_3_reg_196(0),
      I4 => val_V_3_reg_196(4),
      O => p_i_32_n_8
    );
p_i_33: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => val_V_3_reg_196(3),
      I1 => val_V_3_reg_196(0),
      I2 => val_V_3_reg_196(2),
      O => p_i_33_n_8
    );
p_i_34: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => val_V_3_reg_196(0),
      I1 => val_V_3_reg_196(1),
      O => p_i_34_n_8
    );
p_i_35: unisim.vcomponents.CARRY4
     port map (
      CI => p_i_40_n_8,
      CO(3) => p_i_35_n_8,
      CO(2) => p_i_35_n_9,
      CO(1) => p_i_35_n_10,
      CO(0) => p_i_35_n_11,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => p_i_43_n_8,
      DI(1) => p_i_44_n_8,
      DI(0) => p_i_45_n_8,
      O(3) => p_i_35_n_12,
      O(2) => p_i_35_n_13,
      O(1) => p_i_35_n_14,
      O(0) => p_i_35_n_15,
      S(3) => p_i_46_n_8,
      S(2) => p_i_47_n_8,
      S(1) => p_i_48_n_8,
      S(0) => p_i_49_n_8
    );
p_i_36: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => val_V_3_reg_196(6),
      I1 => val_V_3_reg_196(7),
      O => p_i_36_n_8
    );
p_i_37: unisim.vcomponents.CARRY4
     port map (
      CI => p_i_38_n_8,
      CO(3) => NLW_p_i_37_CO_UNCONNECTED(3),
      CO(2) => p_i_37_n_9,
      CO(1) => NLW_p_i_37_CO_UNCONNECTED(1),
      CO(0) => p_i_37_n_11,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => p_i_50_n_8,
      DI(0) => p_i_51_n_8,
      O(3 downto 2) => NLW_p_i_37_O_UNCONNECTED(3 downto 2),
      O(1) => p_i_37_n_14,
      O(0) => p_i_37_n_15,
      S(3 downto 2) => B"01",
      S(1) => p_i_52_n_8,
      S(0) => p_i_53_n_8
    );
p_i_38: unisim.vcomponents.CARRY4
     port map (
      CI => p_i_42_n_8,
      CO(3) => p_i_38_n_8,
      CO(2) => p_i_38_n_9,
      CO(1) => p_i_38_n_10,
      CO(0) => p_i_38_n_11,
      CYINIT => '0',
      DI(3) => p_i_54_n_8,
      DI(2) => p_i_55_n_8,
      DI(1) => val_V_3_reg_196(4),
      DI(0) => p_i_56_n_8,
      O(3) => p_i_38_n_12,
      O(2) => p_i_38_n_13,
      O(1) => p_i_38_n_14,
      O(0) => p_i_38_n_15,
      S(3) => p_i_57_n_8,
      S(2) => p_i_58_n_8,
      S(1) => p_i_59_n_8,
      S(0) => p_i_60_n_8
    );
p_i_39: unisim.vcomponents.CARRY4
     port map (
      CI => p_i_41_n_8,
      CO(3 downto 2) => NLW_p_i_39_CO_UNCONNECTED(3 downto 2),
      CO(1) => p_i_39_n_10,
      CO(0) => NLW_p_i_39_CO_UNCONNECTED(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => p_i_61_n_8,
      O(3 downto 1) => NLW_p_i_39_O_UNCONNECTED(3 downto 1),
      O(0) => p_i_39_n_15,
      S(3 downto 1) => B"001",
      S(0) => p_i_62_n_8
    );
p_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => p_i_5_n_8,
      CO(3) => p_i_4_n_8,
      CO(2) => p_i_4_n_9,
      CO(1) => p_i_4_n_10,
      CO(0) => p_i_4_n_11,
      CYINIT => '0',
      DI(3) => p_i_15_n_8,
      DI(2) => p_i_16_n_8,
      DI(1) => p_i_17_n_8,
      DI(0) => p_i_18_n_8,
      O(3) => p_i_4_n_12,
      O(2) => p_i_4_n_13,
      O(1) => p_i_4_n_14,
      O(0) => p_i_4_n_15,
      S(3) => p_i_19_n_8,
      S(2) => p_i_20_n_8,
      S(1) => p_i_21_n_8,
      S(0) => p_i_22_n_8
    );
p_i_40: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p_i_40_n_8,
      CO(2) => p_i_40_n_9,
      CO(1) => p_i_40_n_10,
      CO(0) => p_i_40_n_11,
      CYINIT => '0',
      DI(3) => p_i_63_n_8,
      DI(2) => p_i_64_n_8,
      DI(1) => p_i_65_n_8,
      DI(0) => '0',
      O(3) => p_i_40_n_12,
      O(2) => p_i_40_n_13,
      O(1) => p_i_40_n_14,
      O(0) => p_i_40_n_15,
      S(3) => p_i_66_n_8,
      S(2) => p_i_67_n_8,
      S(1) => p_i_68_n_8,
      S(0) => p_i_69_n_8
    );
p_i_41: unisim.vcomponents.CARRY4
     port map (
      CI => p_i_6_n_8,
      CO(3) => p_i_41_n_8,
      CO(2) => p_i_41_n_9,
      CO(1) => p_i_41_n_10,
      CO(0) => p_i_41_n_11,
      CYINIT => '0',
      DI(3) => p_i_70_n_8,
      DI(2) => p_i_71_n_8,
      DI(1) => p_i_72_n_8,
      DI(0) => p_i_73_n_8,
      O(3) => p_i_41_n_12,
      O(2) => p_i_41_n_13,
      O(1) => p_i_41_n_14,
      O(0) => p_i_41_n_15,
      S(3) => p_i_74_n_8,
      S(2) => p_i_75_n_8,
      S(1) => p_i_76_n_8,
      S(0) => p_i_77_n_8
    );
p_i_42: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p_i_42_n_8,
      CO(2) => p_i_42_n_9,
      CO(1) => p_i_42_n_10,
      CO(0) => p_i_42_n_11,
      CYINIT => '0',
      DI(3) => p_i_78_n_8,
      DI(2) => p_i_79_n_8,
      DI(1) => p_i_80_n_8,
      DI(0) => '0',
      O(3) => p_i_42_n_12,
      O(2) => p_i_42_n_13,
      O(1) => p_i_42_n_14,
      O(0) => p_i_42_n_15,
      S(3) => p_i_81_n_8,
      S(2) => p_i_82_n_8,
      S(1) => p_i_83_n_8,
      S(0) => p_i_84_n_8
    );
p_i_43: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => val_V_3_reg_196(4),
      I1 => val_V_3_reg_196(7),
      I2 => val_V_3_reg_196(5),
      I3 => val_V_3_reg_196(6),
      O => p_i_43_n_8
    );
p_i_44: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => val_V_3_reg_196(3),
      I1 => val_V_3_reg_196(7),
      I2 => val_V_3_reg_196(4),
      I3 => val_V_3_reg_196(6),
      O => p_i_44_n_8
    );
p_i_45: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => val_V_3_reg_196(2),
      I1 => val_V_3_reg_196(7),
      I2 => val_V_3_reg_196(3),
      I3 => val_V_3_reg_196(6),
      O => p_i_45_n_8
    );
p_i_46: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => val_V_3_reg_196(5),
      I1 => val_V_3_reg_196(7),
      I2 => val_V_3_reg_196(6),
      O => p_i_46_n_8
    );
p_i_47: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B03F"
    )
        port map (
      I0 => val_V_3_reg_196(4),
      I1 => val_V_3_reg_196(7),
      I2 => val_V_3_reg_196(5),
      I3 => val_V_3_reg_196(6),
      O => p_i_47_n_8
    );
p_i_48: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B03F4F3F"
    )
        port map (
      I0 => val_V_3_reg_196(3),
      I1 => val_V_3_reg_196(7),
      I2 => val_V_3_reg_196(4),
      I3 => val_V_3_reg_196(6),
      I4 => val_V_3_reg_196(5),
      O => p_i_48_n_8
    );
p_i_49: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B03F4F3F"
    )
        port map (
      I0 => val_V_3_reg_196(2),
      I1 => val_V_3_reg_196(7),
      I2 => val_V_3_reg_196(3),
      I3 => val_V_3_reg_196(6),
      I4 => val_V_3_reg_196(4),
      O => p_i_49_n_8
    );
p_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p_i_5_n_8,
      CO(2) => p_i_5_n_9,
      CO(1) => p_i_5_n_10,
      CO(0) => p_i_5_n_11,
      CYINIT => '0',
      DI(3) => p_i_23_n_8,
      DI(2) => p_i_24_n_8,
      DI(1) => p_i_25_n_8,
      DI(0) => '0',
      O(3) => p_i_5_n_12,
      O(2) => p_i_5_n_13,
      O(1) => p_i_5_n_14,
      O(0) => p_i_5_n_15,
      S(3) => p_i_26_n_8,
      S(2) => p_i_27_n_8,
      S(1) => p_i_28_n_8,
      S(0) => p_i_29_n_8
    );
p_i_50: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => val_V_3_reg_196(4),
      I1 => val_V_3_reg_196(7),
      I2 => val_V_3_reg_196(5),
      I3 => val_V_3_reg_196(6),
      O => p_i_50_n_8
    );
p_i_51: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => val_V_3_reg_196(4),
      I1 => val_V_3_reg_196(5),
      O => p_i_51_n_8
    );
p_i_52: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F5F"
    )
        port map (
      I0 => val_V_3_reg_196(6),
      I1 => val_V_3_reg_196(4),
      I2 => val_V_3_reg_196(5),
      I3 => val_V_3_reg_196(7),
      O => p_i_52_n_8
    );
p_i_53: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4B77"
    )
        port map (
      I0 => val_V_3_reg_196(6),
      I1 => val_V_3_reg_196(5),
      I2 => val_V_3_reg_196(7),
      I3 => val_V_3_reg_196(4),
      O => p_i_53_n_8
    );
p_i_54: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => val_V_3_reg_196(6),
      I1 => val_V_3_reg_196(5),
      I2 => val_V_3_reg_196(4),
      O => p_i_54_n_8
    );
p_i_55: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => val_V_3_reg_196(3),
      I1 => val_V_3_reg_196(6),
      O => p_i_55_n_8
    );
p_i_56: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888000"
    )
        port map (
      I0 => val_V_3_reg_196(1),
      I1 => val_V_3_reg_196(5),
      I2 => val_V_3_reg_196(2),
      I3 => val_V_3_reg_196(4),
      I4 => val_V_3_reg_196(3),
      O => p_i_56_n_8
    );
p_i_57: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E41B1B1B"
    )
        port map (
      I0 => val_V_3_reg_196(4),
      I1 => val_V_3_reg_196(5),
      I2 => val_V_3_reg_196(6),
      I3 => val_V_3_reg_196(3),
      I4 => val_V_3_reg_196(7),
      O => p_i_57_n_8
    );
p_i_58: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => val_V_3_reg_196(6),
      I1 => val_V_3_reg_196(3),
      I2 => val_V_3_reg_196(5),
      O => p_i_58_n_8
    );
p_i_59: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => val_V_3_reg_196(3),
      I1 => val_V_3_reg_196(4),
      O => p_i_59_n_8
    );
p_i_6: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p_i_6_n_8,
      CO(2) => p_i_6_n_9,
      CO(1) => p_i_6_n_10,
      CO(0) => p_i_6_n_11,
      CYINIT => '0',
      DI(3) => p_i_30_n_8,
      DI(2) => p_i_31_n_8,
      DI(1) => val_V_3_reg_196(1),
      DI(0) => '0',
      O(3) => p_i_6_n_12,
      O(2) => p_i_6_n_13,
      O(1) => p_i_6_n_14,
      O(0) => NLW_p_i_6_O_UNCONNECTED(0),
      S(3) => p_i_32_n_8,
      S(2) => p_i_33_n_8,
      S(1) => p_i_34_n_8,
      S(0) => '0'
    );
p_i_60: unisim.vcomponents.LUT5
    generic map(
      INIT => X"17A08800"
    )
        port map (
      I0 => val_V_3_reg_196(3),
      I1 => val_V_3_reg_196(4),
      I2 => val_V_3_reg_196(1),
      I3 => val_V_3_reg_196(2),
      I4 => val_V_3_reg_196(5),
      O => p_i_60_n_8
    );
p_i_61: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => val_V_3_reg_196(1),
      I1 => val_V_3_reg_196(7),
      I2 => val_V_3_reg_196(2),
      I3 => val_V_3_reg_196(6),
      O => p_i_61_n_8
    );
p_i_62: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F5F"
    )
        port map (
      I0 => val_V_3_reg_196(6),
      I1 => val_V_3_reg_196(1),
      I2 => val_V_3_reg_196(2),
      I3 => val_V_3_reg_196(7),
      O => p_i_62_n_8
    );
p_i_63: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => val_V_3_reg_196(7),
      I1 => val_V_3_reg_196(1),
      O => p_i_63_n_8
    );
p_i_64: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => val_V_3_reg_196(1),
      I1 => val_V_3_reg_196(7),
      O => p_i_64_n_8
    );
p_i_65: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => val_V_3_reg_196(7),
      I1 => val_V_3_reg_196(0),
      O => p_i_65_n_8
    );
p_i_66: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B7484848"
    )
        port map (
      I0 => val_V_3_reg_196(1),
      I1 => val_V_3_reg_196(7),
      I2 => val_V_3_reg_196(2),
      I3 => val_V_3_reg_196(6),
      I4 => val_V_3_reg_196(3),
      O => p_i_66_n_8
    );
p_i_67: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => val_V_3_reg_196(1),
      I1 => val_V_3_reg_196(7),
      I2 => val_V_3_reg_196(2),
      I3 => val_V_3_reg_196(6),
      O => p_i_67_n_8
    );
p_i_68: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8777"
    )
        port map (
      I0 => val_V_3_reg_196(0),
      I1 => val_V_3_reg_196(7),
      I2 => val_V_3_reg_196(1),
      I3 => val_V_3_reg_196(6),
      O => p_i_68_n_8
    );
p_i_69: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => val_V_3_reg_196(0),
      I1 => val_V_3_reg_196(6),
      O => p_i_69_n_8
    );
p_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => p_i_35_n_8,
      CO(3 downto 1) => NLW_p_i_7_CO_UNCONNECTED(3 downto 1),
      CO(0) => p_i_7_n_11,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => val_V_3_reg_196(7),
      O(3 downto 2) => NLW_p_i_7_O_UNCONNECTED(3 downto 2),
      O(1) => p_i_7_n_14,
      O(0) => p_i_7_n_15,
      S(3 downto 1) => B"001",
      S(0) => p_i_36_n_8
    );
p_i_70: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000F888F888F888"
    )
        port map (
      I0 => val_V_3_reg_196(2),
      I1 => val_V_3_reg_196(5),
      I2 => val_V_3_reg_196(1),
      I3 => val_V_3_reg_196(6),
      I4 => val_V_3_reg_196(0),
      I5 => val_V_3_reg_196(7),
      O => p_i_70_n_8
    );
p_i_71: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => val_V_3_reg_196(2),
      I1 => val_V_3_reg_196(4),
      I2 => val_V_3_reg_196(1),
      I3 => val_V_3_reg_196(5),
      I4 => val_V_3_reg_196(0),
      I5 => val_V_3_reg_196(6),
      O => p_i_71_n_8
    );
p_i_72: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => val_V_3_reg_196(2),
      I1 => val_V_3_reg_196(3),
      I2 => val_V_3_reg_196(1),
      I3 => val_V_3_reg_196(4),
      I4 => val_V_3_reg_196(0),
      I5 => val_V_3_reg_196(5),
      O => p_i_72_n_8
    );
p_i_73: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => val_V_3_reg_196(1),
      I1 => val_V_3_reg_196(2),
      O => p_i_73_n_8
    );
p_i_74: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2450F30F4BFFC3FF"
    )
        port map (
      I0 => val_V_3_reg_196(0),
      I1 => val_V_3_reg_196(5),
      I2 => val_V_3_reg_196(6),
      I3 => val_V_3_reg_196(2),
      I4 => val_V_3_reg_196(7),
      I5 => val_V_3_reg_196(1),
      O => p_i_74_n_8
    );
p_i_75: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A959595956A6A6A"
    )
        port map (
      I0 => p_i_71_n_8,
      I1 => val_V_3_reg_196(1),
      I2 => val_V_3_reg_196(6),
      I3 => val_V_3_reg_196(2),
      I4 => val_V_3_reg_196(5),
      I5 => p_i_85_n_8,
      O => p_i_75_n_8
    );
p_i_76: unisim.vcomponents.LUT6
    generic map(
      INIT => X"956A6A956A956A95"
    )
        port map (
      I0 => p_i_72_n_8,
      I1 => val_V_3_reg_196(1),
      I2 => val_V_3_reg_196(5),
      I3 => p_i_86_n_8,
      I4 => val_V_3_reg_196(6),
      I5 => val_V_3_reg_196(0),
      O => p_i_76_n_8
    );
p_i_77: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27D7D828D828D828"
    )
        port map (
      I0 => val_V_3_reg_196(1),
      I1 => val_V_3_reg_196(4),
      I2 => val_V_3_reg_196(2),
      I3 => val_V_3_reg_196(3),
      I4 => val_V_3_reg_196(5),
      I5 => val_V_3_reg_196(0),
      O => p_i_77_n_8
    );
p_i_78: unisim.vcomponents.LUT5
    generic map(
      INIT => X"956A6A6A"
    )
        port map (
      I0 => val_V_3_reg_196(3),
      I1 => val_V_3_reg_196(5),
      I2 => val_V_3_reg_196(1),
      I3 => val_V_3_reg_196(4),
      I4 => val_V_3_reg_196(2),
      O => p_i_78_n_8
    );
p_i_79: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => val_V_3_reg_196(1),
      I1 => val_V_3_reg_196(4),
      I2 => val_V_3_reg_196(0),
      I3 => val_V_3_reg_196(5),
      O => p_i_79_n_8
    );
p_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_i_37_n_14,
      I1 => p_i_35_n_13,
      O => p_i_8_n_8
    );
p_i_80: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => val_V_3_reg_196(1),
      I1 => val_V_3_reg_196(3),
      O => p_i_80_n_8
    );
p_i_81: unisim.vcomponents.LUT6
    generic map(
      INIT => X"636C6C6C936C6C6C"
    )
        port map (
      I0 => val_V_3_reg_196(2),
      I1 => val_V_3_reg_196(3),
      I2 => val_V_3_reg_196(4),
      I3 => val_V_3_reg_196(1),
      I4 => val_V_3_reg_196(5),
      I5 => val_V_3_reg_196(0),
      O => p_i_81_n_8
    );
p_i_82: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => val_V_3_reg_196(5),
      I1 => val_V_3_reg_196(0),
      I2 => val_V_3_reg_196(4),
      I3 => val_V_3_reg_196(1),
      I4 => val_V_3_reg_196(2),
      I5 => val_V_3_reg_196(3),
      O => p_i_82_n_8
    );
p_i_83: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => val_V_3_reg_196(1),
      I1 => val_V_3_reg_196(3),
      I2 => val_V_3_reg_196(0),
      I3 => val_V_3_reg_196(4),
      O => p_i_83_n_8
    );
p_i_84: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => val_V_3_reg_196(0),
      I1 => val_V_3_reg_196(3),
      O => p_i_84_n_8
    );
p_i_85: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => val_V_3_reg_196(7),
      I1 => val_V_3_reg_196(0),
      O => p_i_85_n_8
    );
p_i_86: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => val_V_3_reg_196(4),
      I1 => val_V_3_reg_196(2),
      O => p_i_86_n_8
    );
p_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_i_37_n_15,
      I1 => p_i_35_n_14,
      O => p_i_9_n_8
    );
\rc_V_reg_83[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => icmp_ln74_reg_219,
      O => rc_V_reg_83
    );
\rc_V_reg_83_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => rc_V_reg_83,
      D => res_reg_214(0),
      Q => \^q\(0),
      R => i_0_i_reg_107_0
    );
\rc_V_reg_83_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => rc_V_reg_83,
      D => res_reg_214(1),
      Q => \^q\(1),
      R => i_0_i_reg_107_0
    );
\rc_V_reg_83_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => rc_V_reg_83,
      D => res_reg_214(2),
      Q => \^q\(2),
      R => i_0_i_reg_107_0
    );
\rc_V_reg_83_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => rc_V_reg_83,
      D => res_reg_214(3),
      Q => \^q\(3),
      R => i_0_i_reg_107_0
    );
\rc_V_reg_83_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => rc_V_reg_83,
      D => res_reg_214(4),
      Q => \^q\(4),
      R => i_0_i_reg_107_0
    );
\rc_V_reg_83_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => rc_V_reg_83,
      D => res_reg_214(5),
      Q => \^q\(5),
      R => i_0_i_reg_107_0
    );
\rc_V_reg_83_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => rc_V_reg_83,
      D => res_reg_214(6),
      Q => \^q\(6),
      R => i_0_i_reg_107_0
    );
\rc_V_reg_83_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => rc_V_reg_83,
      D => res_reg_214(7),
      Q => \^q\(7),
      R => i_0_i_reg_107_0
    );
\res_reg_214_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm(5),
      D => g2_fu_152_p0(0),
      Q => res_reg_214(0),
      R => '0'
    );
\res_reg_214_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm(5),
      D => g2_fu_152_p0(1),
      Q => res_reg_214(1),
      R => '0'
    );
\res_reg_214_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm(5),
      D => g2_fu_152_p0(2),
      Q => res_reg_214(2),
      R => '0'
    );
\res_reg_214_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm(5),
      D => g2_fu_152_p0(3),
      Q => res_reg_214(3),
      R => '0'
    );
\res_reg_214_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm(5),
      D => g2_fu_152_p0(4),
      Q => res_reg_214(4),
      R => '0'
    );
\res_reg_214_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm(5),
      D => g2_fu_152_p0(5),
      Q => res_reg_214(5),
      R => '0'
    );
\res_reg_214_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm(5),
      D => g2_fu_152_p0(6),
      Q => res_reg_214(6),
      R => '0'
    );
\res_reg_214_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm(5),
      D => g2_fu_152_p0(7),
      Q => res_reg_214(7),
      R => '0'
    );
\val_V_3_reg_196_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm(3),
      D => e_dout(0),
      Q => val_V_3_reg_196(0),
      R => '0'
    );
\val_V_3_reg_196_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm(3),
      D => e_dout(1),
      Q => val_V_3_reg_196(1),
      R => '0'
    );
\val_V_3_reg_196_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm(3),
      D => e_dout(2),
      Q => val_V_3_reg_196(2),
      R => '0'
    );
\val_V_3_reg_196_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm(3),
      D => e_dout(3),
      Q => val_V_3_reg_196(3),
      R => '0'
    );
\val_V_3_reg_196_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm(3),
      D => e_dout(4),
      Q => val_V_3_reg_196(4),
      R => '0'
    );
\val_V_3_reg_196_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm(3),
      D => e_dout(5),
      Q => val_V_3_reg_196(5),
      R => '0'
    );
\val_V_3_reg_196_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm(3),
      D => e_dout(6),
      Q => val_V_3_reg_196(6),
      R => '0'
    );
\val_V_3_reg_196_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => ap_NS_fsm(3),
      D => e_dout(7),
      Q => val_V_3_reg_196(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_Seuil_calc2_do_gen is
  port (
    \ap_CS_fsm_reg[1]_0\ : out STD_LOGIC;
    dout_valid_reg : out STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg_0 : out STD_LOGIC;
    full_n_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    pop : out STD_LOGIC;
    ce : out STD_LOGIC;
    \ap_CS_fsm_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[1]_1\ : out STD_LOGIC;
    \in\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dbl2scalc_1_empty_n : in STD_LOGIC;
    detect_1_full_n : in STD_LOGIC;
    dbl2scalc_1_full_n : in STD_LOGIC;
    dbl2tsep_1_full_n : in STD_LOGIC;
    mod2dbl_1_empty_n : in STD_LOGIC;
    \dout_buf_reg[7]\ : in STD_LOGIC;
    \ap_CS_fsm_reg[1]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_Seuil_calc2_do_gen : entity is "Seuil_calc2_do_gen";
end bd_0_hls_inst_0_Seuil_calc2_do_gen;

architecture STRUCTURE of bd_0_hls_inst_0_Seuil_calc2_do_gen is
  signal RESIZE0 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_26 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_27 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_28 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_29 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_30 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_31 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_32 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_33 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_34 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_35 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_36 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_37 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_38 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_39 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_40 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_41 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_42 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_43 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_44 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_45 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_46 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_47 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_48 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_49 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_50 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_51 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_52 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_53 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_54 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_55 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_56 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_57 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_58 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_59 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_60 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_61 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_62 : STD_LOGIC;
  signal Seuil_calc2_mac_mdEe_U22_n_63 : STD_LOGIC;
  signal \^ap_cs_fsm_reg[1]_0\ : STD_LOGIC;
  signal ap_CS_fsm_state1 : STD_LOGIC;
  signal \ap_enable_reg_pp0_iter0_i_1__0_n_8\ : STD_LOGIC;
  signal \^ap_enable_reg_pp0_iter0_reg_0\ : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_reg_n_8 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter3 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter4 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter4_reg_n_8 : STD_LOGIC;
  signal ap_phi_mux_p_0108_0_phi_fu_225_p4 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal buffer_10_V_fu_1240 : STD_LOGIC;
  signal buffer_14_V_fu_140 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal buffer_15_V_fu_144 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \buffer_16_V_fu_148_reg[0]_srl2_n_8\ : STD_LOGIC;
  signal \buffer_16_V_fu_148_reg[1]_srl2_n_8\ : STD_LOGIC;
  signal \buffer_16_V_fu_148_reg[2]_srl2_n_8\ : STD_LOGIC;
  signal \buffer_16_V_fu_148_reg[3]_srl2_n_8\ : STD_LOGIC;
  signal \buffer_16_V_fu_148_reg[4]_srl2_n_8\ : STD_LOGIC;
  signal \buffer_16_V_fu_148_reg[5]_srl2_n_8\ : STD_LOGIC;
  signal \buffer_16_V_fu_148_reg[6]_srl2_n_8\ : STD_LOGIC;
  signal \buffer_16_V_fu_148_reg[7]_srl2_n_8\ : STD_LOGIC;
  signal buffer_18_V_fu_156 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal buffer_19_V_fu_160 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal buffer_1_V_fu_88 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \buffer_20_V_fu_164_reg[0]_srl11_n_8\ : STD_LOGIC;
  signal \buffer_20_V_fu_164_reg[1]_srl11_n_8\ : STD_LOGIC;
  signal \buffer_20_V_fu_164_reg[2]_srl11_n_8\ : STD_LOGIC;
  signal \buffer_20_V_fu_164_reg[3]_srl11_n_8\ : STD_LOGIC;
  signal \buffer_20_V_fu_164_reg[4]_srl11_n_8\ : STD_LOGIC;
  signal \buffer_20_V_fu_164_reg[5]_srl11_n_8\ : STD_LOGIC;
  signal \buffer_20_V_fu_164_reg[6]_srl11_n_8\ : STD_LOGIC;
  signal \buffer_20_V_fu_164_reg[7]_srl11_n_8\ : STD_LOGIC;
  signal \buffer_2_V_fu_92_reg[0]_srl2_n_8\ : STD_LOGIC;
  signal \buffer_2_V_fu_92_reg[1]_srl2_n_8\ : STD_LOGIC;
  signal \buffer_2_V_fu_92_reg[2]_srl2_n_8\ : STD_LOGIC;
  signal \buffer_2_V_fu_92_reg[3]_srl2_n_8\ : STD_LOGIC;
  signal \buffer_2_V_fu_92_reg[4]_srl2_n_8\ : STD_LOGIC;
  signal \buffer_2_V_fu_92_reg[5]_srl2_n_8\ : STD_LOGIC;
  signal \buffer_2_V_fu_92_reg[6]_srl2_n_8\ : STD_LOGIC;
  signal \buffer_2_V_fu_92_reg[7]_srl2_n_8\ : STD_LOGIC;
  signal buffer_4_V_fu_100 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal buffer_5_V_fu_104 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \buffer_6_V_fu_108_reg[0]_srl8_n_8\ : STD_LOGIC;
  signal \buffer_6_V_fu_108_reg[1]_srl8_n_8\ : STD_LOGIC;
  signal \buffer_6_V_fu_108_reg[2]_srl8_n_8\ : STD_LOGIC;
  signal \buffer_6_V_fu_108_reg[3]_srl8_n_8\ : STD_LOGIC;
  signal \buffer_6_V_fu_108_reg[4]_srl8_n_8\ : STD_LOGIC;
  signal \buffer_6_V_fu_108_reg[5]_srl8_n_8\ : STD_LOGIC;
  signal \buffer_6_V_fu_108_reg[6]_srl8_n_8\ : STD_LOGIC;
  signal \buffer_6_V_fu_108_reg[7]_srl8_n_8\ : STD_LOGIC;
  signal \detect_din0_carry__0_i_1_n_8\ : STD_LOGIC;
  signal \detect_din0_carry__0_i_2_n_8\ : STD_LOGIC;
  signal \detect_din0_carry__0_i_3_n_8\ : STD_LOGIC;
  signal \detect_din0_carry__0_i_4_n_8\ : STD_LOGIC;
  signal \detect_din0_carry__0_i_5_n_8\ : STD_LOGIC;
  signal \detect_din0_carry__0_i_6_n_8\ : STD_LOGIC;
  signal \detect_din0_carry__0_i_7_n_8\ : STD_LOGIC;
  signal \detect_din0_carry__0_i_8_n_8\ : STD_LOGIC;
  signal \detect_din0_carry__0_n_10\ : STD_LOGIC;
  signal \detect_din0_carry__0_n_11\ : STD_LOGIC;
  signal \detect_din0_carry__0_n_8\ : STD_LOGIC;
  signal \detect_din0_carry__0_n_9\ : STD_LOGIC;
  signal \detect_din0_carry__1_i_1_n_8\ : STD_LOGIC;
  signal \detect_din0_carry__1_i_2_n_8\ : STD_LOGIC;
  signal \detect_din0_carry__1_i_3_n_8\ : STD_LOGIC;
  signal \detect_din0_carry__1_i_4_n_8\ : STD_LOGIC;
  signal \detect_din0_carry__1_i_5_n_8\ : STD_LOGIC;
  signal \detect_din0_carry__1_i_6_n_8\ : STD_LOGIC;
  signal \detect_din0_carry__1_n_10\ : STD_LOGIC;
  signal \detect_din0_carry__1_n_11\ : STD_LOGIC;
  signal detect_din0_carry_i_1_n_8 : STD_LOGIC;
  signal detect_din0_carry_i_2_n_8 : STD_LOGIC;
  signal detect_din0_carry_i_3_n_8 : STD_LOGIC;
  signal detect_din0_carry_i_4_n_8 : STD_LOGIC;
  signal detect_din0_carry_i_5_n_8 : STD_LOGIC;
  signal detect_din0_carry_i_6_n_8 : STD_LOGIC;
  signal detect_din0_carry_i_7_n_8 : STD_LOGIC;
  signal detect_din0_carry_i_8_n_8 : STD_LOGIC;
  signal detect_din0_carry_n_10 : STD_LOGIC;
  signal detect_din0_carry_n_11 : STD_LOGIC;
  signal detect_din0_carry_n_8 : STD_LOGIC;
  signal detect_din0_carry_n_9 : STD_LOGIC;
  signal \^dout_valid_reg\ : STD_LOGIC;
  signal grp_fu_664_p3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mul_ln895_reg_907_reg_n_100 : STD_LOGIC;
  signal mul_ln895_reg_907_reg_n_101 : STD_LOGIC;
  signal mul_ln895_reg_907_reg_n_102 : STD_LOGIC;
  signal mul_ln895_reg_907_reg_n_103 : STD_LOGIC;
  signal mul_ln895_reg_907_reg_n_104 : STD_LOGIC;
  signal mul_ln895_reg_907_reg_n_105 : STD_LOGIC;
  signal mul_ln895_reg_907_reg_n_106 : STD_LOGIC;
  signal mul_ln895_reg_907_reg_n_107 : STD_LOGIC;
  signal mul_ln895_reg_907_reg_n_108 : STD_LOGIC;
  signal mul_ln895_reg_907_reg_n_109 : STD_LOGIC;
  signal mul_ln895_reg_907_reg_n_110 : STD_LOGIC;
  signal mul_ln895_reg_907_reg_n_111 : STD_LOGIC;
  signal mul_ln895_reg_907_reg_n_112 : STD_LOGIC;
  signal mul_ln895_reg_907_reg_n_113 : STD_LOGIC;
  signal mul_ln895_reg_907_reg_n_92 : STD_LOGIC;
  signal mul_ln895_reg_907_reg_n_93 : STD_LOGIC;
  signal mul_ln895_reg_907_reg_n_94 : STD_LOGIC;
  signal mul_ln895_reg_907_reg_n_95 : STD_LOGIC;
  signal mul_ln895_reg_907_reg_n_96 : STD_LOGIC;
  signal mul_ln895_reg_907_reg_n_97 : STD_LOGIC;
  signal mul_ln895_reg_907_reg_n_98 : STD_LOGIC;
  signal mul_ln895_reg_907_reg_n_99 : STD_LOGIC;
  signal p_0108_0_reg_221 : STD_LOGIC_VECTOR ( 21 downto 2 );
  signal p_0108_0_reg_2210 : STD_LOGIC;
  signal p_0108_0_reg_221_0 : STD_LOGIC;
  signal p_0343_0_fu_80 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \^pop\ : STD_LOGIC;
  signal ps_V_fu_437_p2 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \ps_V_fu_437_p2__0_carry__0_i_1_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry__0_i_2_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry__0_i_3_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry__0_i_4_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry__0_i_5_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry__0_i_6_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry__0_i_7_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry__0_i_8_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry__0_n_10\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry__0_n_11\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry__0_n_12\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry__0_n_13\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry__0_n_14\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry__0_n_15\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry__0_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry__0_n_9\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry__1_i_1_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry__1_n_10\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry__1_n_15\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry_i_1_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry_i_2_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry_i_3_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry_i_4_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry_i_5_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry_i_6_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry_i_7_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry_n_10\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry_n_11\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry_n_12\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry_n_13\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry_n_14\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry_n_15\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__0_carry_n_9\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry__0_i_1_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry__0_i_2_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry__0_i_3_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry__0_i_4_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry__0_i_5_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry__0_i_6_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry__0_i_7_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry__0_i_8_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry__0_n_10\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry__0_n_11\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry__0_n_12\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry__0_n_13\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry__0_n_14\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry__0_n_15\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry__0_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry__0_n_9\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry__1_i_1_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry__1_n_10\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry__1_n_15\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry_i_1_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry_i_2_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry_i_3_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry_i_4_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry_i_5_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry_i_6_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry_i_7_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry_n_10\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry_n_11\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry_n_12\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry_n_13\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry_n_14\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry_n_15\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__26_carry_n_9\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry__0_i_10_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry__0_i_11_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry__0_i_12_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry__0_i_13_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry__0_i_14_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry__0_i_15_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry__0_i_1_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry__0_i_2_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry__0_i_3_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry__0_i_4_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry__0_i_5_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry__0_i_6_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry__0_i_7_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry__0_i_8_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry__0_i_9_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry__0_n_10\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry__0_n_11\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry__0_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry__0_n_9\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry__1_i_1_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry__1_i_2_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry__1_i_3_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry__1_i_4_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry__1_i_5_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry__1_i_6_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry__1_n_10\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry__1_n_11\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry_i_1_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry_i_2_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry_i_3_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry_i_4_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry_i_5_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry_i_6_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry_i_7_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry_i_8_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry_i_9_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry_n_10\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry_n_11\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry_n_8\ : STD_LOGIC;
  signal \ps_V_fu_437_p2__54_carry_n_9\ : STD_LOGIC;
  signal res_2_V_reg_897 : STD_LOGIC;
  signal \res_2_V_reg_897[16]_i_2_n_8\ : STD_LOGIC;
  signal \res_2_V_reg_897[16]_i_3_n_8\ : STD_LOGIC;
  signal \res_2_V_reg_897[16]_i_4_n_8\ : STD_LOGIC;
  signal \res_2_V_reg_897_reg_n_8_[0]\ : STD_LOGIC;
  signal \res_2_V_reg_897_reg_n_8_[10]\ : STD_LOGIC;
  signal \res_2_V_reg_897_reg_n_8_[11]\ : STD_LOGIC;
  signal \res_2_V_reg_897_reg_n_8_[12]\ : STD_LOGIC;
  signal \res_2_V_reg_897_reg_n_8_[13]\ : STD_LOGIC;
  signal \res_2_V_reg_897_reg_n_8_[14]\ : STD_LOGIC;
  signal \res_2_V_reg_897_reg_n_8_[15]\ : STD_LOGIC;
  signal \res_2_V_reg_897_reg_n_8_[16]\ : STD_LOGIC;
  signal \res_2_V_reg_897_reg_n_8_[1]\ : STD_LOGIC;
  signal \res_2_V_reg_897_reg_n_8_[2]\ : STD_LOGIC;
  signal \res_2_V_reg_897_reg_n_8_[3]\ : STD_LOGIC;
  signal \res_2_V_reg_897_reg_n_8_[4]\ : STD_LOGIC;
  signal \res_2_V_reg_897_reg_n_8_[5]\ : STD_LOGIC;
  signal \res_2_V_reg_897_reg_n_8_[6]\ : STD_LOGIC;
  signal \res_2_V_reg_897_reg_n_8_[7]\ : STD_LOGIC;
  signal \res_2_V_reg_897_reg_n_8_[8]\ : STD_LOGIC;
  signal \res_2_V_reg_897_reg_n_8_[9]\ : STD_LOGIC;
  signal ret_V_5_fu_242_p2_n_100 : STD_LOGIC;
  signal ret_V_5_fu_242_p2_n_101 : STD_LOGIC;
  signal ret_V_5_fu_242_p2_n_102 : STD_LOGIC;
  signal ret_V_5_fu_242_p2_n_103 : STD_LOGIC;
  signal ret_V_5_fu_242_p2_n_104 : STD_LOGIC;
  signal ret_V_5_fu_242_p2_n_105 : STD_LOGIC;
  signal ret_V_5_fu_242_p2_n_106 : STD_LOGIC;
  signal ret_V_5_fu_242_p2_n_107 : STD_LOGIC;
  signal ret_V_5_fu_242_p2_n_108 : STD_LOGIC;
  signal ret_V_5_fu_242_p2_n_109 : STD_LOGIC;
  signal ret_V_5_fu_242_p2_n_110 : STD_LOGIC;
  signal ret_V_5_fu_242_p2_n_111 : STD_LOGIC;
  signal ret_V_5_fu_242_p2_n_112 : STD_LOGIC;
  signal ret_V_5_fu_242_p2_n_113 : STD_LOGIC;
  signal ret_V_5_fu_242_p2_n_98 : STD_LOGIC;
  signal ret_V_5_fu_242_p2_n_99 : STD_LOGIC;
  signal ret_V_6_reg_902_reg_n_100 : STD_LOGIC;
  signal ret_V_6_reg_902_reg_n_101 : STD_LOGIC;
  signal ret_V_6_reg_902_reg_n_102 : STD_LOGIC;
  signal ret_V_6_reg_902_reg_n_103 : STD_LOGIC;
  signal ret_V_6_reg_902_reg_n_104 : STD_LOGIC;
  signal ret_V_6_reg_902_reg_n_105 : STD_LOGIC;
  signal ret_V_6_reg_902_reg_n_106 : STD_LOGIC;
  signal ret_V_6_reg_902_reg_n_107 : STD_LOGIC;
  signal ret_V_6_reg_902_reg_n_108 : STD_LOGIC;
  signal ret_V_6_reg_902_reg_n_109 : STD_LOGIC;
  signal ret_V_6_reg_902_reg_n_110 : STD_LOGIC;
  signal ret_V_6_reg_902_reg_n_111 : STD_LOGIC;
  signal ret_V_6_reg_902_reg_n_112 : STD_LOGIC;
  signal ret_V_6_reg_902_reg_n_113 : STD_LOGIC;
  signal ret_V_6_reg_902_reg_n_92 : STD_LOGIC;
  signal ret_V_6_reg_902_reg_n_93 : STD_LOGIC;
  signal ret_V_6_reg_902_reg_n_94 : STD_LOGIC;
  signal ret_V_6_reg_902_reg_n_95 : STD_LOGIC;
  signal ret_V_6_reg_902_reg_n_96 : STD_LOGIC;
  signal ret_V_6_reg_902_reg_n_97 : STD_LOGIC;
  signal ret_V_6_reg_902_reg_n_98 : STD_LOGIC;
  signal ret_V_6_reg_902_reg_n_99 : STD_LOGIC;
  signal \sum_V_fu_454_p2_carry__0_n_10\ : STD_LOGIC;
  signal \sum_V_fu_454_p2_carry__0_n_11\ : STD_LOGIC;
  signal \sum_V_fu_454_p2_carry__0_n_8\ : STD_LOGIC;
  signal \sum_V_fu_454_p2_carry__0_n_9\ : STD_LOGIC;
  signal \sum_V_fu_454_p2_carry__1_n_10\ : STD_LOGIC;
  signal \sum_V_fu_454_p2_carry__1_n_11\ : STD_LOGIC;
  signal \sum_V_fu_454_p2_carry__1_n_8\ : STD_LOGIC;
  signal \sum_V_fu_454_p2_carry__1_n_9\ : STD_LOGIC;
  signal \sum_V_fu_454_p2_carry__2_n_10\ : STD_LOGIC;
  signal \sum_V_fu_454_p2_carry__2_n_11\ : STD_LOGIC;
  signal \sum_V_fu_454_p2_carry__2_n_8\ : STD_LOGIC;
  signal \sum_V_fu_454_p2_carry__2_n_9\ : STD_LOGIC;
  signal \sum_V_fu_454_p2_carry__3_i_1_n_8\ : STD_LOGIC;
  signal \sum_V_fu_454_p2_carry__3_i_2_n_8\ : STD_LOGIC;
  signal \sum_V_fu_454_p2_carry__3_n_10\ : STD_LOGIC;
  signal \sum_V_fu_454_p2_carry__3_n_11\ : STD_LOGIC;
  signal \sum_V_fu_454_p2_carry__3_n_9\ : STD_LOGIC;
  signal sum_V_fu_454_p2_carry_n_10 : STD_LOGIC;
  signal sum_V_fu_454_p2_carry_n_11 : STD_LOGIC;
  signal sum_V_fu_454_p2_carry_n_8 : STD_LOGIC;
  signal sum_V_fu_454_p2_carry_n_9 : STD_LOGIC;
  signal \sum_V_reg_892[2]_i_5_n_8\ : STD_LOGIC;
  signal sum_V_reg_892_reg : STD_LOGIC_VECTOR ( 21 downto 2 );
  signal trunc_ln_fu_460_p4 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal val_V_reg_8760 : STD_LOGIC;
  signal val_V_reg_876_pp0_iter1_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \val_V_reg_876_reg_n_8_[0]\ : STD_LOGIC;
  signal \val_V_reg_876_reg_n_8_[1]\ : STD_LOGIC;
  signal \val_V_reg_876_reg_n_8_[2]\ : STD_LOGIC;
  signal \val_V_reg_876_reg_n_8_[3]\ : STD_LOGIC;
  signal \val_V_reg_876_reg_n_8_[4]\ : STD_LOGIC;
  signal \val_V_reg_876_reg_n_8_[5]\ : STD_LOGIC;
  signal \val_V_reg_876_reg_n_8_[6]\ : STD_LOGIC;
  signal \val_V_reg_876_reg_n_8_[7]\ : STD_LOGIC;
  signal x0_V_fu_84 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_detect_din0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_detect_din0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_detect_din0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_detect_din0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_mul_ln895_reg_907_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln895_reg_907_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln895_reg_907_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln895_reg_907_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln895_reg_907_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln895_reg_907_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_mul_ln895_reg_907_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_mul_ln895_reg_907_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_mul_ln895_reg_907_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mul_ln895_reg_907_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 22 );
  signal NLW_mul_ln895_reg_907_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_ps_V_fu_437_p2__0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ps_V_fu_437_p2__0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_ps_V_fu_437_p2__26_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ps_V_fu_437_p2__26_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_ps_V_fu_437_p2__54_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_ps_V_fu_437_p2__54_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_ret_V_5_fu_242_p2_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_ret_V_5_fu_242_p2_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_ret_V_5_fu_242_p2_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_ret_V_5_fu_242_p2_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_ret_V_5_fu_242_p2_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_ret_V_5_fu_242_p2_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_ret_V_5_fu_242_p2_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_ret_V_5_fu_242_p2_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_ret_V_5_fu_242_p2_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ret_V_5_fu_242_p2_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 16 );
  signal NLW_ret_V_5_fu_242_p2_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_ret_V_6_reg_902_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_ret_V_6_reg_902_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_ret_V_6_reg_902_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_ret_V_6_reg_902_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_ret_V_6_reg_902_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_ret_V_6_reg_902_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_ret_V_6_reg_902_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_ret_V_6_reg_902_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_ret_V_6_reg_902_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ret_V_6_reg_902_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 22 );
  signal NLW_ret_V_6_reg_902_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_sum_V_fu_454_p2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_sum_V_fu_454_p2_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \SRL_SIG_reg[1023][0]_srl32_i_1\ : label is "soft_lutpair86";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute SOFT_HLUTNM of \ap_enable_reg_pp0_iter0_i_1__0\ : label is "soft_lutpair86";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \buffer_16_V_fu_148_reg[0]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg ";
  attribute srl_name : string;
  attribute srl_name of \buffer_16_V_fu_148_reg[0]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg[0]_srl2 ";
  attribute srl_bus_name of \buffer_16_V_fu_148_reg[1]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg ";
  attribute srl_name of \buffer_16_V_fu_148_reg[1]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg[1]_srl2 ";
  attribute srl_bus_name of \buffer_16_V_fu_148_reg[2]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg ";
  attribute srl_name of \buffer_16_V_fu_148_reg[2]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg[2]_srl2 ";
  attribute srl_bus_name of \buffer_16_V_fu_148_reg[3]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg ";
  attribute srl_name of \buffer_16_V_fu_148_reg[3]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg[3]_srl2 ";
  attribute srl_bus_name of \buffer_16_V_fu_148_reg[4]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg ";
  attribute srl_name of \buffer_16_V_fu_148_reg[4]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg[4]_srl2 ";
  attribute srl_bus_name of \buffer_16_V_fu_148_reg[5]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg ";
  attribute srl_name of \buffer_16_V_fu_148_reg[5]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg[5]_srl2 ";
  attribute srl_bus_name of \buffer_16_V_fu_148_reg[6]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg ";
  attribute srl_name of \buffer_16_V_fu_148_reg[6]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg[6]_srl2 ";
  attribute srl_bus_name of \buffer_16_V_fu_148_reg[7]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg ";
  attribute srl_name of \buffer_16_V_fu_148_reg[7]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_16_V_fu_148_reg[7]_srl2 ";
  attribute srl_bus_name of \buffer_20_V_fu_164_reg[0]_srl11\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg ";
  attribute srl_name of \buffer_20_V_fu_164_reg[0]_srl11\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg[0]_srl11 ";
  attribute srl_bus_name of \buffer_20_V_fu_164_reg[1]_srl11\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg ";
  attribute srl_name of \buffer_20_V_fu_164_reg[1]_srl11\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg[1]_srl11 ";
  attribute srl_bus_name of \buffer_20_V_fu_164_reg[2]_srl11\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg ";
  attribute srl_name of \buffer_20_V_fu_164_reg[2]_srl11\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg[2]_srl11 ";
  attribute srl_bus_name of \buffer_20_V_fu_164_reg[3]_srl11\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg ";
  attribute srl_name of \buffer_20_V_fu_164_reg[3]_srl11\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg[3]_srl11 ";
  attribute srl_bus_name of \buffer_20_V_fu_164_reg[4]_srl11\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg ";
  attribute srl_name of \buffer_20_V_fu_164_reg[4]_srl11\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg[4]_srl11 ";
  attribute srl_bus_name of \buffer_20_V_fu_164_reg[5]_srl11\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg ";
  attribute srl_name of \buffer_20_V_fu_164_reg[5]_srl11\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg[5]_srl11 ";
  attribute srl_bus_name of \buffer_20_V_fu_164_reg[6]_srl11\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg ";
  attribute srl_name of \buffer_20_V_fu_164_reg[6]_srl11\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg[6]_srl11 ";
  attribute srl_bus_name of \buffer_20_V_fu_164_reg[7]_srl11\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg ";
  attribute srl_name of \buffer_20_V_fu_164_reg[7]_srl11\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_20_V_fu_164_reg[7]_srl11 ";
  attribute srl_bus_name of \buffer_2_V_fu_92_reg[0]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg ";
  attribute srl_name of \buffer_2_V_fu_92_reg[0]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg[0]_srl2 ";
  attribute srl_bus_name of \buffer_2_V_fu_92_reg[1]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg ";
  attribute srl_name of \buffer_2_V_fu_92_reg[1]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg[1]_srl2 ";
  attribute srl_bus_name of \buffer_2_V_fu_92_reg[2]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg ";
  attribute srl_name of \buffer_2_V_fu_92_reg[2]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg[2]_srl2 ";
  attribute srl_bus_name of \buffer_2_V_fu_92_reg[3]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg ";
  attribute srl_name of \buffer_2_V_fu_92_reg[3]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg[3]_srl2 ";
  attribute srl_bus_name of \buffer_2_V_fu_92_reg[4]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg ";
  attribute srl_name of \buffer_2_V_fu_92_reg[4]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg[4]_srl2 ";
  attribute srl_bus_name of \buffer_2_V_fu_92_reg[5]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg ";
  attribute srl_name of \buffer_2_V_fu_92_reg[5]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg[5]_srl2 ";
  attribute srl_bus_name of \buffer_2_V_fu_92_reg[6]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg ";
  attribute srl_name of \buffer_2_V_fu_92_reg[6]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg[6]_srl2 ";
  attribute srl_bus_name of \buffer_2_V_fu_92_reg[7]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg ";
  attribute srl_name of \buffer_2_V_fu_92_reg[7]_srl2\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_2_V_fu_92_reg[7]_srl2 ";
  attribute srl_bus_name of \buffer_6_V_fu_108_reg[0]_srl8\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg ";
  attribute srl_name of \buffer_6_V_fu_108_reg[0]_srl8\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg[0]_srl8 ";
  attribute srl_bus_name of \buffer_6_V_fu_108_reg[1]_srl8\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg ";
  attribute srl_name of \buffer_6_V_fu_108_reg[1]_srl8\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg[1]_srl8 ";
  attribute srl_bus_name of \buffer_6_V_fu_108_reg[2]_srl8\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg ";
  attribute srl_name of \buffer_6_V_fu_108_reg[2]_srl8\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg[2]_srl8 ";
  attribute srl_bus_name of \buffer_6_V_fu_108_reg[3]_srl8\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg ";
  attribute srl_name of \buffer_6_V_fu_108_reg[3]_srl8\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg[3]_srl8 ";
  attribute srl_bus_name of \buffer_6_V_fu_108_reg[4]_srl8\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg ";
  attribute srl_name of \buffer_6_V_fu_108_reg[4]_srl8\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg[4]_srl8 ";
  attribute srl_bus_name of \buffer_6_V_fu_108_reg[5]_srl8\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg ";
  attribute srl_name of \buffer_6_V_fu_108_reg[5]_srl8\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg[5]_srl8 ";
  attribute srl_bus_name of \buffer_6_V_fu_108_reg[6]_srl8\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg ";
  attribute srl_name of \buffer_6_V_fu_108_reg[6]_srl8\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg[6]_srl8 ";
  attribute srl_bus_name of \buffer_6_V_fu_108_reg[7]_srl8\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg ";
  attribute srl_name of \buffer_6_V_fu_108_reg[7]_srl8\ : label is "U0/\grp_Detecteur2_fu_226/grp_Seuil_calc2_fu_100/grp_Seuil_calc2_do_gen_fu_56/buffer_6_V_fu_108_reg[7]_srl8 ";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mul_ln895_reg_907_reg : label is "{SYNTH-12 {cell *THIS*}}";
  attribute HLUTNM : string;
  attribute HLUTNM of \ps_V_fu_437_p2__0_carry__0_i_1\ : label is "lutpair4";
  attribute HLUTNM of \ps_V_fu_437_p2__0_carry__0_i_2\ : label is "lutpair3";
  attribute HLUTNM of \ps_V_fu_437_p2__0_carry__0_i_3\ : label is "lutpair2";
  attribute HLUTNM of \ps_V_fu_437_p2__0_carry__0_i_4\ : label is "lutpair1";
  attribute HLUTNM of \ps_V_fu_437_p2__0_carry__0_i_6\ : label is "lutpair4";
  attribute HLUTNM of \ps_V_fu_437_p2__0_carry__0_i_7\ : label is "lutpair3";
  attribute HLUTNM of \ps_V_fu_437_p2__0_carry__0_i_8\ : label is "lutpair2";
  attribute HLUTNM of \ps_V_fu_437_p2__0_carry_i_1\ : label is "lutpair0";
  attribute HLUTNM of \ps_V_fu_437_p2__0_carry_i_4\ : label is "lutpair1";
  attribute HLUTNM of \ps_V_fu_437_p2__0_carry_i_5\ : label is "lutpair0";
  attribute HLUTNM of \ps_V_fu_437_p2__26_carry__0_i_1\ : label is "lutpair9";
  attribute HLUTNM of \ps_V_fu_437_p2__26_carry__0_i_2\ : label is "lutpair8";
  attribute HLUTNM of \ps_V_fu_437_p2__26_carry__0_i_3\ : label is "lutpair7";
  attribute HLUTNM of \ps_V_fu_437_p2__26_carry__0_i_4\ : label is "lutpair6";
  attribute HLUTNM of \ps_V_fu_437_p2__26_carry__0_i_6\ : label is "lutpair9";
  attribute HLUTNM of \ps_V_fu_437_p2__26_carry__0_i_7\ : label is "lutpair8";
  attribute HLUTNM of \ps_V_fu_437_p2__26_carry__0_i_8\ : label is "lutpair7";
  attribute HLUTNM of \ps_V_fu_437_p2__26_carry_i_1\ : label is "lutpair5";
  attribute HLUTNM of \ps_V_fu_437_p2__26_carry_i_4\ : label is "lutpair6";
  attribute HLUTNM of \ps_V_fu_437_p2__26_carry_i_5\ : label is "lutpair5";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \ps_V_fu_437_p2__54_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \ps_V_fu_437_p2__54_carry__0\ : label is 35;
  attribute SOFT_HLUTNM of \ps_V_fu_437_p2__54_carry__0_i_10\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \ps_V_fu_437_p2__54_carry__0_i_11\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \ps_V_fu_437_p2__54_carry__0_i_13\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \ps_V_fu_437_p2__54_carry__0_i_14\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \ps_V_fu_437_p2__54_carry__0_i_15\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \ps_V_fu_437_p2__54_carry__0_i_9\ : label is "soft_lutpair89";
  attribute ADDER_THRESHOLD of \ps_V_fu_437_p2__54_carry__1\ : label is 35;
  attribute SOFT_HLUTNM of \ps_V_fu_437_p2__54_carry_i_8\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \ps_V_fu_437_p2__54_carry_i_9\ : label is "soft_lutpair90";
  attribute METHODOLOGY_DRC_VIOS of ret_V_5_fu_242_p2 : label is "{SYNTH-11 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of sum_V_fu_454_p2_carry : label is 35;
  attribute ADDER_THRESHOLD of \sum_V_fu_454_p2_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_V_fu_454_p2_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_V_fu_454_p2_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_V_fu_454_p2_carry__3\ : label is 35;
begin
  \ap_CS_fsm_reg[1]_0\ <= \^ap_cs_fsm_reg[1]_0\;
  ap_enable_reg_pp0_iter0_reg_0 <= \^ap_enable_reg_pp0_iter0_reg_0\;
  dout_valid_reg <= \^dout_valid_reg\;
  pop <= \^pop\;
\SRL_SIG_reg[1023][0]_srl32_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter4_reg_n_8,
      I1 => detect_1_full_n,
      I2 => \^ap_enable_reg_pp0_iter0_reg_0\,
      I3 => dbl2scalc_1_empty_n,
      O => ce
    );
Seuil_calc2_mac_mdEe_U22: entity work.bd_0_hls_inst_0_Seuil_calc2_mac_mdEe
     port map (
      D(2) => trunc_ln_fu_460_p4(15),
      D(1) => trunc_ln_fu_460_p4(13),
      D(0) => trunc_ln_fu_460_p4(6),
      O(3) => Seuil_calc2_mac_mdEe_U22_n_26,
      O(2) => Seuil_calc2_mac_mdEe_U22_n_27,
      O(1) => Seuil_calc2_mac_mdEe_U22_n_28,
      O(0) => Seuil_calc2_mac_mdEe_U22_n_29,
      P(16) => RESIZE0,
      P(15 downto 0) => grp_fu_664_p3(15 downto 0),
      Q(18 downto 0) => p_0108_0_reg_221(21 downto 3),
      S(0) => \sum_V_reg_892[2]_i_5_n_8\,
      SR(0) => res_2_V_reg_897,
      ap_enable_reg_pp0_iter2 => ap_enable_reg_pp0_iter2,
      ap_enable_reg_pp0_iter3 => ap_enable_reg_pp0_iter3,
      clock => clock,
      dbl2scalc_1_empty_n => dbl2scalc_1_empty_n,
      detect_1_full_n => detect_1_full_n,
      \^p\(3) => Seuil_calc2_mac_mdEe_U22_n_30,
      \^p\(2) => Seuil_calc2_mac_mdEe_U22_n_31,
      \^p\(1) => Seuil_calc2_mac_mdEe_U22_n_32,
      \^p\(0) => Seuil_calc2_mac_mdEe_U22_n_33,
      p_0(3) => Seuil_calc2_mac_mdEe_U22_n_34,
      p_0(2) => Seuil_calc2_mac_mdEe_U22_n_35,
      p_0(1) => Seuil_calc2_mac_mdEe_U22_n_36,
      p_0(0) => Seuil_calc2_mac_mdEe_U22_n_37,
      \p_0108_0_reg_221_reg[13]\(3) => Seuil_calc2_mac_mdEe_U22_n_53,
      \p_0108_0_reg_221_reg[13]\(2) => Seuil_calc2_mac_mdEe_U22_n_54,
      \p_0108_0_reg_221_reg[13]\(1) => Seuil_calc2_mac_mdEe_U22_n_55,
      \p_0108_0_reg_221_reg[13]\(0) => Seuil_calc2_mac_mdEe_U22_n_56,
      \p_0108_0_reg_221_reg[17]\(3) => Seuil_calc2_mac_mdEe_U22_n_57,
      \p_0108_0_reg_221_reg[17]\(2) => Seuil_calc2_mac_mdEe_U22_n_58,
      \p_0108_0_reg_221_reg[17]\(1) => Seuil_calc2_mac_mdEe_U22_n_59,
      \p_0108_0_reg_221_reg[17]\(0) => Seuil_calc2_mac_mdEe_U22_n_60,
      \p_0108_0_reg_221_reg[5]\(2) => Seuil_calc2_mac_mdEe_U22_n_46,
      \p_0108_0_reg_221_reg[5]\(1) => Seuil_calc2_mac_mdEe_U22_n_47,
      \p_0108_0_reg_221_reg[5]\(0) => Seuil_calc2_mac_mdEe_U22_n_48,
      \p_0108_0_reg_221_reg[9]\(3) => Seuil_calc2_mac_mdEe_U22_n_49,
      \p_0108_0_reg_221_reg[9]\(2) => Seuil_calc2_mac_mdEe_U22_n_50,
      \p_0108_0_reg_221_reg[9]\(1) => Seuil_calc2_mac_mdEe_U22_n_51,
      \p_0108_0_reg_221_reg[9]\(0) => Seuil_calc2_mac_mdEe_U22_n_52,
      p_1(3) => Seuil_calc2_mac_mdEe_U22_n_38,
      p_1(2) => Seuil_calc2_mac_mdEe_U22_n_39,
      p_1(1) => Seuil_calc2_mac_mdEe_U22_n_40,
      p_1(0) => Seuil_calc2_mac_mdEe_U22_n_41,
      p_10(7 downto 0) => p_0343_0_fu_80(7 downto 0),
      p_2(3) => Seuil_calc2_mac_mdEe_U22_n_42,
      p_2(2) => Seuil_calc2_mac_mdEe_U22_n_43,
      p_2(1) => Seuil_calc2_mac_mdEe_U22_n_44,
      p_2(0) => Seuil_calc2_mac_mdEe_U22_n_45,
      p_3(2) => Seuil_calc2_mac_mdEe_U22_n_61,
      p_3(1) => Seuil_calc2_mac_mdEe_U22_n_62,
      p_3(0) => Seuil_calc2_mac_mdEe_U22_n_63,
      p_4(15) => ret_V_5_fu_242_p2_n_98,
      p_4(14) => ret_V_5_fu_242_p2_n_99,
      p_4(13) => ret_V_5_fu_242_p2_n_100,
      p_4(12) => ret_V_5_fu_242_p2_n_101,
      p_4(11) => ret_V_5_fu_242_p2_n_102,
      p_4(10) => ret_V_5_fu_242_p2_n_103,
      p_4(9) => ret_V_5_fu_242_p2_n_104,
      p_4(8) => ret_V_5_fu_242_p2_n_105,
      p_4(7) => ret_V_5_fu_242_p2_n_106,
      p_4(6) => ret_V_5_fu_242_p2_n_107,
      p_4(5) => ret_V_5_fu_242_p2_n_108,
      p_4(4) => ret_V_5_fu_242_p2_n_109,
      p_4(3) => ret_V_5_fu_242_p2_n_110,
      p_4(2) => ret_V_5_fu_242_p2_n_111,
      p_4(1) => ret_V_5_fu_242_p2_n_112,
      p_4(0) => ret_V_5_fu_242_p2_n_113,
      p_5 => ap_enable_reg_pp0_iter1_reg_n_8,
      p_6 => \^ap_enable_reg_pp0_iter0_reg_0\,
      p_7 => ap_enable_reg_pp0_iter4_reg_n_8,
      p_8 => \^ap_cs_fsm_reg[1]_0\,
      p_9(7 downto 0) => x0_V_fu_84(7 downto 0),
      \res_2_V_reg_897_reg[5]\ => \res_2_V_reg_897[16]_i_2_n_8\,
      \res_2_V_reg_897_reg[5]_0\ => \^dout_valid_reg\,
      \res_2_V_reg_897_reg[5]_1\ => \res_2_V_reg_897[16]_i_3_n_8\,
      \sum_V_reg_892_reg[21]\(18 downto 0) => sum_V_reg_892_reg(21 downto 3)
    );
\ap_CS_fsm[1]_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ap_CS_fsm_state1,
      I1 => \ap_CS_fsm_reg[1]_2\(0),
      O => \ap_CS_fsm_reg[0]_0\(0)
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => '1',
      D => '0',
      Q => ap_CS_fsm_state1,
      S => reset
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => '1',
      Q => \^ap_cs_fsm_reg[1]_0\,
      R => reset
    );
\ap_enable_reg_pp0_iter0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ap_CS_fsm_state1,
      I1 => \^ap_enable_reg_pp0_iter0_reg_0\,
      O => \ap_enable_reg_pp0_iter0_i_1__0_n_8\
    );
ap_enable_reg_pp0_iter0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \ap_enable_reg_pp0_iter0_i_1__0_n_8\,
      Q => \^ap_enable_reg_pp0_iter0_reg_0\,
      R => reset
    );
\ap_enable_reg_pp0_iter1_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAFFBABAAAAAAAAA"
    )
        port map (
      I0 => reset,
      I1 => dbl2scalc_1_empty_n,
      I2 => \^ap_enable_reg_pp0_iter0_reg_0\,
      I3 => detect_1_full_n,
      I4 => ap_enable_reg_pp0_iter4_reg_n_8,
      I5 => ap_CS_fsm_state1,
      O => ap_enable_reg_pp0_iter4
    );
ap_enable_reg_pp0_iter1_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B0BB"
    )
        port map (
      I0 => dbl2scalc_1_empty_n,
      I1 => \^ap_enable_reg_pp0_iter0_reg_0\,
      I2 => detect_1_full_n,
      I3 => ap_enable_reg_pp0_iter4_reg_n_8,
      O => \^dout_valid_reg\
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \^dout_valid_reg\,
      D => \^ap_enable_reg_pp0_iter0_reg_0\,
      Q => ap_enable_reg_pp0_iter1_reg_n_8,
      R => ap_enable_reg_pp0_iter4
    );
ap_enable_reg_pp0_iter2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \^dout_valid_reg\,
      D => ap_enable_reg_pp0_iter1_reg_n_8,
      Q => ap_enable_reg_pp0_iter2,
      R => ap_enable_reg_pp0_iter4
    );
ap_enable_reg_pp0_iter3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \^dout_valid_reg\,
      D => ap_enable_reg_pp0_iter2,
      Q => ap_enable_reg_pp0_iter3,
      R => ap_enable_reg_pp0_iter4
    );
ap_enable_reg_pp0_iter4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \^dout_valid_reg\,
      D => ap_enable_reg_pp0_iter3,
      Q => ap_enable_reg_pp0_iter4_reg_n_8,
      R => ap_enable_reg_pp0_iter4
    );
\buffer_14_V_fu_140_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_15_V_fu_144(0),
      Q => buffer_14_V_fu_140(0),
      R => '0'
    );
\buffer_14_V_fu_140_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_15_V_fu_144(1),
      Q => buffer_14_V_fu_140(1),
      R => '0'
    );
\buffer_14_V_fu_140_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_15_V_fu_144(2),
      Q => buffer_14_V_fu_140(2),
      R => '0'
    );
\buffer_14_V_fu_140_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_15_V_fu_144(3),
      Q => buffer_14_V_fu_140(3),
      R => '0'
    );
\buffer_14_V_fu_140_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_15_V_fu_144(4),
      Q => buffer_14_V_fu_140(4),
      R => '0'
    );
\buffer_14_V_fu_140_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_15_V_fu_144(5),
      Q => buffer_14_V_fu_140(5),
      R => '0'
    );
\buffer_14_V_fu_140_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_15_V_fu_144(6),
      Q => buffer_14_V_fu_140(6),
      R => '0'
    );
\buffer_14_V_fu_140_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_15_V_fu_144(7),
      Q => buffer_14_V_fu_140(7),
      R => '0'
    );
\buffer_15_V_fu_144_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_16_V_fu_148_reg[0]_srl2_n_8\,
      Q => buffer_15_V_fu_144(0),
      R => '0'
    );
\buffer_15_V_fu_144_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_16_V_fu_148_reg[1]_srl2_n_8\,
      Q => buffer_15_V_fu_144(1),
      R => '0'
    );
\buffer_15_V_fu_144_reg[2]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_16_V_fu_148_reg[2]_srl2_n_8\,
      Q => buffer_15_V_fu_144(2),
      R => '0'
    );
\buffer_15_V_fu_144_reg[3]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_16_V_fu_148_reg[3]_srl2_n_8\,
      Q => buffer_15_V_fu_144(3),
      R => '0'
    );
\buffer_15_V_fu_144_reg[4]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_16_V_fu_148_reg[4]_srl2_n_8\,
      Q => buffer_15_V_fu_144(4),
      R => '0'
    );
\buffer_15_V_fu_144_reg[5]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_16_V_fu_148_reg[5]_srl2_n_8\,
      Q => buffer_15_V_fu_144(5),
      R => '0'
    );
\buffer_15_V_fu_144_reg[6]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_16_V_fu_148_reg[6]_srl2_n_8\,
      Q => buffer_15_V_fu_144(6),
      R => '0'
    );
\buffer_15_V_fu_144_reg[7]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_16_V_fu_148_reg[7]_srl2_n_8\,
      Q => buffer_15_V_fu_144(7),
      R => '0'
    );
\buffer_16_V_fu_148_reg[0]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => buffer_18_V_fu_156(0),
      Q => \buffer_16_V_fu_148_reg[0]_srl2_n_8\
    );
\buffer_16_V_fu_148_reg[1]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => buffer_18_V_fu_156(1),
      Q => \buffer_16_V_fu_148_reg[1]_srl2_n_8\
    );
\buffer_16_V_fu_148_reg[2]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => buffer_18_V_fu_156(2),
      Q => \buffer_16_V_fu_148_reg[2]_srl2_n_8\
    );
\buffer_16_V_fu_148_reg[3]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => buffer_18_V_fu_156(3),
      Q => \buffer_16_V_fu_148_reg[3]_srl2_n_8\
    );
\buffer_16_V_fu_148_reg[4]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => buffer_18_V_fu_156(4),
      Q => \buffer_16_V_fu_148_reg[4]_srl2_n_8\
    );
\buffer_16_V_fu_148_reg[5]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => buffer_18_V_fu_156(5),
      Q => \buffer_16_V_fu_148_reg[5]_srl2_n_8\
    );
\buffer_16_V_fu_148_reg[6]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => buffer_18_V_fu_156(6),
      Q => \buffer_16_V_fu_148_reg[6]_srl2_n_8\
    );
\buffer_16_V_fu_148_reg[7]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => buffer_18_V_fu_156(7),
      Q => \buffer_16_V_fu_148_reg[7]_srl2_n_8\
    );
\buffer_18_V_fu_156[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2A200A2"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter2,
      I1 => ap_enable_reg_pp0_iter4_reg_n_8,
      I2 => detect_1_full_n,
      I3 => \^ap_enable_reg_pp0_iter0_reg_0\,
      I4 => dbl2scalc_1_empty_n,
      O => buffer_10_V_fu_1240
    );
\buffer_18_V_fu_156_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_19_V_fu_160(0),
      Q => buffer_18_V_fu_156(0),
      R => '0'
    );
\buffer_18_V_fu_156_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_19_V_fu_160(1),
      Q => buffer_18_V_fu_156(1),
      R => '0'
    );
\buffer_18_V_fu_156_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_19_V_fu_160(2),
      Q => buffer_18_V_fu_156(2),
      R => '0'
    );
\buffer_18_V_fu_156_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_19_V_fu_160(3),
      Q => buffer_18_V_fu_156(3),
      R => '0'
    );
\buffer_18_V_fu_156_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_19_V_fu_160(4),
      Q => buffer_18_V_fu_156(4),
      R => '0'
    );
\buffer_18_V_fu_156_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_19_V_fu_160(5),
      Q => buffer_18_V_fu_156(5),
      R => '0'
    );
\buffer_18_V_fu_156_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_19_V_fu_160(6),
      Q => buffer_18_V_fu_156(6),
      R => '0'
    );
\buffer_18_V_fu_156_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_19_V_fu_160(7),
      Q => buffer_18_V_fu_156(7),
      R => '0'
    );
\buffer_19_V_fu_160_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_20_V_fu_164_reg[0]_srl11_n_8\,
      Q => buffer_19_V_fu_160(0),
      R => '0'
    );
\buffer_19_V_fu_160_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_20_V_fu_164_reg[1]_srl11_n_8\,
      Q => buffer_19_V_fu_160(1),
      R => '0'
    );
\buffer_19_V_fu_160_reg[2]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_20_V_fu_164_reg[2]_srl11_n_8\,
      Q => buffer_19_V_fu_160(2),
      R => '0'
    );
\buffer_19_V_fu_160_reg[3]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_20_V_fu_164_reg[3]_srl11_n_8\,
      Q => buffer_19_V_fu_160(3),
      R => '0'
    );
\buffer_19_V_fu_160_reg[4]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_20_V_fu_164_reg[4]_srl11_n_8\,
      Q => buffer_19_V_fu_160(4),
      R => '0'
    );
\buffer_19_V_fu_160_reg[5]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_20_V_fu_164_reg[5]_srl11_n_8\,
      Q => buffer_19_V_fu_160(5),
      R => '0'
    );
\buffer_19_V_fu_160_reg[6]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_20_V_fu_164_reg[6]_srl11_n_8\,
      Q => buffer_19_V_fu_160(6),
      R => '0'
    );
\buffer_19_V_fu_160_reg[7]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_20_V_fu_164_reg[7]_srl11_n_8\,
      Q => buffer_19_V_fu_160(7),
      R => '0'
    );
\buffer_1_V_fu_88_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_2_V_fu_92_reg[0]_srl2_n_8\,
      Q => buffer_1_V_fu_88(0),
      R => '0'
    );
\buffer_1_V_fu_88_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_2_V_fu_92_reg[1]_srl2_n_8\,
      Q => buffer_1_V_fu_88(1),
      R => '0'
    );
\buffer_1_V_fu_88_reg[2]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_2_V_fu_92_reg[2]_srl2_n_8\,
      Q => buffer_1_V_fu_88(2),
      R => '0'
    );
\buffer_1_V_fu_88_reg[3]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_2_V_fu_92_reg[3]_srl2_n_8\,
      Q => buffer_1_V_fu_88(3),
      R => '0'
    );
\buffer_1_V_fu_88_reg[4]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_2_V_fu_92_reg[4]_srl2_n_8\,
      Q => buffer_1_V_fu_88(4),
      R => '0'
    );
\buffer_1_V_fu_88_reg[5]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_2_V_fu_92_reg[5]_srl2_n_8\,
      Q => buffer_1_V_fu_88(5),
      R => '0'
    );
\buffer_1_V_fu_88_reg[6]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_2_V_fu_92_reg[6]_srl2_n_8\,
      Q => buffer_1_V_fu_88(6),
      R => '0'
    );
\buffer_1_V_fu_88_reg[7]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_2_V_fu_92_reg[7]_srl2_n_8\,
      Q => buffer_1_V_fu_88(7),
      R => '0'
    );
\buffer_20_V_fu_164_reg[0]_srl11\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => val_V_reg_876_pp0_iter1_reg(0),
      Q => \buffer_20_V_fu_164_reg[0]_srl11_n_8\
    );
\buffer_20_V_fu_164_reg[1]_srl11\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => val_V_reg_876_pp0_iter1_reg(1),
      Q => \buffer_20_V_fu_164_reg[1]_srl11_n_8\
    );
\buffer_20_V_fu_164_reg[2]_srl11\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => val_V_reg_876_pp0_iter1_reg(2),
      Q => \buffer_20_V_fu_164_reg[2]_srl11_n_8\
    );
\buffer_20_V_fu_164_reg[3]_srl11\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => val_V_reg_876_pp0_iter1_reg(3),
      Q => \buffer_20_V_fu_164_reg[3]_srl11_n_8\
    );
\buffer_20_V_fu_164_reg[4]_srl11\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => val_V_reg_876_pp0_iter1_reg(4),
      Q => \buffer_20_V_fu_164_reg[4]_srl11_n_8\
    );
\buffer_20_V_fu_164_reg[5]_srl11\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => val_V_reg_876_pp0_iter1_reg(5),
      Q => \buffer_20_V_fu_164_reg[5]_srl11_n_8\
    );
\buffer_20_V_fu_164_reg[6]_srl11\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => val_V_reg_876_pp0_iter1_reg(6),
      Q => \buffer_20_V_fu_164_reg[6]_srl11_n_8\
    );
\buffer_20_V_fu_164_reg[7]_srl11\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => val_V_reg_876_pp0_iter1_reg(7),
      Q => \buffer_20_V_fu_164_reg[7]_srl11_n_8\
    );
\buffer_2_V_fu_92_reg[0]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => buffer_4_V_fu_100(0),
      Q => \buffer_2_V_fu_92_reg[0]_srl2_n_8\
    );
\buffer_2_V_fu_92_reg[1]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => buffer_4_V_fu_100(1),
      Q => \buffer_2_V_fu_92_reg[1]_srl2_n_8\
    );
\buffer_2_V_fu_92_reg[2]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => buffer_4_V_fu_100(2),
      Q => \buffer_2_V_fu_92_reg[2]_srl2_n_8\
    );
\buffer_2_V_fu_92_reg[3]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => buffer_4_V_fu_100(3),
      Q => \buffer_2_V_fu_92_reg[3]_srl2_n_8\
    );
\buffer_2_V_fu_92_reg[4]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => buffer_4_V_fu_100(4),
      Q => \buffer_2_V_fu_92_reg[4]_srl2_n_8\
    );
\buffer_2_V_fu_92_reg[5]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => buffer_4_V_fu_100(5),
      Q => \buffer_2_V_fu_92_reg[5]_srl2_n_8\
    );
\buffer_2_V_fu_92_reg[6]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => buffer_4_V_fu_100(6),
      Q => \buffer_2_V_fu_92_reg[6]_srl2_n_8\
    );
\buffer_2_V_fu_92_reg[7]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => buffer_4_V_fu_100(7),
      Q => \buffer_2_V_fu_92_reg[7]_srl2_n_8\
    );
\buffer_4_V_fu_100_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_5_V_fu_104(0),
      Q => buffer_4_V_fu_100(0),
      R => '0'
    );
\buffer_4_V_fu_100_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_5_V_fu_104(1),
      Q => buffer_4_V_fu_100(1),
      R => '0'
    );
\buffer_4_V_fu_100_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_5_V_fu_104(2),
      Q => buffer_4_V_fu_100(2),
      R => '0'
    );
\buffer_4_V_fu_100_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_5_V_fu_104(3),
      Q => buffer_4_V_fu_100(3),
      R => '0'
    );
\buffer_4_V_fu_100_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_5_V_fu_104(4),
      Q => buffer_4_V_fu_100(4),
      R => '0'
    );
\buffer_4_V_fu_100_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_5_V_fu_104(5),
      Q => buffer_4_V_fu_100(5),
      R => '0'
    );
\buffer_4_V_fu_100_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_5_V_fu_104(6),
      Q => buffer_4_V_fu_100(6),
      R => '0'
    );
\buffer_4_V_fu_100_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_5_V_fu_104(7),
      Q => buffer_4_V_fu_100(7),
      R => '0'
    );
\buffer_5_V_fu_104_reg[0]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_6_V_fu_108_reg[0]_srl8_n_8\,
      Q => buffer_5_V_fu_104(0),
      R => '0'
    );
\buffer_5_V_fu_104_reg[1]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_6_V_fu_108_reg[1]_srl8_n_8\,
      Q => buffer_5_V_fu_104(1),
      R => '0'
    );
\buffer_5_V_fu_104_reg[2]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_6_V_fu_108_reg[2]_srl8_n_8\,
      Q => buffer_5_V_fu_104(2),
      R => '0'
    );
\buffer_5_V_fu_104_reg[3]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_6_V_fu_108_reg[3]_srl8_n_8\,
      Q => buffer_5_V_fu_104(3),
      R => '0'
    );
\buffer_5_V_fu_104_reg[4]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_6_V_fu_108_reg[4]_srl8_n_8\,
      Q => buffer_5_V_fu_104(4),
      R => '0'
    );
\buffer_5_V_fu_104_reg[5]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_6_V_fu_108_reg[5]_srl8_n_8\,
      Q => buffer_5_V_fu_104(5),
      R => '0'
    );
\buffer_5_V_fu_104_reg[6]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_6_V_fu_108_reg[6]_srl8_n_8\,
      Q => buffer_5_V_fu_104(6),
      R => '0'
    );
\buffer_5_V_fu_104_reg[7]__0\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => \buffer_6_V_fu_108_reg[7]_srl8_n_8\,
      Q => buffer_5_V_fu_104(7),
      R => '0'
    );
\buffer_6_V_fu_108_reg[0]_srl8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => buffer_14_V_fu_140(0),
      Q => \buffer_6_V_fu_108_reg[0]_srl8_n_8\
    );
\buffer_6_V_fu_108_reg[1]_srl8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => buffer_14_V_fu_140(1),
      Q => \buffer_6_V_fu_108_reg[1]_srl8_n_8\
    );
\buffer_6_V_fu_108_reg[2]_srl8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => buffer_14_V_fu_140(2),
      Q => \buffer_6_V_fu_108_reg[2]_srl8_n_8\
    );
\buffer_6_V_fu_108_reg[3]_srl8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => buffer_14_V_fu_140(3),
      Q => \buffer_6_V_fu_108_reg[3]_srl8_n_8\
    );
\buffer_6_V_fu_108_reg[4]_srl8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => buffer_14_V_fu_140(4),
      Q => \buffer_6_V_fu_108_reg[4]_srl8_n_8\
    );
\buffer_6_V_fu_108_reg[5]_srl8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => buffer_14_V_fu_140(5),
      Q => \buffer_6_V_fu_108_reg[5]_srl8_n_8\
    );
\buffer_6_V_fu_108_reg[6]_srl8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => buffer_14_V_fu_140(6),
      Q => \buffer_6_V_fu_108_reg[6]_srl8_n_8\
    );
\buffer_6_V_fu_108_reg[7]_srl8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => buffer_10_V_fu_1240,
      CLK => clock,
      D => buffer_14_V_fu_140(7),
      Q => \buffer_6_V_fu_108_reg[7]_srl8_n_8\
    );
detect_din0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => detect_din0_carry_n_8,
      CO(2) => detect_din0_carry_n_9,
      CO(1) => detect_din0_carry_n_10,
      CO(0) => detect_din0_carry_n_11,
      CYINIT => '0',
      DI(3) => detect_din0_carry_i_1_n_8,
      DI(2) => detect_din0_carry_i_2_n_8,
      DI(1) => detect_din0_carry_i_3_n_8,
      DI(0) => detect_din0_carry_i_4_n_8,
      O(3 downto 0) => NLW_detect_din0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => detect_din0_carry_i_5_n_8,
      S(2) => detect_din0_carry_i_6_n_8,
      S(1) => detect_din0_carry_i_7_n_8,
      S(0) => detect_din0_carry_i_8_n_8
    );
\detect_din0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => detect_din0_carry_n_8,
      CO(3) => \detect_din0_carry__0_n_8\,
      CO(2) => \detect_din0_carry__0_n_9\,
      CO(1) => \detect_din0_carry__0_n_10\,
      CO(0) => \detect_din0_carry__0_n_11\,
      CYINIT => '0',
      DI(3) => \detect_din0_carry__0_i_1_n_8\,
      DI(2) => \detect_din0_carry__0_i_2_n_8\,
      DI(1) => \detect_din0_carry__0_i_3_n_8\,
      DI(0) => \detect_din0_carry__0_i_4_n_8\,
      O(3 downto 0) => \NLW_detect_din0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \detect_din0_carry__0_i_5_n_8\,
      S(2) => \detect_din0_carry__0_i_6_n_8\,
      S(1) => \detect_din0_carry__0_i_7_n_8\,
      S(0) => \detect_din0_carry__0_i_8_n_8\
    );
\detect_din0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => mul_ln895_reg_907_reg_n_99,
      I1 => ret_V_6_reg_902_reg_n_99,
      I2 => ret_V_6_reg_902_reg_n_98,
      I3 => mul_ln895_reg_907_reg_n_98,
      O => \detect_din0_carry__0_i_1_n_8\
    );
\detect_din0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => mul_ln895_reg_907_reg_n_101,
      I1 => ret_V_6_reg_902_reg_n_101,
      I2 => ret_V_6_reg_902_reg_n_100,
      I3 => mul_ln895_reg_907_reg_n_100,
      O => \detect_din0_carry__0_i_2_n_8\
    );
\detect_din0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => mul_ln895_reg_907_reg_n_103,
      I1 => ret_V_6_reg_902_reg_n_103,
      I2 => ret_V_6_reg_902_reg_n_102,
      I3 => mul_ln895_reg_907_reg_n_102,
      O => \detect_din0_carry__0_i_3_n_8\
    );
\detect_din0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => mul_ln895_reg_907_reg_n_105,
      I1 => ret_V_6_reg_902_reg_n_105,
      I2 => ret_V_6_reg_902_reg_n_104,
      I3 => mul_ln895_reg_907_reg_n_104,
      O => \detect_din0_carry__0_i_4_n_8\
    );
\detect_din0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => mul_ln895_reg_907_reg_n_99,
      I1 => ret_V_6_reg_902_reg_n_99,
      I2 => mul_ln895_reg_907_reg_n_98,
      I3 => ret_V_6_reg_902_reg_n_98,
      O => \detect_din0_carry__0_i_5_n_8\
    );
\detect_din0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => mul_ln895_reg_907_reg_n_101,
      I1 => ret_V_6_reg_902_reg_n_101,
      I2 => mul_ln895_reg_907_reg_n_100,
      I3 => ret_V_6_reg_902_reg_n_100,
      O => \detect_din0_carry__0_i_6_n_8\
    );
\detect_din0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => mul_ln895_reg_907_reg_n_103,
      I1 => ret_V_6_reg_902_reg_n_103,
      I2 => mul_ln895_reg_907_reg_n_102,
      I3 => ret_V_6_reg_902_reg_n_102,
      O => \detect_din0_carry__0_i_7_n_8\
    );
\detect_din0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => mul_ln895_reg_907_reg_n_105,
      I1 => ret_V_6_reg_902_reg_n_105,
      I2 => mul_ln895_reg_907_reg_n_104,
      I3 => ret_V_6_reg_902_reg_n_104,
      O => \detect_din0_carry__0_i_8_n_8\
    );
\detect_din0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \detect_din0_carry__0_n_8\,
      CO(3) => \NLW_detect_din0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => p_0_in,
      CO(1) => \detect_din0_carry__1_n_10\,
      CO(0) => \detect_din0_carry__1_n_11\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \detect_din0_carry__1_i_1_n_8\,
      DI(1) => \detect_din0_carry__1_i_2_n_8\,
      DI(0) => \detect_din0_carry__1_i_3_n_8\,
      O(3) => \in\(0),
      O(2 downto 0) => \NLW_detect_din0_carry__1_O_UNCONNECTED\(2 downto 0),
      S(3) => '1',
      S(2) => \detect_din0_carry__1_i_4_n_8\,
      S(1) => \detect_din0_carry__1_i_5_n_8\,
      S(0) => \detect_din0_carry__1_i_6_n_8\
    );
\detect_din0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => mul_ln895_reg_907_reg_n_93,
      I1 => ret_V_6_reg_902_reg_n_93,
      I2 => ret_V_6_reg_902_reg_n_92,
      I3 => mul_ln895_reg_907_reg_n_92,
      O => \detect_din0_carry__1_i_1_n_8\
    );
\detect_din0_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => mul_ln895_reg_907_reg_n_95,
      I1 => ret_V_6_reg_902_reg_n_95,
      I2 => ret_V_6_reg_902_reg_n_94,
      I3 => mul_ln895_reg_907_reg_n_94,
      O => \detect_din0_carry__1_i_2_n_8\
    );
\detect_din0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => mul_ln895_reg_907_reg_n_97,
      I1 => ret_V_6_reg_902_reg_n_97,
      I2 => ret_V_6_reg_902_reg_n_96,
      I3 => mul_ln895_reg_907_reg_n_96,
      O => \detect_din0_carry__1_i_3_n_8\
    );
\detect_din0_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => mul_ln895_reg_907_reg_n_93,
      I1 => ret_V_6_reg_902_reg_n_93,
      I2 => mul_ln895_reg_907_reg_n_92,
      I3 => ret_V_6_reg_902_reg_n_92,
      O => \detect_din0_carry__1_i_4_n_8\
    );
\detect_din0_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => mul_ln895_reg_907_reg_n_95,
      I1 => ret_V_6_reg_902_reg_n_95,
      I2 => mul_ln895_reg_907_reg_n_94,
      I3 => ret_V_6_reg_902_reg_n_94,
      O => \detect_din0_carry__1_i_5_n_8\
    );
\detect_din0_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => mul_ln895_reg_907_reg_n_97,
      I1 => ret_V_6_reg_902_reg_n_97,
      I2 => mul_ln895_reg_907_reg_n_96,
      I3 => ret_V_6_reg_902_reg_n_96,
      O => \detect_din0_carry__1_i_6_n_8\
    );
detect_din0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => mul_ln895_reg_907_reg_n_107,
      I1 => ret_V_6_reg_902_reg_n_107,
      I2 => ret_V_6_reg_902_reg_n_106,
      I3 => mul_ln895_reg_907_reg_n_106,
      O => detect_din0_carry_i_1_n_8
    );
detect_din0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => mul_ln895_reg_907_reg_n_109,
      I1 => ret_V_6_reg_902_reg_n_109,
      I2 => ret_V_6_reg_902_reg_n_108,
      I3 => mul_ln895_reg_907_reg_n_108,
      O => detect_din0_carry_i_2_n_8
    );
detect_din0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => mul_ln895_reg_907_reg_n_111,
      I1 => ret_V_6_reg_902_reg_n_111,
      I2 => ret_V_6_reg_902_reg_n_110,
      I3 => mul_ln895_reg_907_reg_n_110,
      O => detect_din0_carry_i_3_n_8
    );
detect_din0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => mul_ln895_reg_907_reg_n_113,
      I1 => ret_V_6_reg_902_reg_n_113,
      I2 => ret_V_6_reg_902_reg_n_112,
      I3 => mul_ln895_reg_907_reg_n_112,
      O => detect_din0_carry_i_4_n_8
    );
detect_din0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => mul_ln895_reg_907_reg_n_107,
      I1 => ret_V_6_reg_902_reg_n_107,
      I2 => mul_ln895_reg_907_reg_n_106,
      I3 => ret_V_6_reg_902_reg_n_106,
      O => detect_din0_carry_i_5_n_8
    );
detect_din0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => mul_ln895_reg_907_reg_n_109,
      I1 => ret_V_6_reg_902_reg_n_109,
      I2 => mul_ln895_reg_907_reg_n_108,
      I3 => ret_V_6_reg_902_reg_n_108,
      O => detect_din0_carry_i_6_n_8
    );
detect_din0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => mul_ln895_reg_907_reg_n_111,
      I1 => ret_V_6_reg_902_reg_n_111,
      I2 => mul_ln895_reg_907_reg_n_110,
      I3 => ret_V_6_reg_902_reg_n_110,
      O => detect_din0_carry_i_7_n_8
    );
detect_din0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => mul_ln895_reg_907_reg_n_113,
      I1 => ret_V_6_reg_902_reg_n_113,
      I2 => mul_ln895_reg_907_reg_n_112,
      I3 => ret_V_6_reg_902_reg_n_112,
      O => detect_din0_carry_i_8_n_8
    );
\dout_buf[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A222A2A222222222"
    )
        port map (
      I0 => \dout_buf_reg[7]\,
      I1 => dbl2scalc_1_empty_n,
      I2 => \^ap_enable_reg_pp0_iter0_reg_0\,
      I3 => detect_1_full_n,
      I4 => ap_enable_reg_pp0_iter4_reg_n_8,
      I5 => \^ap_cs_fsm_reg[1]_0\,
      O => \^pop\
    );
dout_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF5DFF0000"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[1]_0\,
      I1 => ap_enable_reg_pp0_iter4_reg_n_8,
      I2 => detect_1_full_n,
      I3 => \^ap_enable_reg_pp0_iter0_reg_0\,
      I4 => dbl2scalc_1_empty_n,
      I5 => \dout_buf_reg[7]\,
      O => \ap_CS_fsm_reg[1]_1\
    );
\empty_n_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^pop\,
      I1 => dbl2scalc_1_full_n,
      I2 => dbl2tsep_1_full_n,
      I3 => mod2dbl_1_empty_n,
      O => full_n_reg(0)
    );
mul_ln895_reg_907_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16) => \res_2_V_reg_897_reg_n_8_[16]\,
      A(15) => \res_2_V_reg_897_reg_n_8_[15]\,
      A(14) => \res_2_V_reg_897_reg_n_8_[14]\,
      A(13) => \res_2_V_reg_897_reg_n_8_[13]\,
      A(12) => \res_2_V_reg_897_reg_n_8_[12]\,
      A(11) => \res_2_V_reg_897_reg_n_8_[11]\,
      A(10) => \res_2_V_reg_897_reg_n_8_[10]\,
      A(9) => \res_2_V_reg_897_reg_n_8_[9]\,
      A(8) => \res_2_V_reg_897_reg_n_8_[8]\,
      A(7) => \res_2_V_reg_897_reg_n_8_[7]\,
      A(6) => \res_2_V_reg_897_reg_n_8_[6]\,
      A(5) => \res_2_V_reg_897_reg_n_8_[5]\,
      A(4) => \res_2_V_reg_897_reg_n_8_[4]\,
      A(3) => \res_2_V_reg_897_reg_n_8_[3]\,
      A(2) => \res_2_V_reg_897_reg_n_8_[2]\,
      A(1) => \res_2_V_reg_897_reg_n_8_[1]\,
      A(0) => \res_2_V_reg_897_reg_n_8_[0]\,
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_mul_ln895_reg_907_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000000011011",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_mul_ln895_reg_907_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_mul_ln895_reg_907_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_mul_ln895_reg_907_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => \^dout_valid_reg\,
      CLK => clock,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_mul_ln895_reg_907_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_mul_ln895_reg_907_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 22) => NLW_mul_ln895_reg_907_reg_P_UNCONNECTED(47 downto 22),
      P(21) => mul_ln895_reg_907_reg_n_92,
      P(20) => mul_ln895_reg_907_reg_n_93,
      P(19) => mul_ln895_reg_907_reg_n_94,
      P(18) => mul_ln895_reg_907_reg_n_95,
      P(17) => mul_ln895_reg_907_reg_n_96,
      P(16) => mul_ln895_reg_907_reg_n_97,
      P(15) => mul_ln895_reg_907_reg_n_98,
      P(14) => mul_ln895_reg_907_reg_n_99,
      P(13) => mul_ln895_reg_907_reg_n_100,
      P(12) => mul_ln895_reg_907_reg_n_101,
      P(11) => mul_ln895_reg_907_reg_n_102,
      P(10) => mul_ln895_reg_907_reg_n_103,
      P(9) => mul_ln895_reg_907_reg_n_104,
      P(8) => mul_ln895_reg_907_reg_n_105,
      P(7) => mul_ln895_reg_907_reg_n_106,
      P(6) => mul_ln895_reg_907_reg_n_107,
      P(5) => mul_ln895_reg_907_reg_n_108,
      P(4) => mul_ln895_reg_907_reg_n_109,
      P(3) => mul_ln895_reg_907_reg_n_110,
      P(2) => mul_ln895_reg_907_reg_n_111,
      P(1) => mul_ln895_reg_907_reg_n_112,
      P(0) => mul_ln895_reg_907_reg_n_113,
      PATTERNBDETECT => NLW_mul_ln895_reg_907_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_mul_ln895_reg_907_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_mul_ln895_reg_907_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_mul_ln895_reg_907_reg_UNDERFLOW_UNCONNECTED
    );
\p_0108_0_reg_221[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20AA2020AAAAAAAA"
    )
        port map (
      I0 => ap_CS_fsm_state1,
      I1 => dbl2scalc_1_empty_n,
      I2 => \^ap_enable_reg_pp0_iter0_reg_0\,
      I3 => detect_1_full_n,
      I4 => ap_enable_reg_pp0_iter4_reg_n_8,
      I5 => ap_enable_reg_pp0_iter3,
      O => p_0108_0_reg_221_0
    );
\p_0108_0_reg_221[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2A200A2"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter3,
      I1 => ap_enable_reg_pp0_iter4_reg_n_8,
      I2 => detect_1_full_n,
      I3 => \^ap_enable_reg_pp0_iter0_reg_0\,
      I4 => dbl2scalc_1_empty_n,
      O => p_0108_0_reg_2210
    );
\p_0108_0_reg_221_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => p_0108_0_reg_2210,
      D => sum_V_reg_892_reg(10),
      Q => p_0108_0_reg_221(10),
      R => p_0108_0_reg_221_0
    );
\p_0108_0_reg_221_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => p_0108_0_reg_2210,
      D => sum_V_reg_892_reg(11),
      Q => p_0108_0_reg_221(11),
      R => p_0108_0_reg_221_0
    );
\p_0108_0_reg_221_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => p_0108_0_reg_2210,
      D => sum_V_reg_892_reg(12),
      Q => p_0108_0_reg_221(12),
      R => p_0108_0_reg_221_0
    );
\p_0108_0_reg_221_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => p_0108_0_reg_2210,
      D => sum_V_reg_892_reg(13),
      Q => p_0108_0_reg_221(13),
      R => p_0108_0_reg_221_0
    );
\p_0108_0_reg_221_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => p_0108_0_reg_2210,
      D => sum_V_reg_892_reg(14),
      Q => p_0108_0_reg_221(14),
      R => p_0108_0_reg_221_0
    );
\p_0108_0_reg_221_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => p_0108_0_reg_2210,
      D => sum_V_reg_892_reg(15),
      Q => p_0108_0_reg_221(15),
      R => p_0108_0_reg_221_0
    );
\p_0108_0_reg_221_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => p_0108_0_reg_2210,
      D => sum_V_reg_892_reg(16),
      Q => p_0108_0_reg_221(16),
      R => p_0108_0_reg_221_0
    );
\p_0108_0_reg_221_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => p_0108_0_reg_2210,
      D => sum_V_reg_892_reg(17),
      Q => p_0108_0_reg_221(17),
      R => p_0108_0_reg_221_0
    );
\p_0108_0_reg_221_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => p_0108_0_reg_2210,
      D => sum_V_reg_892_reg(18),
      Q => p_0108_0_reg_221(18),
      R => p_0108_0_reg_221_0
    );
\p_0108_0_reg_221_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => p_0108_0_reg_2210,
      D => sum_V_reg_892_reg(19),
      Q => p_0108_0_reg_221(19),
      R => p_0108_0_reg_221_0
    );
\p_0108_0_reg_221_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => p_0108_0_reg_2210,
      D => sum_V_reg_892_reg(20),
      Q => p_0108_0_reg_221(20),
      R => p_0108_0_reg_221_0
    );
\p_0108_0_reg_221_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => p_0108_0_reg_2210,
      D => sum_V_reg_892_reg(21),
      Q => p_0108_0_reg_221(21),
      R => p_0108_0_reg_221_0
    );
\p_0108_0_reg_221_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => p_0108_0_reg_2210,
      D => sum_V_reg_892_reg(2),
      Q => p_0108_0_reg_221(2),
      R => p_0108_0_reg_221_0
    );
\p_0108_0_reg_221_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => p_0108_0_reg_2210,
      D => sum_V_reg_892_reg(3),
      Q => p_0108_0_reg_221(3),
      R => p_0108_0_reg_221_0
    );
\p_0108_0_reg_221_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => p_0108_0_reg_2210,
      D => sum_V_reg_892_reg(4),
      Q => p_0108_0_reg_221(4),
      R => p_0108_0_reg_221_0
    );
\p_0108_0_reg_221_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => p_0108_0_reg_2210,
      D => sum_V_reg_892_reg(5),
      Q => p_0108_0_reg_221(5),
      R => p_0108_0_reg_221_0
    );
\p_0108_0_reg_221_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => p_0108_0_reg_2210,
      D => sum_V_reg_892_reg(6),
      Q => p_0108_0_reg_221(6),
      R => p_0108_0_reg_221_0
    );
\p_0108_0_reg_221_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => p_0108_0_reg_2210,
      D => sum_V_reg_892_reg(7),
      Q => p_0108_0_reg_221(7),
      R => p_0108_0_reg_221_0
    );
\p_0108_0_reg_221_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => p_0108_0_reg_2210,
      D => sum_V_reg_892_reg(8),
      Q => p_0108_0_reg_221(8),
      R => p_0108_0_reg_221_0
    );
\p_0108_0_reg_221_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => p_0108_0_reg_2210,
      D => sum_V_reg_892_reg(9),
      Q => p_0108_0_reg_221(9),
      R => p_0108_0_reg_221_0
    );
\p_0343_0_fu_80_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => x0_V_fu_84(0),
      Q => p_0343_0_fu_80(0),
      R => '0'
    );
\p_0343_0_fu_80_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => x0_V_fu_84(1),
      Q => p_0343_0_fu_80(1),
      R => '0'
    );
\p_0343_0_fu_80_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => x0_V_fu_84(2),
      Q => p_0343_0_fu_80(2),
      R => '0'
    );
\p_0343_0_fu_80_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => x0_V_fu_84(3),
      Q => p_0343_0_fu_80(3),
      R => '0'
    );
\p_0343_0_fu_80_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => x0_V_fu_84(4),
      Q => p_0343_0_fu_80(4),
      R => '0'
    );
\p_0343_0_fu_80_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => x0_V_fu_84(5),
      Q => p_0343_0_fu_80(5),
      R => '0'
    );
\p_0343_0_fu_80_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => x0_V_fu_84(6),
      Q => p_0343_0_fu_80(6),
      R => '0'
    );
\p_0343_0_fu_80_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => x0_V_fu_84(7),
      Q => p_0343_0_fu_80(7),
      R => '0'
    );
\ps_V_fu_437_p2__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ps_V_fu_437_p2__0_carry_n_8\,
      CO(2) => \ps_V_fu_437_p2__0_carry_n_9\,
      CO(1) => \ps_V_fu_437_p2__0_carry_n_10\,
      CO(0) => \ps_V_fu_437_p2__0_carry_n_11\,
      CYINIT => '0',
      DI(3) => \ps_V_fu_437_p2__0_carry_i_1_n_8\,
      DI(2) => \ps_V_fu_437_p2__0_carry_i_2_n_8\,
      DI(1) => \ps_V_fu_437_p2__0_carry_i_3_n_8\,
      DI(0) => '0',
      O(3) => \ps_V_fu_437_p2__0_carry_n_12\,
      O(2) => \ps_V_fu_437_p2__0_carry_n_13\,
      O(1) => \ps_V_fu_437_p2__0_carry_n_14\,
      O(0) => \ps_V_fu_437_p2__0_carry_n_15\,
      S(3) => \ps_V_fu_437_p2__0_carry_i_4_n_8\,
      S(2) => \ps_V_fu_437_p2__0_carry_i_5_n_8\,
      S(1) => \ps_V_fu_437_p2__0_carry_i_6_n_8\,
      S(0) => \ps_V_fu_437_p2__0_carry_i_7_n_8\
    );
\ps_V_fu_437_p2__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ps_V_fu_437_p2__0_carry_n_8\,
      CO(3) => \ps_V_fu_437_p2__0_carry__0_n_8\,
      CO(2) => \ps_V_fu_437_p2__0_carry__0_n_9\,
      CO(1) => \ps_V_fu_437_p2__0_carry__0_n_10\,
      CO(0) => \ps_V_fu_437_p2__0_carry__0_n_11\,
      CYINIT => '0',
      DI(3) => \ps_V_fu_437_p2__0_carry__0_i_1_n_8\,
      DI(2) => \ps_V_fu_437_p2__0_carry__0_i_2_n_8\,
      DI(1) => \ps_V_fu_437_p2__0_carry__0_i_3_n_8\,
      DI(0) => \ps_V_fu_437_p2__0_carry__0_i_4_n_8\,
      O(3) => \ps_V_fu_437_p2__0_carry__0_n_12\,
      O(2) => \ps_V_fu_437_p2__0_carry__0_n_13\,
      O(1) => \ps_V_fu_437_p2__0_carry__0_n_14\,
      O(0) => \ps_V_fu_437_p2__0_carry__0_n_15\,
      S(3) => \ps_V_fu_437_p2__0_carry__0_i_5_n_8\,
      S(2) => \ps_V_fu_437_p2__0_carry__0_i_6_n_8\,
      S(1) => \ps_V_fu_437_p2__0_carry__0_i_7_n_8\,
      S(0) => \ps_V_fu_437_p2__0_carry__0_i_8_n_8\
    );
\ps_V_fu_437_p2__0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => buffer_5_V_fu_104(6),
      I1 => x0_V_fu_84(6),
      I2 => buffer_15_V_fu_144(6),
      O => \ps_V_fu_437_p2__0_carry__0_i_1_n_8\
    );
\ps_V_fu_437_p2__0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => buffer_5_V_fu_104(5),
      I1 => x0_V_fu_84(5),
      I2 => buffer_15_V_fu_144(5),
      O => \ps_V_fu_437_p2__0_carry__0_i_2_n_8\
    );
\ps_V_fu_437_p2__0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => buffer_5_V_fu_104(4),
      I1 => x0_V_fu_84(4),
      I2 => buffer_15_V_fu_144(4),
      O => \ps_V_fu_437_p2__0_carry__0_i_3_n_8\
    );
\ps_V_fu_437_p2__0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => buffer_5_V_fu_104(3),
      I1 => x0_V_fu_84(3),
      I2 => buffer_15_V_fu_144(3),
      O => \ps_V_fu_437_p2__0_carry__0_i_4_n_8\
    );
\ps_V_fu_437_p2__0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \ps_V_fu_437_p2__0_carry__0_i_1_n_8\,
      I1 => buffer_5_V_fu_104(7),
      I2 => x0_V_fu_84(7),
      I3 => buffer_15_V_fu_144(7),
      O => \ps_V_fu_437_p2__0_carry__0_i_5_n_8\
    );
\ps_V_fu_437_p2__0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => buffer_5_V_fu_104(6),
      I1 => x0_V_fu_84(6),
      I2 => buffer_15_V_fu_144(6),
      I3 => \ps_V_fu_437_p2__0_carry__0_i_2_n_8\,
      O => \ps_V_fu_437_p2__0_carry__0_i_6_n_8\
    );
\ps_V_fu_437_p2__0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => buffer_5_V_fu_104(5),
      I1 => x0_V_fu_84(5),
      I2 => buffer_15_V_fu_144(5),
      I3 => \ps_V_fu_437_p2__0_carry__0_i_3_n_8\,
      O => \ps_V_fu_437_p2__0_carry__0_i_7_n_8\
    );
\ps_V_fu_437_p2__0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => buffer_5_V_fu_104(4),
      I1 => x0_V_fu_84(4),
      I2 => buffer_15_V_fu_144(4),
      I3 => \ps_V_fu_437_p2__0_carry__0_i_4_n_8\,
      O => \ps_V_fu_437_p2__0_carry__0_i_8_n_8\
    );
\ps_V_fu_437_p2__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ps_V_fu_437_p2__0_carry__0_n_8\,
      CO(3 downto 2) => \NLW_ps_V_fu_437_p2__0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \ps_V_fu_437_p2__0_carry__1_n_10\,
      CO(0) => \NLW_ps_V_fu_437_p2__0_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_ps_V_fu_437_p2__0_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \ps_V_fu_437_p2__0_carry__1_n_15\,
      S(3 downto 1) => B"001",
      S(0) => \ps_V_fu_437_p2__0_carry__1_i_1_n_8\
    );
\ps_V_fu_437_p2__0_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => buffer_5_V_fu_104(7),
      I1 => x0_V_fu_84(7),
      I2 => buffer_15_V_fu_144(7),
      O => \ps_V_fu_437_p2__0_carry__1_i_1_n_8\
    );
\ps_V_fu_437_p2__0_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => buffer_5_V_fu_104(2),
      I1 => x0_V_fu_84(2),
      I2 => buffer_15_V_fu_144(2),
      O => \ps_V_fu_437_p2__0_carry_i_1_n_8\
    );
\ps_V_fu_437_p2__0_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => buffer_5_V_fu_104(1),
      I1 => x0_V_fu_84(1),
      I2 => buffer_15_V_fu_144(1),
      O => \ps_V_fu_437_p2__0_carry_i_2_n_8\
    );
\ps_V_fu_437_p2__0_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => x0_V_fu_84(0),
      I1 => buffer_5_V_fu_104(0),
      I2 => buffer_15_V_fu_144(0),
      O => \ps_V_fu_437_p2__0_carry_i_3_n_8\
    );
\ps_V_fu_437_p2__0_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => buffer_5_V_fu_104(3),
      I1 => x0_V_fu_84(3),
      I2 => buffer_15_V_fu_144(3),
      I3 => \ps_V_fu_437_p2__0_carry_i_1_n_8\,
      O => \ps_V_fu_437_p2__0_carry_i_4_n_8\
    );
\ps_V_fu_437_p2__0_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => buffer_5_V_fu_104(2),
      I1 => x0_V_fu_84(2),
      I2 => buffer_15_V_fu_144(2),
      I3 => \ps_V_fu_437_p2__0_carry_i_2_n_8\,
      O => \ps_V_fu_437_p2__0_carry_i_5_n_8\
    );
\ps_V_fu_437_p2__0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => buffer_5_V_fu_104(1),
      I1 => x0_V_fu_84(1),
      I2 => buffer_15_V_fu_144(1),
      I3 => \ps_V_fu_437_p2__0_carry_i_3_n_8\,
      O => \ps_V_fu_437_p2__0_carry_i_6_n_8\
    );
\ps_V_fu_437_p2__0_carry_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => x0_V_fu_84(0),
      I1 => buffer_5_V_fu_104(0),
      I2 => buffer_15_V_fu_144(0),
      O => \ps_V_fu_437_p2__0_carry_i_7_n_8\
    );
\ps_V_fu_437_p2__26_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ps_V_fu_437_p2__26_carry_n_8\,
      CO(2) => \ps_V_fu_437_p2__26_carry_n_9\,
      CO(1) => \ps_V_fu_437_p2__26_carry_n_10\,
      CO(0) => \ps_V_fu_437_p2__26_carry_n_11\,
      CYINIT => '0',
      DI(3) => \ps_V_fu_437_p2__26_carry_i_1_n_8\,
      DI(2) => \ps_V_fu_437_p2__26_carry_i_2_n_8\,
      DI(1) => \ps_V_fu_437_p2__26_carry_i_3_n_8\,
      DI(0) => '0',
      O(3) => \ps_V_fu_437_p2__26_carry_n_12\,
      O(2) => \ps_V_fu_437_p2__26_carry_n_13\,
      O(1) => \ps_V_fu_437_p2__26_carry_n_14\,
      O(0) => \ps_V_fu_437_p2__26_carry_n_15\,
      S(3) => \ps_V_fu_437_p2__26_carry_i_4_n_8\,
      S(2) => \ps_V_fu_437_p2__26_carry_i_5_n_8\,
      S(1) => \ps_V_fu_437_p2__26_carry_i_6_n_8\,
      S(0) => \ps_V_fu_437_p2__26_carry_i_7_n_8\
    );
\ps_V_fu_437_p2__26_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ps_V_fu_437_p2__26_carry_n_8\,
      CO(3) => \ps_V_fu_437_p2__26_carry__0_n_8\,
      CO(2) => \ps_V_fu_437_p2__26_carry__0_n_9\,
      CO(1) => \ps_V_fu_437_p2__26_carry__0_n_10\,
      CO(0) => \ps_V_fu_437_p2__26_carry__0_n_11\,
      CYINIT => '0',
      DI(3) => \ps_V_fu_437_p2__26_carry__0_i_1_n_8\,
      DI(2) => \ps_V_fu_437_p2__26_carry__0_i_2_n_8\,
      DI(1) => \ps_V_fu_437_p2__26_carry__0_i_3_n_8\,
      DI(0) => \ps_V_fu_437_p2__26_carry__0_i_4_n_8\,
      O(3) => \ps_V_fu_437_p2__26_carry__0_n_12\,
      O(2) => \ps_V_fu_437_p2__26_carry__0_n_13\,
      O(1) => \ps_V_fu_437_p2__26_carry__0_n_14\,
      O(0) => \ps_V_fu_437_p2__26_carry__0_n_15\,
      S(3) => \ps_V_fu_437_p2__26_carry__0_i_5_n_8\,
      S(2) => \ps_V_fu_437_p2__26_carry__0_i_6_n_8\,
      S(1) => \ps_V_fu_437_p2__26_carry__0_i_7_n_8\,
      S(0) => \ps_V_fu_437_p2__26_carry__0_i_8_n_8\
    );
\ps_V_fu_437_p2__26_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => buffer_19_V_fu_160(6),
      I1 => buffer_1_V_fu_88(6),
      I2 => buffer_4_V_fu_100(6),
      O => \ps_V_fu_437_p2__26_carry__0_i_1_n_8\
    );
\ps_V_fu_437_p2__26_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => buffer_19_V_fu_160(5),
      I1 => buffer_1_V_fu_88(5),
      I2 => buffer_4_V_fu_100(5),
      O => \ps_V_fu_437_p2__26_carry__0_i_2_n_8\
    );
\ps_V_fu_437_p2__26_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => buffer_19_V_fu_160(4),
      I1 => buffer_1_V_fu_88(4),
      I2 => buffer_4_V_fu_100(4),
      O => \ps_V_fu_437_p2__26_carry__0_i_3_n_8\
    );
\ps_V_fu_437_p2__26_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => buffer_19_V_fu_160(3),
      I1 => buffer_1_V_fu_88(3),
      I2 => buffer_4_V_fu_100(3),
      O => \ps_V_fu_437_p2__26_carry__0_i_4_n_8\
    );
\ps_V_fu_437_p2__26_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \ps_V_fu_437_p2__26_carry__0_i_1_n_8\,
      I1 => buffer_19_V_fu_160(7),
      I2 => buffer_1_V_fu_88(7),
      I3 => buffer_4_V_fu_100(7),
      O => \ps_V_fu_437_p2__26_carry__0_i_5_n_8\
    );
\ps_V_fu_437_p2__26_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => buffer_19_V_fu_160(6),
      I1 => buffer_1_V_fu_88(6),
      I2 => buffer_4_V_fu_100(6),
      I3 => \ps_V_fu_437_p2__26_carry__0_i_2_n_8\,
      O => \ps_V_fu_437_p2__26_carry__0_i_6_n_8\
    );
\ps_V_fu_437_p2__26_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => buffer_19_V_fu_160(5),
      I1 => buffer_1_V_fu_88(5),
      I2 => buffer_4_V_fu_100(5),
      I3 => \ps_V_fu_437_p2__26_carry__0_i_3_n_8\,
      O => \ps_V_fu_437_p2__26_carry__0_i_7_n_8\
    );
\ps_V_fu_437_p2__26_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => buffer_19_V_fu_160(4),
      I1 => buffer_1_V_fu_88(4),
      I2 => buffer_4_V_fu_100(4),
      I3 => \ps_V_fu_437_p2__26_carry__0_i_4_n_8\,
      O => \ps_V_fu_437_p2__26_carry__0_i_8_n_8\
    );
\ps_V_fu_437_p2__26_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ps_V_fu_437_p2__26_carry__0_n_8\,
      CO(3 downto 2) => \NLW_ps_V_fu_437_p2__26_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \ps_V_fu_437_p2__26_carry__1_n_10\,
      CO(0) => \NLW_ps_V_fu_437_p2__26_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_ps_V_fu_437_p2__26_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \ps_V_fu_437_p2__26_carry__1_n_15\,
      S(3 downto 1) => B"001",
      S(0) => \ps_V_fu_437_p2__26_carry__1_i_1_n_8\
    );
\ps_V_fu_437_p2__26_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => buffer_19_V_fu_160(7),
      I1 => buffer_1_V_fu_88(7),
      I2 => buffer_4_V_fu_100(7),
      O => \ps_V_fu_437_p2__26_carry__1_i_1_n_8\
    );
\ps_V_fu_437_p2__26_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => buffer_19_V_fu_160(2),
      I1 => buffer_1_V_fu_88(2),
      I2 => buffer_4_V_fu_100(2),
      O => \ps_V_fu_437_p2__26_carry_i_1_n_8\
    );
\ps_V_fu_437_p2__26_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => buffer_19_V_fu_160(1),
      I1 => buffer_1_V_fu_88(1),
      I2 => buffer_4_V_fu_100(1),
      O => \ps_V_fu_437_p2__26_carry_i_2_n_8\
    );
\ps_V_fu_437_p2__26_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => buffer_1_V_fu_88(0),
      I1 => buffer_19_V_fu_160(0),
      I2 => buffer_4_V_fu_100(0),
      O => \ps_V_fu_437_p2__26_carry_i_3_n_8\
    );
\ps_V_fu_437_p2__26_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => buffer_19_V_fu_160(3),
      I1 => buffer_1_V_fu_88(3),
      I2 => buffer_4_V_fu_100(3),
      I3 => \ps_V_fu_437_p2__26_carry_i_1_n_8\,
      O => \ps_V_fu_437_p2__26_carry_i_4_n_8\
    );
\ps_V_fu_437_p2__26_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => buffer_19_V_fu_160(2),
      I1 => buffer_1_V_fu_88(2),
      I2 => buffer_4_V_fu_100(2),
      I3 => \ps_V_fu_437_p2__26_carry_i_2_n_8\,
      O => \ps_V_fu_437_p2__26_carry_i_5_n_8\
    );
\ps_V_fu_437_p2__26_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => buffer_19_V_fu_160(1),
      I1 => buffer_1_V_fu_88(1),
      I2 => buffer_4_V_fu_100(1),
      I3 => \ps_V_fu_437_p2__26_carry_i_3_n_8\,
      O => \ps_V_fu_437_p2__26_carry_i_6_n_8\
    );
\ps_V_fu_437_p2__26_carry_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => buffer_1_V_fu_88(0),
      I1 => buffer_19_V_fu_160(0),
      I2 => buffer_4_V_fu_100(0),
      O => \ps_V_fu_437_p2__26_carry_i_7_n_8\
    );
\ps_V_fu_437_p2__54_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ps_V_fu_437_p2__54_carry_n_8\,
      CO(2) => \ps_V_fu_437_p2__54_carry_n_9\,
      CO(1) => \ps_V_fu_437_p2__54_carry_n_10\,
      CO(0) => \ps_V_fu_437_p2__54_carry_n_11\,
      CYINIT => '0',
      DI(3) => \ps_V_fu_437_p2__54_carry_i_1_n_8\,
      DI(2) => \ps_V_fu_437_p2__54_carry_i_2_n_8\,
      DI(1) => \ps_V_fu_437_p2__54_carry_i_3_n_8\,
      DI(0) => buffer_14_V_fu_140(0),
      O(3 downto 0) => ps_V_fu_437_p2(3 downto 0),
      S(3) => \ps_V_fu_437_p2__54_carry_i_4_n_8\,
      S(2) => \ps_V_fu_437_p2__54_carry_i_5_n_8\,
      S(1) => \ps_V_fu_437_p2__54_carry_i_6_n_8\,
      S(0) => \ps_V_fu_437_p2__54_carry_i_7_n_8\
    );
\ps_V_fu_437_p2__54_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ps_V_fu_437_p2__54_carry_n_8\,
      CO(3) => \ps_V_fu_437_p2__54_carry__0_n_8\,
      CO(2) => \ps_V_fu_437_p2__54_carry__0_n_9\,
      CO(1) => \ps_V_fu_437_p2__54_carry__0_n_10\,
      CO(0) => \ps_V_fu_437_p2__54_carry__0_n_11\,
      CYINIT => '0',
      DI(3) => \ps_V_fu_437_p2__54_carry__0_i_1_n_8\,
      DI(2) => \ps_V_fu_437_p2__54_carry__0_i_2_n_8\,
      DI(1) => \ps_V_fu_437_p2__54_carry__0_i_3_n_8\,
      DI(0) => \ps_V_fu_437_p2__54_carry__0_i_4_n_8\,
      O(3 downto 0) => ps_V_fu_437_p2(7 downto 4),
      S(3) => \ps_V_fu_437_p2__54_carry__0_i_5_n_8\,
      S(2) => \ps_V_fu_437_p2__54_carry__0_i_6_n_8\,
      S(1) => \ps_V_fu_437_p2__54_carry__0_i_7_n_8\,
      S(0) => \ps_V_fu_437_p2__54_carry__0_i_8_n_8\
    );
\ps_V_fu_437_p2__54_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \ps_V_fu_437_p2__26_carry__0_n_14\,
      I1 => buffer_18_V_fu_156(5),
      I2 => \ps_V_fu_437_p2__0_carry__0_n_14\,
      I3 => buffer_14_V_fu_140(6),
      I4 => \ps_V_fu_437_p2__54_carry__0_i_9_n_8\,
      O => \ps_V_fu_437_p2__54_carry__0_i_1_n_8\
    );
\ps_V_fu_437_p2__54_carry__0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \ps_V_fu_437_p2__0_carry__0_n_14\,
      I1 => buffer_18_V_fu_156(5),
      I2 => \ps_V_fu_437_p2__26_carry__0_n_14\,
      O => \ps_V_fu_437_p2__54_carry__0_i_10_n_8\
    );
\ps_V_fu_437_p2__54_carry__0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \ps_V_fu_437_p2__0_carry__0_n_15\,
      I1 => buffer_18_V_fu_156(4),
      I2 => \ps_V_fu_437_p2__26_carry__0_n_15\,
      O => \ps_V_fu_437_p2__54_carry__0_i_11_n_8\
    );
\ps_V_fu_437_p2__54_carry__0_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \ps_V_fu_437_p2__0_carry_n_12\,
      I1 => buffer_18_V_fu_156(3),
      I2 => \ps_V_fu_437_p2__26_carry_n_12\,
      O => \ps_V_fu_437_p2__54_carry__0_i_12_n_8\
    );
\ps_V_fu_437_p2__54_carry__0_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"17"
    )
        port map (
      I0 => \ps_V_fu_437_p2__26_carry__0_n_13\,
      I1 => buffer_18_V_fu_156(6),
      I2 => \ps_V_fu_437_p2__0_carry__0_n_13\,
      O => \ps_V_fu_437_p2__54_carry__0_i_13_n_8\
    );
\ps_V_fu_437_p2__54_carry__0_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"17"
    )
        port map (
      I0 => \ps_V_fu_437_p2__26_carry__0_n_14\,
      I1 => buffer_18_V_fu_156(5),
      I2 => \ps_V_fu_437_p2__0_carry__0_n_14\,
      O => \ps_V_fu_437_p2__54_carry__0_i_14_n_8\
    );
\ps_V_fu_437_p2__54_carry__0_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"17"
    )
        port map (
      I0 => \ps_V_fu_437_p2__26_carry__0_n_15\,
      I1 => buffer_18_V_fu_156(4),
      I2 => \ps_V_fu_437_p2__0_carry__0_n_15\,
      O => \ps_V_fu_437_p2__54_carry__0_i_15_n_8\
    );
\ps_V_fu_437_p2__54_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \ps_V_fu_437_p2__26_carry__0_n_15\,
      I1 => buffer_18_V_fu_156(4),
      I2 => \ps_V_fu_437_p2__0_carry__0_n_15\,
      I3 => buffer_14_V_fu_140(5),
      I4 => \ps_V_fu_437_p2__54_carry__0_i_10_n_8\,
      O => \ps_V_fu_437_p2__54_carry__0_i_2_n_8\
    );
\ps_V_fu_437_p2__54_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \ps_V_fu_437_p2__26_carry_n_12\,
      I1 => buffer_18_V_fu_156(3),
      I2 => \ps_V_fu_437_p2__0_carry_n_12\,
      I3 => \ps_V_fu_437_p2__54_carry__0_i_11_n_8\,
      I4 => buffer_14_V_fu_140(4),
      O => \ps_V_fu_437_p2__54_carry__0_i_3_n_8\
    );
\ps_V_fu_437_p2__54_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \ps_V_fu_437_p2__26_carry_n_13\,
      I1 => buffer_18_V_fu_156(2),
      I2 => \ps_V_fu_437_p2__0_carry_n_13\,
      I3 => buffer_14_V_fu_140(3),
      I4 => \ps_V_fu_437_p2__54_carry__0_i_12_n_8\,
      O => \ps_V_fu_437_p2__54_carry__0_i_4_n_8\
    );
\ps_V_fu_437_p2__54_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => \ps_V_fu_437_p2__54_carry__0_i_1_n_8\,
      I1 => \ps_V_fu_437_p2__54_carry__0_i_13_n_8\,
      I2 => \ps_V_fu_437_p2__0_carry__0_n_12\,
      I3 => buffer_18_V_fu_156(7),
      I4 => \ps_V_fu_437_p2__26_carry__0_n_12\,
      I5 => buffer_14_V_fu_140(7),
      O => \ps_V_fu_437_p2__54_carry__0_i_5_n_8\
    );
\ps_V_fu_437_p2__54_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => \ps_V_fu_437_p2__54_carry__0_i_2_n_8\,
      I1 => \ps_V_fu_437_p2__54_carry__0_i_14_n_8\,
      I2 => \ps_V_fu_437_p2__0_carry__0_n_13\,
      I3 => buffer_18_V_fu_156(6),
      I4 => \ps_V_fu_437_p2__26_carry__0_n_13\,
      I5 => buffer_14_V_fu_140(6),
      O => \ps_V_fu_437_p2__54_carry__0_i_6_n_8\
    );
\ps_V_fu_437_p2__54_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => \ps_V_fu_437_p2__54_carry__0_i_3_n_8\,
      I1 => \ps_V_fu_437_p2__54_carry__0_i_15_n_8\,
      I2 => \ps_V_fu_437_p2__0_carry__0_n_14\,
      I3 => buffer_18_V_fu_156(5),
      I4 => \ps_V_fu_437_p2__26_carry__0_n_14\,
      I5 => buffer_14_V_fu_140(5),
      O => \ps_V_fu_437_p2__54_carry__0_i_7_n_8\
    );
\ps_V_fu_437_p2__54_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \ps_V_fu_437_p2__54_carry__0_i_4_n_8\,
      I1 => buffer_14_V_fu_140(4),
      I2 => \ps_V_fu_437_p2__54_carry__0_i_11_n_8\,
      I3 => \ps_V_fu_437_p2__26_carry_n_12\,
      I4 => buffer_18_V_fu_156(3),
      I5 => \ps_V_fu_437_p2__0_carry_n_12\,
      O => \ps_V_fu_437_p2__54_carry__0_i_8_n_8\
    );
\ps_V_fu_437_p2__54_carry__0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \ps_V_fu_437_p2__0_carry__0_n_13\,
      I1 => buffer_18_V_fu_156(6),
      I2 => \ps_V_fu_437_p2__26_carry__0_n_13\,
      O => \ps_V_fu_437_p2__54_carry__0_i_9_n_8\
    );
\ps_V_fu_437_p2__54_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ps_V_fu_437_p2__54_carry__0_n_8\,
      CO(3 downto 2) => \NLW_ps_V_fu_437_p2__54_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \ps_V_fu_437_p2__54_carry__1_n_10\,
      CO(0) => \ps_V_fu_437_p2__54_carry__1_n_11\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \ps_V_fu_437_p2__54_carry__1_i_1_n_8\,
      DI(0) => \ps_V_fu_437_p2__54_carry__1_i_2_n_8\,
      O(3) => \NLW_ps_V_fu_437_p2__54_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => ps_V_fu_437_p2(10 downto 8),
      S(3) => '0',
      S(2) => \ps_V_fu_437_p2__54_carry__1_i_3_n_8\,
      S(1) => \ps_V_fu_437_p2__54_carry__1_i_4_n_8\,
      S(0) => \ps_V_fu_437_p2__54_carry__1_i_5_n_8\
    );
\ps_V_fu_437_p2__54_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \ps_V_fu_437_p2__26_carry__0_n_12\,
      I1 => buffer_18_V_fu_156(7),
      I2 => \ps_V_fu_437_p2__0_carry__0_n_12\,
      I3 => \ps_V_fu_437_p2__26_carry__1_n_15\,
      I4 => \ps_V_fu_437_p2__0_carry__1_n_15\,
      O => \ps_V_fu_437_p2__54_carry__1_i_1_n_8\
    );
\ps_V_fu_437_p2__54_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \ps_V_fu_437_p2__26_carry__0_n_13\,
      I1 => buffer_18_V_fu_156(6),
      I2 => \ps_V_fu_437_p2__0_carry__0_n_13\,
      I3 => buffer_14_V_fu_140(7),
      I4 => \ps_V_fu_437_p2__54_carry__1_i_6_n_8\,
      O => \ps_V_fu_437_p2__54_carry__1_i_2_n_8\
    );
\ps_V_fu_437_p2__54_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ps_V_fu_437_p2__26_carry__1_n_10\,
      I1 => \ps_V_fu_437_p2__0_carry__1_n_10\,
      O => \ps_V_fu_437_p2__54_carry__1_i_3_n_8\
    );
\ps_V_fu_437_p2__54_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \ps_V_fu_437_p2__54_carry__1_i_1_n_8\,
      I1 => \ps_V_fu_437_p2__0_carry__1_n_10\,
      I2 => \ps_V_fu_437_p2__26_carry__1_n_10\,
      O => \ps_V_fu_437_p2__54_carry__1_i_4_n_8\
    );
\ps_V_fu_437_p2__54_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"566AA995A995566A"
    )
        port map (
      I0 => \ps_V_fu_437_p2__54_carry__1_i_2_n_8\,
      I1 => \ps_V_fu_437_p2__26_carry__0_n_12\,
      I2 => buffer_18_V_fu_156(7),
      I3 => \ps_V_fu_437_p2__0_carry__0_n_12\,
      I4 => \ps_V_fu_437_p2__0_carry__1_n_15\,
      I5 => \ps_V_fu_437_p2__26_carry__1_n_15\,
      O => \ps_V_fu_437_p2__54_carry__1_i_5_n_8\
    );
\ps_V_fu_437_p2__54_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \ps_V_fu_437_p2__0_carry__0_n_12\,
      I1 => buffer_18_V_fu_156(7),
      I2 => \ps_V_fu_437_p2__26_carry__0_n_12\,
      O => \ps_V_fu_437_p2__54_carry__1_i_6_n_8\
    );
\ps_V_fu_437_p2__54_carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => buffer_14_V_fu_140(2),
      I1 => \ps_V_fu_437_p2__54_carry_i_8_n_8\,
      I2 => \ps_V_fu_437_p2__26_carry_n_14\,
      I3 => buffer_18_V_fu_156(1),
      I4 => \ps_V_fu_437_p2__0_carry_n_14\,
      O => \ps_V_fu_437_p2__54_carry_i_1_n_8\
    );
\ps_V_fu_437_p2__54_carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \ps_V_fu_437_p2__0_carry_n_14\,
      I1 => buffer_18_V_fu_156(1),
      I2 => \ps_V_fu_437_p2__26_carry_n_14\,
      I3 => \ps_V_fu_437_p2__54_carry_i_8_n_8\,
      I4 => buffer_14_V_fu_140(2),
      O => \ps_V_fu_437_p2__54_carry_i_2_n_8\
    );
\ps_V_fu_437_p2__54_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \ps_V_fu_437_p2__26_carry_n_14\,
      I1 => buffer_18_V_fu_156(1),
      I2 => \ps_V_fu_437_p2__0_carry_n_14\,
      I3 => buffer_14_V_fu_140(1),
      O => \ps_V_fu_437_p2__54_carry_i_3_n_8\
    );
\ps_V_fu_437_p2__54_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => \ps_V_fu_437_p2__54_carry_i_1_n_8\,
      I1 => \ps_V_fu_437_p2__54_carry_i_9_n_8\,
      I2 => \ps_V_fu_437_p2__0_carry_n_12\,
      I3 => buffer_18_V_fu_156(3),
      I4 => \ps_V_fu_437_p2__26_carry_n_12\,
      I5 => buffer_14_V_fu_140(3),
      O => \ps_V_fu_437_p2__54_carry_i_4_n_8\
    );
\ps_V_fu_437_p2__54_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999699969666"
    )
        port map (
      I0 => buffer_14_V_fu_140(2),
      I1 => \ps_V_fu_437_p2__54_carry_i_8_n_8\,
      I2 => \ps_V_fu_437_p2__0_carry_n_14\,
      I3 => buffer_18_V_fu_156(1),
      I4 => \ps_V_fu_437_p2__26_carry_n_14\,
      I5 => buffer_14_V_fu_140(1),
      O => \ps_V_fu_437_p2__54_carry_i_5_n_8\
    );
\ps_V_fu_437_p2__54_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"566A"
    )
        port map (
      I0 => \ps_V_fu_437_p2__54_carry_i_3_n_8\,
      I1 => \ps_V_fu_437_p2__0_carry_n_15\,
      I2 => \ps_V_fu_437_p2__26_carry_n_15\,
      I3 => buffer_18_V_fu_156(0),
      O => \ps_V_fu_437_p2__54_carry_i_6_n_8\
    );
\ps_V_fu_437_p2__54_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \ps_V_fu_437_p2__26_carry_n_15\,
      I1 => \ps_V_fu_437_p2__0_carry_n_15\,
      I2 => buffer_18_V_fu_156(0),
      I3 => buffer_14_V_fu_140(0),
      O => \ps_V_fu_437_p2__54_carry_i_7_n_8\
    );
\ps_V_fu_437_p2__54_carry_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \ps_V_fu_437_p2__0_carry_n_13\,
      I1 => buffer_18_V_fu_156(2),
      I2 => \ps_V_fu_437_p2__26_carry_n_13\,
      O => \ps_V_fu_437_p2__54_carry_i_8_n_8\
    );
\ps_V_fu_437_p2__54_carry_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"17"
    )
        port map (
      I0 => \ps_V_fu_437_p2__26_carry_n_13\,
      I1 => buffer_18_V_fu_156(2),
      I2 => \ps_V_fu_437_p2__0_carry_n_13\,
      O => \ps_V_fu_437_p2__54_carry_i_9_n_8\
    );
\res_2_V_reg_897[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => trunc_ln_fu_460_p4(12),
      I1 => trunc_ln_fu_460_p4(2),
      I2 => trunc_ln_fu_460_p4(1),
      I3 => trunc_ln_fu_460_p4(8),
      I4 => trunc_ln_fu_460_p4(5),
      I5 => trunc_ln_fu_460_p4(14),
      O => \res_2_V_reg_897[16]_i_2_n_8\
    );
\res_2_V_reg_897[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => trunc_ln_fu_460_p4(9),
      I1 => trunc_ln_fu_460_p4(10),
      I2 => trunc_ln_fu_460_p4(3),
      I3 => trunc_ln_fu_460_p4(4),
      I4 => \res_2_V_reg_897[16]_i_4_n_8\,
      O => \res_2_V_reg_897[16]_i_3_n_8\
    );
\res_2_V_reg_897[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => trunc_ln_fu_460_p4(16),
      I1 => trunc_ln_fu_460_p4(7),
      I2 => trunc_ln_fu_460_p4(11),
      I3 => trunc_ln_fu_460_p4(0),
      O => \res_2_V_reg_897[16]_i_4_n_8\
    );
\res_2_V_reg_897_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clock,
      CE => \^dout_valid_reg\,
      D => trunc_ln_fu_460_p4(0),
      Q => \res_2_V_reg_897_reg_n_8_[0]\,
      S => res_2_V_reg_897
    );
\res_2_V_reg_897_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \^dout_valid_reg\,
      D => trunc_ln_fu_460_p4(10),
      Q => \res_2_V_reg_897_reg_n_8_[10]\,
      R => res_2_V_reg_897
    );
\res_2_V_reg_897_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \^dout_valid_reg\,
      D => trunc_ln_fu_460_p4(11),
      Q => \res_2_V_reg_897_reg_n_8_[11]\,
      R => res_2_V_reg_897
    );
\res_2_V_reg_897_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \^dout_valid_reg\,
      D => trunc_ln_fu_460_p4(12),
      Q => \res_2_V_reg_897_reg_n_8_[12]\,
      R => res_2_V_reg_897
    );
\res_2_V_reg_897_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \^dout_valid_reg\,
      D => trunc_ln_fu_460_p4(13),
      Q => \res_2_V_reg_897_reg_n_8_[13]\,
      R => res_2_V_reg_897
    );
\res_2_V_reg_897_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \^dout_valid_reg\,
      D => trunc_ln_fu_460_p4(14),
      Q => \res_2_V_reg_897_reg_n_8_[14]\,
      R => res_2_V_reg_897
    );
\res_2_V_reg_897_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \^dout_valid_reg\,
      D => trunc_ln_fu_460_p4(15),
      Q => \res_2_V_reg_897_reg_n_8_[15]\,
      R => res_2_V_reg_897
    );
\res_2_V_reg_897_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \^dout_valid_reg\,
      D => trunc_ln_fu_460_p4(16),
      Q => \res_2_V_reg_897_reg_n_8_[16]\,
      R => res_2_V_reg_897
    );
\res_2_V_reg_897_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clock,
      CE => \^dout_valid_reg\,
      D => trunc_ln_fu_460_p4(1),
      Q => \res_2_V_reg_897_reg_n_8_[1]\,
      S => res_2_V_reg_897
    );
\res_2_V_reg_897_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clock,
      CE => \^dout_valid_reg\,
      D => trunc_ln_fu_460_p4(2),
      Q => \res_2_V_reg_897_reg_n_8_[2]\,
      S => res_2_V_reg_897
    );
\res_2_V_reg_897_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clock,
      CE => \^dout_valid_reg\,
      D => trunc_ln_fu_460_p4(3),
      Q => \res_2_V_reg_897_reg_n_8_[3]\,
      S => res_2_V_reg_897
    );
\res_2_V_reg_897_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clock,
      CE => \^dout_valid_reg\,
      D => trunc_ln_fu_460_p4(4),
      Q => \res_2_V_reg_897_reg_n_8_[4]\,
      S => res_2_V_reg_897
    );
\res_2_V_reg_897_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \^dout_valid_reg\,
      D => trunc_ln_fu_460_p4(5),
      Q => \res_2_V_reg_897_reg_n_8_[5]\,
      R => res_2_V_reg_897
    );
\res_2_V_reg_897_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \^dout_valid_reg\,
      D => trunc_ln_fu_460_p4(6),
      Q => \res_2_V_reg_897_reg_n_8_[6]\,
      R => res_2_V_reg_897
    );
\res_2_V_reg_897_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \^dout_valid_reg\,
      D => trunc_ln_fu_460_p4(7),
      Q => \res_2_V_reg_897_reg_n_8_[7]\,
      R => res_2_V_reg_897
    );
\res_2_V_reg_897_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \^dout_valid_reg\,
      D => trunc_ln_fu_460_p4(8),
      Q => \res_2_V_reg_897_reg_n_8_[8]\,
      R => res_2_V_reg_897
    );
\res_2_V_reg_897_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => \^dout_valid_reg\,
      D => trunc_ln_fu_460_p4(9),
      Q => \res_2_V_reg_897_reg_n_8_[9]\,
      R => res_2_V_reg_897
    );
ret_V_5_fu_242_p2: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => D(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_ret_V_5_fu_242_p2_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 8) => B"0000000000",
      B(7 downto 0) => D(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_ret_V_5_fu_242_p2_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_ret_V_5_fu_242_p2_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_ret_V_5_fu_242_p2_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => val_V_reg_8760,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => val_V_reg_8760,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => clock,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_ret_V_5_fu_242_p2_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_ret_V_5_fu_242_p2_OVERFLOW_UNCONNECTED,
      P(47 downto 16) => NLW_ret_V_5_fu_242_p2_P_UNCONNECTED(47 downto 16),
      P(15) => ret_V_5_fu_242_p2_n_98,
      P(14) => ret_V_5_fu_242_p2_n_99,
      P(13) => ret_V_5_fu_242_p2_n_100,
      P(12) => ret_V_5_fu_242_p2_n_101,
      P(11) => ret_V_5_fu_242_p2_n_102,
      P(10) => ret_V_5_fu_242_p2_n_103,
      P(9) => ret_V_5_fu_242_p2_n_104,
      P(8) => ret_V_5_fu_242_p2_n_105,
      P(7) => ret_V_5_fu_242_p2_n_106,
      P(6) => ret_V_5_fu_242_p2_n_107,
      P(5) => ret_V_5_fu_242_p2_n_108,
      P(4) => ret_V_5_fu_242_p2_n_109,
      P(3) => ret_V_5_fu_242_p2_n_110,
      P(2) => ret_V_5_fu_242_p2_n_111,
      P(1) => ret_V_5_fu_242_p2_n_112,
      P(0) => ret_V_5_fu_242_p2_n_113,
      PATTERNBDETECT => NLW_ret_V_5_fu_242_p2_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_ret_V_5_fu_242_p2_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_ret_V_5_fu_242_p2_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_ret_V_5_fu_242_p2_UNDERFLOW_UNCONNECTED
    );
ret_V_6_reg_902_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 11) => B"0000000000000000000",
      A(10 downto 0) => ps_V_fu_437_p2(10 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_ret_V_6_reg_902_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 11) => B"0000000",
      B(10 downto 0) => ps_V_fu_437_p2(10 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_ret_V_6_reg_902_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_ret_V_6_reg_902_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_ret_V_6_reg_902_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => \^dout_valid_reg\,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => \^dout_valid_reg\,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => \^dout_valid_reg\,
      CLK => clock,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_ret_V_6_reg_902_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_ret_V_6_reg_902_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 22) => NLW_ret_V_6_reg_902_reg_P_UNCONNECTED(47 downto 22),
      P(21) => ret_V_6_reg_902_reg_n_92,
      P(20) => ret_V_6_reg_902_reg_n_93,
      P(19) => ret_V_6_reg_902_reg_n_94,
      P(18) => ret_V_6_reg_902_reg_n_95,
      P(17) => ret_V_6_reg_902_reg_n_96,
      P(16) => ret_V_6_reg_902_reg_n_97,
      P(15) => ret_V_6_reg_902_reg_n_98,
      P(14) => ret_V_6_reg_902_reg_n_99,
      P(13) => ret_V_6_reg_902_reg_n_100,
      P(12) => ret_V_6_reg_902_reg_n_101,
      P(11) => ret_V_6_reg_902_reg_n_102,
      P(10) => ret_V_6_reg_902_reg_n_103,
      P(9) => ret_V_6_reg_902_reg_n_104,
      P(8) => ret_V_6_reg_902_reg_n_105,
      P(7) => ret_V_6_reg_902_reg_n_106,
      P(6) => ret_V_6_reg_902_reg_n_107,
      P(5) => ret_V_6_reg_902_reg_n_108,
      P(4) => ret_V_6_reg_902_reg_n_109,
      P(3) => ret_V_6_reg_902_reg_n_110,
      P(2) => ret_V_6_reg_902_reg_n_111,
      P(1) => ret_V_6_reg_902_reg_n_112,
      P(0) => ret_V_6_reg_902_reg_n_113,
      PATTERNBDETECT => NLW_ret_V_6_reg_902_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_ret_V_6_reg_902_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_ret_V_6_reg_902_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_ret_V_6_reg_902_reg_UNDERFLOW_UNCONNECTED
    );
sum_V_fu_454_p2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sum_V_fu_454_p2_carry_n_8,
      CO(2) => sum_V_fu_454_p2_carry_n_9,
      CO(1) => sum_V_fu_454_p2_carry_n_10,
      CO(0) => sum_V_fu_454_p2_carry_n_11,
      CYINIT => '0',
      DI(3 downto 1) => grp_fu_664_p3(2 downto 0),
      DI(0) => '0',
      O(3) => trunc_ln_fu_460_p4(0),
      O(2 downto 0) => NLW_sum_V_fu_454_p2_carry_O_UNCONNECTED(2 downto 0),
      S(3) => Seuil_calc2_mac_mdEe_U22_n_46,
      S(2) => Seuil_calc2_mac_mdEe_U22_n_47,
      S(1) => Seuil_calc2_mac_mdEe_U22_n_48,
      S(0) => ap_phi_mux_p_0108_0_phi_fu_225_p4(2)
    );
\sum_V_fu_454_p2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sum_V_fu_454_p2_carry_n_8,
      CO(3) => \sum_V_fu_454_p2_carry__0_n_8\,
      CO(2) => \sum_V_fu_454_p2_carry__0_n_9\,
      CO(1) => \sum_V_fu_454_p2_carry__0_n_10\,
      CO(0) => \sum_V_fu_454_p2_carry__0_n_11\,
      CYINIT => '0',
      DI(3 downto 0) => grp_fu_664_p3(6 downto 3),
      O(3 downto 0) => trunc_ln_fu_460_p4(4 downto 1),
      S(3) => Seuil_calc2_mac_mdEe_U22_n_49,
      S(2) => Seuil_calc2_mac_mdEe_U22_n_50,
      S(1) => Seuil_calc2_mac_mdEe_U22_n_51,
      S(0) => Seuil_calc2_mac_mdEe_U22_n_52
    );
\sum_V_fu_454_p2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_V_fu_454_p2_carry__0_n_8\,
      CO(3) => \sum_V_fu_454_p2_carry__1_n_8\,
      CO(2) => \sum_V_fu_454_p2_carry__1_n_9\,
      CO(1) => \sum_V_fu_454_p2_carry__1_n_10\,
      CO(0) => \sum_V_fu_454_p2_carry__1_n_11\,
      CYINIT => '0',
      DI(3 downto 0) => grp_fu_664_p3(10 downto 7),
      O(3 downto 0) => trunc_ln_fu_460_p4(8 downto 5),
      S(3) => Seuil_calc2_mac_mdEe_U22_n_53,
      S(2) => Seuil_calc2_mac_mdEe_U22_n_54,
      S(1) => Seuil_calc2_mac_mdEe_U22_n_55,
      S(0) => Seuil_calc2_mac_mdEe_U22_n_56
    );
\sum_V_fu_454_p2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_V_fu_454_p2_carry__1_n_8\,
      CO(3) => \sum_V_fu_454_p2_carry__2_n_8\,
      CO(2) => \sum_V_fu_454_p2_carry__2_n_9\,
      CO(1) => \sum_V_fu_454_p2_carry__2_n_10\,
      CO(0) => \sum_V_fu_454_p2_carry__2_n_11\,
      CYINIT => '0',
      DI(3 downto 0) => grp_fu_664_p3(14 downto 11),
      O(3 downto 0) => trunc_ln_fu_460_p4(12 downto 9),
      S(3) => Seuil_calc2_mac_mdEe_U22_n_57,
      S(2) => Seuil_calc2_mac_mdEe_U22_n_58,
      S(1) => Seuil_calc2_mac_mdEe_U22_n_59,
      S(0) => Seuil_calc2_mac_mdEe_U22_n_60
    );
\sum_V_fu_454_p2_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_V_fu_454_p2_carry__2_n_8\,
      CO(3) => \NLW_sum_V_fu_454_p2_carry__3_CO_UNCONNECTED\(3),
      CO(2) => \sum_V_fu_454_p2_carry__3_n_9\,
      CO(1) => \sum_V_fu_454_p2_carry__3_n_10\,
      CO(0) => \sum_V_fu_454_p2_carry__3_n_11\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \sum_V_fu_454_p2_carry__3_i_1_n_8\,
      DI(1) => RESIZE0,
      DI(0) => grp_fu_664_p3(15),
      O(3 downto 0) => trunc_ln_fu_460_p4(16 downto 13),
      S(3) => \sum_V_fu_454_p2_carry__3_i_2_n_8\,
      S(2) => Seuil_calc2_mac_mdEe_U22_n_61,
      S(1) => Seuil_calc2_mac_mdEe_U22_n_62,
      S(0) => Seuil_calc2_mac_mdEe_U22_n_63
    );
\sum_V_fu_454_p2_carry__3_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => p_0108_0_reg_221(20),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => sum_V_reg_892_reg(20),
      O => \sum_V_fu_454_p2_carry__3_i_1_n_8\
    );
\sum_V_fu_454_p2_carry__3_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA533A5"
    )
        port map (
      I0 => p_0108_0_reg_221(20),
      I1 => sum_V_reg_892_reg(20),
      I2 => p_0108_0_reg_221(21),
      I3 => ap_enable_reg_pp0_iter3,
      I4 => sum_V_reg_892_reg(21),
      O => \sum_V_fu_454_p2_carry__3_i_2_n_8\
    );
sum_V_fu_454_p2_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sum_V_reg_892_reg(2),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => p_0108_0_reg_221(2),
      O => ap_phi_mux_p_0108_0_phi_fu_225_p4(2)
    );
\sum_V_reg_892[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sum_V_reg_892_reg(2),
      I1 => ap_enable_reg_pp0_iter3,
      I2 => p_0108_0_reg_221(2),
      O => \sum_V_reg_892[2]_i_5_n_8\
    );
\sum_V_reg_892_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => Seuil_calc2_mac_mdEe_U22_n_37,
      Q => sum_V_reg_892_reg(10),
      R => '0'
    );
\sum_V_reg_892_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => Seuil_calc2_mac_mdEe_U22_n_36,
      Q => sum_V_reg_892_reg(11),
      R => '0'
    );
\sum_V_reg_892_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => Seuil_calc2_mac_mdEe_U22_n_35,
      Q => sum_V_reg_892_reg(12),
      R => '0'
    );
\sum_V_reg_892_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => Seuil_calc2_mac_mdEe_U22_n_34,
      Q => sum_V_reg_892_reg(13),
      R => '0'
    );
\sum_V_reg_892_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => Seuil_calc2_mac_mdEe_U22_n_41,
      Q => sum_V_reg_892_reg(14),
      R => '0'
    );
\sum_V_reg_892_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => Seuil_calc2_mac_mdEe_U22_n_40,
      Q => sum_V_reg_892_reg(15),
      R => '0'
    );
\sum_V_reg_892_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => Seuil_calc2_mac_mdEe_U22_n_39,
      Q => sum_V_reg_892_reg(16),
      R => '0'
    );
\sum_V_reg_892_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => Seuil_calc2_mac_mdEe_U22_n_38,
      Q => sum_V_reg_892_reg(17),
      R => '0'
    );
\sum_V_reg_892_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => Seuil_calc2_mac_mdEe_U22_n_45,
      Q => sum_V_reg_892_reg(18),
      R => '0'
    );
\sum_V_reg_892_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => Seuil_calc2_mac_mdEe_U22_n_44,
      Q => sum_V_reg_892_reg(19),
      R => '0'
    );
\sum_V_reg_892_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => Seuil_calc2_mac_mdEe_U22_n_43,
      Q => sum_V_reg_892_reg(20),
      R => '0'
    );
\sum_V_reg_892_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => Seuil_calc2_mac_mdEe_U22_n_42,
      Q => sum_V_reg_892_reg(21),
      R => '0'
    );
\sum_V_reg_892_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => Seuil_calc2_mac_mdEe_U22_n_29,
      Q => sum_V_reg_892_reg(2),
      R => '0'
    );
\sum_V_reg_892_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => Seuil_calc2_mac_mdEe_U22_n_28,
      Q => sum_V_reg_892_reg(3),
      R => '0'
    );
\sum_V_reg_892_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => Seuil_calc2_mac_mdEe_U22_n_27,
      Q => sum_V_reg_892_reg(4),
      R => '0'
    );
\sum_V_reg_892_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => Seuil_calc2_mac_mdEe_U22_n_26,
      Q => sum_V_reg_892_reg(5),
      R => '0'
    );
\sum_V_reg_892_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => Seuil_calc2_mac_mdEe_U22_n_33,
      Q => sum_V_reg_892_reg(6),
      R => '0'
    );
\sum_V_reg_892_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => Seuil_calc2_mac_mdEe_U22_n_32,
      Q => sum_V_reg_892_reg(7),
      R => '0'
    );
\sum_V_reg_892_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => Seuil_calc2_mac_mdEe_U22_n_31,
      Q => sum_V_reg_892_reg(8),
      R => '0'
    );
\sum_V_reg_892_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => Seuil_calc2_mac_mdEe_U22_n_30,
      Q => sum_V_reg_892_reg(9),
      R => '0'
    );
\val_V_reg_876[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2A200A2"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[1]_0\,
      I1 => ap_enable_reg_pp0_iter4_reg_n_8,
      I2 => detect_1_full_n,
      I3 => \^ap_enable_reg_pp0_iter0_reg_0\,
      I4 => dbl2scalc_1_empty_n,
      O => val_V_reg_8760
    );
\val_V_reg_876_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => val_V_reg_8760,
      D => \val_V_reg_876_reg_n_8_[0]\,
      Q => val_V_reg_876_pp0_iter1_reg(0),
      R => '0'
    );
\val_V_reg_876_pp0_iter1_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => val_V_reg_8760,
      D => \val_V_reg_876_reg_n_8_[1]\,
      Q => val_V_reg_876_pp0_iter1_reg(1),
      R => '0'
    );
\val_V_reg_876_pp0_iter1_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => val_V_reg_8760,
      D => \val_V_reg_876_reg_n_8_[2]\,
      Q => val_V_reg_876_pp0_iter1_reg(2),
      R => '0'
    );
\val_V_reg_876_pp0_iter1_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => val_V_reg_8760,
      D => \val_V_reg_876_reg_n_8_[3]\,
      Q => val_V_reg_876_pp0_iter1_reg(3),
      R => '0'
    );
\val_V_reg_876_pp0_iter1_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => val_V_reg_8760,
      D => \val_V_reg_876_reg_n_8_[4]\,
      Q => val_V_reg_876_pp0_iter1_reg(4),
      R => '0'
    );
\val_V_reg_876_pp0_iter1_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => val_V_reg_8760,
      D => \val_V_reg_876_reg_n_8_[5]\,
      Q => val_V_reg_876_pp0_iter1_reg(5),
      R => '0'
    );
\val_V_reg_876_pp0_iter1_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => val_V_reg_8760,
      D => \val_V_reg_876_reg_n_8_[6]\,
      Q => val_V_reg_876_pp0_iter1_reg(6),
      R => '0'
    );
\val_V_reg_876_pp0_iter1_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => val_V_reg_8760,
      D => \val_V_reg_876_reg_n_8_[7]\,
      Q => val_V_reg_876_pp0_iter1_reg(7),
      R => '0'
    );
\val_V_reg_876_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => val_V_reg_8760,
      D => D(0),
      Q => \val_V_reg_876_reg_n_8_[0]\,
      R => '0'
    );
\val_V_reg_876_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => val_V_reg_8760,
      D => D(1),
      Q => \val_V_reg_876_reg_n_8_[1]\,
      R => '0'
    );
\val_V_reg_876_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => val_V_reg_8760,
      D => D(2),
      Q => \val_V_reg_876_reg_n_8_[2]\,
      R => '0'
    );
\val_V_reg_876_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => val_V_reg_8760,
      D => D(3),
      Q => \val_V_reg_876_reg_n_8_[3]\,
      R => '0'
    );
\val_V_reg_876_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => val_V_reg_8760,
      D => D(4),
      Q => \val_V_reg_876_reg_n_8_[4]\,
      R => '0'
    );
\val_V_reg_876_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => val_V_reg_8760,
      D => D(5),
      Q => \val_V_reg_876_reg_n_8_[5]\,
      R => '0'
    );
\val_V_reg_876_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => val_V_reg_8760,
      D => D(6),
      Q => \val_V_reg_876_reg_n_8_[6]\,
      R => '0'
    );
\val_V_reg_876_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => val_V_reg_8760,
      D => D(7),
      Q => \val_V_reg_876_reg_n_8_[7]\,
      R => '0'
    );
\x0_V_fu_84_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_1_V_fu_88(0),
      Q => x0_V_fu_84(0),
      R => '0'
    );
\x0_V_fu_84_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_1_V_fu_88(1),
      Q => x0_V_fu_84(1),
      R => '0'
    );
\x0_V_fu_84_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_1_V_fu_88(2),
      Q => x0_V_fu_84(2),
      R => '0'
    );
\x0_V_fu_84_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_1_V_fu_88(3),
      Q => x0_V_fu_84(3),
      R => '0'
    );
\x0_V_fu_84_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_1_V_fu_88(4),
      Q => x0_V_fu_84(4),
      R => '0'
    );
\x0_V_fu_84_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_1_V_fu_88(5),
      Q => x0_V_fu_84(5),
      R => '0'
    );
\x0_V_fu_84_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_1_V_fu_88(6),
      Q => x0_V_fu_84(6),
      R => '0'
    );
\x0_V_fu_84_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => buffer_10_V_fu_1240,
      D => buffer_1_V_fu_88(7),
      Q => x0_V_fu_84(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_CRCCheck is
  port (
    \icmp_ln41_reg_658_reg[0]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \i1_0_reg_180_reg[2]\ : out STD_LOGIC;
    \icmp_ln41_reg_658_reg[0]_0\ : out STD_LOGIC;
    internal_empty_n3_out : out STD_LOGIC;
    \icmp_ln68_reg_711_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ce : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \ap_CS_fsm_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clock : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    byt2crc_1_empty_n : in STD_LOGIC;
    reset : in STD_LOGIC;
    \mOutPtr_reg[5]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    crc2fra_1_full_n : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mOutPtr_reg[5]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_CRCCheck : entity is "CRCCheck";
end bd_0_hls_inst_0_CRCCheck;

architecture STRUCTURE of bd_0_hls_inst_0_CRCCheck is
  signal \/ram_reg_0_15_0_0_i_1_n_8\ : STD_LOGIC;
  signal address0 : STD_LOGIC_VECTOR ( 6 downto 4 );
  signal \^icmp_ln41_reg_658_reg[0]\ : STD_LOGIC;
begin
  \icmp_ln41_reg_658_reg[0]\ <= \^icmp_ln41_reg_658_reg[0]\;
\/ram_reg_0_15_0_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => address0(4),
      I1 => address0(5),
      I2 => address0(6),
      I3 => \^icmp_ln41_reg_658_reg[0]\,
      O => \/ram_reg_0_15_0_0_i_1_n_8\
    );
grp_CRCCheck_do_gen_fu_56: entity work.bd_0_hls_inst_0_CRCCheck_do_gen
     port map (
      D(0) => D(0),
      E(0) => \^icmp_ln41_reg_658_reg[0]\,
      Q(7 downto 0) => Q(7 downto 0),
      \ap_CS_fsm_reg[7]_0\(0) => \ap_CS_fsm_reg[7]\(0),
      byt2crc_1_empty_n => byt2crc_1_empty_n,
      ce => ce,
      clock => clock,
      crc2fra_1_full_n => crc2fra_1_full_n,
      \i1_0_reg_180_reg[2]_0\ => \i1_0_reg_180_reg[2]\,
      \i3_0_reg_213_reg[6]_0\(2 downto 0) => address0(6 downto 4),
      \icmp_ln41_reg_658_reg[0]_0\ => \icmp_ln41_reg_658_reg[0]_0\,
      \icmp_ln68_reg_711_reg[0]_0\(0) => \icmp_ln68_reg_711_reg[0]\(0),
      internal_empty_n3_out => internal_empty_n3_out,
      internal_empty_n_reg(0) => E(0),
      \mOutPtr_reg[5]\(0) => \mOutPtr_reg[5]\(0),
      \mOutPtr_reg[5]_0\ => \mOutPtr_reg[5]_0\,
      \out\(7 downto 0) => \out\(7 downto 0),
      \q0[7]_i_5\ => \/ram_reg_0_15_0_0_i_1_n_8\,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_ModuleCompute is
  port (
    e_read : out STD_LOGIC;
    push : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clock : in STD_LOGIC;
    e_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    e_empty_n : in STD_LOGIC;
    mod2dbl_1_full_n : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_ModuleCompute : entity is "ModuleCompute";
end bd_0_hls_inst_0_ModuleCompute;

architecture STRUCTURE of bd_0_hls_inst_0_ModuleCompute is
begin
grp_ModuleCompute_do_gen_fu_58: entity work.bd_0_hls_inst_0_ModuleCompute_do_gen
     port map (
      Q(7 downto 0) => Q(7 downto 0),
      clock => clock,
      e_dout(7 downto 0) => e_dout(7 downto 0),
      e_empty_n => e_empty_n,
      e_read => e_read,
      mod2dbl_1_full_n => mod2dbl_1_full_n,
      push => push,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_Seuil_calc2 is
  port (
    ap_CS_fsm_pp0_stage0 : out STD_LOGIC;
    ap_block_pp0_stage0_110010_in : out STD_LOGIC;
    ap_enable_reg_pp0_iter0 : out STD_LOGIC;
    full_n_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    pop : out STD_LOGIC;
    ce : out STD_LOGIC;
    \ap_CS_fsm_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC;
    \in\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dbl2scalc_1_empty_n : in STD_LOGIC;
    detect_1_full_n : in STD_LOGIC;
    dbl2scalc_1_full_n : in STD_LOGIC;
    dbl2tsep_1_full_n : in STD_LOGIC;
    mod2dbl_1_empty_n : in STD_LOGIC;
    \dout_buf_reg[7]\ : in STD_LOGIC;
    \ap_CS_fsm_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_Seuil_calc2 : entity is "Seuil_calc2";
end bd_0_hls_inst_0_Seuil_calc2;

architecture STRUCTURE of bd_0_hls_inst_0_Seuil_calc2 is
begin
grp_Seuil_calc2_do_gen_fu_56: entity work.bd_0_hls_inst_0_Seuil_calc2_do_gen
     port map (
      D(7 downto 0) => D(7 downto 0),
      \ap_CS_fsm_reg[0]_0\(0) => \ap_CS_fsm_reg[0]\(0),
      \ap_CS_fsm_reg[1]_0\ => ap_CS_fsm_pp0_stage0,
      \ap_CS_fsm_reg[1]_1\ => \ap_CS_fsm_reg[1]\,
      \ap_CS_fsm_reg[1]_2\(0) => \ap_CS_fsm_reg[1]_0\(0),
      ap_enable_reg_pp0_iter0_reg_0 => ap_enable_reg_pp0_iter0,
      ce => ce,
      clock => clock,
      dbl2scalc_1_empty_n => dbl2scalc_1_empty_n,
      dbl2scalc_1_full_n => dbl2scalc_1_full_n,
      dbl2tsep_1_full_n => dbl2tsep_1_full_n,
      detect_1_full_n => detect_1_full_n,
      \dout_buf_reg[7]\ => \dout_buf_reg[7]\,
      dout_valid_reg => ap_block_pp0_stage0_110010_in,
      full_n_reg(0) => full_n_reg(0),
      \in\(0) => \in\(0),
      mod2dbl_1_empty_n => mod2dbl_1_empty_n,
      pop => pop,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_Detecteur2 is
  port (
    dbl2scalc_1_full_n : out STD_LOGIC;
    dbl2tsep_1_full_n : out STD_LOGIC;
    ce : out STD_LOGIC;
    \mOutPtr_reg[1]\ : out STD_LOGIC;
    \mOutPtr_reg[0]\ : out STD_LOGIC;
    \mOutPtr_reg[0]_0\ : out STD_LOGIC;
    internal_empty_n_reg : out STD_LOGIC;
    internal_empty_n3_out : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \dout_buf_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clock : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    reset : in STD_LOGIC;
    mod2dbl_1_empty_n : in STD_LOGIC;
    internal_empty_n_reg_0 : in STD_LOGIC;
    internal_empty_n_reg_1 : in STD_LOGIC;
    internal_empty_n_reg_2 : in STD_LOGIC;
    \mOutPtr_reg[5]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    det2dow_1_empty_n : in STD_LOGIC;
    \mOutPtr_reg[2]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    det2dow_1_full_n : in STD_LOGIC;
    \ap_CS_fsm_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_Detecteur2 : entity is "Detecteur2";
end bd_0_hls_inst_0_Detecteur2;

architecture STRUCTURE of bd_0_hls_inst_0_Detecteur2 is
  signal \^ce\ : STD_LOGIC;
  signal ce_2 : STD_LOGIC;
  signal dbl2scalc_1_empty_n : STD_LOGIC;
  signal dbl2scalc_1_fifo_U_n_22 : STD_LOGIC;
  signal dbl2scalc_1_fifo_U_n_23 : STD_LOGIC;
  signal dbl2scalc_1_fifo_U_n_24 : STD_LOGIC;
  signal dbl2scalc_1_fifo_U_n_25 : STD_LOGIC;
  signal dbl2scalc_1_fifo_U_n_26 : STD_LOGIC;
  signal dbl2scalc_1_fifo_U_n_27 : STD_LOGIC;
  signal dbl2scalc_1_fifo_U_n_28 : STD_LOGIC;
  signal dbl2scalc_1_fifo_U_n_29 : STD_LOGIC;
  signal dbl2scalc_1_fifo_U_n_30 : STD_LOGIC;
  signal dbl2scalc_1_fifo_U_n_9 : STD_LOGIC;
  signal \^dbl2scalc_1_full_n\ : STD_LOGIC;
  signal dbl2tsep_1_empty_n : STD_LOGIC;
  signal dbl2tsep_1_fifo_U_n_10 : STD_LOGIC;
  signal dbl2tsep_1_fifo_U_n_11 : STD_LOGIC;
  signal dbl2tsep_1_fifo_U_n_12 : STD_LOGIC;
  signal dbl2tsep_1_fifo_U_n_13 : STD_LOGIC;
  signal dbl2tsep_1_fifo_U_n_14 : STD_LOGIC;
  signal dbl2tsep_1_fifo_U_n_15 : STD_LOGIC;
  signal dbl2tsep_1_fifo_U_n_16 : STD_LOGIC;
  signal dbl2tsep_1_fifo_U_n_17 : STD_LOGIC;
  signal dbl2tsep_1_fifo_U_n_18 : STD_LOGIC;
  signal dbl2tsep_1_fifo_U_n_28 : STD_LOGIC;
  signal dbl2tsep_1_fifo_U_n_29 : STD_LOGIC;
  signal dbl2tsep_1_fifo_U_n_30 : STD_LOGIC;
  signal dbl2tsep_1_fifo_U_n_31 : STD_LOGIC;
  signal dbl2tsep_1_fifo_U_n_32 : STD_LOGIC;
  signal dbl2tsep_1_fifo_U_n_33 : STD_LOGIC;
  signal dbl2tsep_1_fifo_U_n_34 : STD_LOGIC;
  signal dbl2tsep_1_fifo_U_n_35 : STD_LOGIC;
  signal dbl2tsep_1_fifo_U_n_36 : STD_LOGIC;
  signal \^dbl2tsep_1_full_n\ : STD_LOGIC;
  signal detect_1_dout : STD_LOGIC;
  signal detect_1_empty_n : STD_LOGIC;
  signal detect_1_fifo_U_n_21 : STD_LOGIC;
  signal detect_1_fifo_U_n_22 : STD_LOGIC;
  signal detect_1_fifo_U_n_23 : STD_LOGIC;
  signal detect_1_fifo_U_n_24 : STD_LOGIC;
  signal detect_1_fifo_U_n_25 : STD_LOGIC;
  signal detect_1_fifo_U_n_26 : STD_LOGIC;
  signal detect_1_fifo_U_n_27 : STD_LOGIC;
  signal detect_1_fifo_U_n_28 : STD_LOGIC;
  signal detect_1_fifo_U_n_29 : STD_LOGIC;
  signal detect_1_fifo_U_n_30 : STD_LOGIC;
  signal detect_1_fifo_U_n_31 : STD_LOGIC;
  signal detect_1_full_n : STD_LOGIC;
  signal dout_buf : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal empty_n : STD_LOGIC;
  signal empty_n_3 : STD_LOGIC;
  signal grp_Detecteur2_fu_226_e_read : STD_LOGIC;
  signal \grp_Seuil_calc2_do_gen_fu_56/ap_CS_fsm_pp0_stage0\ : STD_LOGIC;
  signal \grp_Seuil_calc2_do_gen_fu_56/ap_block_pp0_stage0_110010_in\ : STD_LOGIC;
  signal \grp_Seuil_calc2_do_gen_fu_56/ap_enable_reg_pp0_iter0\ : STD_LOGIC;
  signal grp_Seuil_calc2_fu_100_detect_din : STD_LOGIC;
  signal grp_Seuil_calc2_fu_100_n_15 : STD_LOGIC;
  signal \grp_trames_separ2_do_gen_fu_60/ap_CS_fsm_state2\ : STD_LOGIC;
  signal \grp_trames_separ2_do_gen_fu_60/ap_NS_fsm17_out\ : STD_LOGIC;
  signal \grp_trames_separ2_do_gen_fu_60/tmp_reg_173\ : STD_LOGIC;
  signal grp_trames_separ2_fu_114_n_10 : STD_LOGIC;
  signal grp_trames_separ2_fu_114_n_12 : STD_LOGIC;
  signal grp_trames_separ2_fu_114_n_14 : STD_LOGIC;
  signal grp_trames_separ2_fu_114_n_20 : STD_LOGIC;
  signal mOutPtr_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal mOutPtr_reg_0_sn_1 : STD_LOGIC;
  signal mOutPtr_reg_1_sn_1 : STD_LOGIC;
  signal \p_0_out__24_carry__0_n_10\ : STD_LOGIC;
  signal \p_0_out__24_carry__0_n_11\ : STD_LOGIC;
  signal \p_0_out__24_carry__0_n_12\ : STD_LOGIC;
  signal \p_0_out__24_carry__0_n_13\ : STD_LOGIC;
  signal \p_0_out__24_carry__0_n_14\ : STD_LOGIC;
  signal \p_0_out__24_carry__0_n_15\ : STD_LOGIC;
  signal \p_0_out__24_carry__0_n_8\ : STD_LOGIC;
  signal \p_0_out__24_carry__0_n_9\ : STD_LOGIC;
  signal \p_0_out__24_carry__1_n_15\ : STD_LOGIC;
  signal \p_0_out__24_carry_n_10\ : STD_LOGIC;
  signal \p_0_out__24_carry_n_11\ : STD_LOGIC;
  signal \p_0_out__24_carry_n_12\ : STD_LOGIC;
  signal \p_0_out__24_carry_n_13\ : STD_LOGIC;
  signal \p_0_out__24_carry_n_14\ : STD_LOGIC;
  signal \p_0_out__24_carry_n_15\ : STD_LOGIC;
  signal \p_0_out__24_carry_n_8\ : STD_LOGIC;
  signal \p_0_out__24_carry_n_9\ : STD_LOGIC;
  signal \p_0_out__49_carry__0_n_10\ : STD_LOGIC;
  signal \p_0_out__49_carry__0_n_11\ : STD_LOGIC;
  signal \p_0_out__49_carry__0_n_12\ : STD_LOGIC;
  signal \p_0_out__49_carry__0_n_13\ : STD_LOGIC;
  signal \p_0_out__49_carry__0_n_14\ : STD_LOGIC;
  signal \p_0_out__49_carry__0_n_15\ : STD_LOGIC;
  signal \p_0_out__49_carry__0_n_8\ : STD_LOGIC;
  signal \p_0_out__49_carry__0_n_9\ : STD_LOGIC;
  signal \p_0_out__49_carry__1_n_11\ : STD_LOGIC;
  signal \p_0_out__49_carry__1_n_14\ : STD_LOGIC;
  signal \p_0_out__49_carry__1_n_15\ : STD_LOGIC;
  signal \p_0_out__49_carry_n_10\ : STD_LOGIC;
  signal \p_0_out__49_carry_n_11\ : STD_LOGIC;
  signal \p_0_out__49_carry_n_12\ : STD_LOGIC;
  signal \p_0_out__49_carry_n_13\ : STD_LOGIC;
  signal \p_0_out__49_carry_n_14\ : STD_LOGIC;
  signal \p_0_out__49_carry_n_15\ : STD_LOGIC;
  signal \p_0_out__49_carry_n_8\ : STD_LOGIC;
  signal \p_0_out__49_carry_n_9\ : STD_LOGIC;
  signal \p_0_out_carry__0_n_10\ : STD_LOGIC;
  signal \p_0_out_carry__0_n_11\ : STD_LOGIC;
  signal \p_0_out_carry__0_n_12\ : STD_LOGIC;
  signal \p_0_out_carry__0_n_13\ : STD_LOGIC;
  signal \p_0_out_carry__0_n_14\ : STD_LOGIC;
  signal \p_0_out_carry__0_n_15\ : STD_LOGIC;
  signal \p_0_out_carry__0_n_8\ : STD_LOGIC;
  signal \p_0_out_carry__0_n_9\ : STD_LOGIC;
  signal \p_0_out_carry__1_n_15\ : STD_LOGIC;
  signal p_0_out_carry_n_10 : STD_LOGIC;
  signal p_0_out_carry_n_11 : STD_LOGIC;
  signal p_0_out_carry_n_12 : STD_LOGIC;
  signal p_0_out_carry_n_13 : STD_LOGIC;
  signal p_0_out_carry_n_14 : STD_LOGIC;
  signal p_0_out_carry_n_15 : STD_LOGIC;
  signal p_0_out_carry_n_8 : STD_LOGIC;
  signal p_0_out_carry_n_9 : STD_LOGIC;
  signal pop : STD_LOGIC;
  signal pop_4 : STD_LOGIC;
  signal usedw14_out : STD_LOGIC;
  signal usedw14_out_0 : STD_LOGIC;
  signal usedw_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal usedw_reg_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_p_0_out__24_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p_0_out__24_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_p_0_out__49_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_p_0_out__49_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_p_0_out_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p_0_out_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \p_0_out__24_carry\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \p_0_out__24_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \p_0_out__24_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \p_0_out__24_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \p_0_out__24_carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \p_0_out__24_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \p_0_out__49_carry\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \p_0_out__49_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \p_0_out__49_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \p_0_out__49_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \p_0_out__49_carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \p_0_out__49_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of p_0_out_carry : label is 35;
  attribute METHODOLOGY_DRC_VIOS of p_0_out_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \p_0_out_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \p_0_out_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \p_0_out_carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \p_0_out_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  ce <= \^ce\;
  dbl2scalc_1_full_n <= \^dbl2scalc_1_full_n\;
  dbl2tsep_1_full_n <= \^dbl2tsep_1_full_n\;
  \mOutPtr_reg[0]\ <= mOutPtr_reg_0_sn_1;
  \mOutPtr_reg[1]\ <= mOutPtr_reg_1_sn_1;
dbl2scalc_1_fifo_U: entity work.bd_0_hls_inst_0_fifo_w8_d1024_A
     port map (
      D(8) => \p_0_out_carry__1_n_15\,
      D(7) => \p_0_out_carry__0_n_12\,
      D(6) => \p_0_out_carry__0_n_13\,
      D(5) => \p_0_out_carry__0_n_14\,
      D(4) => \p_0_out_carry__0_n_15\,
      D(3) => p_0_out_carry_n_12,
      D(2) => p_0_out_carry_n_13,
      D(1) => p_0_out_carry_n_14,
      D(0) => p_0_out_carry_n_15,
      DI(0) => usedw14_out_0,
      E(0) => grp_Detecteur2_fu_226_e_read,
      Q(7 downto 0) => Q(7 downto 0),
      S(3) => dbl2scalc_1_fifo_U_n_22,
      S(2) => dbl2scalc_1_fifo_U_n_23,
      S(1) => dbl2scalc_1_fifo_U_n_24,
      S(0) => dbl2scalc_1_fifo_U_n_25,
      ap_CS_fsm_pp0_stage0 => \grp_Seuil_calc2_do_gen_fu_56/ap_CS_fsm_pp0_stage0\,
      ap_block_pp0_stage0_110010_in => \grp_Seuil_calc2_do_gen_fu_56/ap_block_pp0_stage0_110010_in\,
      ap_enable_reg_pp0_iter0 => \grp_Seuil_calc2_do_gen_fu_56/ap_enable_reg_pp0_iter0\,
      clock => clock,
      dbl2scalc_1_empty_n => dbl2scalc_1_empty_n,
      \dout_buf_reg[0]_0\ => dbl2tsep_1_fifo_U_n_11,
      \dout_buf_reg[1]_0\ => dbl2tsep_1_fifo_U_n_12,
      \dout_buf_reg[2]_0\ => dbl2tsep_1_fifo_U_n_13,
      \dout_buf_reg[3]_0\ => dbl2tsep_1_fifo_U_n_14,
      \dout_buf_reg[4]_0\ => dbl2tsep_1_fifo_U_n_15,
      \dout_buf_reg[5]_0\ => dbl2tsep_1_fifo_U_n_16,
      \dout_buf_reg[6]_0\ => dbl2tsep_1_fifo_U_n_17,
      \dout_buf_reg[7]_0\(7 downto 0) => dout_buf(7 downto 0),
      \dout_buf_reg[7]_1\ => dbl2tsep_1_fifo_U_n_18,
      dout_valid_reg_0 => grp_Seuil_calc2_fu_100_n_15,
      empty_n_reg_0 => dbl2scalc_1_fifo_U_n_9,
      empty_n_reg_1(0) => empty_n_3,
      empty_n_reg_2 => \^dbl2tsep_1_full_n\,
      full_n_reg_0 => \^dbl2scalc_1_full_n\,
      full_n_reg_1(0) => usedw14_out,
      full_n_reg_2(0) => empty_n,
      mod2dbl_1_empty_n => mod2dbl_1_empty_n,
      pop => pop,
      pop_0 => pop_4,
      reset => reset,
      \usedw_reg[7]_0\(7 downto 0) => usedw_reg(7 downto 0),
      \usedw_reg[7]_1\(3) => dbl2scalc_1_fifo_U_n_26,
      \usedw_reg[7]_1\(2) => dbl2scalc_1_fifo_U_n_27,
      \usedw_reg[7]_1\(1) => dbl2scalc_1_fifo_U_n_28,
      \usedw_reg[7]_1\(0) => dbl2scalc_1_fifo_U_n_29,
      \usedw_reg[8]_0\(0) => dbl2scalc_1_fifo_U_n_30
    );
dbl2tsep_1_fifo_U: entity work.bd_0_hls_inst_0_fifo_w8_d1024_A_3
     port map (
      D(8) => \p_0_out__24_carry__1_n_15\,
      D(7) => \p_0_out__24_carry__0_n_12\,
      D(6) => \p_0_out__24_carry__0_n_13\,
      D(5) => \p_0_out__24_carry__0_n_14\,
      D(4) => \p_0_out__24_carry__0_n_15\,
      D(3) => \p_0_out__24_carry_n_12\,
      D(2) => \p_0_out__24_carry_n_13\,
      D(1) => \p_0_out__24_carry_n_14\,
      D(0) => \p_0_out__24_carry_n_15\,
      E(0) => grp_Detecteur2_fu_226_e_read,
      Q(7 downto 0) => Q(7 downto 0),
      S(3) => dbl2tsep_1_fifo_U_n_28,
      S(2) => dbl2tsep_1_fifo_U_n_29,
      S(1) => dbl2tsep_1_fifo_U_n_30,
      S(0) => dbl2tsep_1_fifo_U_n_31,
      clock => clock,
      dbl2tsep_1_empty_n => dbl2tsep_1_empty_n,
      \dout_buf_reg[7]_0\(7 downto 0) => \dout_buf_reg[7]\(7 downto 0),
      dout_valid_reg_0 => grp_trames_separ2_fu_114_n_20,
      empty_n_reg_0 => dbl2tsep_1_fifo_U_n_10,
      empty_n_reg_1(0) => empty_n,
      full_n_reg_0 => \^dbl2tsep_1_full_n\,
      mod2dbl_1_empty_n => mod2dbl_1_empty_n,
      pop => pop_4,
      \q_tmp_reg[0]_0\ => dbl2tsep_1_fifo_U_n_11,
      \q_tmp_reg[0]_1\ => \^dbl2scalc_1_full_n\,
      \q_tmp_reg[1]_0\ => dbl2tsep_1_fifo_U_n_12,
      \q_tmp_reg[2]_0\ => dbl2tsep_1_fifo_U_n_13,
      \q_tmp_reg[3]_0\ => dbl2tsep_1_fifo_U_n_14,
      \q_tmp_reg[4]_0\ => dbl2tsep_1_fifo_U_n_15,
      \q_tmp_reg[5]_0\ => dbl2tsep_1_fifo_U_n_16,
      \q_tmp_reg[6]_0\ => dbl2tsep_1_fifo_U_n_17,
      \q_tmp_reg[7]_0\ => dbl2tsep_1_fifo_U_n_18,
      reset => reset,
      \usedw_reg[7]_0\(7 downto 0) => usedw_reg_1(7 downto 0),
      \usedw_reg[7]_1\(3) => dbl2tsep_1_fifo_U_n_32,
      \usedw_reg[7]_1\(2) => dbl2tsep_1_fifo_U_n_33,
      \usedw_reg[7]_1\(1) => dbl2tsep_1_fifo_U_n_34,
      \usedw_reg[7]_1\(0) => dbl2tsep_1_fifo_U_n_35,
      \usedw_reg[8]_0\(0) => dbl2tsep_1_fifo_U_n_36
    );
detect_1_fifo_U: entity work.bd_0_hls_inst_0_fifo_w1_d1024_A
     port map (
      D(9) => \p_0_out__49_carry__1_n_14\,
      D(8) => \p_0_out__49_carry__1_n_15\,
      D(7) => \p_0_out__49_carry__0_n_12\,
      D(6) => \p_0_out__49_carry__0_n_13\,
      D(5) => \p_0_out__49_carry__0_n_14\,
      D(4) => \p_0_out__49_carry__0_n_15\,
      D(3) => \p_0_out__49_carry_n_12\,
      D(2) => \p_0_out__49_carry_n_13\,
      D(1) => \p_0_out__49_carry_n_14\,
      D(0) => \p_0_out__49_carry_n_15\,
      E(0) => grp_trames_separ2_fu_114_n_10,
      Q(0) => \grp_trames_separ2_do_gen_fu_60/ap_CS_fsm_state2\,
      S(3) => detect_1_fifo_U_n_22,
      S(2) => detect_1_fifo_U_n_23,
      S(1) => detect_1_fifo_U_n_24,
      S(0) => detect_1_fifo_U_n_25,
      SR(0) => \grp_trames_separ2_do_gen_fu_60/ap_NS_fsm17_out\,
      \ap_CS_fsm_reg[1]\ => detect_1_fifo_U_n_21,
      ce => ce_2,
      clock => clock,
      dbl2tsep_1_empty_n => dbl2tsep_1_empty_n,
      detect_1_dout => detect_1_dout,
      detect_1_empty_n => detect_1_empty_n,
      detect_1_full_n => detect_1_full_n,
      \in\(0) => grp_Seuil_calc2_fu_100_detect_din,
      internal_full_n_reg_0 => grp_trames_separ2_fu_114_n_14,
      \mOutPtr_reg[4]_0\ => \^ce\,
      \mOutPtr_reg[7]_0\(3) => detect_1_fifo_U_n_26,
      \mOutPtr_reg[7]_0\(2) => detect_1_fifo_U_n_27,
      \mOutPtr_reg[7]_0\(1) => detect_1_fifo_U_n_28,
      \mOutPtr_reg[7]_0\(0) => detect_1_fifo_U_n_29,
      \mOutPtr_reg[8]_0\(8 downto 0) => mOutPtr_reg(8 downto 0),
      \mOutPtr_reg[9]_0\(1) => detect_1_fifo_U_n_30,
      \mOutPtr_reg[9]_0\(0) => detect_1_fifo_U_n_31,
      reset => reset,
      tmp_reg_173 => \grp_trames_separ2_do_gen_fu_60/tmp_reg_173\
    );
grp_Seuil_calc2_fu_100: entity work.bd_0_hls_inst_0_Seuil_calc2
     port map (
      D(7 downto 0) => dout_buf(7 downto 0),
      ap_CS_fsm_pp0_stage0 => \grp_Seuil_calc2_do_gen_fu_56/ap_CS_fsm_pp0_stage0\,
      \ap_CS_fsm_reg[0]\(0) => D(0),
      \ap_CS_fsm_reg[1]\ => grp_Seuil_calc2_fu_100_n_15,
      \ap_CS_fsm_reg[1]_0\(0) => \ap_CS_fsm_reg[1]\(0),
      ap_block_pp0_stage0_110010_in => \grp_Seuil_calc2_do_gen_fu_56/ap_block_pp0_stage0_110010_in\,
      ap_enable_reg_pp0_iter0 => \grp_Seuil_calc2_do_gen_fu_56/ap_enable_reg_pp0_iter0\,
      ce => ce_2,
      clock => clock,
      dbl2scalc_1_empty_n => dbl2scalc_1_empty_n,
      dbl2scalc_1_full_n => \^dbl2scalc_1_full_n\,
      dbl2tsep_1_full_n => \^dbl2tsep_1_full_n\,
      detect_1_full_n => detect_1_full_n,
      \dout_buf_reg[7]\ => dbl2scalc_1_fifo_U_n_9,
      full_n_reg(0) => empty_n_3,
      \in\(0) => grp_Seuil_calc2_fu_100_detect_din,
      mod2dbl_1_empty_n => mod2dbl_1_empty_n,
      pop => pop,
      reset => reset
    );
grp_trames_separ2_fu_114: entity work.bd_0_hls_inst_0_trames_separ2
     port map (
      DI(0) => grp_trames_separ2_fu_114_n_12,
      E(0) => grp_trames_separ2_fu_114_n_10,
      Q(0) => \grp_trames_separ2_do_gen_fu_60/ap_CS_fsm_state2\,
      SR(0) => \grp_trames_separ2_do_gen_fu_60/ap_NS_fsm17_out\,
      \ap_CS_fsm_reg[1]\ => grp_trames_separ2_fu_114_n_20,
      ce => ce_2,
      clock => clock,
      dbl2tsep_1_empty_n => dbl2tsep_1_empty_n,
      det2dow_1_empty_n => det2dow_1_empty_n,
      det2dow_1_full_n => det2dow_1_full_n,
      detect_1_dout => detect_1_dout,
      detect_1_empty_n => detect_1_empty_n,
      \dout_buf_reg[7]\ => dbl2tsep_1_fifo_U_n_10,
      dout_valid_reg => grp_trames_separ2_fu_114_n_14,
      internal_empty_n3_out => internal_empty_n3_out,
      internal_empty_n_reg => internal_empty_n_reg,
      internal_empty_n_reg_0 => internal_empty_n_reg_0,
      internal_empty_n_reg_1 => internal_empty_n_reg_1,
      internal_empty_n_reg_2 => internal_empty_n_reg_2,
      internal_full_n_reg => \^ce\,
      \mOutPtr_reg[0]\ => mOutPtr_reg_0_sn_1,
      \mOutPtr_reg[0]_0\ => \mOutPtr_reg[0]_0\,
      \mOutPtr_reg[1]\ => mOutPtr_reg_1_sn_1,
      \mOutPtr_reg[2]\(1 downto 0) => \mOutPtr_reg[2]\(1 downto 0),
      \mOutPtr_reg[5]\(1 downto 0) => \mOutPtr_reg[5]\(1 downto 0),
      pop => pop_4,
      reset => reset,
      tmp_reg_173 => \grp_trames_separ2_do_gen_fu_60/tmp_reg_173\,
      \tmp_reg_173_reg[0]\ => detect_1_fifo_U_n_21
    );
\p_0_out__24_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \p_0_out__24_carry_n_8\,
      CO(2) => \p_0_out__24_carry_n_9\,
      CO(1) => \p_0_out__24_carry_n_10\,
      CO(0) => \p_0_out__24_carry_n_11\,
      CYINIT => usedw_reg_1(0),
      DI(3 downto 1) => usedw_reg_1(3 downto 1),
      DI(0) => usedw14_out,
      O(3) => \p_0_out__24_carry_n_12\,
      O(2) => \p_0_out__24_carry_n_13\,
      O(1) => \p_0_out__24_carry_n_14\,
      O(0) => \p_0_out__24_carry_n_15\,
      S(3) => dbl2tsep_1_fifo_U_n_28,
      S(2) => dbl2tsep_1_fifo_U_n_29,
      S(1) => dbl2tsep_1_fifo_U_n_30,
      S(0) => dbl2tsep_1_fifo_U_n_31
    );
\p_0_out__24_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_0_out__24_carry_n_8\,
      CO(3) => \p_0_out__24_carry__0_n_8\,
      CO(2) => \p_0_out__24_carry__0_n_9\,
      CO(1) => \p_0_out__24_carry__0_n_10\,
      CO(0) => \p_0_out__24_carry__0_n_11\,
      CYINIT => '0',
      DI(3 downto 0) => usedw_reg_1(7 downto 4),
      O(3) => \p_0_out__24_carry__0_n_12\,
      O(2) => \p_0_out__24_carry__0_n_13\,
      O(1) => \p_0_out__24_carry__0_n_14\,
      O(0) => \p_0_out__24_carry__0_n_15\,
      S(3) => dbl2tsep_1_fifo_U_n_32,
      S(2) => dbl2tsep_1_fifo_U_n_33,
      S(1) => dbl2tsep_1_fifo_U_n_34,
      S(0) => dbl2tsep_1_fifo_U_n_35
    );
\p_0_out__24_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_0_out__24_carry__0_n_8\,
      CO(3 downto 0) => \NLW_p_0_out__24_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_p_0_out__24_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \p_0_out__24_carry__1_n_15\,
      S(3 downto 1) => B"000",
      S(0) => dbl2tsep_1_fifo_U_n_36
    );
\p_0_out__49_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \p_0_out__49_carry_n_8\,
      CO(2) => \p_0_out__49_carry_n_9\,
      CO(1) => \p_0_out__49_carry_n_10\,
      CO(0) => \p_0_out__49_carry_n_11\,
      CYINIT => mOutPtr_reg(0),
      DI(3 downto 1) => mOutPtr_reg(3 downto 1),
      DI(0) => grp_trames_separ2_fu_114_n_12,
      O(3) => \p_0_out__49_carry_n_12\,
      O(2) => \p_0_out__49_carry_n_13\,
      O(1) => \p_0_out__49_carry_n_14\,
      O(0) => \p_0_out__49_carry_n_15\,
      S(3) => detect_1_fifo_U_n_22,
      S(2) => detect_1_fifo_U_n_23,
      S(1) => detect_1_fifo_U_n_24,
      S(0) => detect_1_fifo_U_n_25
    );
\p_0_out__49_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_0_out__49_carry_n_8\,
      CO(3) => \p_0_out__49_carry__0_n_8\,
      CO(2) => \p_0_out__49_carry__0_n_9\,
      CO(1) => \p_0_out__49_carry__0_n_10\,
      CO(0) => \p_0_out__49_carry__0_n_11\,
      CYINIT => '0',
      DI(3 downto 0) => mOutPtr_reg(7 downto 4),
      O(3) => \p_0_out__49_carry__0_n_12\,
      O(2) => \p_0_out__49_carry__0_n_13\,
      O(1) => \p_0_out__49_carry__0_n_14\,
      O(0) => \p_0_out__49_carry__0_n_15\,
      S(3) => detect_1_fifo_U_n_26,
      S(2) => detect_1_fifo_U_n_27,
      S(1) => detect_1_fifo_U_n_28,
      S(0) => detect_1_fifo_U_n_29
    );
\p_0_out__49_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_0_out__49_carry__0_n_8\,
      CO(3 downto 1) => \NLW_p_0_out__49_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \p_0_out__49_carry__1_n_11\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => mOutPtr_reg(8),
      O(3 downto 2) => \NLW_p_0_out__49_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \p_0_out__49_carry__1_n_14\,
      O(0) => \p_0_out__49_carry__1_n_15\,
      S(3 downto 2) => B"00",
      S(1) => detect_1_fifo_U_n_30,
      S(0) => detect_1_fifo_U_n_31
    );
p_0_out_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p_0_out_carry_n_8,
      CO(2) => p_0_out_carry_n_9,
      CO(1) => p_0_out_carry_n_10,
      CO(0) => p_0_out_carry_n_11,
      CYINIT => usedw_reg(0),
      DI(3 downto 1) => usedw_reg(3 downto 1),
      DI(0) => usedw14_out_0,
      O(3) => p_0_out_carry_n_12,
      O(2) => p_0_out_carry_n_13,
      O(1) => p_0_out_carry_n_14,
      O(0) => p_0_out_carry_n_15,
      S(3) => dbl2scalc_1_fifo_U_n_22,
      S(2) => dbl2scalc_1_fifo_U_n_23,
      S(1) => dbl2scalc_1_fifo_U_n_24,
      S(0) => dbl2scalc_1_fifo_U_n_25
    );
\p_0_out_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => p_0_out_carry_n_8,
      CO(3) => \p_0_out_carry__0_n_8\,
      CO(2) => \p_0_out_carry__0_n_9\,
      CO(1) => \p_0_out_carry__0_n_10\,
      CO(0) => \p_0_out_carry__0_n_11\,
      CYINIT => '0',
      DI(3 downto 0) => usedw_reg(7 downto 4),
      O(3) => \p_0_out_carry__0_n_12\,
      O(2) => \p_0_out_carry__0_n_13\,
      O(1) => \p_0_out_carry__0_n_14\,
      O(0) => \p_0_out_carry__0_n_15\,
      S(3) => dbl2scalc_1_fifo_U_n_26,
      S(2) => dbl2scalc_1_fifo_U_n_27,
      S(1) => dbl2scalc_1_fifo_U_n_28,
      S(0) => dbl2scalc_1_fifo_U_n_29
    );
\p_0_out_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_0_out_carry__0_n_8\,
      CO(3 downto 0) => \NLW_p_0_out_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_p_0_out_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \p_0_out_carry__1_n_15\,
      S(3 downto 1) => B"000",
      S(0) => dbl2scalc_1_fifo_U_n_30
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0_my_module2 is
  port (
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    e_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    e_empty_n : in STD_LOGIC;
    e_read : out STD_LOGIC;
    addr_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addr_full_n : in STD_LOGIC;
    addr_write : out STD_LOGIC;
    rgbv_din : out STD_LOGIC_VECTOR ( 23 downto 0 );
    rgbv_full_n : in STD_LOGIC;
    rgbv_write : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_0_hls_inst_0_my_module2 : entity is "my_module2";
end bd_0_hls_inst_0_my_module2;

architecture STRUCTURE of bd_0_hls_inst_0_my_module2 is
  signal \<const0>\ : STD_LOGIC;
  signal \^addr_din\ : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \^addr_write\ : STD_LOGIC;
  signal bit2byt_1_dout : STD_LOGIC;
  signal bit2byt_1_empty_n : STD_LOGIC;
  signal bit2byt_1_full_n : STD_LOGIC;
  signal byt2crc_1_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal byt2crc_1_empty_n : STD_LOGIC;
  signal byt2crc_1_full_n : STD_LOGIC;
  signal ce : STD_LOGIC;
  signal ce_2 : STD_LOGIC;
  signal crc2fra_1_empty_n : STD_LOGIC;
  signal crc2fra_1_fifo_U_n_14 : STD_LOGIC;
  signal crc2fra_1_full_n : STD_LOGIC;
  signal dbl2scalc_1_full_n : STD_LOGIC;
  signal dbl2tsep_1_full_n : STD_LOGIC;
  signal det2dow_1_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal det2dow_1_empty_n : STD_LOGIC;
  signal det2dow_1_fifo_U_n_14 : STD_LOGIC;
  signal det2dow_1_fifo_U_n_15 : STD_LOGIC;
  signal det2dow_1_full_n : STD_LOGIC;
  signal dow2bit_1_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dow2bit_1_empty_n : STD_LOGIC;
  signal dow2bit_1_full_n : STD_LOGIC;
  signal \grp_BitDecider_do_gen_fu_58/ap_CS_fsm_state2\ : STD_LOGIC;
  signal \grp_BitDecider_do_gen_fu_58/ap_CS_fsm_state3\ : STD_LOGIC;
  signal \grp_BitDecider_do_gen_fu_58/ap_CS_fsm_state4\ : STD_LOGIC;
  signal \grp_BitDecider_do_gen_fu_58/ap_NS_fsm1\ : STD_LOGIC;
  signal grp_BitDecider_fu_292_n_9 : STD_LOGIC;
  signal grp_BitDecider_fu_292_s_din : STD_LOGIC;
  signal \grp_BitsToBytes_do_gen_fu_58/ap_NS_fsm\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal grp_BitsToBytes_fu_306_e_read : STD_LOGIC;
  signal grp_BitsToBytes_fu_306_n_10 : STD_LOGIC;
  signal grp_BitsToBytes_fu_306_n_9 : STD_LOGIC;
  signal grp_BitsToBytes_fu_306_s_din : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \grp_CRCCheck_do_gen_fu_56/ap_NS_fsm\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal grp_CRCCheck_fu_320_n_10 : STD_LOGIC;
  signal grp_CRCCheck_fu_320_n_11 : STD_LOGIC;
  signal grp_CRCCheck_fu_320_n_13 : STD_LOGIC;
  signal grp_CRCCheck_fu_320_n_23 : STD_LOGIC;
  signal grp_CRCCheck_fu_320_n_8 : STD_LOGIC;
  signal grp_CRCCheck_fu_320_n_9 : STD_LOGIC;
  signal grp_CRCCheck_fu_320_s_din : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal grp_Detecteur2_fu_226_n_11 : STD_LOGIC;
  signal grp_Detecteur2_fu_226_n_12 : STD_LOGIC;
  signal grp_Detecteur2_fu_226_n_13 : STD_LOGIC;
  signal grp_Detecteur2_fu_226_n_14 : STD_LOGIC;
  signal grp_Detecteur2_fu_226_s_din : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \grp_DownSampling_do_gen_fu_56/ap_CS_fsm_state2\ : STD_LOGIC;
  signal \grp_DownSampling_do_gen_fu_56/ap_CS_fsm_state3\ : STD_LOGIC;
  signal \grp_DownSampling_do_gen_fu_56/ap_CS_fsm_state4\ : STD_LOGIC;
  signal \grp_DownSampling_do_gen_fu_56/ap_NS_fsm1\ : STD_LOGIC;
  signal \grp_DownSampling_do_gen_fu_56/ap_NS_fsm10_out\ : STD_LOGIC;
  signal grp_DownSampling_fu_278_n_12 : STD_LOGIC;
  signal grp_DownSampling_fu_278_n_8 : STD_LOGIC;
  signal grp_DownSampling_fu_278_s_din : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state2\ : STD_LOGIC;
  signal \grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state4\ : STD_LOGIC;
  signal \grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state5\ : STD_LOGIC;
  signal \grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state6\ : STD_LOGIC;
  signal \grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state7\ : STD_LOGIC;
  signal \grp_FrameProcessing_do_gen_fu_64/ap_NS_fsm122_out\ : STD_LOGIC;
  signal \grp_FrameProcessing_do_gen_fu_64/ap_NS_fsm123_out\ : STD_LOGIC;
  signal \grp_FrameProcessing_do_gen_fu_64/ap_NS_fsm124_out\ : STD_LOGIC;
  signal \grp_FrameProcessing_do_gen_fu_64/ap_NS_fsm125_out\ : STD_LOGIC;
  signal grp_FrameProcessing_fu_334_n_11 : STD_LOGIC;
  signal grp_FrameProcessing_fu_334_n_8 : STD_LOGIC;
  signal grp_FrameProcessing_fu_334_n_9 : STD_LOGIC;
  signal grp_ModuleCompute_fu_212_s_din : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal internal_empty_n3_out : STD_LOGIC;
  signal internal_empty_n3_out_0 : STD_LOGIC;
  signal internal_empty_n3_out_1 : STD_LOGIC;
  signal mOutPtr_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mod2dbl_1_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mod2dbl_1_empty_n : STD_LOGIC;
  signal mod2dbl_1_full_n : STD_LOGIC;
  signal push : STD_LOGIC;
  signal \^rgbv_din\ : STD_LOGIC_VECTOR ( 23 downto 0 );
begin
  addr_din(31) <= \<const0>\;
  addr_din(30) <= \<const0>\;
  addr_din(29) <= \<const0>\;
  addr_din(28) <= \<const0>\;
  addr_din(27) <= \<const0>\;
  addr_din(26) <= \<const0>\;
  addr_din(25 downto 0) <= \^addr_din\(25 downto 0);
  addr_write <= \^addr_write\;
  rgbv_din(23 downto 0) <= \^rgbv_din\(23 downto 0);
  rgbv_write <= \^addr_write\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
bit2byt_1_fifo_U: entity work.bd_0_hls_inst_0_fifo_w1_d32_A
     port map (
      E(0) => grp_BitsToBytes_fu_306_n_9,
      Q(0) => \grp_BitDecider_do_gen_fu_58/ap_CS_fsm_state4\,
      bit2byt_1_dout => bit2byt_1_dout,
      bit2byt_1_empty_n => bit2byt_1_empty_n,
      bit2byt_1_full_n => bit2byt_1_full_n,
      clock => clock,
      grp_BitDecider_fu_292_s_din => grp_BitDecider_fu_292_s_din,
      grp_BitsToBytes_fu_306_e_read => grp_BitsToBytes_fu_306_e_read,
      internal_empty_n3_out => internal_empty_n3_out,
      \mOutPtr_reg[4]_0\ => grp_BitsToBytes_fu_306_n_10,
      reset => reset
    );
byt2crc_1_fifo_U: entity work.bd_0_hls_inst_0_fifo_w8_d32_A
     port map (
      E(0) => grp_CRCCheck_fu_320_n_9,
      ap_NS_fsm(0) => \grp_BitsToBytes_do_gen_fu_58/ap_NS_fsm\(1),
      byt2crc_1_empty_n => byt2crc_1_empty_n,
      byt2crc_1_full_n => byt2crc_1_full_n,
      clock => clock,
      \in\(7 downto 0) => grp_BitsToBytes_fu_306_s_din(7 downto 0),
      internal_empty_n3_out => internal_empty_n3_out_0,
      internal_full_n_reg_0 => grp_CRCCheck_fu_320_n_10,
      internal_full_n_reg_1 => grp_CRCCheck_fu_320_n_8,
      \mOutPtr_reg[1]_0\ => grp_CRCCheck_fu_320_n_11,
      \out\(7 downto 0) => byt2crc_1_dout(7 downto 0),
      reset => reset
    );
crc2fra_1_fifo_U: entity work.bd_0_hls_inst_0_fifo_w8_d32_A_0
     port map (
      E(0) => \grp_FrameProcessing_do_gen_fu_64/ap_NS_fsm122_out\,
      Q(4) => \grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state7\,
      Q(3) => \grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state6\,
      Q(2) => \grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state5\,
      Q(1) => \grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state4\,
      Q(0) => \grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state2\,
      ce => ce,
      clock => clock,
      crc2fra_1_empty_n => crc2fra_1_empty_n,
      crc2fra_1_full_n => crc2fra_1_full_n,
      internal_empty_n_reg_0(0) => \grp_FrameProcessing_do_gen_fu_64/ap_NS_fsm123_out\,
      internal_empty_n_reg_1(0) => \grp_FrameProcessing_do_gen_fu_64/ap_NS_fsm124_out\,
      internal_empty_n_reg_2(0) => \grp_FrameProcessing_do_gen_fu_64/ap_NS_fsm125_out\,
      internal_empty_n_reg_3 => crc2fra_1_fifo_U_n_14,
      internal_full_n_reg_0 => grp_FrameProcessing_fu_334_n_9,
      \mOutPtr_reg[1]_0\ => grp_FrameProcessing_fu_334_n_8,
      \mOutPtr_reg[5]_0\ => grp_FrameProcessing_fu_334_n_11,
      \mOutPtr_reg[5]_1\(0) => grp_CRCCheck_fu_320_n_13,
      \out\(7 downto 0) => \^rgbv_din\(7 downto 0),
      reset => reset,
      \val_V_6_reg_356_reg[7]\(7 downto 0) => grp_CRCCheck_fu_320_s_din(7 downto 0)
    );
det2dow_1_fifo_U: entity work.bd_0_hls_inst_0_fifo_w8_d32_A_1
     port map (
      E(0) => \grp_DownSampling_do_gen_fu_56/ap_NS_fsm10_out\,
      Q(1) => \grp_DownSampling_do_gen_fu_56/ap_CS_fsm_state3\,
      Q(0) => \grp_DownSampling_do_gen_fu_56/ap_CS_fsm_state2\,
      ce => ce_2,
      clock => clock,
      det2dow_1_empty_n => det2dow_1_empty_n,
      det2dow_1_full_n => det2dow_1_full_n,
      internal_empty_n3_out => internal_empty_n3_out_1,
      internal_empty_n_reg_0(0) => \grp_DownSampling_do_gen_fu_56/ap_NS_fsm1\,
      internal_empty_n_reg_1 => grp_Detecteur2_fu_226_n_11,
      \mOutPtr_reg[1]_0\(1 downto 0) => mOutPtr_reg(1 downto 0),
      \mOutPtr_reg[1]_1\ => det2dow_1_fifo_U_n_14,
      \mOutPtr_reg[2]_0\ => det2dow_1_fifo_U_n_15,
      \mOutPtr_reg[2]_1\ => grp_Detecteur2_fu_226_n_14,
      \mOutPtr_reg[5]_0\ => grp_Detecteur2_fu_226_n_13,
      \mOutPtr_reg[5]_1\ => grp_Detecteur2_fu_226_n_12,
      \mOutPtr_reg[5]_2\(0) => grp_DownSampling_fu_278_n_8,
      \out\(7 downto 0) => det2dow_1_dout(7 downto 0),
      reset => reset,
      \val_V_reg_92_reg[7]\(7 downto 0) => grp_Detecteur2_fu_226_s_din(7 downto 0)
    );
dow2bit_1_fifo_U: entity work.bd_0_hls_inst_0_fifo_w8_d32_A_2
     port map (
      E(0) => \grp_BitDecider_do_gen_fu_58/ap_NS_fsm1\,
      Q(0) => \grp_DownSampling_do_gen_fu_56/ap_CS_fsm_state4\,
      clock => clock,
      dow2bit_1_empty_n => dow2bit_1_empty_n,
      dow2bit_1_full_n => dow2bit_1_full_n,
      internal_full_n_reg_0 => grp_BitDecider_fu_292_n_9,
      \mOutPtr_reg[5]_0\(1) => \grp_BitDecider_do_gen_fu_58/ap_CS_fsm_state3\,
      \mOutPtr_reg[5]_0\(0) => \grp_BitDecider_do_gen_fu_58/ap_CS_fsm_state2\,
      \out\(7 downto 0) => dow2bit_1_dout(7 downto 0),
      reset => reset,
      \val_V_reg_70_reg[7]\(7 downto 0) => grp_DownSampling_fu_278_s_din(7 downto 0)
    );
grp_BitDecider_fu_292: entity work.bd_0_hls_inst_0_BitDecider
     port map (
      D(7 downto 0) => dow2bit_1_dout(7 downto 0),
      E(0) => \grp_BitDecider_do_gen_fu_58/ap_NS_fsm1\,
      Q(2) => \grp_BitDecider_do_gen_fu_58/ap_CS_fsm_state4\,
      Q(1) => \grp_BitDecider_do_gen_fu_58/ap_CS_fsm_state3\,
      Q(0) => \grp_BitDecider_do_gen_fu_58/ap_CS_fsm_state2\,
      \ap_CS_fsm_reg[1]\ => grp_BitDecider_fu_292_n_9,
      bit2byt_1_full_n => bit2byt_1_full_n,
      clock => clock,
      dow2bit_1_empty_n => dow2bit_1_empty_n,
      grp_BitDecider_fu_292_s_din => grp_BitDecider_fu_292_s_din,
      grp_BitsToBytes_fu_306_e_read => grp_BitsToBytes_fu_306_e_read,
      internal_empty_n3_out => internal_empty_n3_out,
      reset => reset
    );
grp_BitsToBytes_fu_306: entity work.bd_0_hls_inst_0_BitsToBytes
     port map (
      E(0) => grp_BitsToBytes_fu_306_n_9,
      Q(0) => \grp_BitDecider_do_gen_fu_58/ap_CS_fsm_state4\,
      \ap_CS_fsm_reg[3]\ => grp_BitsToBytes_fu_306_n_10,
      bit2byt_1_dout => bit2byt_1_dout,
      bit2byt_1_empty_n => bit2byt_1_empty_n,
      bit2byt_1_full_n => bit2byt_1_full_n,
      byt2crc_1_full_n => byt2crc_1_full_n,
      clock => clock,
      grp_BitsToBytes_fu_306_e_read => grp_BitsToBytes_fu_306_e_read,
      \in\(7 downto 0) => grp_BitsToBytes_fu_306_s_din(7 downto 0),
      \q_0_reg_93_reg[2]\(0) => \grp_BitsToBytes_do_gen_fu_58/ap_NS_fsm\(1),
      reset => reset
    );
grp_CRCCheck_fu_320: entity work.bd_0_hls_inst_0_CRCCheck
     port map (
      D(0) => \grp_CRCCheck_do_gen_fu_56/ap_NS_fsm\(1),
      E(0) => grp_CRCCheck_fu_320_n_9,
      Q(7 downto 0) => grp_CRCCheck_fu_320_s_din(7 downto 0),
      \ap_CS_fsm_reg[7]\(0) => grp_CRCCheck_fu_320_n_23,
      byt2crc_1_empty_n => byt2crc_1_empty_n,
      ce => ce,
      clock => clock,
      crc2fra_1_full_n => crc2fra_1_full_n,
      \i1_0_reg_180_reg[2]\ => grp_CRCCheck_fu_320_n_10,
      \icmp_ln41_reg_658_reg[0]\ => grp_CRCCheck_fu_320_n_8,
      \icmp_ln41_reg_658_reg[0]_0\ => grp_CRCCheck_fu_320_n_11,
      \icmp_ln68_reg_711_reg[0]\(0) => grp_CRCCheck_fu_320_n_13,
      internal_empty_n3_out => internal_empty_n3_out_0,
      \mOutPtr_reg[5]\(0) => \grp_BitsToBytes_do_gen_fu_58/ap_NS_fsm\(1),
      \mOutPtr_reg[5]_0\ => grp_FrameProcessing_fu_334_n_9,
      \out\(7 downto 0) => byt2crc_1_dout(7 downto 0),
      reset => reset
    );
grp_Detecteur2_fu_226: entity work.bd_0_hls_inst_0_Detecteur2
     port map (
      D(0) => \grp_CRCCheck_do_gen_fu_56/ap_NS_fsm\(1),
      Q(7 downto 0) => mod2dbl_1_dout(7 downto 0),
      \ap_CS_fsm_reg[1]\(0) => grp_CRCCheck_fu_320_n_23,
      ce => ce_2,
      clock => clock,
      dbl2scalc_1_full_n => dbl2scalc_1_full_n,
      dbl2tsep_1_full_n => dbl2tsep_1_full_n,
      det2dow_1_empty_n => det2dow_1_empty_n,
      det2dow_1_full_n => det2dow_1_full_n,
      \dout_buf_reg[7]\(7 downto 0) => grp_Detecteur2_fu_226_s_din(7 downto 0),
      internal_empty_n3_out => internal_empty_n3_out_1,
      internal_empty_n_reg => grp_Detecteur2_fu_226_n_14,
      internal_empty_n_reg_0 => det2dow_1_fifo_U_n_14,
      internal_empty_n_reg_1 => grp_DownSampling_fu_278_n_12,
      internal_empty_n_reg_2 => det2dow_1_fifo_U_n_15,
      \mOutPtr_reg[0]\ => grp_Detecteur2_fu_226_n_12,
      \mOutPtr_reg[0]_0\ => grp_Detecteur2_fu_226_n_13,
      \mOutPtr_reg[1]\ => grp_Detecteur2_fu_226_n_11,
      \mOutPtr_reg[2]\(1) => \grp_DownSampling_do_gen_fu_56/ap_CS_fsm_state3\,
      \mOutPtr_reg[2]\(0) => \grp_DownSampling_do_gen_fu_56/ap_CS_fsm_state2\,
      \mOutPtr_reg[5]\(1 downto 0) => mOutPtr_reg(1 downto 0),
      mod2dbl_1_empty_n => mod2dbl_1_empty_n,
      reset => reset
    );
grp_DownSampling_fu_278: entity work.bd_0_hls_inst_0_DownSampling
     port map (
      E(0) => \grp_DownSampling_do_gen_fu_56/ap_NS_fsm1\,
      Q(2) => \grp_DownSampling_do_gen_fu_56/ap_CS_fsm_state4\,
      Q(1) => \grp_DownSampling_do_gen_fu_56/ap_CS_fsm_state3\,
      Q(0) => \grp_DownSampling_do_gen_fu_56/ap_CS_fsm_state2\,
      \ap_CS_fsm_reg[1]\(0) => grp_DownSampling_fu_278_n_8,
      \ap_CS_fsm_reg[1]_0\ => grp_DownSampling_fu_278_n_12,
      ce => ce_2,
      clock => clock,
      det2dow_1_empty_n => det2dow_1_empty_n,
      dow2bit_1_full_n => dow2bit_1_full_n,
      e_dout(7 downto 0) => det2dow_1_dout(7 downto 0),
      reset => reset,
      \trunc_ln_reg_97_reg[0]\(0) => \grp_DownSampling_do_gen_fu_56/ap_NS_fsm10_out\,
      \trunc_ln_reg_97_reg[7]\(7 downto 0) => grp_DownSampling_fu_278_s_din(7 downto 0)
    );
grp_FrameProcessing_fu_334: entity work.bd_0_hls_inst_0_FrameProcessing
     port map (
      D(7 downto 0) => \^rgbv_din\(7 downto 0),
      E(0) => \grp_FrameProcessing_do_gen_fu_64/ap_NS_fsm124_out\,
      Q(4) => \grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state7\,
      Q(3) => \grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state6\,
      Q(2) => \grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state5\,
      Q(1) => \grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state4\,
      Q(0) => \grp_FrameProcessing_do_gen_fu_64/ap_CS_fsm_state2\,
      addr_din(25 downto 0) => \^addr_din\(25 downto 0),
      addr_full_n => addr_full_n,
      \ap_CS_fsm_reg[11]\ => \^addr_write\,
      \ap_CS_fsm_reg[2]\ => crc2fra_1_fifo_U_n_14,
      \ap_CS_fsm_reg[9]\ => grp_FrameProcessing_fu_334_n_8,
      \ap_CS_fsm_reg[9]_0\ => grp_FrameProcessing_fu_334_n_11,
      ce => ce,
      clock => clock,
      crc2fra_1_empty_n => crc2fra_1_empty_n,
      internal_empty_n_reg => grp_FrameProcessing_fu_334_n_9,
      \reg_164_reg[7]\(7 downto 0) => \^rgbv_din\(23 downto 16),
      \reg_168_reg[7]\(7 downto 0) => \^rgbv_din\(15 downto 8),
      reset => reset,
      rgbv_full_n => rgbv_full_n,
      \val_V_5_reg_351_reg[0]\(0) => \grp_FrameProcessing_do_gen_fu_64/ap_NS_fsm122_out\,
      \val_V_6_reg_356_reg[0]\(0) => \grp_FrameProcessing_do_gen_fu_64/ap_NS_fsm123_out\,
      \val_V_8_reg_369_reg[0]\(0) => \grp_FrameProcessing_do_gen_fu_64/ap_NS_fsm125_out\
    );
grp_ModuleCompute_fu_212: entity work.bd_0_hls_inst_0_ModuleCompute
     port map (
      Q(7 downto 0) => grp_ModuleCompute_fu_212_s_din(7 downto 0),
      clock => clock,
      e_dout(7 downto 0) => e_dout(7 downto 0),
      e_empty_n => e_empty_n,
      e_read => e_read,
      mod2dbl_1_full_n => mod2dbl_1_full_n,
      push => push,
      reset => reset
    );
mod2dbl_1_fifo_U: entity work.bd_0_hls_inst_0_fifo_w8_d1024_A_x
     port map (
      D(7 downto 0) => grp_ModuleCompute_fu_212_s_din(7 downto 0),
      Q(7 downto 0) => mod2dbl_1_dout(7 downto 0),
      clock => clock,
      dbl2scalc_1_full_n => dbl2scalc_1_full_n,
      dbl2tsep_1_full_n => dbl2tsep_1_full_n,
      mod2dbl_1_empty_n => mod2dbl_1_empty_n,
      mod2dbl_1_full_n => mod2dbl_1_full_n,
      push => push,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_hls_inst_0 is
  port (
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    e_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    e_empty_n : in STD_LOGIC;
    e_read : out STD_LOGIC;
    addr_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addr_full_n : in STD_LOGIC;
    addr_write : out STD_LOGIC;
    rgbv_din : out STD_LOGIC_VECTOR ( 23 downto 0 );
    rgbv_full_n : in STD_LOGIC;
    rgbv_write : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_0_hls_inst_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_0_hls_inst_0 : entity is "bd_0_hls_inst_0,my_module2,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of bd_0_hls_inst_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of bd_0_hls_inst_0 : entity is "HLS";
  attribute x_core_info : string;
  attribute x_core_info of bd_0_hls_inst_0 : entity is "my_module2,Vivado 2020.1";
end bd_0_hls_inst_0;

architecture STRUCTURE of bd_0_hls_inst_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of addr_full_n : signal is "xilinx.com:interface:acc_fifo_write:1.0 addr FULL_N";
  attribute x_interface_info of addr_write : signal is "xilinx.com:interface:acc_fifo_write:1.0 addr WR_EN";
  attribute x_interface_info of clock : signal is "xilinx.com:signal:clock:1.0 clock CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clock : signal is "XIL_INTERFACENAME clock, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN bd_0_clock_0, INSERT_VIP 0";
  attribute x_interface_info of e_empty_n : signal is "xilinx.com:interface:acc_fifo_read:1.0 e EMPTY_N";
  attribute x_interface_info of e_read : signal is "xilinx.com:interface:acc_fifo_read:1.0 e RD_EN";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of rgbv_full_n : signal is "xilinx.com:interface:acc_fifo_write:1.0 rgbv FULL_N";
  attribute x_interface_info of rgbv_write : signal is "xilinx.com:interface:acc_fifo_write:1.0 rgbv WR_EN";
  attribute x_interface_info of addr_din : signal is "xilinx.com:interface:acc_fifo_write:1.0 addr WR_DATA";
  attribute x_interface_info of e_dout : signal is "xilinx.com:interface:acc_fifo_read:1.0 e RD_DATA";
  attribute x_interface_info of rgbv_din : signal is "xilinx.com:interface:acc_fifo_write:1.0 rgbv WR_DATA";
begin
U0: entity work.bd_0_hls_inst_0_my_module2
     port map (
      addr_din(31 downto 0) => addr_din(31 downto 0),
      addr_full_n => addr_full_n,
      addr_write => addr_write,
      clock => clock,
      e_dout(7 downto 0) => e_dout(7 downto 0),
      e_empty_n => e_empty_n,
      e_read => e_read,
      reset => reset,
      rgbv_din(23 downto 0) => rgbv_din(23 downto 0),
      rgbv_full_n => rgbv_full_n,
      rgbv_write => rgbv_write
    );
end STRUCTURE;
