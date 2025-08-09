-- ***************************************************************************
--Microsemi Corporation Proprietary and Confidential
--Copyright 2015 Microsemi Corporation. All rights reserved.
--
--ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
--ACCORDANCE WITH THE MICROSEMI LICENSE AGREEMENT AND MUST BE APPROVED
--IN ADVANCE IN WRITING.
--
--Description:  G5 CoreFIR RTL
--              G5 Fully Enumerated FIR MACC Wrapper
--
--Revision Information:
--Date         Description
--08Oct2015    Initial Release
--
--SVN Revision Information:
--SVN $Revision: $
--SVN $Data: $
--
--Resolved SARs
--SAR     Date    Who         Description
--
--Notes:
--

--                        +-+-+-+-+-+ +-+-+-+ +-+-+-+-+-+
--                        |B|l|a|c|k| |B|o|x| |M|a|c|r|o|
--                        +-+-+-+-+-+ +-+-+-+ +-+-+-+-+-+
--LIBRARY ieee;
--  USE ieee.std_logic_1164.all;
--
--ENTITY MACC_PA_BC_ROM IS
--  GENERIC (
--    WARNING_MSGS_ON       : INTEGER := 1;
--    INIT                  : STD_LOGIC_VECTOR(287 DOWNTO 0) := (others=>'0')  );
--  PORT (
--    CLK                   : IN STD_LOGIC;
--    AL_N                  : IN STD_LOGIC;
--    ROM_ADDR              : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
--    A                     : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
--    A_EN                  : IN STD_LOGIC;
--    A_SRST_N              : IN STD_LOGIC;
--    A_BYPASS              : IN STD_LOGIC;
--    B                     : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
--    B_EN                  : IN STD_LOGIC;
--    B_SRST_N              : IN STD_LOGIC;
--    B_BYPASS              : IN STD_LOGIC;
--    C                     : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
--    C_ARST_N              : IN STD_LOGIC;
--    C_EN                  : IN STD_LOGIC;
--    C_SRST_N              : IN STD_LOGIC;
--    C_BYPASS              : IN STD_LOGIC;
--    CARRYIN               : IN STD_LOGIC;
--    D                     : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
--    D_ARST_N              : IN STD_LOGIC;
--    D_EN                  : IN STD_LOGIC;
--    D_SRST_N              : IN STD_LOGIC;
--    D_BYPASS              : IN STD_LOGIC;
--    P_EN                  : IN STD_LOGIC;
--    P_SRST_N              : IN STD_LOGIC;
--    P_BYPASS              : IN STD_LOGIC;
--    CDIN                  : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
--    PASUB                 : IN STD_LOGIC;
--    PASUB_EN              : IN STD_LOGIC;
--    PASUB_SL_N            : IN STD_LOGIC;
--    PASUB_AD_N            : IN STD_LOGIC;
--    PASUB_SD_N            : IN STD_LOGIC;
--    PASUB_BYPASS          : IN STD_LOGIC;
--    CDIN_FDBK_SEL         : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
--    CDIN_FDBK_SEL_EN      : IN STD_LOGIC;
--    CDIN_FDBK_SEL_SL_N    : IN STD_LOGIC;
--    CDIN_FDBK_SEL_AD_N    : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
--    CDIN_FDBK_SEL_SD_N    : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
--    CDIN_FDBK_SEL_BYPASS  : IN STD_LOGIC;
--    ARSHFT17              : IN STD_LOGIC;
--    ARSHFT17_EN           : IN STD_LOGIC;
--    ARSHFT17_SL_N         : IN STD_LOGIC;
--    ARSHFT17_AD_N         : IN STD_LOGIC;
--    ARSHFT17_SD_N         : IN STD_LOGIC;
--    ARSHFT17_BYPASS       : IN STD_LOGIC;
--    SUB                   : IN STD_LOGIC;
--    SUB_EN                : IN STD_LOGIC;
--    SUB_SL_N              : IN STD_LOGIC;
--    SUB_AD_N              : IN STD_LOGIC;
--    SUB_SD_N              : IN STD_LOGIC;
--    SUB_BYPASS            : IN STD_LOGIC;
--    SIMD                  : IN STD_LOGIC;
--    DOTP                  : IN STD_LOGIC;
--    OVFL_CARRYOUT_SEL     : IN STD_LOGIC;
--    B2                    : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
--    B2_EN                 : IN STD_LOGIC;
--    B2_SRST_N             : IN STD_LOGIC;
--    B2_BYPASS             : IN STD_LOGIC;
--    USE_ROM               : IN STD_LOGIC;
--    BCOUT                 : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
--    OVFL_CARRYOUT         : OUT STD_LOGIC;
--    P                     : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
--    CDOUT                 : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)  );
--END ENTITY MACC_PA_BC_ROM;
--
--ARCHITECTURE black_box OF MACC_PA_BC_ROM IS
--  attribute syn_black_box : boolean;
--  attribute syn_black_box of black_box: architecture is true;
--BEGIN
--END ARCHITECTURE black_box;
--                        +-+-+-+-+-+ +-+-+-+ +-+-+-+-+
--                        |B|l|a|c|k| |B|o|x| |E|n|d|s|
--                        +-+-+-+-+-+ +-+-+-+ +-+-+-+-+



