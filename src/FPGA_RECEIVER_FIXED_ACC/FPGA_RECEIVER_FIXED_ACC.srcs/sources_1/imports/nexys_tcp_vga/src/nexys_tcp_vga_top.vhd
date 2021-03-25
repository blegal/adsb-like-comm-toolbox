
----------------
-- LICENSE
----------------
-- Copyright Â©2018 FPGA-Cores.com. 
-- This HDL code is only free to use for non-commercial use and for evaluation purpose.
-- Commercial use needs a commercial license - contact FPGA-Cores.com.
-- The HDL code is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.

-- -------------
-- DISCLAIMER
-- -------------
-- THIS CODE AVAILABLE ON THE SITE FPGA-Cores.com IS PROVIDED "AS IS" AND ANY EXPRESSED OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, 
-- THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL FPGA-Cores.com OR ANY 
-- OF THEIR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, 
-- PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, 
-- WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS HDL CODE, EVEN IF 
-- ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
--
-- Without limiting the foregoing, FPGA-Cores.com make no warranty that:
--    * the HDL code will meet your requirements.
--    * the HDL code will be uninterrupted, timely, secure or error-free.
--    * the results that may be obtained from the use of the HDL code will be effective, accurate or reliable.
--    * the quality of the HDL code will meet your expectations.
--    * any errors in the HDL code obtained from the FPGA-Cores.com web site will be corrected.
--
-- HDL code and its documentation made available on the FPGA-Cores.com web site:
--    * could include technical or other mistakes, inaccuracies or typographical errors. 
--    * may be out of date and FPGA-Cores.com, its contributors, and USC make no commitment to update such materials.
--
-- The use of the HDL code downloaded through the FPGA-Cores.com site is done at your own discretion and risk and with agreement 
-- that you will be solely responsible for any damage to your system or loss of data that results from such activities. 
-- No advice or information, whether oral or written, obtained by you from FPGA-Cores.com, its website, shall create any warranty for the HDL code.


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity nexys_tcp_vga_top is
    Port ( 
        CLK100MHZ   : in  std_logic;
        NRESET      : in  std_logic;
        -----------------
        -- LEDs
        -----------------
        LED         : out std_logic_vector(15 downto 0);
        
        -----------------
        -- Quad SPI Flash
        -----------------
--        QSPI_DQ     : inout std_logic_vector(3 downto 0);
--        QSPI_MISO   : in  std_logic;
--        QSPI_CSN    : out std_logic; 
        
        VGA_hs       : out std_logic;   -- horisontal vga syncr.
        VGA_vs       : out std_logic;   -- vertical vga syncr.
        VGA_red      : out std_logic_vector(3 downto 0);   -- red output
        VGA_green    : out std_logic_vector(3 downto 0);   -- green output
        VGA_blue     : out std_logic_vector(3 downto 0);   -- blue output

        
        --------------------
        -- SMSC Ethernet PHY
        --------------------
        ETH_MDC     : out std_logic;
        ETH_MDIO    : inout std_logic;
        ETH_RSTN    : out std_logic;
        ETH_CRSDV   : in  std_logic;
        ETH_RXERR   : in  std_logic;
        ETH_RXD     : in  std_logic_vector(1 downto 0);
        ETH_TXEN    : out std_logic;
        ETH_TXD     : out std_logic_vector(1 downto 0);
        ETH_REFCLK  : out std_logic            
    );
end nexys_tcp_vga_top;


