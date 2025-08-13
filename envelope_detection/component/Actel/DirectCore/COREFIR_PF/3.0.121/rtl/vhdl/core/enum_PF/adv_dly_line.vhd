--Copyright 2016 Microsemi Corporation. All rights reserved.
--
--ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
--ACCORDANCE WITH THE MICROSEMI LICENSE AGREEMENT AND MUST BE APPROVED
--IN ADVANCE IN WRITING.
--
--Description:  G5 CoreFIR RTL
--              G5 Fully Enumerated FIR Filter Nibble
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
-- Temporarily use fixed uRAM size.  Replace with arbitrary aggregate
-- when available !!!


-- Arbitrary up to 18-bit DELAY1 (shift register) up to DELAY1 = 192
-- Includes a fabric-based shift register, a shift register based on uRAMs
-- and a shift reg inferred by SynPro
LIBRARY ieee;
  USE ieee.std_logic_1164.all;
  USE IEEE.numeric_std.all;
USE work.enum_rtl_pack.all;

ENTITY enum_dly_line_18x192 IS
  GENERIC (
    WIDTH         : INTEGER := 15;
    DELAY1         : INTEGER := 150;
    BUILD         : INTEGER := 0;
    URAM_MAXDEPTH : INTEGER := 0  );
  PORT (
    nGrst         : IN STD_LOGIC;
    rst           : IN STD_LOGIC;
    clk           : IN STD_LOGIC;
    din_valid     : IN STD_LOGIC;
    din           : IN STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
    dout          : OUT STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0)   );
END ENTITY enum_dly_line_18x192;

ARCHITECTURE rtl OF enum_dly_line_18x192 IS
  COMPONENT infer_dly_line_18x192 IS
    GENERIC ( BITWIDTH          : INTEGER;
              DELAY1             : INTEGER );
    PORT (
      clk               : IN STD_LOGIC;
      din_valid         : IN STD_LOGIC;
      din               : IN STD_LOGIC_VECTOR(BITWIDTH-1 DOWNTO 0);
      dout              : OUT STD_LOGIC_VECTOR(BITWIDTH-1 DOWNTO 0)  );
  END COMPONENT;

  COMPONENT enum_uram_shift_reg_18x192 IS
    GENERIC (
      WIDTH         : INTEGER;
      DELAY1         : INTEGER  );
    PORT (
      nGrst         : IN STD_LOGIC;
      rst           : IN STD_LOGIC;
      clk           : IN STD_LOGIC;
      din_valid     : IN STD_LOGIC;
      din           : IN STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
      dout          : OUT STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0)   );
  END COMPONENT;

  constant USE_RAM  : INTEGER := intMux (1, 0, URAM_MAXDEPTH<DELAY1);
  constant USE_SYNPRO_INFER : INTEGER := 0;
  constant MAX_FABRIC_DEPTH : INTEGER := 4;

  SIGNAL rstnn      : STD_LOGIC;
  SIGNAL uram_dout  : STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);

BEGIN
  -- SynPro infers the DELAY1
  infer_shiftreg : IF ((BUILD/=0) AND (USE_SYNPRO_INFER /= 0)) GENERATE
    infer_sr_0 : infer_dly_line_18x192
      GENERIC MAP ( BITWIDTH  => WIDTH,
                    DELAY1     => DELAY1 )
      PORT MAP (
        clk        => clk,
        din_valid  => din_valid,
        din        => din,
        dout       => dout  );
  END GENERATE;

  --  ------------------  Fabric DELAY1  ----------------
  fabric_shift_reg : IF ((BUILD/=0) AND ((USE_RAM=0) OR (DELAY1-1<=MAX_FABRIC_DEPTH))) GENERATE
    fabric_dly_0 : enum_kitDelay_reg
      GENERIC MAP ( BITWIDTH  => WIDTH,
                    DELAY1     => DELAY1 )
      PORT MAP (
        nGrst  => nGrst,
        rst    => rst,
        clk    => clk,
        clkEn  => din_valid,
        inp    => din,
        outp   => dout  );
  END GENERATE;

  uRAM_shift_reg : IF ((BUILD/=0) AND (USE_RAM/=0) AND (DELAY1-1>MAX_FABRIC_DEPTH)) GENERATE
    uram_dly_0 : enum_uram_shift_reg_18x192
      GENERIC MAP (
        WIDTH => WIDTH,
        DELAY1 => DELAY1-1  )
      PORT MAP (
        nGrst     => nGrst,
        rst       => rst,
        clk       => clk,
        din_valid => din_valid,
        din       => din,
        dout      => uram_dout  );

      -- Insert a fabric pipeline DELAY1 to absorb possible long path DELAY1
      outp_pipe_0 : enum_kitDelay_reg 
        GENERIC MAP ( BITWIDTH  => WIDTH, 
                      DELAY1     => 1 )  
        PORT MAP  (              
          nGrst => nGrst, 
          rst   => rst, 
          clk   => clk,
          clkEn => din_valid, 
          inp   => uram_dout, 
          outp  => dout );
  END GENERATE;

  no_build : IF (BUILD=0) GENERATE
    dout <= (others=>'X');
  END GENERATE;

END rtl;
----------------------------------------------------------------------------------


LIBRARY ieee;
  USE ieee.std_logic_1164.all;
  USE IEEE.numeric_std.all;
USE work.enum_rtl_pack.all;

ENTITY enum_uram_shift_reg_18x192 IS
  GENERIC (
    WIDTH         : INTEGER := 15;
    DELAY1         : INTEGER := 150  );
  PORT (
    nGrst         : IN STD_LOGIC;
    rst           : IN STD_LOGIC;
    clk           : IN STD_LOGIC;
    din_valid     : IN STD_LOGIC;
    din           : IN STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
    dout          : OUT STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0)   );
END ENTITY enum_uram_shift_reg_18x192;

ARCHITECTURE rtl OF enum_uram_shift_reg_18x192 IS
  COMPONENT uram_wrap IS
    GENERIC (
      DEPTH             : INTEGER := 150;
      WIDTH             : INTEGER := 15;
      LOGDEPTH          : INTEGER := 8   );
    PORT (
      clk               : IN STD_LOGIC;
      nGrst             : IN STD_LOGIC;
      rstn              : IN STD_LOGIC;
      rA                : IN STD_LOGIC_VECTOR(LOGDEPTH-1 DOWNTO 0);
      wA                : IN STD_LOGIC_VECTOR(LOGDEPTH-1 DOWNTO 0);
      din_valid         : IN STD_LOGIC;
      din               : IN STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
      dout              : OUT STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0)  );
  END COMPONENT;

  constant LOGDEPTH : INTEGER := ceil_log2(DELAY1);

  SIGNAL rollov_wA  : STD_LOGIC;
  SIGNAL rollov_rA  : STD_LOGIC;
  SIGNAL hold_zero  : STD_LOGIC;
  SIGNAL wA         : STD_LOGIC_VECTOR(LOGDEPTH-1 DOWNTO 0);
  SIGNAL rA         : STD_LOGIC_VECTOR(LOGDEPTH-1 DOWNTO 0);
  SIGNAL rst_wA, rst_rA   : STD_LOGIC;
  SIGNAL sync_rst   : STD_LOGIC;
  SIGNAL rstn       : STD_LOGIC;
  SIGNAL holdZero_on_RAM_outp : STD_LOGIC;                  --07/06/16

BEGIN

  --  +-+-+-+ +-+-+ +-+-+-+ +-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+
  --  |r|A|,| |w|A| |f|o|r| |R|A|M|-|b|a|s|e|d| |D|e|l|a|y|
  --  +-+-+-+ +-+-+ +-+-+-+ +-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+

  rst_wA <= rst OR rollov_wA;
  wAddr_0 : enum_kitCountS
    GENERIC MAP ( WIDTH     => LOGDEPTH,
                  DCVALUE   => DELAY1-1,
                  BUILD_DC  => 1   )
    PORT MAP (
      nGrst  => nGrst,
      rst    => rst_wA,
      clk    => clk,
      clkEn  => din_valid,
      cntEn  => '1',
      q      => wA,
      dc     => rollov_wA  );

  -- Signal to sync wA and rA
  -- RAM-based DELAY1 adds two pipeline dlys: rA and rd_pipe.  Synchronization
  -- of rA and wA takes another period, totalling at 3 periods of din_valid
  sync_rst <= to_logic(to_integer(unsigned(wA))=DELAY1-3);

  -- Keep RAM outp data=0 and rA=0 until the first sync_rst to avoid lengthy
  -- X state propagation thru multiple sequential delays
  PROCESS (clk, nGrst)
  BEGIN
    IF (nGrst = '0') THEN
      hold_zero <= '1';
    ELSIF (clk'EVENT AND clk = '1') THEN
      IF (rst = '1') THEN
        hold_zero <= '1';
      ELSIF ((din_valid = '1') AND (sync_rst = '1')) THEN
        hold_zero <= '0';
      END IF;
    END IF;
  END PROCESS;

  -- Read addr counter
  rst_rA <= rst OR sync_rst OR hold_zero OR rollov_rA;
  rAddr_0 : enum_kitCountS
    GENERIC MAP ( WIDTH     => LOGDEPTH,
                  DCVALUE   => DELAY1-1,
                  BUILD_DC  => 1  )
    PORT MAP (
      nGrst  => nGrst,
      rst    => rst_rA,
      clk    => clk,
      clkEn  => din_valid,
      cntEn  => '1',
      Q      => rA,
      dc     => rollov_rA   );

  holdZero_on_RAM_outp <= NOT(rst OR hold_zero);          --07/06/16
  -- Instantiate uRAM
  rstn <= NOT(rst);
  uram_wrap_0 : uram_wrap
    GENERIC MAP ( DEPTH     => DELAY1,
                  WIDTH     => WIDTH,
                  LOGDEPTH  => LOGDEPTH  )
    PORT MAP (
      clk        => clk,
      nGrst      => nGrst,
--07/06/16      rstn       => rstn,
      rstn       => holdZero_on_RAM_outp,
      rA         => rA,
      wA         => wA,
      din_valid  => din_valid,
      din        => din,
      dout       => dout  );

END rtl;
-------------------------------------------------------------------------------



LIBRARY IEEE;
  USE IEEE.std_logic_1164.all;
  USE IEEE.numeric_std.all;

ENTITY uram_wrap IS
  GENERIC (
    DEPTH             : INTEGER := 150;
    WIDTH             : INTEGER := 15;
    LOGDEPTH          : INTEGER := 8   );
  PORT (
    clk               : IN STD_LOGIC;
    nGrst             : IN STD_LOGIC;
    rstn              : IN STD_LOGIC;
    rA                : IN STD_LOGIC_VECTOR(LOGDEPTH-1 DOWNTO 0);
    wA                : IN STD_LOGIC_VECTOR(LOGDEPTH-1 DOWNTO 0);
    din_valid         : IN STD_LOGIC;
    din               : IN STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
    dout              : OUT STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0)  );
END ENTITY uram_wrap;

ARCHITECTURE rtl OF uram_wrap IS
  COMPONENT g5_uram12x64 IS
    port( R_DATA      : out std_logic_vector(11 downto 0);
          W_DATA      : in  std_logic_vector(11 downto 0);
          R_ADDR      : in  std_logic_vector(5 downto 0);
          W_ADDR      : in  std_logic_vector(5 downto 0);
          R_ADDR_AL_N : in  std_logic;
          R_DATA_AL_N : in  std_logic;
          R_ADDR_SL_N : in  std_logic;
          R_DATA_SL_N : in  std_logic;
          R_ADDR_EN   : in  std_logic;
          R_DOUT_EN   : in  std_logic;
          CLK         : in  std_logic;
          W_EN        : in  std_logic   );
  END COMPONENT;

  COMPONENT g5_uram12x128 IS
    port( R_DATA      : out std_logic_vector(11 downto 0);
          W_DATA      : in  std_logic_vector(11 downto 0);
          R_ADDR      : in  std_logic_vector(6 downto 0);
          W_ADDR      : in  std_logic_vector(6 downto 0);
          R_ADDR_AL_N : in  std_logic;
          R_DATA_AL_N : in  std_logic;
          R_ADDR_SL_N : in  std_logic;
          R_DATA_SL_N : in  std_logic;
          R_ADDR_EN   : in  std_logic;
          R_DOUT_EN   : in  std_logic;
          CLK         : in  std_logic;
          W_EN        : in  std_logic   );
  END COMPONENT;

  COMPONENT g5_uram12x192 IS
    port( R_DATA      : out std_logic_vector(11 downto 0);
          W_DATA      : in  std_logic_vector(11 downto 0);
          R_ADDR      : in  std_logic_vector(7 downto 0);
          W_ADDR      : in  std_logic_vector(7 downto 0);
          R_ADDR_AL_N : in  std_logic;
          R_DATA_AL_N : in  std_logic;
          R_ADDR_SL_N : in  std_logic;
          R_DATA_SL_N : in  std_logic;
          R_ADDR_EN   : in  std_logic;
          R_DOUT_EN   : in  std_logic;
          CLK         : in  std_logic;
          W_EN        : in  std_logic   );
  END COMPONENT;

  COMPONENT g5_uram18x64 IS
    port( R_DATA      : out std_logic_vector(17 downto 0);
          W_DATA      : in  std_logic_vector(17 downto 0);
          R_ADDR      : in  std_logic_vector(5 downto 0);
          W_ADDR      : in  std_logic_vector(5 downto 0);
          R_ADDR_AL_N : in  std_logic;
          R_DATA_AL_N : in  std_logic;
          R_ADDR_SL_N : in  std_logic;
          R_DATA_SL_N : in  std_logic;
          R_ADDR_EN   : in  std_logic;
          R_DOUT_EN   : in  std_logic;
          CLK         : in  std_logic;
          W_EN        : in  std_logic   );
  END COMPONENT;

  COMPONENT g5_uram18x128 IS
    port( R_DATA      : out std_logic_vector(17 downto 0);
          W_DATA      : in  std_logic_vector(17 downto 0);
          R_ADDR      : in  std_logic_vector(6 downto 0);
          W_ADDR      : in  std_logic_vector(6 downto 0);
          R_ADDR_AL_N : in  std_logic;
          R_DATA_AL_N : in  std_logic;
          R_ADDR_SL_N : in  std_logic;
          R_DATA_SL_N : in  std_logic;
          R_ADDR_EN   : in  std_logic;
          R_DOUT_EN   : in  std_logic;
          CLK         : in  std_logic;
          W_EN        : in  std_logic   );
  END COMPONENT;

  COMPONENT g5_uram18x192 IS
    port( R_DATA      : out std_logic_vector(17 downto 0);
          W_DATA      : in  std_logic_vector(17 downto 0);
          R_ADDR      : in  std_logic_vector(7 downto 0);
          W_ADDR      : in  std_logic_vector(7 downto 0);
          R_ADDR_AL_N : in  std_logic;
          R_DATA_AL_N : in  std_logic;
          R_ADDR_SL_N : in  std_logic;
          R_DATA_SL_N : in  std_logic;
          R_ADDR_EN   : in  std_logic;
          R_DOUT_EN   : in  std_logic;
          CLK         : in  std_logic;
          W_EN        : in  std_logic   );
  END COMPONENT;

  SIGNAL din12  : STD_LOGIC_VECTOR(11 DOWNTO 0);
  SIGNAL dout12 : STD_LOGIC_VECTOR(11 DOWNTO 0);
  SIGNAL din18  : STD_LOGIC_VECTOR(17 DOWNTO 0);
  SIGNAL dout18 : STD_LOGIC_VECTOR(17 DOWNTO 0);
  SIGNAL rA64   : STD_LOGIC_VECTOR(5 DOWNTO 0);
  SIGNAL wA64   : STD_LOGIC_VECTOR(5 DOWNTO 0);
  SIGNAL rA128  : STD_LOGIC_VECTOR(6 DOWNTO 0);
  SIGNAL wA128  : STD_LOGIC_VECTOR(6 DOWNTO 0);
  SIGNAL rA192  : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL wA192  : STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
  bit12 : IF (WIDTH <= 12) GENERATE
    dout <= dout12(WIDTH-1 DOWNTO 0);
  END GENERATE;  
  
  bit18 : IF (WIDTH > 12) GENERATE
    dout <= dout18(WIDTH-1 DOWNTO 0);
  END GENERATE;  