--
LIBRARY ieee;
  USE ieee.std_logic_1164.all;
USE work.enum_rtl_pack.all;

ENTITY MACC_PA_BC_ROM_wrap IS
  GENERIC (
    USE_ROM         : INTEGER := 1;
    INIT            : STD_LOGIC_VECTOR(287 DOWNTO 0) := (others=>'0');
    WARNING_MSGS_ON : INTEGER := 1 );
  PORT (
    clk         : IN STD_LOGIC;
    nGrst       : IN STD_LOGIC; -- Neg async reset for all regs except C and D
    A           : IN STD_LOGIC_VECTOR(17 DOWNTO 0); -- inp is available in reload mode only
    rstn_A      : IN STD_LOGIC;
    en_A        : IN STD_LOGIC;
    addr        : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    B           : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    rstn_B      : IN STD_LOGIC;
    en_B        : IN STD_LOGIC;
    B2          : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    bcout       : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    en_B2       : IN STD_LOGIC;
    rstn_B2     : IN STD_LOGIC;
    nGrst_B2    : IN STD_LOGIC;
    C           : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
    rstn_C      : IN STD_LOGIC;
    nGrst_C     : IN STD_LOGIC;
    en_C        : IN STD_LOGIC;
    D           : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    rstn_D      : IN STD_LOGIC;
    nGrst_D     : IN STD_LOGIC;
    en_D        : IN STD_LOGIC;
    P           : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
    cdout       : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
    rstn_P      : IN STD_LOGIC;
    en_P        : IN STD_LOGIC;
    cdin        : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
    PASUB       : IN STD_LOGIC;
    rstn_PASUB  : IN STD_LOGIC;
    en_PASUB    : IN STD_LOGIC;
    SEL         : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    rstn_SEL    : IN STD_LOGIC;
    en_SEL      : IN STD_LOGIC  );
END ENTITY MACC_PA_BC_ROM_wrap;

