--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
--Date        : Thu Mar 25 13:30:05 2021
--Host        : JARVIS running 64-bit Ubuntu 20.04.2 LTS
--Command     : generate_target bd_0.bd
--Design      : bd_0
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0 is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_0 : entity is "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_0 : entity is "bd_0.hwdef";
end bd_0;

architecture STRUCTURE of bd_0 is
  component bd_0_hls_inst_0 is
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
  end component bd_0_hls_inst_0;
  signal clock_0_1 : STD_LOGIC;
  signal hls_inst_addr_FULL_N : STD_LOGIC;
  signal hls_inst_addr_WR_DATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hls_inst_addr_WR_EN : STD_LOGIC;
  signal hls_inst_e_EMPTY_N : STD_LOGIC;
  signal hls_inst_e_RD_DATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hls_inst_e_RD_EN : STD_LOGIC;
  signal hls_inst_rgbv_FULL_N : STD_LOGIC;
  signal hls_inst_rgbv_WR_DATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal hls_inst_rgbv_WR_EN : STD_LOGIC;
  signal reset_0_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of addr_full_n : signal is "xilinx.com:interface:acc_fifo_write:1.0 addr ";
  attribute X_INTERFACE_INFO of addr_wr_en : signal is "xilinx.com:interface:acc_fifo_write:1.0 addr ";
  attribute X_INTERFACE_INFO of clock : signal is "xilinx.com:signal:clock:1.0 CLK.CLOCK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clock : signal is "XIL_INTERFACENAME CLK.CLOCK, CLK_DOMAIN bd_0_clock_0, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of e_empty_n : signal is "xilinx.com:interface:acc_fifo_read:1.0 e ";
  attribute X_INTERFACE_INFO of e_rd_en : signal is "xilinx.com:interface:acc_fifo_read:1.0 e ";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of rgbv_full_n : signal is "xilinx.com:interface:acc_fifo_write:1.0 rgbv ";
  attribute X_INTERFACE_INFO of rgbv_wr_en : signal is "xilinx.com:interface:acc_fifo_write:1.0 rgbv ";
  attribute X_INTERFACE_INFO of addr_wr_data : signal is "xilinx.com:interface:acc_fifo_write:1.0 addr ";
  attribute X_INTERFACE_INFO of e_rd_data : signal is "xilinx.com:interface:acc_fifo_read:1.0 e ";
  attribute X_INTERFACE_INFO of rgbv_wr_data : signal is "xilinx.com:interface:acc_fifo_write:1.0 rgbv ";
begin
  addr_wr_data(31 downto 0) <= hls_inst_addr_WR_DATA(31 downto 0);
  addr_wr_en <= hls_inst_addr_WR_EN;
  clock_0_1 <= clock;
  e_rd_en <= hls_inst_e_RD_EN;
  hls_inst_addr_FULL_N <= addr_full_n;
  hls_inst_e_EMPTY_N <= e_empty_n;
  hls_inst_e_RD_DATA(7 downto 0) <= e_rd_data(7 downto 0);
  hls_inst_rgbv_FULL_N <= rgbv_full_n;
  reset_0_1 <= reset;
  rgbv_wr_data(23 downto 0) <= hls_inst_rgbv_WR_DATA(23 downto 0);
  rgbv_wr_en <= hls_inst_rgbv_WR_EN;
hls_inst: component bd_0_hls_inst_0
     port map (
      addr_din(31 downto 0) => hls_inst_addr_WR_DATA(31 downto 0),
      addr_full_n => hls_inst_addr_FULL_N,
      addr_write => hls_inst_addr_WR_EN,
      clock => clock_0_1,
      e_dout(7 downto 0) => hls_inst_e_RD_DATA(7 downto 0),
      e_empty_n => hls_inst_e_EMPTY_N,
      e_read => hls_inst_e_RD_EN,
      reset => reset_0_1,
      rgbv_din(23 downto 0) => hls_inst_rgbv_WR_DATA(23 downto 0),
      rgbv_full_n => hls_inst_rgbv_FULL_N,
      rgbv_write => hls_inst_rgbv_WR_EN
    );
end STRUCTURE;