--  dout <= dout12(WIDTH-1 DOWNTO 0) WHEN (WIDTH<=12) ELSE dout18(WIDTH-1 DOWNTO 0);
  uram_12x64 : IF ((WIDTH <= 12) AND (DEPTH <= 64)) GENERATE
    din12 <= std_logic_vector(RESIZE (unsigned(din), 12));
    rA64  <= std_logic_vector(RESIZE (unsigned(rA), 6));
    wA64  <= std_logic_vector(RESIZE (unsigned(wA), 6));

    g5_uram12x64_0 : g5_uram12x64
      PORT MAP (
        R_DATA       => dout12,
        W_DATA       => din12,
        R_ADDR       => rA64,
        W_ADDR       => wA64,
        R_ADDR_AL_N  => nGrst,
        R_DATA_AL_N  => nGrst,
        R_ADDR_SL_N  => rstn,
        R_DATA_SL_N  => rstn,
        R_ADDR_EN    => din_valid,
        R_DOUT_EN    => din_valid,
        CLK          => clk,
        W_EN         => din_valid );
  END GENERATE;

  uram_12x128 : IF ((WIDTH <= 12) AND (DEPTH > 64) AND (DEPTH <= 128)) GENERATE
    din12 <= std_logic_vector(RESIZE (unsigned(din), 12));
    rA128 <= std_logic_vector(RESIZE (unsigned(rA), 7));
    wA128 <= std_logic_vector(RESIZE (unsigned(wA), 7));

    g5_uram12x128_0 : g5_uram12x128
      PORT MAP (
        R_DATA       => dout12,
        W_DATA       => din12,
        R_ADDR       => rA128,
        W_ADDR       => wA128,
        R_ADDR_AL_N  => nGrst,
        R_DATA_AL_N  => nGrst,
        R_ADDR_SL_N  => rstn,
        R_DATA_SL_N  => rstn,
        R_ADDR_EN    => din_valid,
        R_DOUT_EN    => din_valid,
        CLK          => clk,
        W_EN         => din_valid   );
  END GENERATE;

  uram_12x192 : IF ((WIDTH <= 12) AND (DEPTH > 128) AND (DEPTH <= 192)) GENERATE
    din12 <= std_logic_vector(RESIZE (unsigned(din), 12));
    rA192 <= std_logic_vector(RESIZE (unsigned(rA), 8));
    wA192 <= std_logic_vector(RESIZE (unsigned(wA), 8));

    g5_uram12x192_0 : g5_uram12x192
      PORT MAP (
        R_DATA       => dout12,
        W_DATA       => din12,
        R_ADDR       => rA192,
        W_ADDR       => wA192,
        R_ADDR_AL_N  => nGrst,
        R_DATA_AL_N  => nGrst,
        R_ADDR_SL_N  => rstn,
        R_DATA_SL_N  => rstn,
        R_ADDR_EN    => din_valid,
        R_DOUT_EN    => din_valid,
        CLK          => clk,
        W_EN         => din_valid  );
  END GENERATE;

  uram_18x64 : IF ((WIDTH > 12) AND (DEPTH <= 64)) GENERATE
    din18 <= std_logic_vector(RESIZE (unsigned(din), 18));
    rA64  <= std_logic_vector(RESIZE (unsigned(rA), 6));
    wA64  <= std_logic_vector(RESIZE (unsigned(wA), 6));

    g5_uram18x64_0 : g5_uram18x64
      PORT MAP (
        R_DATA       => dout18,
        W_DATA       => din18,
        R_ADDR       => rA64,
        W_ADDR       => wA64,
        R_ADDR_AL_N  => nGrst,
        R_DATA_AL_N  => nGrst,
        R_ADDR_SL_N  => rstn,
        R_DATA_SL_N  => rstn,
        R_ADDR_EN    => din_valid,
        R_DOUT_EN    => din_valid,
        CLK          => clk,
        W_EN         => din_valid   );
  END GENERATE;

  uram_18x128 : IF ((WIDTH > 12) AND (DEPTH > 64) AND (DEPTH <= 128)) GENERATE
    din18 <= std_logic_vector(RESIZE (unsigned(din), 18));
    rA128 <= std_logic_vector(RESIZE (unsigned(rA), 7));
    wA128 <= std_logic_vector(RESIZE (unsigned(wA), 7));

    g5_uram18x128_0 : g5_uram18x128
      PORT MAP (
        R_DATA       => dout18,
        W_DATA       => din18,
        R_ADDR       => rA128,
        W_ADDR       => wA128,
        R_ADDR_AL_N  => nGrst,
        R_DATA_AL_N  => nGrst,
        R_ADDR_SL_N  => rstn,
        R_DATA_SL_N  => rstn,
        R_ADDR_EN    => din_valid,
        R_DOUT_EN    => din_valid,
        CLK          => clk,
        W_EN         => din_valid  );
  END GENERATE;

  uram_18x192 : IF ((WIDTH > 12) AND (DEPTH > 128) AND (DEPTH <= 192)) GENERATE
    din18 <= std_logic_vector(RESIZE (unsigned(din), 18));
    rA192 <= std_logic_vector(RESIZE (unsigned(rA), 8));
    wA192 <= std_logic_vector(RESIZE (unsigned(wA), 8));

    g5_uram18x192_0 : g5_uram18x192
      PORT MAP (
        R_DATA       => dout18,
        W_DATA       => din18,
        R_ADDR       => rA192,
        W_ADDR       => wA192,
        R_ADDR_AL_N  => nGrst,
        R_DATA_AL_N  => nGrst,
        R_ADDR_SL_N  => rstn,
        R_DATA_SL_N  => rstn,
        R_ADDR_EN    => din_valid,
        R_DOUT_EN    => din_valid,
        CLK          => clk,
        W_EN         => din_valid   );
   END GENERATE;

END rtl;


-------------------------------------------------------------------------------
-- Simulation model of another DELAY1 of up to 18x192.  SynplifyPro infers it
-- based on the following code
LIBRARY ieee;
  USE ieee.std_logic_1164.all;

ENTITY infer_dly_line_18x192 IS
  GENERIC ( BITWIDTH          : INTEGER := 12;
            DELAY1             : INTEGER := 100  );
  PORT (
    clk               : IN STD_LOGIC;
    din_valid         : IN STD_LOGIC;
    din               : IN STD_LOGIC_VECTOR(BITWIDTH-1 DOWNTO 0);
    dout              : OUT STD_LOGIC_VECTOR(BITWIDTH-1 DOWNTO 0)  );
END ENTITY infer_dly_line_18x192;

ARCHITECTURE infer OF infer_dly_line_18x192 IS
  TYPE type_xhdl16 IS ARRAY (DELAY1-1 DOWNTO 0) OF STD_LOGIC_VECTOR(BITWIDTH-1 DOWNTO 0);
  SIGNAL regBank    : type_xhdl16;
  attribute syn_srlstyle: string;
  attribute syn_srlstyle of regBank : signal is "uram";

  SIGNAL i          : INTEGER;