architecture IMPL of nexys_tcp_vga_top is
        
    -----------------------------------------------
    -- Components
    -----------------------------------------------
    component FC1002_RMII is
    port (
        --Sys/Common
        Clk             : in  std_logic; --100 MHz
        Reset           : in  std_logic; --Active high
        UseDHCP         : in  std_logic; --'1' to use DHCP
        IP_Addr         : in  std_logic_vector(31 downto 0); --IP address if not using DHCP
        IP_Ok           : out std_logic; --DHCP ready

        --MAC/RMII
        RMII_CLK_50M    : out std_logic; --RMII continous 50 MHz reference clock
        RMII_RST_N      : out std_logic; --Phy reset, active low
        RMII_CRS_DV     : in  std_logic; --Carrier sense/Receive data valid
        RMII_RXD0       : in  std_logic; --Receive data bit 0
        RMII_RXD1       : in  std_logic; --Receive data bit 1
        RMII_RXERR      : in  std_logic; --Receive error, optional
        RMII_TXEN       : out std_logic; --Transmit enable
        RMII_TXD0       : out std_logic; --Transmit data bit 0
        RMII_TXD1       : out std_logic; --Transmit data bit 1
        RMII_MDC        : out std_logic; --Management clock
        RMII_MDIO       : inout std_logic; --Management data

        --SPI/Boot Control
        SPI_CSn         : out std_logic; --Chip select
        SPI_SCK         : out std_logic; --Serial clock
        SPI_MOSI        : out std_logic; --Master out slave in
        SPI_MISO        : in  std_logic; --Master in slave out

        --Logic Analyzer
        LA0_TrigIn      : in  std_logic; --Trigger input
        LA0_Clk         : in  std_logic; --Clock
        LA0_TrigOut     : out std_logic; --Trigger out
        LA0_Signals     : in  std_logic_vector(31 downto 0); --Signals
        LA0_SampleEn    : in  std_logic; --Sample enable

        --TCP Basic Server
        TCP0_Service    : in  std_logic_vector(15 downto 0); --Service
        TCP0_ServerPort : in  std_logic_vector(15 downto 0); --TCP local server port
        TCP0_Connected  : out std_logic; --Client connected
        TCP0_AllAcked   : out std_logic; --All outgoing data acked
        TCP0_nTxFree    : out std_logic_vector(15 downto 0); --Number of free bytes in outgoing buffer
        TCP0_nRxData    : out std_logic_vector(15 downto 0); --Number of bytes in receiving buffer
        TCP0_TxData     : in  std_logic_vector(7 downto 0); --Transmit data
        TCP0_TxValid    : in  std_logic; --Transmit data valid
        TCP0_TxReady    : out std_logic; --Transmit data ready
        TCP0_RxData     : out std_logic_vector(7 downto 0); --Receive data
        TCP0_RxValid    : out std_logic; --Receive data valid
        TCP0_RxReady    : in  std_logic  --Receive data ready
    );
    end component;


    component my_module2_0 is
    port (
        clock : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        e_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        e_empty_n : IN STD_LOGIC;
        e_read : OUT STD_LOGIC;
        addr_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        addr_full_n : IN STD_LOGIC;
        addr_write : OUT STD_LOGIC;
        rgbv_din : OUT STD_LOGIC_VECTOR (23 downto 0);
        rgbv_full_n : IN STD_LOGIC;
        rgbv_write : OUT STD_LOGIC);