ARCHITECTURE rtl OF MACC_PA_BC_ROM_wrap IS
  COMPONENT MACC_PA_BC_ROM IS
    GENERIC (
--temp 3/1/2016      WARNING_MSGS_ON : INTEGER;
      INIT            : STD_LOGIC_VECTOR(287 DOWNTO 0) );
    PORT (
      CLK                   : IN STD_LOGIC;
      AL_N                  : IN STD_LOGIC;
      ROM_ADDR              : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      A                     : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      A_EN                  : IN STD_LOGIC;
      A_SRST_N              : IN STD_LOGIC;
      A_BYPASS              : IN STD_LOGIC;
      B                     : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      B_EN                  : IN STD_LOGIC;
      B_SRST_N              : IN STD_LOGIC;
      B_BYPASS              : IN STD_LOGIC;
      C                     : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
      C_ARST_N              : IN STD_LOGIC;
      C_EN                  : IN STD_LOGIC;
      C_SRST_N              : IN STD_LOGIC;
      C_BYPASS              : IN STD_LOGIC;
      CARRYIN               : IN STD_LOGIC;
      D                     : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      D_ARST_N              : IN STD_LOGIC;
      D_EN                  : IN STD_LOGIC;
      D_SRST_N              : IN STD_LOGIC;
      D_BYPASS              : IN STD_LOGIC;
      P_EN                  : IN STD_LOGIC;
      P_SRST_N              : IN STD_LOGIC;
      P_BYPASS              : IN STD_LOGIC;
      CDIN                  : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
      PASUB                 : IN STD_LOGIC;
      PASUB_EN              : IN STD_LOGIC;
      PASUB_SL_N            : IN STD_LOGIC;
      PASUB_AD_N            : IN STD_LOGIC;
      PASUB_SD_N            : IN STD_LOGIC;
      PASUB_BYPASS          : IN STD_LOGIC;
      CDIN_FDBK_SEL         : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      CDIN_FDBK_SEL_EN      : IN STD_LOGIC;
      CDIN_FDBK_SEL_SL_N    : IN STD_LOGIC;
      CDIN_FDBK_SEL_AD_N    : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      CDIN_FDBK_SEL_SD_N    : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      CDIN_FDBK_SEL_BYPASS  : IN STD_LOGIC;
      ARSHFT17              : IN STD_LOGIC;
      ARSHFT17_EN           : IN STD_LOGIC;
      ARSHFT17_SL_N         : IN STD_LOGIC;
      ARSHFT17_AD_N         : IN STD_LOGIC;
      ARSHFT17_SD_N         : IN STD_LOGIC;
      ARSHFT17_BYPASS       : IN STD_LOGIC;
      SUB                   : IN STD_LOGIC;
      SUB_EN                : IN STD_LOGIC;
      SUB_SL_N              : IN STD_LOGIC;
      SUB_AD_N              : IN STD_LOGIC;
      SUB_SD_N              : IN STD_LOGIC;
      SUB_BYPASS            : IN STD_LOGIC;
      SIMD                  : IN STD_LOGIC;
      DOTP                  : IN STD_LOGIC;
      OVFL_CARRYOUT_SEL     : IN STD_LOGIC;
      B2                    : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      B2_EN                 : IN STD_LOGIC;
      B2_SRST_N             : IN STD_LOGIC;
      B2_BYPASS             : IN STD_LOGIC;
      USE_ROM               : IN STD_LOGIC;
      BCOUT                 : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      OVFL_CARRYOUT         : OUT STD_LOGIC;
      P                     : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
      CDOUT                 : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)  );
  END COMPONENT;
  
  CONSTANT use_romi : STD_LOGIC := to_logic(USE_ROM);

  SIGNAL b_en4rst, b2_en4rst, d_en4rst, c_en4rst, p_en4rst : STD_LOGIC;   
