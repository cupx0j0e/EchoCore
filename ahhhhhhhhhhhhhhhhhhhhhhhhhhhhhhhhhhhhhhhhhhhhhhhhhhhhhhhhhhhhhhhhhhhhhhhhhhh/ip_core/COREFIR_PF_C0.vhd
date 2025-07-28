----------------------------------------------------------------------
-- Created by SmartDesign Mon Jul 28 11:41:48 2025
-- Version: 2025.1 2025.1.0.14
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Component Description (Tcl) 
----------------------------------------------------------------------
--# Exporting Component Description of COREFIR_PF_C0 to TCL
--# Family: PolarFireSoC
--# Part Number: MPFS025T-1FCVG484I
--# Create and Configure the core component COREFIR_PF_C0
--create_and_configure_core -core_vlnv {Actel:DirectCore:COREFIR_PF:3.0.121} -component_name {COREFIR_PF_C0} -params {\
--"CFG_ARCH:1"  \
--"COEF_RAM:false"  \
--"COEF_SETS:2"  \
--"COEF_SYMM:1"  \
--"COEF_TYPE:0"  \
--"COEF_UNSIGN:false"  \
--"COEF_WIDTH:16"  \
--"COEF_WIDTH_REQ:16"  \
--"COEFFS:coefficient_set_1
--4
--6
--8
--10
--12
--14
--coefficient_set_2
--14
--12
--10
--8
--6
--4
--"  \
--"CTRL_LAYOUT:0"  \
--"DATA_RAM:false"  \
--"DATA_UNSIGN:false"  \
--"DATA_WIDTH:4"  \
--"DATA_WIDTH_REQ:8"  \
--"DIE_SIZE:5"  \
--"EXTRA_TAPS:0"  \
--"FF:2"  \
--"FIRO_WIDTH:48"  \
--"FPGA_FAMILY:27"  \
--"L:2"  \
--"M:2"  \
--"MACC_COUNT_PER_ROW:66"  \
--"NATIV_AXI4:false"  \
--"RADIX:10"  \
--"RC_INFO_1:0"  \
--"RC_INFO_2:0"  \
--"RC_INFO_3:0"  \
--"RC_INFO_4:0"  \
--"RC_INFO_5:0"  \
--"RC_INFO_6:0"  \
--"RC_INFO_7:0"  \
--"RC_INFO_8:0"  \
--"RC_INFO_9:0"  \
--"RC_INFO_10:0"  \
--"RC_INFO_11:0"  \
--"RC_INFO_12:0"  \
--"RC_INFO_13:0"  \
--"RC_INFO_14:0"  \
--"RC_INFO_15:0"  \
--"RC_INFO_16:0"  \
--"RC_INFO_17:0"  \
--"RC_INFO_18:0"  \
--"RC_INFO_19:0"  \
--"RC_INFO_20:0"  \
--"TAPS:11"  \
--"URAM_MAXDEPTH:0"   }
--# Exporting Component Description of COREFIR_PF_C0 to TCL done

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library polarfire;
use polarfire.all;
library COREFIR_PF_LIB;
use COREFIR_PF_LIB.all;
----------------------------------------------------------------------
-- COREFIR_PF_C0 entity declaration
----------------------------------------------------------------------
entity COREFIR_PF_C0 is
    -- Port list
    port(
        -- Inputs
        CLK         : in  std_logic;
        COEF_ON     : in  std_logic;
        COEF_SEL    : in  std_logic_vector(3 downto 0);
        DATAI       : in  std_logic_vector(3 downto 0);
        DATAI_VALID : in  std_logic;
        NGRST       : in  std_logic;
        RSTN        : in  std_logic;
        -- Outputs
        FIRO        : out std_logic_vector(47 downto 0);
        FIRO_VALID  : out std_logic
        );
end COREFIR_PF_C0;
----------------------------------------------------------------------
-- COREFIR_PF_C0 architecture body
----------------------------------------------------------------------
architecture RTL of COREFIR_PF_C0 is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- COREFIR_PF_C0_COREFIR_PF_C0_0_COREFIR_PF   -   Actel:DirectCore:COREFIR_PF:3.0.121
component COREFIR_PF_C0_COREFIR_PF_C0_0_COREFIR_PF
    generic( 
        CFG_ARCH       : integer := 1 ;
        COEF_RAM       : integer := 0 ;
        COEF_SETS      : integer := 2 ;
        COEF_SYMM      : integer := 1 ;
        COEF_TYPE      : integer := 0 ;
        COEF_UNSIGN    : integer := 0 ;
        COEF_WIDTH     : integer := 16 ;
        COEF_WIDTH_REQ : integer := 16 ;
        DATA_RAM       : integer := 0 ;
        DATA_UNSIGN    : integer := 0 ;
        DATA_WIDTH     : integer := 4 ;
        DATA_WIDTH_REQ : integer := 8 ;
        DIE_SIZE       : integer := 5 ;
        EXTRA_TAPS     : integer := 0 ;
        FF             : integer := 2 ;
        FPGA_FAMILY    : integer := 27 ;
        L              : integer := 2 ;
        M              : integer := 2 ;
        NATIV_AXI4     : integer := 0 ;
        TAPS           : integer := 11 ;
        URAM_MAXDEPTH  : integer := 0 
        );
    -- Port list
    port(
        -- Inputs
        AXI4_M_CONFIGO_TREADY : in  std_logic;
        AXI4_M_DATAO_TREADY   : in  std_logic;
        AXI4_S_COEFI          : in  std_logic_vector(15 downto 0);
        AXI4_S_COEFI_TVALID   : in  std_logic;
        AXI4_S_CONFIGI        : in  std_logic_vector(7 downto 0);
        AXI4_S_CONFIGI_TVALID : in  std_logic;
        AXI4_S_DATAI_TVALID   : in  std_logic;
        AXI4_S_TDATAI         : in  std_logic_vector(7 downto 0);
        CLK                   : in  std_logic;
        COEFI                 : in  std_logic_vector(15 downto 0);
        COEFI_VALID           : in  std_logic;
        COEF_ON               : in  std_logic;
        COEF_REF              : in  std_logic;
        COEF_SEL              : in  std_logic_vector(3 downto 0);
        DATAI                 : in  std_logic_vector(3 downto 0);
        DATAI_VALID           : in  std_logic;
        NGRST                 : in  std_logic;
        RCLK                  : in  std_logic;
        RSTN                  : in  std_logic;
        -- Outputs
        AXI4_M_CONFIGO        : out std_logic_vector(7 downto 0);
        AXI4_M_CONFIGO_TVALID : out std_logic;
        AXI4_M_DATAO_TVALID   : out std_logic;
        AXI4_M_TDATAO         : out std_logic_vector(47 downto 0);
        AXI4_S_COEFI_TREADY   : out std_logic;
        AXI4_S_CONFIGI_TREADY : out std_logic;
        AXI4_S_DATAI_TREADY   : out std_logic;
        COEF_REF_DONE         : out std_logic;
        FIRO                  : out std_logic_vector(47 downto 0);
        FIRO_VALID            : out std_logic;
        READY                 : out std_logic
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal FIRO_net_0       : std_logic_vector(47 downto 0);
signal FIRO_VALID_net_0 : std_logic;
signal FIRO_VALID_net_1 : std_logic;
signal FIRO_net_1       : std_logic_vector(47 downto 0);
----------------------------------------------------------------------
-- TiedOff Signals
----------------------------------------------------------------------
signal COEFI_const_net_0: std_logic_vector(15 downto 0);
signal VCC_net          : std_logic;
signal GND_net          : std_logic;
signal AXI4_S_TDATAI_const_net_0: std_logic_vector(7 downto 0);
signal AXI4_S_COEFI_const_net_0: std_logic_vector(15 downto 0);
signal AXI4_S_CONFIGI_const_net_0: std_logic_vector(7 downto 0);

begin
----------------------------------------------------------------------
-- Constant assignments
----------------------------------------------------------------------
 COEFI_const_net_0          <= B"0000000000000000";
 VCC_net                    <= '1';
 GND_net                    <= '0';
 AXI4_S_TDATAI_const_net_0  <= B"00000000";
 AXI4_S_COEFI_const_net_0   <= B"0000000000000000";
 AXI4_S_CONFIGI_const_net_0 <= B"00000000";
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 FIRO_VALID_net_1  <= FIRO_VALID_net_0;
 FIRO_VALID        <= FIRO_VALID_net_1;
 FIRO_net_1        <= FIRO_net_0;
 FIRO(47 downto 0) <= FIRO_net_1;
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- COREFIR_PF_C0_0   -   Actel:DirectCore:COREFIR_PF:3.0.121
COREFIR_PF_C0_0 : COREFIR_PF_C0_COREFIR_PF_C0_0_COREFIR_PF
    generic map( 
        CFG_ARCH       => ( 1 ),
        COEF_RAM       => ( 0 ),
        COEF_SETS      => ( 2 ),
        COEF_SYMM      => ( 1 ),
        COEF_TYPE      => ( 0 ),
        COEF_UNSIGN    => ( 0 ),
        COEF_WIDTH     => ( 16 ),
        COEF_WIDTH_REQ => ( 16 ),
        DATA_RAM       => ( 0 ),
        DATA_UNSIGN    => ( 0 ),
        DATA_WIDTH     => ( 4 ),
        DATA_WIDTH_REQ => ( 8 ),
        DIE_SIZE       => ( 5 ),
        EXTRA_TAPS     => ( 0 ),
        FF             => ( 2 ),
        FPGA_FAMILY    => ( 27 ),
        L              => ( 2 ),
        M              => ( 2 ),
        NATIV_AXI4     => ( 0 ),
        TAPS           => ( 11 ),
        URAM_MAXDEPTH  => ( 0 )
        )
    port map( 
        -- Inputs
        NGRST                 => NGRST,
        RSTN                  => RSTN,
        CLK                   => CLK,
        DATAI                 => DATAI,
        DATAI_VALID           => DATAI_VALID,
        COEFI                 => COEFI_const_net_0, -- tied to X"0" from definition
        COEFI_VALID           => VCC_net, -- tied to '1' from definition
        COEF_ON               => COEF_ON,
        COEF_SEL              => COEF_SEL,
        COEF_REF              => GND_net, -- tied to '0' from definition
        RCLK                  => VCC_net, -- tied to '1' from definition
        AXI4_S_DATAI_TVALID   => GND_net, -- tied to '0' from definition
        AXI4_S_TDATAI         => AXI4_S_TDATAI_const_net_0, -- tied to X"0" from definition
        AXI4_S_COEFI_TVALID   => GND_net, -- tied to '0' from definition
        AXI4_S_COEFI          => AXI4_S_COEFI_const_net_0, -- tied to X"0" from definition
        AXI4_S_CONFIGI_TVALID => GND_net, -- tied to '0' from definition
        AXI4_S_CONFIGI        => AXI4_S_CONFIGI_const_net_0, -- tied to X"0" from definition
        AXI4_M_CONFIGO_TREADY => VCC_net, -- tied to '1' from definition
        AXI4_M_DATAO_TREADY   => VCC_net, -- tied to '1' from definition
        -- Outputs
        FIRO_VALID            => FIRO_VALID_net_0,
        FIRO                  => FIRO_net_0,
        READY                 => OPEN,
        COEF_REF_DONE         => OPEN,
        AXI4_S_DATAI_TREADY   => OPEN,
        AXI4_S_COEFI_TREADY   => OPEN,
        AXI4_S_CONFIGI_TREADY => OPEN,
        AXI4_M_CONFIGO_TVALID => OPEN,
        AXI4_M_CONFIGO        => OPEN,
        AXI4_M_DATAO_TVALID   => OPEN,
        AXI4_M_TDATAO         => OPEN 
        );

end RTL;