--        detect1_din : OUT STD_LOGIC;
--        detect1_full_n : IN STD_LOGIC;
--        detect1_write : OUT STD_LOGIC  );
        end component;
    component VGA_bitmap_640x480 is
      generic(bit_per_pixel : integer range 1 to 12:=1;    -- number of bits per pixel
              grayscale     : boolean := false);           -- should data be displayed in grayscale
      port(clk          : in  std_logic;
           reset        : in  std_logic;
           VGA_hs       : out std_logic;   -- horisontal vga syncr.
           VGA_vs       : out std_logic;   -- vertical vga syncr.
           VGA_red      : out std_logic_vector(3 downto 0);   -- red output
           VGA_green    : out std_logic_vector(3 downto 0);   -- green output
           VGA_blue     : out std_logic_vector(3 downto 0);   -- blue output
    
           ADDR         : in  std_logic_vector(18 downto 0);
           data_in      : in  std_logic_vector(bit_per_pixel - 1 downto 0);
           data_write   : in  std_logic
           );
    end component;
    
    
        
    
    -----------------------------------------------
    -- Signals
    -----------------------------------------------
    signal IP_Ok            : std_logic := '0';
     
    signal TCP0_Connected   : std_logic;
    signal TCP0_AllAcked    : std_logic;
            
    signal TCP0_TxData      : std_logic_vector(7 downto 0);  
    signal TCP0_TxValid     : std_logic;
    signal TCP0_TxReady     : std_logic;
        
    signal TCP0_RxData      : std_logic_vector(7 downto 0);
    signal TCP0_RxValid     : std_logic;
    signal TCP0_RxReady     : std_logic;
        
    signal LA0_TrigIn       : std_logic;
    signal LA0_Clk          : std_logic;
    signal LA0_TrigOut      : std_logic;
    signal LA0_Signals      : std_logic_vector(31 downto 0);
    signal LA0_SampleEn     : std_logic;
    
    
    
    signal nTCP0_RxValid     : std_logic;
    signal RESET             : std_logic;

    signal direction        : std_logic;
    signal LED_i            : std_logic_vector(15 downto 0) := x"0002";

    signal ADDRESS_W        : std_logic_vector(18 downto 0);
    
    signal ADDRESS          : std_logic_vector(31 downto 0);
    
    signal DATA_TO_VGA      : std_logic_vector(23 downto 0);
    signal DATA_TO_VGA2     : std_logic_vector( 8 downto 0);
    signal DATA_TO_VGA3     : std_logic_vector(15 downto 0);
    signal ENAB_TO_VGA      : std_logic;
    signal ADDRESS_WRITE    : std_logic;
    
    SIGNAL   ADDRESS_PIX : STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL   RGBV_PIX : STD_LOGIC_VECTOR(23 downto 0);
	SIGNAL   RGBV_WRITE : STD_LOGIC;
	SIGNAL   ADDRESS_VGA : STD_LOGIC_VECTOR(18 downto 0);
    signal DATA_FROM_UART2     : STD_LOGIC_VECTOR( 7 downto 0);
    signal detect1_din : STD_LOGIC;
    signal detect1_full_n :  STD_LOGIC;
    signal detect1_write :  STD_LOGIC; 
    
    
--   attribute mark_debug : string;
--   attribute keep : string;
--   attribute mark_debug of RGBV_PIX  : signal is "true";
--   attribute mark_debug of ADDRESS_PIX  : signal is "true";
--   attribute mark_debug of RGBV_WRITE  : signal is "true";
--   attribute mark_debug of TCP0_RxValid : signal is "true";
--   attribute mark_debug of TCP0_RxReady : signal is "true";
--   attribute mark_debug of TCP0_RxData : signal is "true";
--   attribute mark_debug of detect1_din  : signal is "true";
--   attribute mark_debug of detect1_write  : signal is "true";