BEGIN
  b_en4rst  <= en_B OR NOT(rstn_B); 
  b2_en4rst <= en_B2 OR NOT(rstn_B2); 
  d_en4rst  <= en_D OR NOT(rstn_D);
  c_en4rst  <= en_C OR NOT(rstn_C);
  p_en4rst  <= en_P OR NOT(rstn_P);


  MACC_PA_BC_ROM_0 : MACC_PA_BC_ROM
    GENERIC MAP (
--temp 3/1/2016      WARNING_MSGS_ON => WARNING_MSGS_ON,
      INIT            => INIT  )
    PORT MAP (
      DOTP                  => '0',   --static
      SIMD                  => '0',   --static
      OVFL_CARRYOUT_SEL     => '0',   --static
      
      CLK                   => clk,
      AL_N                  => nGrst,	-- Neg async reset for all regs except C, D and B2
      USE_ROM               => use_romi,  --static
      ROM_ADDR              => addr,		  -- LUT Address from fabric
      
      -- A inputs 
      A                     => A,		    -- 18-bit data
      A_BYPASS              => '0',     --static
      A_SRST_N              => rstn_A,	-- Negative sync reset
      A_EN                  => en_A,
      
      -- B inputs 
      B                     => B,		    -- 18-bit data
      B_BYPASS              => '0',     --static
      B_SRST_N              => rstn_B,	-- Negative sync reset
--11/07/16      B_EN                  => en_B,
      B_EN                  => b_en4rst,

      -- B2 inputs 
      B2_BYPASS             => '0',
      B2_SRST_N             => rstn_B2,		-- Negative sync reset
--11/07/16      B2_EN                 => en_B2,
      B2_EN                 => b2_en4rst,
      B2                    => B2,		    -- 18-bit data
      BCOUT                 => bcout,		  -- 18-bit data
      -- D inputs 
      D                     => D,		      -- 18-bit data
      D_BYPASS              => '0',       --static
      D_ARST_N              => nGrst_D,		-- Negative async reset
      D_SRST_N              => rstn_D,		-- Negative sync reset
--11/07/16      D_EN                  => en_B,
      D_EN                  => d_en4rst,
      -- C inputs 
      CARRYIN               => '0',       --carryin for C input
      C                     => C,		      -- 48-bit data
      C_BYPASS              => '0',       --static
      C_ARST_N              => nGrst_C,		-- Negative async reset
      C_SRST_N              => rstn_C,		-- Negative sync reset
--11/07/16      C_EN                  => en_C,		  -- Clk enable
      C_EN                  => c_en4rst,		  -- Clk enable

      CDIN                  => cdin,		  -- 48-bit P cascade input
      
      -- P output 
      P                     => P,		      -- 48-bit data
      OVFL_CARRYOUT         => open,
      P_BYPASS              => '0',       --static
      P_SRST_N              => rstn_P,		-- Negative sync reset
--11/07/16      P_EN                  => en_P,
      P_EN                  => p_en4rst,
      
      CDOUT                 => cdout,		  -- 48-bit data
      
      -- Ctrl inputs
      PASUB                 => PASUB,
      PASUB_BYPASS          => '0',   --static
      PASUB_AD_N            => '1',   --static data to be loaded on async AL_N
      PASUB_SL_N            => rstn_PASUB,		-- Negative sync reset
      PASUB_SD_N            => '1',   --static data to be loaded on sync PASUB_SL_N      
      PASUB_EN              => en_PASUB,
      
      CDIN_FDBK_SEL         => SEL,
      CDIN_FDBK_SEL_BYPASS  => '0',   --static                                                  
      CDIN_FDBK_SEL_AD_N    => "11",  --static value to be loaded on async AL_N                 
      CDIN_FDBK_SEL_SD_N    => "11",  --static value to be loaded on sync rst CDIN_FDBK_SEL_SL_N
      
      CDIN_FDBK_SEL_SL_N    => rstn_SEL,		-- Negative sync reset
      CDIN_FDBK_SEL_EN      => en_SEL,

      ARSHFT17              => '0',
      ARSHFT17_BYPASS       => '1',   --static                                        
      ARSHFT17_AD_N         => '1',   --static data to be loaded on async AL_N        
      ARSHFT17_SL_N         => '1',   -- Negative sync reset                          
      ARSHFT17_SD_N         => '1',   --static data to be loaded on sync ARSHFT17_SL_N
      ARSHFT17_EN           => '1',

      SUB                   => '0',
      SUB_BYPASS            => '1',   --static                                   
      SUB_AD_N              => '1',   --static data to be loaded on async AL_N   
      SUB_SL_N              => '1',   -- Negative sync reset                     
      SUB_SD_N              => '1',   --static data to be loaded on sync SUB_SL_N
      SUB_EN                => '1'  );
  
END ARCHITECTURE rtl;
