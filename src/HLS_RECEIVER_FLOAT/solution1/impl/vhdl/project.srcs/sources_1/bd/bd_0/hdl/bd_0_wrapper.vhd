--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
--Date        : Thu Mar 25 13:30:06 2021
--Host        : JARVIS running 64-bit Ubuntu 20.04.2 LTS
--Command     : generate_target bd_0_wrapper.bd
--Design      : bd_0_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_wrapper is
  port (
    addr_full_n : in STD_LOGIC;
    addr_wr_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addr_wr_en : out STD_LOGIC;
    clock : in STD_LOGIC;
    e_empty_n : in STD_LOGIC;
    e_rd_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    e_rd_en : out STD_LOGIC;
    reset : in STD_LOGIC;
    rgbv_full_n : in STD_LOGIC;
    rgbv_wr_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    rgbv_wr_en : out STD_LOGIC
  );
end bd_0_wrapper;

architecture STRUCTURE of bd_0_wrapper is
  component bd_0 is
  port (
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    addr_wr_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addr_full_n : in STD_LOGIC;
    addr_wr_en : out STD_LOGIC;
    e_rd_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    e_empty_n : in STD_LOGIC;
    e_rd_en : out STD_LOGIC;
    rgbv_wr_data : out STD_LOGIC_VECTOR ( 23 downto 0 );
    rgbv_full_n : in STD_LOGIC;
    rgbv_wr_en : out STD_LOGIC
  );
  end component bd_0;
begin
bd_0_i: component bd_0
     port map (
      addr_full_n => addr_full_n,
      addr_wr_data(31 downto 0) => addr_wr_data(31 downto 0),
      addr_wr_en => addr_wr_en,
      clock => clock,
      e_empty_n => e_empty_n,
      e_rd_data(7 downto 0) => e_rd_data(7 downto 0),
      e_rd_en => e_rd_en,
      reset => reset,
      rgbv_full_n => rgbv_full_n,
      rgbv_wr_data(23 downto 0) => rgbv_wr_data(23 downto 0),
      rgbv_wr_en => rgbv_wr_en
    );
end STRUCTURE;