begin

    --
    --
    -- LE MODULE DE CONTROLE DE L'ECRAN VGA
    --
    --

    process( CLK100MHZ ) is
    begin
        if rising_edge(CLK100MHZ) then
            RESET <= NOT NRESET;
        end if;
    end process;


    --
    --
    -- LE MODULE DE CONTROLE DE L'ECRAN VGA
    --
    --

    process( CLK100MHZ ) is
        constant C_100_MS   : integer := 10_000_000;
        variable ClkCnt     : integer range 0 to C_100_MS := 0;
    begin
        if rising_edge(CLK100MHZ) then
            if RESET = '1' THEN
                ClkCnt    := 0;
                LED_i     <= x"0002";
                direction <= '0';
            else
                if ClkCnt = C_100_MS then
                    ClkCnt := 0;

                    if direction = '0' then
                        LED_i <= LED_i(14 downto 0) & LED_i(15);
                        if( LED_i(14) = '1' ) then
                            direction <= '1';
                        else
                            direction <= direction;
                        end if;
                    else
                        LED_i <= LED_i(0) & LED_i(15 downto 1);
                        if( LED_i(1) = '1' ) then
                            direction <= '0';
                        else
                            direction <= direction;
                        end if;
                    end if;
                else
                    ClkCnt := ClkCnt + 1;
                end if;
            end if;
       end if;
    end process;

    LED <= LED_i;
    
        i_FC_1002_RMII  : FC1002_RMII
    port map (
        --Sys/Common
        Clk             => CLK100MHZ,   -- 100 MHz
        Reset           => RESET,       -- Active high
        UseDHCP         => '0',         -- '1'
        IP_Addr         => x"C0A8010F", --(others=>'0'),   -- e.g. 192.168.1.15 => x"C0 A8 01 0F"
        IP_Ok           => IP_Ok,       -- '1' when DHCP has solved IP

         --MAC/RMII
        RMII_CLK_50M    => ETH_REFCLK,      -- RMII continous 50 MHz reference clock
        RMII_RST_N      => ETH_RSTN,        -- Phy reset, active low
        RMII_CRS_DV     => ETH_CRSDV,       -- Carrier sense/Receive data valid
        RMII_RXD0       => ETH_RXD(0),      -- Receive data bit 0
        RMII_RXD1       => ETH_RXD(1),      -- Receive data bit 1
        RMII_RXERR      => ETH_RXERR,       -- Receive error, optional
        RMII_TXEN       => ETH_TXEN,        -- Transmit enable
        RMII_TXD0       => ETH_TXD(0),      -- Transmit data bit 0
        RMII_TXD1       => ETH_TXD(1),      -- Transmit data bit 1
        RMII_MDC        => ETH_MDC,         -- Management clock
        RMII_MDIO       => ETH_MDIO,        -- Management data

        --SPI/Boot Control
        SPI_CSn         => open,
        SPI_SCK         => open,
        SPI_MOSI        => open,
        SPI_MISO        => '0',

        --Logic Analyzer
        LA0_TrigIn      => '0',   
        LA0_Clk         => '0',      
        LA0_TrigOut     => open,  
        LA0_Signals     => x"00000000",  
        LA0_SampleEn    => '0', 

        --TCP Basic Server
        TCP0_Service    => x"0112",
        TCP0_ServerPort => x"E001",
        TCP0_Connected  => TCP0_Connected,
        TCP0_AllAcked   => open,
        TCP0_nTxFree    => open,
        TCP0_nRxData    => open,

        TCP0_TxData     => TCP0_TxData, 
        TCP0_TxValid    => TCP0_TxValid,
        TCP0_TxReady    => open,

        TCP0_RxData     => TCP0_RxData, 
        TCP0_RxValid    => TCP0_RxValid,
        TCP0_RxReady    => TCP0_RxReady--TCP0_RxReady 
    );
    
    
    TCP0_TxData  <= x"00";
    TCP0_TxValid <= '0';
--    TCP0_RxReady <= '1';
    

    module : my_module2_0
    PORT MAP(
            clock       => CLK100MHZ,
            reset       => RESET,
            e_dout      => TCP0_RxData,
            e_empty_n   => TCP0_RxValid, 
            e_read      => TCP0_RxReady,
            addr_din    => ADDRESS_PIX,
            addr_full_n => '1',
            addr_write  => ADDRESS_WRITE,
            rgbv_din    => RGBV_PIX,
            rgbv_full_n => '1',
            rgbv_write  => RGBV_WRITE);
--            detect1_din => detect1_din,
--            detect1_full_n => '1',
--            detect1_write => detect1_write   );
            
ADDRESS_VGA <= std_logic_vector(unsigned(ADDRESS_PIX(18 downto 0)));            
            
        i_VGA : VGA_bitmap_640x480
        generic map(
               bit_per_pixel => 9,
               grayscale     => false)
        port map(
            clk          => CLK100MHZ,   -- 100 MHz
            Reset        => RESET,
            VGA_hs       => VGA_hs,    --   : out std_logic;   -- horisontal vga syncr.
            VGA_vs       => VGA_vs,    --   : out std_logic;   -- vertical vga syncr.
            VGA_red      => VGA_red,   --   : out std_logic_vector(3 downto 0);   -- red output
            VGA_green    => VGA_green, --   : out std_logic_vector(3 downto 0);   -- green output
            VGA_blue     => VGA_blue,  --   : out std_logic_vector(3 downto 0);   -- blue output
            ADDR         => ADDRESS_VGA,
            data_in      => DATA_TO_VGA2,
            data_write   => RGBV_WRITE
        );
    
    DATA_TO_VGA2 <=  RGBV_PIX(7 downto 5)  & RGBV_PIX(15 downto 13) & RGBV_PIX(23 downto 21)  ;





   
end IMPL;