BEGIN
  PROCESS (clk)
  BEGIN
    IF (clk'EVENT AND clk = '1') THEN
      IF (din_valid = '1') THEN
        -- write
        FOR i IN DELAY1-1 DOWNTO 1 LOOP
          regBank(i) <= regBank(i-1);
        END LOOP;
        regBank(0) <= din;
      END IF;
    END IF;
  END PROCESS;

  dout <= regBank(DELAY1-1);

END ARCHITECTURE infer;




--        _   _   _   _   _   _   _     _   _   _   _   _   _   _   _
--       / \ / \ / \ / \ / \ / \ / \   / \ / \ / \ / \ / \ / \ / \ / \
--      ( A | c | t | g | e | n | o ) ( p | r | o | d | u | c | t | s )
--       \_/ \_/ \_/ \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/
-- Version: v12.0 12.0.0.4

library ieee;
use ieee.std_logic_1164.all;
library polarfire;
use polarfire.all;

entity g5_uram12x64 is
    port( R_DATA      : out   std_logic_vector(11 downto 0);
          W_DATA      : in    std_logic_vector(11 downto 0);
          R_ADDR      : in    std_logic_vector(5 downto 0);
          W_ADDR      : in    std_logic_vector(5 downto 0);
          R_ADDR_AL_N : in    std_logic;
          R_DATA_AL_N : in    std_logic;
          R_ADDR_SL_N : in    std_logic;
          R_DATA_SL_N : in    std_logic;
          R_ADDR_EN   : in    std_logic;
          R_DOUT_EN   : in    std_logic;
          CLK         : in    std_logic;
          W_EN        : in    std_logic
        );
end g5_uram12x64;

architecture DEF_ARCH of g5_uram12x64 is
  component RAM64x12
    port( BLK_EN        : in    std_logic := 'U';
          BUSY_FB       : in    std_logic := 'U';
          R_ADDR        : in    std_logic_vector(5 downto 0) := (others => 'U');
          R_ADDR_AD_N   : in    std_logic := 'U';
          R_ADDR_AL_N   : in    std_logic := 'U';
          R_ADDR_BYPASS : in    std_logic := 'U';
          R_ADDR_EN     : in    std_logic := 'U';
          R_ADDR_SD     : in    std_logic := 'U';
          R_ADDR_SL_N   : in    std_logic := 'U';
          R_CLK         : in    std_logic := 'U';
          R_DATA_AD_N   : in    std_logic := 'U';
          R_DATA_AL_N   : in    std_logic := 'U';
          R_DATA_BYPASS : in    std_logic := 'U';
          R_DATA_EN     : in    std_logic := 'U';
          R_DATA_SD     : in    std_logic := 'U';
          R_DATA_SL_N   : in    std_logic := 'U';
          W_ADDR        : in    std_logic_vector(5 downto 0) := (others => 'U');
          W_CLK         : in    std_logic := 'U';
          W_DATA        : in    std_logic_vector(11 downto 0) := (others => 'U');
          W_EN          : in    std_logic := 'U';
          ACCESS_BUSY   : out   std_logic;
          R_DATA        : out   std_logic_vector(11 downto 0)
        );
  end component;

  component GND
    port(Y : out std_logic);
  end component;

  component VCC
    port(Y : out std_logic);
  end component;

    signal \BUSY[0][0]\, \VCC\, \GND\, ADLIB_VCC : std_logic;
    signal GND_power_net1 : std_logic;
    signal VCC_power_net1 : std_logic;

begin

    \GND\ <= GND_power_net1;
    \VCC\ <= VCC_power_net1;
    ADLIB_VCC <= VCC_power_net1;

    g5_uram_12x64_R0C0 : RAM64x12
      port map(BLK_EN => \VCC\, BUSY_FB => \GND\, R_ADDR(5) =>
        R_ADDR(5), R_ADDR(4) => R_ADDR(4), R_ADDR(3) => R_ADDR(3),
        R_ADDR(2) => R_ADDR(2), R_ADDR(1) => R_ADDR(1), R_ADDR(0)
         => R_ADDR(0), R_ADDR_AD_N => \VCC\, R_ADDR_AL_N =>
        R_ADDR_AL_N, R_ADDR_BYPASS => \GND\, R_ADDR_EN =>
        R_ADDR_EN, R_ADDR_SD => \GND\, R_ADDR_SL_N => R_ADDR_SL_N,
        R_CLK => CLK, R_DATA_AD_N => \VCC\, R_DATA_AL_N =>
        R_DATA_AL_N, R_DATA_BYPASS => \GND\, R_DATA_EN =>
        R_DOUT_EN, R_DATA_SD => \GND\, R_DATA_SL_N => R_DATA_SL_N,
        W_ADDR(5) => W_ADDR(5), W_ADDR(4) => W_ADDR(4), W_ADDR(3)
         => W_ADDR(3), W_ADDR(2) => W_ADDR(2), W_ADDR(1) =>
        W_ADDR(1), W_ADDR(0) => W_ADDR(0), W_CLK => CLK,
        W_DATA(11) => W_DATA(11), W_DATA(10) => W_DATA(10),
        W_DATA(9) => W_DATA(9), W_DATA(8) => W_DATA(8), W_DATA(7)
         => W_DATA(7), W_DATA(6) => W_DATA(6), W_DATA(5) =>
        W_DATA(5), W_DATA(4) => W_DATA(4), W_DATA(3) => W_DATA(3),
        W_DATA(2) => W_DATA(2), W_DATA(1) => W_DATA(1), W_DATA(0)
         => W_DATA(0), W_EN => W_EN, ACCESS_BUSY => \BUSY[0][0]\,
        R_DATA(11) => R_DATA(11), R_DATA(10) => R_DATA(10),
        R_DATA(9) => R_DATA(9), R_DATA(8) => R_DATA(8), R_DATA(7)
         => R_DATA(7), R_DATA(6) => R_DATA(6), R_DATA(5) =>
        R_DATA(5), R_DATA(4) => R_DATA(4), R_DATA(3) => R_DATA(3),
        R_DATA(2) => R_DATA(2), R_DATA(1) => R_DATA(1), R_DATA(0)
         => R_DATA(0));

    GND_power_inst1 : GND
      port map( Y => GND_power_net1);

    VCC_power_inst1 : VCC
      port map( Y => VCC_power_net1);


end DEF_ARCH;

-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
library polarfire;
use polarfire.all;

entity g5_uram12x128 is

    port( R_DATA      : out   std_logic_vector(11 downto 0);
          W_DATA      : in    std_logic_vector(11 downto 0);
          R_ADDR      : in    std_logic_vector(6 downto 0);
          W_ADDR      : in    std_logic_vector(6 downto 0);
          R_ADDR_AL_N : in    std_logic;
          R_DATA_AL_N : in    std_logic;
          R_ADDR_SL_N : in    std_logic;
          R_DATA_SL_N : in    std_logic;
          R_ADDR_EN   : in    std_logic;
          R_DOUT_EN   : in    std_logic;
          CLK         : in    std_logic;
          W_EN        : in    std_logic
        );

end g5_uram12x128;

architecture DEF_ARCH of g5_uram12x128 is

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component RAM64x12
    port( BLK_EN        : in    std_logic := 'U';
          BUSY_FB       : in    std_logic := 'U';
          R_ADDR        : in    std_logic_vector(5 downto 0) := (others => 'U');
          R_ADDR_AD_N   : in    std_logic := 'U';
          R_ADDR_AL_N   : in    std_logic := 'U';
          R_ADDR_BYPASS : in    std_logic := 'U';
          R_ADDR_EN     : in    std_logic := 'U';
          R_ADDR_SD     : in    std_logic := 'U';
          R_ADDR_SL_N   : in    std_logic := 'U';
          R_CLK         : in    std_logic := 'U';
          R_DATA_AD_N   : in    std_logic := 'U';
          R_DATA_AL_N   : in    std_logic := 'U';
          R_DATA_BYPASS : in    std_logic := 'U';
          R_DATA_EN     : in    std_logic := 'U';
          R_DATA_SD     : in    std_logic := 'U';
          R_DATA_SL_N   : in    std_logic := 'U';
          W_ADDR        : in    std_logic_vector(5 downto 0) := (others => 'U');
          W_CLK         : in    std_logic := 'U';
          W_DATA        : in    std_logic_vector(11 downto 0) := (others => 'U');
          W_EN          : in    std_logic := 'U';
          ACCESS_BUSY   : out   std_logic;
          R_DATA        : out   std_logic_vector(11 downto 0)
        );
  end component;

  component GND
    port(Y : out std_logic);
  end component;

  component VCC
    port(Y : out std_logic);
  end component;

    signal \R_DATA_TEMPR0[0]\, \R_DATA_TEMPR1[0]\,
        \R_DATA_TEMPR0[1]\, \R_DATA_TEMPR1[1]\,
        \R_DATA_TEMPR0[2]\, \R_DATA_TEMPR1[2]\,
        \R_DATA_TEMPR0[3]\, \R_DATA_TEMPR1[3]\,
        \R_DATA_TEMPR0[4]\, \R_DATA_TEMPR1[4]\,
        \R_DATA_TEMPR0[5]\, \R_DATA_TEMPR1[5]\,
        \R_DATA_TEMPR0[6]\, \R_DATA_TEMPR1[6]\,
        \R_DATA_TEMPR0[7]\, \R_DATA_TEMPR1[7]\,
        \R_DATA_TEMPR0[8]\, \R_DATA_TEMPR1[8]\,
        \R_DATA_TEMPR0[9]\, \R_DATA_TEMPR1[9]\,
        \R_DATA_TEMPR0[10]\, \R_DATA_TEMPR1[10]\,
        \R_DATA_TEMPR0[11]\, \R_DATA_TEMPR1[11]\, \BLKX0[0]\,
        \BLKX0[1]\, \BLKZ0[0]\, \BLKZ0[1]\, \BUSY[0][0]\,
        \BUSY[1][0]\, \VCC\, \GND\, ADLIB_VCC : std_logic;
    signal GND_power_net1 : std_logic;
    signal VCC_power_net1 : std_logic;

begin

    \GND\ <= GND_power_net1;
    \VCC\ <= VCC_power_net1;
    ADLIB_VCC <= VCC_power_net1;

    \CFG2_BLKZ0[0]\ : CFG2
      generic map(INIT => x"4")

      port map(A => W_ADDR(6), B => W_EN, Y => \BLKZ0[0]\);

    \OR2_R_DATA[1]\ : OR2
      port map(A => \R_DATA_TEMPR0[1]\, B => \R_DATA_TEMPR1[1]\,
        Y => R_DATA(1));

    \OR2_R_DATA[6]\ : OR2
      port map(A => \R_DATA_TEMPR0[6]\, B => \R_DATA_TEMPR1[6]\,
        Y => R_DATA(6));

    g5_uram_12x128_R1C0 : RAM64x12
      port map(BLK_EN => \BLKX0[1]\, BUSY_FB => \GND\, R_ADDR(5)
         => R_ADDR(5), R_ADDR(4) => R_ADDR(4), R_ADDR(3) =>
        R_ADDR(3), R_ADDR(2) => R_ADDR(2), R_ADDR(1) => R_ADDR(1),
        R_ADDR(0) => R_ADDR(0), R_ADDR_AD_N => \VCC\, R_ADDR_AL_N
         => R_ADDR_AL_N, R_ADDR_BYPASS => \GND\, R_ADDR_EN =>
        R_ADDR_EN, R_ADDR_SD => \GND\, R_ADDR_SL_N => R_ADDR_SL_N,
        R_CLK => CLK, R_DATA_AD_N => \VCC\, R_DATA_AL_N =>
        R_DATA_AL_N, R_DATA_BYPASS => \GND\, R_DATA_EN =>
        R_DOUT_EN, R_DATA_SD => \GND\, R_DATA_SL_N => R_DATA_SL_N,
        W_ADDR(5) => W_ADDR(5), W_ADDR(4) => W_ADDR(4), W_ADDR(3)
         => W_ADDR(3), W_ADDR(2) => W_ADDR(2), W_ADDR(1) =>
        W_ADDR(1), W_ADDR(0) => W_ADDR(0), W_CLK => CLK,
        W_DATA(11) => W_DATA(11), W_DATA(10) => W_DATA(10),
        W_DATA(9) => W_DATA(9), W_DATA(8) => W_DATA(8), W_DATA(7)
         => W_DATA(7), W_DATA(6) => W_DATA(6), W_DATA(5) =>
        W_DATA(5), W_DATA(4) => W_DATA(4), W_DATA(3) => W_DATA(3),
        W_DATA(2) => W_DATA(2), W_DATA(1) => W_DATA(1), W_DATA(0)
         => W_DATA(0), W_EN => \BLKZ0[1]\, ACCESS_BUSY =>
        \BUSY[1][0]\, R_DATA(11) => \R_DATA_TEMPR1[11]\,
        R_DATA(10) => \R_DATA_TEMPR1[10]\, R_DATA(9) =>
        \R_DATA_TEMPR1[9]\, R_DATA(8) => \R_DATA_TEMPR1[8]\,
        R_DATA(7) => \R_DATA_TEMPR1[7]\, R_DATA(6) =>
        \R_DATA_TEMPR1[6]\, R_DATA(5) => \R_DATA_TEMPR1[5]\,
        R_DATA(4) => \R_DATA_TEMPR1[4]\, R_DATA(3) =>
        \R_DATA_TEMPR1[3]\, R_DATA(2) => \R_DATA_TEMPR1[2]\,
        R_DATA(1) => \R_DATA_TEMPR1[1]\, R_DATA(0) =>
        \R_DATA_TEMPR1[0]\);

    \OR2_R_DATA[4]\ : OR2
      port map(A => \R_DATA_TEMPR0[4]\, B => \R_DATA_TEMPR1[4]\,
        Y => R_DATA(4));

    g5_uram_12x128_R0C0 : RAM64x12
      port map(BLK_EN => \BLKX0[0]\, BUSY_FB => \GND\, R_ADDR(5)
         => R_ADDR(5), R_ADDR(4) => R_ADDR(4), R_ADDR(3) =>
        R_ADDR(3), R_ADDR(2) => R_ADDR(2), R_ADDR(1) => R_ADDR(1),
        R_ADDR(0) => R_ADDR(0), R_ADDR_AD_N => \VCC\, R_ADDR_AL_N
         => R_ADDR_AL_N, R_ADDR_BYPASS => \GND\, R_ADDR_EN =>
        R_ADDR_EN, R_ADDR_SD => \GND\, R_ADDR_SL_N => R_ADDR_SL_N,
        R_CLK => CLK, R_DATA_AD_N => \VCC\, R_DATA_AL_N =>
        R_DATA_AL_N, R_DATA_BYPASS => \GND\, R_DATA_EN =>
        R_DOUT_EN, R_DATA_SD => \GND\, R_DATA_SL_N => R_DATA_SL_N,
        W_ADDR(5) => W_ADDR(5), W_ADDR(4) => W_ADDR(4), W_ADDR(3)
         => W_ADDR(3), W_ADDR(2) => W_ADDR(2), W_ADDR(1) =>
        W_ADDR(1), W_ADDR(0) => W_ADDR(0), W_CLK => CLK,
        W_DATA(11) => W_DATA(11), W_DATA(10) => W_DATA(10),
        W_DATA(9) => W_DATA(9), W_DATA(8) => W_DATA(8), W_DATA(7)
         => W_DATA(7), W_DATA(6) => W_DATA(6), W_DATA(5) =>
        W_DATA(5), W_DATA(4) => W_DATA(4), W_DATA(3) => W_DATA(3),
        W_DATA(2) => W_DATA(2), W_DATA(1) => W_DATA(1), W_DATA(0)
         => W_DATA(0), W_EN => \BLKZ0[0]\, ACCESS_BUSY =>
        \BUSY[0][0]\, R_DATA(11) => \R_DATA_TEMPR0[11]\,
        R_DATA(10) => \R_DATA_TEMPR0[10]\, R_DATA(9) =>
        \R_DATA_TEMPR0[9]\, R_DATA(8) => \R_DATA_TEMPR0[8]\,
        R_DATA(7) => \R_DATA_TEMPR0[7]\, R_DATA(6) =>
        \R_DATA_TEMPR0[6]\, R_DATA(5) => \R_DATA_TEMPR0[5]\,
        R_DATA(4) => \R_DATA_TEMPR0[4]\, R_DATA(3) =>
        \R_DATA_TEMPR0[3]\, R_DATA(2) => \R_DATA_TEMPR0[2]\,
        R_DATA(1) => \R_DATA_TEMPR0[1]\, R_DATA(0) =>
        \R_DATA_TEMPR0[0]\);

    \OR2_R_DATA[3]\ : OR2
      port map(A => \R_DATA_TEMPR0[3]\, B => \R_DATA_TEMPR1[3]\,
        Y => R_DATA(3));

    \CFG2_BLKX0[1]\ : CFG2
      generic map(INIT => x"8")

      port map(A => R_ADDR(6), B => \VCC\, Y => \BLKX0[1]\);

    \OR2_R_DATA[10]\ : OR2
      port map(A => \R_DATA_TEMPR0[10]\, B => \R_DATA_TEMPR1[10]\,
        Y => R_DATA(10));

    \OR2_R_DATA[5]\ : OR2
      port map(A => \R_DATA_TEMPR0[5]\, B => \R_DATA_TEMPR1[5]\,
        Y => R_DATA(5));

    \CFG2_BLKX0[0]\ : CFG2
      generic map(INIT => x"4")

      port map(A => R_ADDR(6), B => \VCC\, Y => \BLKX0[0]\);

    \OR2_R_DATA[0]\ : OR2
      port map(A => \R_DATA_TEMPR0[0]\, B => \R_DATA_TEMPR1[0]\,
        Y => R_DATA(0));

    \OR2_R_DATA[11]\ : OR2
      port map(A => \R_DATA_TEMPR0[11]\, B => \R_DATA_TEMPR1[11]\,
        Y => R_DATA(11));

    \OR2_R_DATA[8]\ : OR2
      port map(A => \R_DATA_TEMPR0[8]\, B => \R_DATA_TEMPR1[8]\,
        Y => R_DATA(8));

    \OR2_R_DATA[2]\ : OR2
      port map(A => \R_DATA_TEMPR0[2]\, B => \R_DATA_TEMPR1[2]\,
        Y => R_DATA(2));

    \OR2_R_DATA[7]\ : OR2
      port map(A => \R_DATA_TEMPR0[7]\, B => \R_DATA_TEMPR1[7]\,
        Y => R_DATA(7));

    \CFG2_BLKZ0[1]\ : CFG2
      generic map(INIT => x"8")

      port map(A => W_ADDR(6), B => W_EN, Y => \BLKZ0[1]\);

    \OR2_R_DATA[9]\ : OR2
      port map(A => \R_DATA_TEMPR0[9]\, B => \R_DATA_TEMPR1[9]\,
        Y => R_DATA(9));

    GND_power_inst1 : GND
      port map( Y => GND_power_net1);

    VCC_power_inst1 : VCC
      port map( Y => VCC_power_net1);


end DEF_ARCH;


--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
library polarfire;
use polarfire.all;

entity g5_uram12x192 is
    port( R_DATA      : out   std_logic_vector(11 downto 0);
          W_DATA      : in    std_logic_vector(11 downto 0);
          R_ADDR      : in    std_logic_vector(7 downto 0);
          W_ADDR      : in    std_logic_vector(7 downto 0);
          R_ADDR_AL_N : in    std_logic;
          R_DATA_AL_N : in    std_logic;
          R_ADDR_SL_N : in    std_logic;
          R_DATA_SL_N : in    std_logic;
          R_ADDR_EN   : in    std_logic;
          R_DOUT_EN   : in    std_logic;
          CLK         : in    std_logic;
          W_EN        : in    std_logic
        );
end g5_uram12x192;

architecture DEF_ARCH of g5_uram12x192 is
  component OR3
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CFG3
    generic (INIT:std_logic_vector(7 downto 0) := x"00");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component RAM64x12
    port( BLK_EN        : in    std_logic := 'U';
          BUSY_FB       : in    std_logic := 'U';
          R_ADDR        : in    std_logic_vector(5 downto 0) := (others => 'U');
          R_ADDR_AD_N   : in    std_logic := 'U';
          R_ADDR_AL_N   : in    std_logic := 'U';
          R_ADDR_BYPASS : in    std_logic := 'U';
          R_ADDR_EN     : in    std_logic := 'U';
          R_ADDR_SD     : in    std_logic := 'U';
          R_ADDR_SL_N   : in    std_logic := 'U';
          R_CLK         : in    std_logic := 'U';
          R_DATA_AD_N   : in    std_logic := 'U';
          R_DATA_AL_N   : in    std_logic := 'U';
          R_DATA_BYPASS : in    std_logic := 'U';
          R_DATA_EN     : in    std_logic := 'U';
          R_DATA_SD     : in    std_logic := 'U';
          R_DATA_SL_N   : in    std_logic := 'U';
          W_ADDR        : in    std_logic_vector(5 downto 0) := (others => 'U');
          W_CLK         : in    std_logic := 'U';
          W_DATA        : in    std_logic_vector(11 downto 0) := (others => 'U');
          W_EN          : in    std_logic := 'U';
          ACCESS_BUSY   : out   std_logic;
          R_DATA        : out   std_logic_vector(11 downto 0)
        );
  end component;

  component GND
    port(Y : out std_logic);
  end component;

  component VCC
    port(Y : out std_logic);
  end component;

    signal \R_DATA_TEMPR0[0]\, \R_DATA_TEMPR1[0]\,
        \R_DATA_TEMPR2[0]\, \R_DATA_TEMPR0[1]\,
        \R_DATA_TEMPR1[1]\, \R_DATA_TEMPR2[1]\,
        \R_DATA_TEMPR0[2]\, \R_DATA_TEMPR1[2]\,
        \R_DATA_TEMPR2[2]\, \R_DATA_TEMPR0[3]\,
        \R_DATA_TEMPR1[3]\, \R_DATA_TEMPR2[3]\,
        \R_DATA_TEMPR0[4]\, \R_DATA_TEMPR1[4]\,
        \R_DATA_TEMPR2[4]\, \R_DATA_TEMPR0[5]\,
        \R_DATA_TEMPR1[5]\, \R_DATA_TEMPR2[5]\,
        \R_DATA_TEMPR0[6]\, \R_DATA_TEMPR1[6]\,
        \R_DATA_TEMPR2[6]\, \R_DATA_TEMPR0[7]\,
        \R_DATA_TEMPR1[7]\, \R_DATA_TEMPR2[7]\,
        \R_DATA_TEMPR0[8]\, \R_DATA_TEMPR1[8]\,
        \R_DATA_TEMPR2[8]\, \R_DATA_TEMPR0[9]\,
        \R_DATA_TEMPR1[9]\, \R_DATA_TEMPR2[9]\,
        \R_DATA_TEMPR0[10]\, \R_DATA_TEMPR1[10]\,
        \R_DATA_TEMPR2[10]\, \R_DATA_TEMPR0[11]\,
        \R_DATA_TEMPR1[11]\, \R_DATA_TEMPR2[11]\, \BLKX0[0]\,
        \BLKX0[1]\, \BLKX0[2]\, \BLKZ0[0]\, \BLKZ0[1]\,
        \BLKZ0[2]\, \BUSY[0][0]\, \BUSY[1][0]\, \BUSY[2][0]\,
        \VCC\, \GND\, ADLIB_VCC : std_logic;
    signal GND_power_net1 : std_logic;
    signal VCC_power_net1 : std_logic;

begin

    \GND\ <= GND_power_net1;
    \VCC\ <= VCC_power_net1;
    ADLIB_VCC <= VCC_power_net1;

    \OR3_R_DATA[9]\ : OR3
      port map(A => \R_DATA_TEMPR0[9]\, B => \R_DATA_TEMPR1[9]\,
        C => \R_DATA_TEMPR2[9]\, Y => R_DATA(9));

    \CFG3_BLKX0[2]\ : CFG3
      generic map(INIT => x"20")

      port map(A => R_ADDR(7), B => R_ADDR(6), C => \VCC\, Y =>
        \BLKX0[2]\);

    g5_uram_12x192_R2C0 : RAM64x12
      port map(BLK_EN => \BLKX0[2]\, BUSY_FB => \GND\, R_ADDR(5)
         => R_ADDR(5), R_ADDR(4) => R_ADDR(4), R_ADDR(3) =>
        R_ADDR(3), R_ADDR(2) => R_ADDR(2), R_ADDR(1) => R_ADDR(1),
        R_ADDR(0) => R_ADDR(0), R_ADDR_AD_N => \VCC\, R_ADDR_AL_N
         => R_ADDR_AL_N, R_ADDR_BYPASS => \GND\, R_ADDR_EN =>
        R_ADDR_EN, R_ADDR_SD => \GND\, R_ADDR_SL_N => R_ADDR_SL_N,
        R_CLK => CLK, R_DATA_AD_N => \VCC\, R_DATA_AL_N =>
        R_DATA_AL_N, R_DATA_BYPASS => \GND\, R_DATA_EN =>
        R_DOUT_EN, R_DATA_SD => \GND\, R_DATA_SL_N => R_DATA_SL_N,
        W_ADDR(5) => W_ADDR(5), W_ADDR(4) => W_ADDR(4), W_ADDR(3)
         => W_ADDR(3), W_ADDR(2) => W_ADDR(2), W_ADDR(1) =>
        W_ADDR(1), W_ADDR(0) => W_ADDR(0), W_CLK => CLK,
        W_DATA(11) => W_DATA(11), W_DATA(10) => W_DATA(10),
        W_DATA(9) => W_DATA(9), W_DATA(8) => W_DATA(8), W_DATA(7)
         => W_DATA(7), W_DATA(6) => W_DATA(6), W_DATA(5) =>
        W_DATA(5), W_DATA(4) => W_DATA(4), W_DATA(3) => W_DATA(3),
        W_DATA(2) => W_DATA(2), W_DATA(1) => W_DATA(1), W_DATA(0)
         => W_DATA(0), W_EN => \BLKZ0[2]\, ACCESS_BUSY =>
        \BUSY[2][0]\, R_DATA(11) => \R_DATA_TEMPR2[11]\,
        R_DATA(10) => \R_DATA_TEMPR2[10]\, R_DATA(9) =>
        \R_DATA_TEMPR2[9]\, R_DATA(8) => \R_DATA_TEMPR2[8]\,
        R_DATA(7) => \R_DATA_TEMPR2[7]\, R_DATA(6) =>
        \R_DATA_TEMPR2[6]\, R_DATA(5) => \R_DATA_TEMPR2[5]\,
        R_DATA(4) => \R_DATA_TEMPR2[4]\, R_DATA(3) =>
        \R_DATA_TEMPR2[3]\, R_DATA(2) => \R_DATA_TEMPR2[2]\,
        R_DATA(1) => \R_DATA_TEMPR2[1]\, R_DATA(0) =>
        \R_DATA_TEMPR2[0]\);

    g5_uram_12x192_R1C0 : RAM64x12
      port map(BLK_EN => \BLKX0[1]\, BUSY_FB => \GND\, R_ADDR(5)
         => R_ADDR(5), R_ADDR(4) => R_ADDR(4), R_ADDR(3) =>
        R_ADDR(3), R_ADDR(2) => R_ADDR(2), R_ADDR(1) => R_ADDR(1),
        R_ADDR(0) => R_ADDR(0), R_ADDR_AD_N => \VCC\, R_ADDR_AL_N
         => R_ADDR_AL_N, R_ADDR_BYPASS => \GND\, R_ADDR_EN =>
        R_ADDR_EN, R_ADDR_SD => \GND\, R_ADDR_SL_N => R_ADDR_SL_N,
        R_CLK => CLK, R_DATA_AD_N => \VCC\, R_DATA_AL_N =>
        R_DATA_AL_N, R_DATA_BYPASS => \GND\, R_DATA_EN =>
        R_DOUT_EN, R_DATA_SD => \GND\, R_DATA_SL_N => R_DATA_SL_N,
        W_ADDR(5) => W_ADDR(5), W_ADDR(4) => W_ADDR(4), W_ADDR(3)
         => W_ADDR(3), W_ADDR(2) => W_ADDR(2), W_ADDR(1) =>
        W_ADDR(1), W_ADDR(0) => W_ADDR(0), W_CLK => CLK,
        W_DATA(11) => W_DATA(11), W_DATA(10) => W_DATA(10),
        W_DATA(9) => W_DATA(9), W_DATA(8) => W_DATA(8), W_DATA(7)
         => W_DATA(7), W_DATA(6) => W_DATA(6), W_DATA(5) =>
        W_DATA(5), W_DATA(4) => W_DATA(4), W_DATA(3) => W_DATA(3),
        W_DATA(2) => W_DATA(2), W_DATA(1) => W_DATA(1), W_DATA(0)
         => W_DATA(0), W_EN => \BLKZ0[1]\, ACCESS_BUSY =>
        \BUSY[1][0]\, R_DATA(11) => \R_DATA_TEMPR1[11]\,
        R_DATA(10) => \R_DATA_TEMPR1[10]\, R_DATA(9) =>
        \R_DATA_TEMPR1[9]\, R_DATA(8) => \R_DATA_TEMPR1[8]\,
        R_DATA(7) => \R_DATA_TEMPR1[7]\, R_DATA(6) =>
        \R_DATA_TEMPR1[6]\, R_DATA(5) => \R_DATA_TEMPR1[5]\,
        R_DATA(4) => \R_DATA_TEMPR1[4]\, R_DATA(3) =>
        \R_DATA_TEMPR1[3]\, R_DATA(2) => \R_DATA_TEMPR1[2]\,
        R_DATA(1) => \R_DATA_TEMPR1[1]\, R_DATA(0) =>
        \R_DATA_TEMPR1[0]\);

    \OR3_R_DATA[1]\ : OR3
      port map(A => \R_DATA_TEMPR0[1]\, B => \R_DATA_TEMPR1[1]\,
        C => \R_DATA_TEMPR2[1]\, Y => R_DATA(1));

    \OR3_R_DATA[6]\ : OR3
      port map(A => \R_DATA_TEMPR0[6]\, B => \R_DATA_TEMPR1[6]\,
        C => \R_DATA_TEMPR2[6]\, Y => R_DATA(6));

    \CFG3_BLKX0[1]\ : CFG3
      generic map(INIT => x"40")

      port map(A => R_ADDR(7), B => R_ADDR(6), C => \VCC\, Y =>
        \BLKX0[1]\);

    g5_uram_12x192_R0C0 : RAM64x12
      port map(BLK_EN => \BLKX0[0]\, BUSY_FB => \GND\, R_ADDR(5)
         => R_ADDR(5), R_ADDR(4) => R_ADDR(4), R_ADDR(3) =>
        R_ADDR(3), R_ADDR(2) => R_ADDR(2), R_ADDR(1) => R_ADDR(1),
        R_ADDR(0) => R_ADDR(0), R_ADDR_AD_N => \VCC\, R_ADDR_AL_N
         => R_ADDR_AL_N, R_ADDR_BYPASS => \GND\, R_ADDR_EN =>
        R_ADDR_EN, R_ADDR_SD => \GND\, R_ADDR_SL_N => R_ADDR_SL_N,
        R_CLK => CLK, R_DATA_AD_N => \VCC\, R_DATA_AL_N =>
        R_DATA_AL_N, R_DATA_BYPASS => \GND\, R_DATA_EN =>
        R_DOUT_EN, R_DATA_SD => \GND\, R_DATA_SL_N => R_DATA_SL_N,
        W_ADDR(5) => W_ADDR(5), W_ADDR(4) => W_ADDR(4), W_ADDR(3)
         => W_ADDR(3), W_ADDR(2) => W_ADDR(2), W_ADDR(1) =>
        W_ADDR(1), W_ADDR(0) => W_ADDR(0), W_CLK => CLK,
        W_DATA(11) => W_DATA(11), W_DATA(10) => W_DATA(10),
        W_DATA(9) => W_DATA(9), W_DATA(8) => W_DATA(8), W_DATA(7)
         => W_DATA(7), W_DATA(6) => W_DATA(6), W_DATA(5) =>
        W_DATA(5), W_DATA(4) => W_DATA(4), W_DATA(3) => W_DATA(3),
        W_DATA(2) => W_DATA(2), W_DATA(1) => W_DATA(1), W_DATA(0)
         => W_DATA(0), W_EN => \BLKZ0[0]\, ACCESS_BUSY =>
        \BUSY[0][0]\, R_DATA(11) => \R_DATA_TEMPR0[11]\,
        R_DATA(10) => \R_DATA_TEMPR0[10]\, R_DATA(9) =>
        \R_DATA_TEMPR0[9]\, R_DATA(8) => \R_DATA_TEMPR0[8]\,
        R_DATA(7) => \R_DATA_TEMPR0[7]\, R_DATA(6) =>
        \R_DATA_TEMPR0[6]\, R_DATA(5) => \R_DATA_TEMPR0[5]\,
        R_DATA(4) => \R_DATA_TEMPR0[4]\, R_DATA(3) =>
        \R_DATA_TEMPR0[3]\, R_DATA(2) => \R_DATA_TEMPR0[2]\,
        R_DATA(1) => \R_DATA_TEMPR0[1]\, R_DATA(0) =>
        \R_DATA_TEMPR0[0]\);

    \OR3_R_DATA[4]\ : OR3
      port map(A => \R_DATA_TEMPR0[4]\, B => \R_DATA_TEMPR1[4]\,
        C => \R_DATA_TEMPR2[4]\, Y => R_DATA(4));

    \OR3_R_DATA[3]\ : OR3
      port map(A => \R_DATA_TEMPR0[3]\, B => \R_DATA_TEMPR1[3]\,
        C => \R_DATA_TEMPR2[3]\, Y => R_DATA(3));

    \OR3_R_DATA[11]\ : OR3
      port map(A => \R_DATA_TEMPR0[11]\, B => \R_DATA_TEMPR1[11]\,
        C => \R_DATA_TEMPR2[11]\, Y => R_DATA(11));

    \CFG3_BLKZ0[0]\ : CFG3
      generic map(INIT => x"10")

      port map(A => W_ADDR(7), B => W_ADDR(6), C => W_EN, Y =>
        \BLKZ0[0]\);

    \OR3_R_DATA[5]\ : OR3
      port map(A => \R_DATA_TEMPR0[5]\, B => \R_DATA_TEMPR1[5]\,
        C => \R_DATA_TEMPR2[5]\, Y => R_DATA(5));

    \CFG3_BLKZ0[2]\ : CFG3
      generic map(INIT => x"20")

      port map(A => W_ADDR(7), B => W_ADDR(6), C => W_EN, Y =>
        \BLKZ0[2]\);

    \OR3_R_DATA[0]\ : OR3
      port map(A => \R_DATA_TEMPR0[0]\, B => \R_DATA_TEMPR1[0]\,
        C => \R_DATA_TEMPR2[0]\, Y => R_DATA(0));

    \OR3_R_DATA[8]\ : OR3
      port map(A => \R_DATA_TEMPR0[8]\, B => \R_DATA_TEMPR1[8]\,
        C => \R_DATA_TEMPR2[8]\, Y => R_DATA(8));

    \OR3_R_DATA[2]\ : OR3
      port map(A => \R_DATA_TEMPR0[2]\, B => \R_DATA_TEMPR1[2]\,
        C => \R_DATA_TEMPR2[2]\, Y => R_DATA(2));

    \CFG3_BLKZ0[1]\ : CFG3
      generic map(INIT => x"40")

      port map(A => W_ADDR(7), B => W_ADDR(6), C => W_EN, Y =>
        \BLKZ0[1]\);

    \OR3_R_DATA[10]\ : OR3
      port map(A => \R_DATA_TEMPR0[10]\, B => \R_DATA_TEMPR1[10]\,
        C => \R_DATA_TEMPR2[10]\, Y => R_DATA(10));

    \OR3_R_DATA[7]\ : OR3
      port map(A => \R_DATA_TEMPR0[7]\, B => \R_DATA_TEMPR1[7]\,
        C => \R_DATA_TEMPR2[7]\, Y => R_DATA(7));

    \CFG3_BLKX0[0]\ : CFG3
      generic map(INIT => x"10")

      port map(A => R_ADDR(7), B => R_ADDR(6), C => \VCC\, Y =>
        \BLKX0[0]\);

    GND_power_inst1 : GND
      port map( Y => GND_power_net1);

    VCC_power_inst1 : VCC
      port map( Y => VCC_power_net1);

end DEF_ARCH;



-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
library polarfire;
use polarfire.all;

entity g5_uram18x64 is
    port( R_DATA      : out   std_logic_vector(17 downto 0);
          W_DATA      : in    std_logic_vector(17 downto 0);
          R_ADDR      : in    std_logic_vector(5 downto 0);
          W_ADDR      : in    std_logic_vector(5 downto 0);
          R_ADDR_AL_N : in    std_logic;
          R_DATA_AL_N : in    std_logic;
          R_ADDR_SL_N : in    std_logic;
          R_DATA_SL_N : in    std_logic;
          R_ADDR_EN   : in    std_logic;
          R_DOUT_EN   : in    std_logic;
          CLK         : in    std_logic;
          W_EN        : in    std_logic
        );
end g5_uram18x64;

architecture DEF_ARCH of g5_uram18x64 is
  component RAM64x12
    port( BLK_EN        : in    std_logic := 'U';
          BUSY_FB       : in    std_logic := 'U';
          R_ADDR        : in    std_logic_vector(5 downto 0) := (others => 'U');
          R_ADDR_AD_N   : in    std_logic := 'U';
          R_ADDR_AL_N   : in    std_logic := 'U';
          R_ADDR_BYPASS : in    std_logic := 'U';
          R_ADDR_EN     : in    std_logic := 'U';
          R_ADDR_SD     : in    std_logic := 'U';
          R_ADDR_SL_N   : in    std_logic := 'U';
          R_CLK         : in    std_logic := 'U';
          R_DATA_AD_N   : in    std_logic := 'U';
          R_DATA_AL_N   : in    std_logic := 'U';
          R_DATA_BYPASS : in    std_logic := 'U';
          R_DATA_EN     : in    std_logic := 'U';
          R_DATA_SD     : in    std_logic := 'U';
          R_DATA_SL_N   : in    std_logic := 'U';
          W_ADDR        : in    std_logic_vector(5 downto 0) := (others => 'U');
          W_CLK         : in    std_logic := 'U';
          W_DATA        : in    std_logic_vector(11 downto 0) := (others => 'U');
          W_EN          : in    std_logic := 'U';
          ACCESS_BUSY   : out   std_logic;
          R_DATA        : out   std_logic_vector(11 downto 0)
        );
  end component;

  component GND
    port(Y : out std_logic);
  end component;

  component VCC
    port(Y : out std_logic);
  end component;

    signal \BUSY[0][0]\, \BUSY[0][1]\, \VCC\, \GND\, ADLIB_VCC
         : std_logic;
    signal GND_power_net1 : std_logic;
    signal VCC_power_net1 : std_logic;
    signal nc6, nc2, nc5, nc4, nc3, nc1 : std_logic;

begin

    \GND\ <= GND_power_net1;
    \VCC\ <= VCC_power_net1;
    ADLIB_VCC <= VCC_power_net1;

    g5_uram_18x64_R0C0 : RAM64x12
      port map(BLK_EN => \VCC\, BUSY_FB => \GND\, R_ADDR(5) =>
        R_ADDR(5), R_ADDR(4) => R_ADDR(4), R_ADDR(3) => R_ADDR(3),
        R_ADDR(2) => R_ADDR(2), R_ADDR(1) => R_ADDR(1), R_ADDR(0)
         => R_ADDR(0), R_ADDR_AD_N => \VCC\, R_ADDR_AL_N =>
        R_ADDR_AL_N, R_ADDR_BYPASS => \GND\, R_ADDR_EN =>
        R_ADDR_EN, R_ADDR_SD => \GND\, R_ADDR_SL_N => R_ADDR_SL_N,
        R_CLK => CLK, R_DATA_AD_N => \VCC\, R_DATA_AL_N =>
        R_DATA_AL_N, R_DATA_BYPASS => \GND\, R_DATA_EN =>
        R_DOUT_EN, R_DATA_SD => \GND\, R_DATA_SL_N => R_DATA_SL_N,
        W_ADDR(5) => W_ADDR(5), W_ADDR(4) => W_ADDR(4), W_ADDR(3)
         => W_ADDR(3), W_ADDR(2) => W_ADDR(2), W_ADDR(1) =>
        W_ADDR(1), W_ADDR(0) => W_ADDR(0), W_CLK => CLK,
        W_DATA(11) => \GND\, W_DATA(10) => \GND\, W_DATA(9) =>
        \GND\, W_DATA(8) => W_DATA(8), W_DATA(7) => W_DATA(7),
        W_DATA(6) => W_DATA(6), W_DATA(5) => W_DATA(5), W_DATA(4)
         => W_DATA(4), W_DATA(3) => W_DATA(3), W_DATA(2) =>
        W_DATA(2), W_DATA(1) => W_DATA(1), W_DATA(0) => W_DATA(0),
        W_EN => W_EN, ACCESS_BUSY => \BUSY[0][0]\, R_DATA(11) =>
        nc6, R_DATA(10) => nc2, R_DATA(9) => nc5, R_DATA(8) =>
        R_DATA(8), R_DATA(7) => R_DATA(7), R_DATA(6) => R_DATA(6),
        R_DATA(5) => R_DATA(5), R_DATA(4) => R_DATA(4), R_DATA(3)
         => R_DATA(3), R_DATA(2) => R_DATA(2), R_DATA(1) =>
        R_DATA(1), R_DATA(0) => R_DATA(0));

    g5_uram_18x64_R0C1 : RAM64x12
      port map(BLK_EN => \VCC\, BUSY_FB => \GND\, R_ADDR(5) =>
        R_ADDR(5), R_ADDR(4) => R_ADDR(4), R_ADDR(3) => R_ADDR(3),
        R_ADDR(2) => R_ADDR(2), R_ADDR(1) => R_ADDR(1), R_ADDR(0)
         => R_ADDR(0), R_ADDR_AD_N => \VCC\, R_ADDR_AL_N =>
        R_ADDR_AL_N, R_ADDR_BYPASS => \GND\, R_ADDR_EN =>
        R_ADDR_EN, R_ADDR_SD => \GND\, R_ADDR_SL_N => R_ADDR_SL_N,
        R_CLK => CLK, R_DATA_AD_N => \VCC\, R_DATA_AL_N =>
        R_DATA_AL_N, R_DATA_BYPASS => \GND\, R_DATA_EN =>
        R_DOUT_EN, R_DATA_SD => \GND\, R_DATA_SL_N => R_DATA_SL_N,
        W_ADDR(5) => W_ADDR(5), W_ADDR(4) => W_ADDR(4), W_ADDR(3)
         => W_ADDR(3), W_ADDR(2) => W_ADDR(2), W_ADDR(1) =>
        W_ADDR(1), W_ADDR(0) => W_ADDR(0), W_CLK => CLK,
        W_DATA(11) => \GND\, W_DATA(10) => \GND\, W_DATA(9) =>
        \GND\, W_DATA(8) => W_DATA(17), W_DATA(7) => W_DATA(16),
        W_DATA(6) => W_DATA(15), W_DATA(5) => W_DATA(14),
        W_DATA(4) => W_DATA(13), W_DATA(3) => W_DATA(12),
        W_DATA(2) => W_DATA(11), W_DATA(1) => W_DATA(10),
        W_DATA(0) => W_DATA(9), W_EN => W_EN, ACCESS_BUSY =>
        \BUSY[0][1]\, R_DATA(11) => nc4, R_DATA(10) => nc3,
        R_DATA(9) => nc1, R_DATA(8) => R_DATA(17), R_DATA(7) =>
        R_DATA(16), R_DATA(6) => R_DATA(15), R_DATA(5) =>
        R_DATA(14), R_DATA(4) => R_DATA(13), R_DATA(3) =>
        R_DATA(12), R_DATA(2) => R_DATA(11), R_DATA(1) =>
        R_DATA(10), R_DATA(0) => R_DATA(9));

    GND_power_inst1 : GND
      port map( Y => GND_power_net1);

    VCC_power_inst1 : VCC
      port map( Y => VCC_power_net1);


end DEF_ARCH;


-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
library polarfire;
use polarfire.all;

entity g5_uram18x128 is

    port( R_DATA      : out   std_logic_vector(17 downto 0);
          W_DATA      : in    std_logic_vector(17 downto 0);
          R_ADDR      : in    std_logic_vector(6 downto 0);
          W_ADDR      : in    std_logic_vector(6 downto 0);
          R_ADDR_AL_N : in    std_logic;
          R_DATA_AL_N : in    std_logic;
          R_ADDR_SL_N : in    std_logic;
          R_DATA_SL_N : in    std_logic;
          R_ADDR_EN   : in    std_logic;
          R_DOUT_EN   : in    std_logic;
          CLK         : in    std_logic;
          W_EN        : in    std_logic
        );

end g5_uram18x128;

architecture DEF_ARCH of g5_uram18x128 is

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component RAM64x12
    port( BLK_EN        : in    std_logic := 'U';
          BUSY_FB       : in    std_logic := 'U';
          R_ADDR        : in    std_logic_vector(5 downto 0) := (others => 'U');
          R_ADDR_AD_N   : in    std_logic := 'U';
          R_ADDR_AL_N   : in    std_logic := 'U';
          R_ADDR_BYPASS : in    std_logic := 'U';
          R_ADDR_EN     : in    std_logic := 'U';
          R_ADDR_SD     : in    std_logic := 'U';
          R_ADDR_SL_N   : in    std_logic := 'U';
          R_CLK         : in    std_logic := 'U';
          R_DATA_AD_N   : in    std_logic := 'U';
          R_DATA_AL_N   : in    std_logic := 'U';
          R_DATA_BYPASS : in    std_logic := 'U';
          R_DATA_EN     : in    std_logic := 'U';
          R_DATA_SD     : in    std_logic := 'U';
          R_DATA_SL_N   : in    std_logic := 'U';
          W_ADDR        : in    std_logic_vector(5 downto 0) := (others => 'U');
          W_CLK         : in    std_logic := 'U';
          W_DATA        : in    std_logic_vector(11 downto 0) := (others => 'U');
          W_EN          : in    std_logic := 'U';
          ACCESS_BUSY   : out   std_logic;
          R_DATA        : out   std_logic_vector(11 downto 0)
        );
  end component;

  component GND
    port(Y : out std_logic);
  end component;

  component VCC
    port(Y : out std_logic);
  end component;

    signal \R_DATA_TEMPR0[0]\, \R_DATA_TEMPR1[0]\,
        \R_DATA_TEMPR0[1]\, \R_DATA_TEMPR1[1]\,
        \R_DATA_TEMPR0[2]\, \R_DATA_TEMPR1[2]\,
        \R_DATA_TEMPR0[3]\, \R_DATA_TEMPR1[3]\,
        \R_DATA_TEMPR0[4]\, \R_DATA_TEMPR1[4]\,
        \R_DATA_TEMPR0[5]\, \R_DATA_TEMPR1[5]\,
        \R_DATA_TEMPR0[6]\, \R_DATA_TEMPR1[6]\,
        \R_DATA_TEMPR0[7]\, \R_DATA_TEMPR1[7]\,
        \R_DATA_TEMPR0[8]\, \R_DATA_TEMPR1[8]\,
        \R_DATA_TEMPR0[9]\, \R_DATA_TEMPR1[9]\,
        \R_DATA_TEMPR0[10]\, \R_DATA_TEMPR1[10]\,
        \R_DATA_TEMPR0[11]\, \R_DATA_TEMPR1[11]\,
        \R_DATA_TEMPR0[12]\, \R_DATA_TEMPR1[12]\,
        \R_DATA_TEMPR0[13]\, \R_DATA_TEMPR1[13]\,
        \R_DATA_TEMPR0[14]\, \R_DATA_TEMPR1[14]\,
        \R_DATA_TEMPR0[15]\, \R_DATA_TEMPR1[15]\,
        \R_DATA_TEMPR0[16]\, \R_DATA_TEMPR1[16]\,
        \R_DATA_TEMPR0[17]\, \R_DATA_TEMPR1[17]\, \BLKX0[0]\,
        \BLKX0[1]\, \BLKZ0[0]\, \BLKZ0[1]\, \BUSY[0][0]\,
        \BUSY[0][1]\, \BUSY[1][0]\, \BUSY[1][1]\, \VCC\, \GND\,
        ADLIB_VCC : std_logic;
    signal GND_power_net1 : std_logic;
    signal VCC_power_net1 : std_logic;
    signal nc7, nc6, nc12, nc5, nc1, nc9, nc8, nc4, nc11, nc3,
        nc10, nc2 : std_logic;

begin

    \GND\ <= GND_power_net1;
    \VCC\ <= VCC_power_net1;
    ADLIB_VCC <= VCC_power_net1;

    \CFG2_BLKZ0[0]\ : CFG2
      generic map(INIT => x"4")

      port map(A => W_ADDR(6), B => W_EN, Y => \BLKZ0[0]\);

    \OR2_R_DATA[1]\ : OR2
      port map(A => \R_DATA_TEMPR0[1]\, B => \R_DATA_TEMPR1[1]\,
        Y => R_DATA(1));

    \OR2_R_DATA[6]\ : OR2
      port map(A => \R_DATA_TEMPR0[6]\, B => \R_DATA_TEMPR1[6]\,
        Y => R_DATA(6));

    g5_uram_18x128_R1C0 : RAM64x12
      port map(BLK_EN => \BLKX0[1]\, BUSY_FB => \GND\, R_ADDR(5)
         => R_ADDR(5), R_ADDR(4) => R_ADDR(4), R_ADDR(3) =>
        R_ADDR(3), R_ADDR(2) => R_ADDR(2), R_ADDR(1) => R_ADDR(1),
        R_ADDR(0) => R_ADDR(0), R_ADDR_AD_N => \VCC\, R_ADDR_AL_N
         => R_ADDR_AL_N, R_ADDR_BYPASS => \GND\, R_ADDR_EN =>
        R_ADDR_EN, R_ADDR_SD => \GND\, R_ADDR_SL_N => R_ADDR_SL_N,
        R_CLK => CLK, R_DATA_AD_N => \VCC\, R_DATA_AL_N =>
        R_DATA_AL_N, R_DATA_BYPASS => \GND\, R_DATA_EN =>
        R_DOUT_EN, R_DATA_SD => \GND\, R_DATA_SL_N => R_DATA_SL_N,
        W_ADDR(5) => W_ADDR(5), W_ADDR(4) => W_ADDR(4), W_ADDR(3)
         => W_ADDR(3), W_ADDR(2) => W_ADDR(2), W_ADDR(1) =>
        W_ADDR(1), W_ADDR(0) => W_ADDR(0), W_CLK => CLK,
        W_DATA(11) => \GND\, W_DATA(10) => \GND\, W_DATA(9) =>
        \GND\, W_DATA(8) => W_DATA(8), W_DATA(7) => W_DATA(7),
        W_DATA(6) => W_DATA(6), W_DATA(5) => W_DATA(5), W_DATA(4)
         => W_DATA(4), W_DATA(3) => W_DATA(3), W_DATA(2) =>
        W_DATA(2), W_DATA(1) => W_DATA(1), W_DATA(0) => W_DATA(0),
        W_EN => \BLKZ0[1]\, ACCESS_BUSY => \BUSY[1][0]\,
        R_DATA(11) => nc7, R_DATA(10) => nc6, R_DATA(9) => nc12,
        R_DATA(8) => \R_DATA_TEMPR1[8]\, R_DATA(7) =>
        \R_DATA_TEMPR1[7]\, R_DATA(6) => \R_DATA_TEMPR1[6]\,
        R_DATA(5) => \R_DATA_TEMPR1[5]\, R_DATA(4) =>
        \R_DATA_TEMPR1[4]\, R_DATA(3) => \R_DATA_TEMPR1[3]\,
        R_DATA(2) => \R_DATA_TEMPR1[2]\, R_DATA(1) =>
        \R_DATA_TEMPR1[1]\, R_DATA(0) => \R_DATA_TEMPR1[0]\);

    \OR2_R_DATA[4]\ : OR2
      port map(A => \R_DATA_TEMPR0[4]\, B => \R_DATA_TEMPR1[4]\,
        Y => R_DATA(4));

    \OR2_R_DATA[13]\ : OR2
      port map(A => \R_DATA_TEMPR0[13]\, B => \R_DATA_TEMPR1[13]\,
        Y => R_DATA(13));

    g5_uram_18x128_R0C0 : RAM64x12
      port map(BLK_EN => \BLKX0[0]\, BUSY_FB => \GND\, R_ADDR(5)
         => R_ADDR(5), R_ADDR(4) => R_ADDR(4), R_ADDR(3) =>
        R_ADDR(3), R_ADDR(2) => R_ADDR(2), R_ADDR(1) => R_ADDR(1),
        R_ADDR(0) => R_ADDR(0), R_ADDR_AD_N => \VCC\, R_ADDR_AL_N
         => R_ADDR_AL_N, R_ADDR_BYPASS => \GND\, R_ADDR_EN =>
        R_ADDR_EN, R_ADDR_SD => \GND\, R_ADDR_SL_N => R_ADDR_SL_N,
        R_CLK => CLK, R_DATA_AD_N => \VCC\, R_DATA_AL_N =>
        R_DATA_AL_N, R_DATA_BYPASS => \GND\, R_DATA_EN =>
        R_DOUT_EN, R_DATA_SD => \GND\, R_DATA_SL_N => R_DATA_SL_N,
        W_ADDR(5) => W_ADDR(5), W_ADDR(4) => W_ADDR(4), W_ADDR(3)
         => W_ADDR(3), W_ADDR(2) => W_ADDR(2), W_ADDR(1) =>
        W_ADDR(1), W_ADDR(0) => W_ADDR(0), W_CLK => CLK,
        W_DATA(11) => \GND\, W_DATA(10) => \GND\, W_DATA(9) =>
        \GND\, W_DATA(8) => W_DATA(8), W_DATA(7) => W_DATA(7),
        W_DATA(6) => W_DATA(6), W_DATA(5) => W_DATA(5), W_DATA(4)
         => W_DATA(4), W_DATA(3) => W_DATA(3), W_DATA(2) =>
        W_DATA(2), W_DATA(1) => W_DATA(1), W_DATA(0) => W_DATA(0),
        W_EN => \BLKZ0[0]\, ACCESS_BUSY => \BUSY[0][0]\,
        R_DATA(11) => nc5, R_DATA(10) => nc1, R_DATA(9) => nc9,
        R_DATA(8) => \R_DATA_TEMPR0[8]\, R_DATA(7) =>
        \R_DATA_TEMPR0[7]\, R_DATA(6) => \R_DATA_TEMPR0[6]\,
        R_DATA(5) => \R_DATA_TEMPR0[5]\, R_DATA(4) =>
        \R_DATA_TEMPR0[4]\, R_DATA(3) => \R_DATA_TEMPR0[3]\,
        R_DATA(2) => \R_DATA_TEMPR0[2]\, R_DATA(1) =>
        \R_DATA_TEMPR0[1]\, R_DATA(0) => \R_DATA_TEMPR0[0]\);

    \OR2_R_DATA[3]\ : OR2
      port map(A => \R_DATA_TEMPR0[3]\, B => \R_DATA_TEMPR1[3]\,
        Y => R_DATA(3));

    \CFG2_BLKX0[1]\ : CFG2
      generic map(INIT => x"8")

      port map(A => R_ADDR(6), B => \VCC\, Y => \BLKX0[1]\);

    g5_uram_18x128_R1C1 : RAM64x12
      port map(BLK_EN => \BLKX0[1]\, BUSY_FB => \GND\, R_ADDR(5)
         => R_ADDR(5), R_ADDR(4) => R_ADDR(4), R_ADDR(3) =>
        R_ADDR(3), R_ADDR(2) => R_ADDR(2), R_ADDR(1) => R_ADDR(1),
        R_ADDR(0) => R_ADDR(0), R_ADDR_AD_N => \VCC\, R_ADDR_AL_N
         => R_ADDR_AL_N, R_ADDR_BYPASS => \GND\, R_ADDR_EN =>
        R_ADDR_EN, R_ADDR_SD => \GND\, R_ADDR_SL_N => R_ADDR_SL_N,
        R_CLK => CLK, R_DATA_AD_N => \VCC\, R_DATA_AL_N =>
        R_DATA_AL_N, R_DATA_BYPASS => \GND\, R_DATA_EN =>
        R_DOUT_EN, R_DATA_SD => \GND\, R_DATA_SL_N => R_DATA_SL_N,
        W_ADDR(5) => W_ADDR(5), W_ADDR(4) => W_ADDR(4), W_ADDR(3)
         => W_ADDR(3), W_ADDR(2) => W_ADDR(2), W_ADDR(1) =>
        W_ADDR(1), W_ADDR(0) => W_ADDR(0), W_CLK => CLK,
        W_DATA(11) => \GND\, W_DATA(10) => \GND\, W_DATA(9) =>
        \GND\, W_DATA(8) => W_DATA(17), W_DATA(7) => W_DATA(16),
        W_DATA(6) => W_DATA(15), W_DATA(5) => W_DATA(14),
        W_DATA(4) => W_DATA(13), W_DATA(3) => W_DATA(12),
        W_DATA(2) => W_DATA(11), W_DATA(1) => W_DATA(10),
        W_DATA(0) => W_DATA(9), W_EN => \BLKZ0[1]\, ACCESS_BUSY
         => \BUSY[1][1]\, R_DATA(11) => nc8, R_DATA(10) => nc4,
        R_DATA(9) => nc11, R_DATA(8) => \R_DATA_TEMPR1[17]\,
        R_DATA(7) => \R_DATA_TEMPR1[16]\, R_DATA(6) =>
        \R_DATA_TEMPR1[15]\, R_DATA(5) => \R_DATA_TEMPR1[14]\,
        R_DATA(4) => \R_DATA_TEMPR1[13]\, R_DATA(3) =>
        \R_DATA_TEMPR1[12]\, R_DATA(2) => \R_DATA_TEMPR1[11]\,
        R_DATA(1) => \R_DATA_TEMPR1[10]\, R_DATA(0) =>
        \R_DATA_TEMPR1[9]\);

    \OR2_R_DATA[17]\ : OR2
      port map(A => \R_DATA_TEMPR0[17]\, B => \R_DATA_TEMPR1[17]\,
        Y => R_DATA(17));

    g5_uram_18x128_R0C1 : RAM64x12
      port map(BLK_EN => \BLKX0[0]\, BUSY_FB => \GND\, R_ADDR(5)
         => R_ADDR(5), R_ADDR(4) => R_ADDR(4), R_ADDR(3) =>
        R_ADDR(3), R_ADDR(2) => R_ADDR(2), R_ADDR(1) => R_ADDR(1),
        R_ADDR(0) => R_ADDR(0), R_ADDR_AD_N => \VCC\, R_ADDR_AL_N
         => R_ADDR_AL_N, R_ADDR_BYPASS => \GND\, R_ADDR_EN =>
        R_ADDR_EN, R_ADDR_SD => \GND\, R_ADDR_SL_N => R_ADDR_SL_N,
        R_CLK => CLK, R_DATA_AD_N => \VCC\, R_DATA_AL_N =>
        R_DATA_AL_N, R_DATA_BYPASS => \GND\, R_DATA_EN =>
        R_DOUT_EN, R_DATA_SD => \GND\, R_DATA_SL_N => R_DATA_SL_N,
        W_ADDR(5) => W_ADDR(5), W_ADDR(4) => W_ADDR(4), W_ADDR(3)
         => W_ADDR(3), W_ADDR(2) => W_ADDR(2), W_ADDR(1) =>
        W_ADDR(1), W_ADDR(0) => W_ADDR(0), W_CLK => CLK,
        W_DATA(11) => \GND\, W_DATA(10) => \GND\, W_DATA(9) =>
        \GND\, W_DATA(8) => W_DATA(17), W_DATA(7) => W_DATA(16),
        W_DATA(6) => W_DATA(15), W_DATA(5) => W_DATA(14),
        W_DATA(4) => W_DATA(13), W_DATA(3) => W_DATA(12),
        W_DATA(2) => W_DATA(11), W_DATA(1) => W_DATA(10),
        W_DATA(0) => W_DATA(9), W_EN => \BLKZ0[0]\, ACCESS_BUSY
         => \BUSY[0][1]\, R_DATA(11) => nc3, R_DATA(10) => nc10,
        R_DATA(9) => nc2, R_DATA(8) => \R_DATA_TEMPR0[17]\,
        R_DATA(7) => \R_DATA_TEMPR0[16]\, R_DATA(6) =>
        \R_DATA_TEMPR0[15]\, R_DATA(5) => \R_DATA_TEMPR0[14]\,
        R_DATA(4) => \R_DATA_TEMPR0[13]\, R_DATA(3) =>
        \R_DATA_TEMPR0[12]\, R_DATA(2) => \R_DATA_TEMPR0[11]\,
        R_DATA(1) => \R_DATA_TEMPR0[10]\, R_DATA(0) =>
        \R_DATA_TEMPR0[9]\);

    \OR2_R_DATA[10]\ : OR2
      port map(A => \R_DATA_TEMPR0[10]\, B => \R_DATA_TEMPR1[10]\,
        Y => R_DATA(10));

    \OR2_R_DATA[5]\ : OR2
      port map(A => \R_DATA_TEMPR0[5]\, B => \R_DATA_TEMPR1[5]\,
        Y => R_DATA(5));

    \CFG2_BLKX0[0]\ : CFG2
      generic map(INIT => x"4")

      port map(A => R_ADDR(6), B => \VCC\, Y => \BLKX0[0]\);

    \OR2_R_DATA[0]\ : OR2
      port map(A => \R_DATA_TEMPR0[0]\, B => \R_DATA_TEMPR1[0]\,
        Y => R_DATA(0));

    \OR2_R_DATA[11]\ : OR2
      port map(A => \R_DATA_TEMPR0[11]\, B => \R_DATA_TEMPR1[11]\,
        Y => R_DATA(11));

    \OR2_R_DATA[16]\ : OR2
      port map(A => \R_DATA_TEMPR0[16]\, B => \R_DATA_TEMPR1[16]\,
        Y => R_DATA(16));

    \OR2_R_DATA[8]\ : OR2
      port map(A => \R_DATA_TEMPR0[8]\, B => \R_DATA_TEMPR1[8]\,
        Y => R_DATA(8));

    \OR2_R_DATA[12]\ : OR2
      port map(A => \R_DATA_TEMPR0[12]\, B => \R_DATA_TEMPR1[12]\,
        Y => R_DATA(12));

    \OR2_R_DATA[2]\ : OR2
      port map(A => \R_DATA_TEMPR0[2]\, B => \R_DATA_TEMPR1[2]\,
        Y => R_DATA(2));

    \OR2_R_DATA[7]\ : OR2
      port map(A => \R_DATA_TEMPR0[7]\, B => \R_DATA_TEMPR1[7]\,
        Y => R_DATA(7));

    \OR2_R_DATA[14]\ : OR2
      port map(A => \R_DATA_TEMPR0[14]\, B => \R_DATA_TEMPR1[14]\,
        Y => R_DATA(14));

    \CFG2_BLKZ0[1]\ : CFG2
      generic map(INIT => x"8")

      port map(A => W_ADDR(6), B => W_EN, Y => \BLKZ0[1]\);

    \OR2_R_DATA[9]\ : OR2
      port map(A => \R_DATA_TEMPR0[9]\, B => \R_DATA_TEMPR1[9]\,
        Y => R_DATA(9));

    \OR2_R_DATA[15]\ : OR2
      port map(A => \R_DATA_TEMPR0[15]\, B => \R_DATA_TEMPR1[15]\,
        Y => R_DATA(15));

    GND_power_inst1 : GND
      port map( Y => GND_power_net1);

    VCC_power_inst1 : VCC
      port map( Y => VCC_power_net1);


end DEF_ARCH;


-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
library polarfire;
use polarfire.all;

entity g5_uram18x192 is
    port( R_DATA      : out   std_logic_vector(17 downto 0);
          W_DATA      : in    std_logic_vector(17 downto 0);
          R_ADDR      : in    std_logic_vector(7 downto 0);
          W_ADDR      : in    std_logic_vector(7 downto 0);
          R_ADDR_AL_N : in    std_logic;
          R_DATA_AL_N : in    std_logic;
          R_ADDR_SL_N : in    std_logic;
          R_DATA_SL_N : in    std_logic;
          R_ADDR_EN   : in    std_logic;
          R_DOUT_EN   : in    std_logic;
          CLK         : in    std_logic;
          W_EN        : in    std_logic
        );

end g5_uram18x192;

architecture DEF_ARCH of g5_uram18x192 is

  component RAM64x12
    port( BLK_EN        : in    std_logic := 'U';
          BUSY_FB       : in    std_logic := 'U';
          R_ADDR        : in    std_logic_vector(5 downto 0) := (others => 'U');
          R_ADDR_AD_N   : in    std_logic := 'U';
          R_ADDR_AL_N   : in    std_logic := 'U';
          R_ADDR_BYPASS : in    std_logic := 'U';
          R_ADDR_EN     : in    std_logic := 'U';
          R_ADDR_SD     : in    std_logic := 'U';
          R_ADDR_SL_N   : in    std_logic := 'U';
          R_CLK         : in    std_logic := 'U';
          R_DATA_AD_N   : in    std_logic := 'U';
          R_DATA_AL_N   : in    std_logic := 'U';
          R_DATA_BYPASS : in    std_logic := 'U';
          R_DATA_EN     : in    std_logic := 'U';
          R_DATA_SD     : in    std_logic := 'U';
          R_DATA_SL_N   : in    std_logic := 'U';
          W_ADDR        : in    std_logic_vector(5 downto 0) := (others => 'U');
          W_CLK         : in    std_logic := 'U';
          W_DATA        : in    std_logic_vector(11 downto 0) := (others => 'U');
          W_EN          : in    std_logic := 'U';
          ACCESS_BUSY   : out   std_logic;
          R_DATA        : out   std_logic_vector(11 downto 0)
        );
  end component;

  component OR3
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CFG3
    generic (INIT:std_logic_vector(7 downto 0) := x"00");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component GND
    port(Y : out std_logic);
  end component;

  component VCC
    port(Y : out std_logic);
  end component;

    signal \R_DATA_TEMPR0[0]\, \R_DATA_TEMPR1[0]\,
        \R_DATA_TEMPR2[0]\, \R_DATA_TEMPR0[1]\,
        \R_DATA_TEMPR1[1]\, \R_DATA_TEMPR2[1]\,
        \R_DATA_TEMPR0[2]\, \R_DATA_TEMPR1[2]\,
        \R_DATA_TEMPR2[2]\, \R_DATA_TEMPR0[3]\,
        \R_DATA_TEMPR1[3]\, \R_DATA_TEMPR2[3]\,
        \R_DATA_TEMPR0[4]\, \R_DATA_TEMPR1[4]\,
        \R_DATA_TEMPR2[4]\, \R_DATA_TEMPR0[5]\,
        \R_DATA_TEMPR1[5]\, \R_DATA_TEMPR2[5]\,
        \R_DATA_TEMPR0[6]\, \R_DATA_TEMPR1[6]\,
        \R_DATA_TEMPR2[6]\, \R_DATA_TEMPR0[7]\,
        \R_DATA_TEMPR1[7]\, \R_DATA_TEMPR2[7]\,
        \R_DATA_TEMPR0[8]\, \R_DATA_TEMPR1[8]\,
        \R_DATA_TEMPR2[8]\, \R_DATA_TEMPR0[9]\,
        \R_DATA_TEMPR1[9]\, \R_DATA_TEMPR2[9]\,
        \R_DATA_TEMPR0[10]\, \R_DATA_TEMPR1[10]\,
        \R_DATA_TEMPR2[10]\, \R_DATA_TEMPR0[11]\,
        \R_DATA_TEMPR1[11]\, \R_DATA_TEMPR2[11]\,
        \R_DATA_TEMPR0[12]\, \R_DATA_TEMPR1[12]\,
        \R_DATA_TEMPR2[12]\, \R_DATA_TEMPR0[13]\,
        \R_DATA_TEMPR1[13]\, \R_DATA_TEMPR2[13]\,
        \R_DATA_TEMPR0[14]\, \R_DATA_TEMPR1[14]\,
        \R_DATA_TEMPR2[14]\, \R_DATA_TEMPR0[15]\,
        \R_DATA_TEMPR1[15]\, \R_DATA_TEMPR2[15]\,
        \R_DATA_TEMPR0[16]\, \R_DATA_TEMPR1[16]\,
        \R_DATA_TEMPR2[16]\, \R_DATA_TEMPR0[17]\,
        \R_DATA_TEMPR1[17]\, \R_DATA_TEMPR2[17]\, \BLKX0[0]\,
        \BLKX0[1]\, \BLKX0[2]\, \BLKZ0[0]\, \BLKZ0[1]\,
        \BLKZ0[2]\, \BUSY[0][0]\, \BUSY[0][1]\, \BUSY[1][0]\,
        \BUSY[1][1]\, \BUSY[2][0]\, \BUSY[2][1]\, \VCC\, \GND\,
        ADLIB_VCC : std_logic;
    signal GND_power_net1 : std_logic;
    signal VCC_power_net1 : std_logic;
    signal nc1, nc8, nc13, nc16, nc9, nc14, nc5, nc15, nc3, nc10,
        nc7, nc17, nc4, nc12, nc2, nc18, nc6, nc11 : std_logic;

begin

    \GND\ <= GND_power_net1;
    \VCC\ <= VCC_power_net1;
    ADLIB_VCC <= VCC_power_net1;

    g5_uram_18x192_R2C1 : RAM64x12
      port map(BLK_EN => \BLKX0[2]\, BUSY_FB => \GND\, R_ADDR(5)
         => R_ADDR(5), R_ADDR(4) => R_ADDR(4), R_ADDR(3) =>
        R_ADDR(3), R_ADDR(2) => R_ADDR(2), R_ADDR(1) => R_ADDR(1),
        R_ADDR(0) => R_ADDR(0), R_ADDR_AD_N => \VCC\, R_ADDR_AL_N
         => R_ADDR_AL_N, R_ADDR_BYPASS => \GND\, R_ADDR_EN =>
        R_ADDR_EN, R_ADDR_SD => \GND\, R_ADDR_SL_N => R_ADDR_SL_N,
        R_CLK => CLK, R_DATA_AD_N => \VCC\, R_DATA_AL_N =>
        R_DATA_AL_N, R_DATA_BYPASS => \GND\, R_DATA_EN =>
        R_DOUT_EN, R_DATA_SD => \GND\, R_DATA_SL_N => R_DATA_SL_N,
        W_ADDR(5) => W_ADDR(5), W_ADDR(4) => W_ADDR(4), W_ADDR(3)
         => W_ADDR(3), W_ADDR(2) => W_ADDR(2), W_ADDR(1) =>
        W_ADDR(1), W_ADDR(0) => W_ADDR(0), W_CLK => CLK,
        W_DATA(11) => \GND\, W_DATA(10) => \GND\, W_DATA(9) =>
        \GND\, W_DATA(8) => W_DATA(17), W_DATA(7) => W_DATA(16),
        W_DATA(6) => W_DATA(15), W_DATA(5) => W_DATA(14),
        W_DATA(4) => W_DATA(13), W_DATA(3) => W_DATA(12),
        W_DATA(2) => W_DATA(11), W_DATA(1) => W_DATA(10),
        W_DATA(0) => W_DATA(9), W_EN => \BLKZ0[2]\, ACCESS_BUSY
         => \BUSY[2][1]\, R_DATA(11) => nc1, R_DATA(10) => nc8,
        R_DATA(9) => nc13, R_DATA(8) => \R_DATA_TEMPR2[17]\,
        R_DATA(7) => \R_DATA_TEMPR2[16]\, R_DATA(6) =>
        \R_DATA_TEMPR2[15]\, R_DATA(5) => \R_DATA_TEMPR2[14]\,
        R_DATA(4) => \R_DATA_TEMPR2[13]\, R_DATA(3) =>
        \R_DATA_TEMPR2[12]\, R_DATA(2) => \R_DATA_TEMPR2[11]\,
        R_DATA(1) => \R_DATA_TEMPR2[10]\, R_DATA(0) =>
        \R_DATA_TEMPR2[9]\);

    \OR3_R_DATA[9]\ : OR3
      port map(A => \R_DATA_TEMPR0[9]\, B => \R_DATA_TEMPR1[9]\,
        C => \R_DATA_TEMPR2[9]\, Y => R_DATA(9));

    \CFG3_BLKX0[2]\ : CFG3
      generic map(INIT => x"20")

      port map(A => R_ADDR(7), B => R_ADDR(6), C => \VCC\, Y =>
        \BLKX0[2]\);

    g5_uram_18x192_R2C0 : RAM64x12
      port map(BLK_EN => \BLKX0[2]\, BUSY_FB => \GND\, R_ADDR(5)
         => R_ADDR(5), R_ADDR(4) => R_ADDR(4), R_ADDR(3) =>
        R_ADDR(3), R_ADDR(2) => R_ADDR(2), R_ADDR(1) => R_ADDR(1),
        R_ADDR(0) => R_ADDR(0), R_ADDR_AD_N => \VCC\, R_ADDR_AL_N
         => R_ADDR_AL_N, R_ADDR_BYPASS => \GND\, R_ADDR_EN =>
        R_ADDR_EN, R_ADDR_SD => \GND\, R_ADDR_SL_N => R_ADDR_SL_N,
        R_CLK => CLK, R_DATA_AD_N => \VCC\, R_DATA_AL_N =>
        R_DATA_AL_N, R_DATA_BYPASS => \GND\, R_DATA_EN =>
        R_DOUT_EN, R_DATA_SD => \GND\, R_DATA_SL_N => R_DATA_SL_N,
        W_ADDR(5) => W_ADDR(5), W_ADDR(4) => W_ADDR(4), W_ADDR(3)
         => W_ADDR(3), W_ADDR(2) => W_ADDR(2), W_ADDR(1) =>
        W_ADDR(1), W_ADDR(0) => W_ADDR(0), W_CLK => CLK,
        W_DATA(11) => \GND\, W_DATA(10) => \GND\, W_DATA(9) =>
        \GND\, W_DATA(8) => W_DATA(8), W_DATA(7) => W_DATA(7),
        W_DATA(6) => W_DATA(6), W_DATA(5) => W_DATA(5), W_DATA(4)
         => W_DATA(4), W_DATA(3) => W_DATA(3), W_DATA(2) =>
        W_DATA(2), W_DATA(1) => W_DATA(1), W_DATA(0) => W_DATA(0),
        W_EN => \BLKZ0[2]\, ACCESS_BUSY => \BUSY[2][0]\,
        R_DATA(11) => nc16, R_DATA(10) => nc9, R_DATA(9) => nc14,
        R_DATA(8) => \R_DATA_TEMPR2[8]\, R_DATA(7) =>
        \R_DATA_TEMPR2[7]\, R_DATA(6) => \R_DATA_TEMPR2[6]\,
        R_DATA(5) => \R_DATA_TEMPR2[5]\, R_DATA(4) =>
        \R_DATA_TEMPR2[4]\, R_DATA(3) => \R_DATA_TEMPR2[3]\,
        R_DATA(2) => \R_DATA_TEMPR2[2]\, R_DATA(1) =>
        \R_DATA_TEMPR2[1]\, R_DATA(0) => \R_DATA_TEMPR2[0]\);

    g5_uram_18x192_R1C0 : RAM64x12
      port map(BLK_EN => \BLKX0[1]\, BUSY_FB => \GND\, R_ADDR(5)
         => R_ADDR(5), R_ADDR(4) => R_ADDR(4), R_ADDR(3) =>
        R_ADDR(3), R_ADDR(2) => R_ADDR(2), R_ADDR(1) => R_ADDR(1),
        R_ADDR(0) => R_ADDR(0), R_ADDR_AD_N => \VCC\, R_ADDR_AL_N
         => R_ADDR_AL_N, R_ADDR_BYPASS => \GND\, R_ADDR_EN =>
        R_ADDR_EN, R_ADDR_SD => \GND\, R_ADDR_SL_N => R_ADDR_SL_N,
        R_CLK => CLK, R_DATA_AD_N => \VCC\, R_DATA_AL_N =>
        R_DATA_AL_N, R_DATA_BYPASS => \GND\, R_DATA_EN =>
        R_DOUT_EN, R_DATA_SD => \GND\, R_DATA_SL_N => R_DATA_SL_N,
        W_ADDR(5) => W_ADDR(5), W_ADDR(4) => W_ADDR(4), W_ADDR(3)
         => W_ADDR(3), W_ADDR(2) => W_ADDR(2), W_ADDR(1) =>
        W_ADDR(1), W_ADDR(0) => W_ADDR(0), W_CLK => CLK,
        W_DATA(11) => \GND\, W_DATA(10) => \GND\, W_DATA(9) =>
        \GND\, W_DATA(8) => W_DATA(8), W_DATA(7) => W_DATA(7),
        W_DATA(6) => W_DATA(6), W_DATA(5) => W_DATA(5), W_DATA(4)
         => W_DATA(4), W_DATA(3) => W_DATA(3), W_DATA(2) =>
        W_DATA(2), W_DATA(1) => W_DATA(1), W_DATA(0) => W_DATA(0),
        W_EN => \BLKZ0[1]\, ACCESS_BUSY => \BUSY[1][0]\,
        R_DATA(11) => nc5, R_DATA(10) => nc15, R_DATA(9) => nc3,
        R_DATA(8) => \R_DATA_TEMPR1[8]\, R_DATA(7) =>
        \R_DATA_TEMPR1[7]\, R_DATA(6) => \R_DATA_TEMPR1[6]\,
        R_DATA(5) => \R_DATA_TEMPR1[5]\, R_DATA(4) =>
        \R_DATA_TEMPR1[4]\, R_DATA(3) => \R_DATA_TEMPR1[3]\,
        R_DATA(2) => \R_DATA_TEMPR1[2]\, R_DATA(1) =>
        \R_DATA_TEMPR1[1]\, R_DATA(0) => \R_DATA_TEMPR1[0]\);

    \OR3_R_DATA[1]\ : OR3
      port map(A => \R_DATA_TEMPR0[1]\, B => \R_DATA_TEMPR1[1]\,
        C => \R_DATA_TEMPR2[1]\, Y => R_DATA(1));

    \OR3_R_DATA[6]\ : OR3
      port map(A => \R_DATA_TEMPR0[6]\, B => \R_DATA_TEMPR1[6]\,
        C => \R_DATA_TEMPR2[6]\, Y => R_DATA(6));

    \CFG3_BLKX0[1]\ : CFG3
      generic map(INIT => x"40")

      port map(A => R_ADDR(7), B => R_ADDR(6), C => \VCC\, Y =>
        \BLKX0[1]\);

    g5_uram_18x192_R0C0 : RAM64x12
      port map(BLK_EN => \BLKX0[0]\, BUSY_FB => \GND\, R_ADDR(5)
         => R_ADDR(5), R_ADDR(4) => R_ADDR(4), R_ADDR(3) =>
        R_ADDR(3), R_ADDR(2) => R_ADDR(2), R_ADDR(1) => R_ADDR(1),
        R_ADDR(0) => R_ADDR(0), R_ADDR_AD_N => \VCC\, R_ADDR_AL_N
         => R_ADDR_AL_N, R_ADDR_BYPASS => \GND\, R_ADDR_EN =>
        R_ADDR_EN, R_ADDR_SD => \GND\, R_ADDR_SL_N => R_ADDR_SL_N,
        R_CLK => CLK, R_DATA_AD_N => \VCC\, R_DATA_AL_N =>
        R_DATA_AL_N, R_DATA_BYPASS => \GND\, R_DATA_EN =>
        R_DOUT_EN, R_DATA_SD => \GND\, R_DATA_SL_N => R_DATA_SL_N,
        W_ADDR(5) => W_ADDR(5), W_ADDR(4) => W_ADDR(4), W_ADDR(3)
         => W_ADDR(3), W_ADDR(2) => W_ADDR(2), W_ADDR(1) =>
        W_ADDR(1), W_ADDR(0) => W_ADDR(0), W_CLK => CLK,
        W_DATA(11) => \GND\, W_DATA(10) => \GND\, W_DATA(9) =>
        \GND\, W_DATA(8) => W_DATA(8), W_DATA(7) => W_DATA(7),
        W_DATA(6) => W_DATA(6), W_DATA(5) => W_DATA(5), W_DATA(4)
         => W_DATA(4), W_DATA(3) => W_DATA(3), W_DATA(2) =>
        W_DATA(2), W_DATA(1) => W_DATA(1), W_DATA(0) => W_DATA(0),
        W_EN => \BLKZ0[0]\, ACCESS_BUSY => \BUSY[0][0]\,
        R_DATA(11) => nc10, R_DATA(10) => nc7, R_DATA(9) => nc17,
        R_DATA(8) => \R_DATA_TEMPR0[8]\, R_DATA(7) =>
        \R_DATA_TEMPR0[7]\, R_DATA(6) => \R_DATA_TEMPR0[6]\,
        R_DATA(5) => \R_DATA_TEMPR0[5]\, R_DATA(4) =>
        \R_DATA_TEMPR0[4]\, R_DATA(3) => \R_DATA_TEMPR0[3]\,
        R_DATA(2) => \R_DATA_TEMPR0[2]\, R_DATA(1) =>
        \R_DATA_TEMPR0[1]\, R_DATA(0) => \R_DATA_TEMPR0[0]\);

    \OR3_R_DATA[4]\ : OR3
      port map(A => \R_DATA_TEMPR0[4]\, B => \R_DATA_TEMPR1[4]\,
        C => \R_DATA_TEMPR2[4]\, Y => R_DATA(4));

    \OR3_R_DATA[12]\ : OR3
      port map(A => \R_DATA_TEMPR0[12]\, B => \R_DATA_TEMPR1[12]\,
        C => \R_DATA_TEMPR2[12]\, Y => R_DATA(12));

    g5_uram_18x192_R1C1 : RAM64x12
      port map(BLK_EN => \BLKX0[1]\, BUSY_FB => \GND\, R_ADDR(5)
         => R_ADDR(5), R_ADDR(4) => R_ADDR(4), R_ADDR(3) =>
        R_ADDR(3), R_ADDR(2) => R_ADDR(2), R_ADDR(1) => R_ADDR(1),
        R_ADDR(0) => R_ADDR(0), R_ADDR_AD_N => \VCC\, R_ADDR_AL_N
         => R_ADDR_AL_N, R_ADDR_BYPASS => \GND\, R_ADDR_EN =>
        R_ADDR_EN, R_ADDR_SD => \GND\, R_ADDR_SL_N => R_ADDR_SL_N,
        R_CLK => CLK, R_DATA_AD_N => \VCC\, R_DATA_AL_N =>
        R_DATA_AL_N, R_DATA_BYPASS => \GND\, R_DATA_EN =>
        R_DOUT_EN, R_DATA_SD => \GND\, R_DATA_SL_N => R_DATA_SL_N,
        W_ADDR(5) => W_ADDR(5), W_ADDR(4) => W_ADDR(4), W_ADDR(3)
         => W_ADDR(3), W_ADDR(2) => W_ADDR(2), W_ADDR(1) =>
        W_ADDR(1), W_ADDR(0) => W_ADDR(0), W_CLK => CLK,
        W_DATA(11) => \GND\, W_DATA(10) => \GND\, W_DATA(9) =>
        \GND\, W_DATA(8) => W_DATA(17), W_DATA(7) => W_DATA(16),
        W_DATA(6) => W_DATA(15), W_DATA(5) => W_DATA(14),
        W_DATA(4) => W_DATA(13), W_DATA(3) => W_DATA(12),
        W_DATA(2) => W_DATA(11), W_DATA(1) => W_DATA(10),
        W_DATA(0) => W_DATA(9), W_EN => \BLKZ0[1]\, ACCESS_BUSY
         => \BUSY[1][1]\, R_DATA(11) => nc4, R_DATA(10) => nc12,
        R_DATA(9) => nc2, R_DATA(8) => \R_DATA_TEMPR1[17]\,
        R_DATA(7) => \R_DATA_TEMPR1[16]\, R_DATA(6) =>
        \R_DATA_TEMPR1[15]\, R_DATA(5) => \R_DATA_TEMPR1[14]\,
        R_DATA(4) => \R_DATA_TEMPR1[13]\, R_DATA(3) =>
        \R_DATA_TEMPR1[12]\, R_DATA(2) => \R_DATA_TEMPR1[11]\,
        R_DATA(1) => \R_DATA_TEMPR1[10]\, R_DATA(0) =>
        \R_DATA_TEMPR1[9]\);

    g5_uram_18x192_R0C1 : RAM64x12
      port map(BLK_EN => \BLKX0[0]\, BUSY_FB => \GND\, R_ADDR(5)
         => R_ADDR(5), R_ADDR(4) => R_ADDR(4), R_ADDR(3) =>
        R_ADDR(3), R_ADDR(2) => R_ADDR(2), R_ADDR(1) => R_ADDR(1),
        R_ADDR(0) => R_ADDR(0), R_ADDR_AD_N => \VCC\, R_ADDR_AL_N
         => R_ADDR_AL_N, R_ADDR_BYPASS => \GND\, R_ADDR_EN =>
        R_ADDR_EN, R_ADDR_SD => \GND\, R_ADDR_SL_N => R_ADDR_SL_N,
        R_CLK => CLK, R_DATA_AD_N => \VCC\, R_DATA_AL_N =>
        R_DATA_AL_N, R_DATA_BYPASS => \GND\, R_DATA_EN =>
        R_DOUT_EN, R_DATA_SD => \GND\, R_DATA_SL_N => R_DATA_SL_N,
        W_ADDR(5) => W_ADDR(5), W_ADDR(4) => W_ADDR(4), W_ADDR(3)
         => W_ADDR(3), W_ADDR(2) => W_ADDR(2), W_ADDR(1) =>
        W_ADDR(1), W_ADDR(0) => W_ADDR(0), W_CLK => CLK,
        W_DATA(11) => \GND\, W_DATA(10) => \GND\, W_DATA(9) =>
        \GND\, W_DATA(8) => W_DATA(17), W_DATA(7) => W_DATA(16),
        W_DATA(6) => W_DATA(15), W_DATA(5) => W_DATA(14),
        W_DATA(4) => W_DATA(13), W_DATA(3) => W_DATA(12),
        W_DATA(2) => W_DATA(11), W_DATA(1) => W_DATA(10),
        W_DATA(0) => W_DATA(9), W_EN => \BLKZ0[0]\, ACCESS_BUSY
         => \BUSY[0][1]\, R_DATA(11) => nc18, R_DATA(10) => nc6,
        R_DATA(9) => nc11, R_DATA(8) => \R_DATA_TEMPR0[17]\,
        R_DATA(7) => \R_DATA_TEMPR0[16]\, R_DATA(6) =>
        \R_DATA_TEMPR0[15]\, R_DATA(5) => \R_DATA_TEMPR0[14]\,
        R_DATA(4) => \R_DATA_TEMPR0[13]\, R_DATA(3) =>
        \R_DATA_TEMPR0[12]\, R_DATA(2) => \R_DATA_TEMPR0[11]\,
        R_DATA(1) => \R_DATA_TEMPR0[10]\, R_DATA(0) =>
        \R_DATA_TEMPR0[9]\);

    \OR3_R_DATA[3]\ : OR3
      port map(A => \R_DATA_TEMPR0[3]\, B => \R_DATA_TEMPR1[3]\,
        C => \R_DATA_TEMPR2[3]\, Y => R_DATA(3));

    \OR3_R_DATA[11]\ : OR3
      port map(A => \R_DATA_TEMPR0[11]\, B => \R_DATA_TEMPR1[11]\,
        C => \R_DATA_TEMPR2[11]\, Y => R_DATA(11));

    \OR3_R_DATA[17]\ : OR3
      port map(A => \R_DATA_TEMPR0[17]\, B => \R_DATA_TEMPR1[17]\,
        C => \R_DATA_TEMPR2[17]\, Y => R_DATA(17));

    \OR3_R_DATA[16]\ : OR3
      port map(A => \R_DATA_TEMPR0[16]\, B => \R_DATA_TEMPR1[16]\,
        C => \R_DATA_TEMPR2[16]\, Y => R_DATA(16));

    \OR3_R_DATA[15]\ : OR3
      port map(A => \R_DATA_TEMPR0[15]\, B => \R_DATA_TEMPR1[15]\,
        C => \R_DATA_TEMPR2[15]\, Y => R_DATA(15));

    \OR3_R_DATA[13]\ : OR3
      port map(A => \R_DATA_TEMPR0[13]\, B => \R_DATA_TEMPR1[13]\,
        C => \R_DATA_TEMPR2[13]\, Y => R_DATA(13));

    \CFG3_BLKZ0[0]\ : CFG3
      generic map(INIT => x"10")

      port map(A => W_ADDR(7), B => W_ADDR(6), C => W_EN, Y =>
        \BLKZ0[0]\);

    \OR3_R_DATA[5]\ : OR3
      port map(A => \R_DATA_TEMPR0[5]\, B => \R_DATA_TEMPR1[5]\,
        C => \R_DATA_TEMPR2[5]\, Y => R_DATA(5));

    \CFG3_BLKZ0[2]\ : CFG3
      generic map(INIT => x"20")

      port map(A => W_ADDR(7), B => W_ADDR(6), C => W_EN, Y =>
        \BLKZ0[2]\);

    \OR3_R_DATA[0]\ : OR3
      port map(A => \R_DATA_TEMPR0[0]\, B => \R_DATA_TEMPR1[0]\,
        C => \R_DATA_TEMPR2[0]\, Y => R_DATA(0));

    \OR3_R_DATA[8]\ : OR3
      port map(A => \R_DATA_TEMPR0[8]\, B => \R_DATA_TEMPR1[8]\,
        C => \R_DATA_TEMPR2[8]\, Y => R_DATA(8));

    \OR3_R_DATA[2]\ : OR3
      port map(A => \R_DATA_TEMPR0[2]\, B => \R_DATA_TEMPR1[2]\,
        C => \R_DATA_TEMPR2[2]\, Y => R_DATA(2));

    \CFG3_BLKZ0[1]\ : CFG3
      generic map(INIT => x"40")

      port map(A => W_ADDR(7), B => W_ADDR(6), C => W_EN, Y =>
        \BLKZ0[1]\);

    \OR3_R_DATA[14]\ : OR3
      port map(A => \R_DATA_TEMPR0[14]\, B => \R_DATA_TEMPR1[14]\,
        C => \R_DATA_TEMPR2[14]\, Y => R_DATA(14));

    \OR3_R_DATA[10]\ : OR3
      port map(A => \R_DATA_TEMPR0[10]\, B => \R_DATA_TEMPR1[10]\,
        C => \R_DATA_TEMPR2[10]\, Y => R_DATA(10));

    \OR3_R_DATA[7]\ : OR3
      port map(A => \R_DATA_TEMPR0[7]\, B => \R_DATA_TEMPR1[7]\,
        C => \R_DATA_TEMPR2[7]\, Y => R_DATA(7));

    \CFG3_BLKX0[0]\ : CFG3
      generic map(INIT => x"10")

      port map(A => R_ADDR(7), B => R_ADDR(6), C => \VCC\, Y =>
        \BLKX0[0]\);

    GND_power_inst1 : GND
      port map( Y => GND_power_net1);

    VCC_power_inst1 : VCC
      port map( Y => VCC_power_net1);


end DEF_ARCH;
