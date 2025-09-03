-- ***************************************************************************/
--Microsemi Corporation Proprietary and Confidential
--Copyright 2016 Microsemi Corporation. All rights reserved.
--
--ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
--ACCORDANCE WITH THE Microsemi LICENSE AGREEMENT AND MUST BE APPROVED
--IN ADVANCE IN WRITING.
--
--Description:  CoreFIR RTL Component Library
--              Various Standard RTL Entities
--
--Revision Information:
--Date         Description
--08Jan2009    Initial Release
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

--------------------------------------------------------------------------------

--    ########    ########   ##           ###     ##    ##
--    ##     ##   ##         ##          ## ##     ##  ##
--    ##     ##   ##         ##         ##   ##     ####
--    ##     ##   ######     ##        ##     ##     ##
--    ##     ##   ##         ##        #########     ##
--    ##     ##   ##         ##        ##     ##     ##
--    ########    ########   ########  ##     ##     ##

------------ Register-based 1-bit DELAY1 has only input and output ----------
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;
USE work.enum_rtl_pack.all;

ENTITY enum_kitDelay_bit_reg IS
  GENERIC(DELAY1:     integer := 2  );
  PORT (nGrst, rst, clk, clkEn : in std_logic;
        inp : in std_logic;
        outp: out std_logic );
END ENTITY enum_kitDelay_bit_reg;

ARCHITECTURE rtl of enum_kitDelay_bit_reg IS
  CONSTANT DLY_INT : integer := intMux (0, DELAY1-1, (DELAY1>0));
  TYPE dlyArray IS ARRAY (0 to DLY_INT) of std_logic;
  -- initialize DELAY1 line
  SIGNAL delayLine : dlyArray := (OTHERS => '0');
BEGIN
  genNoDel: IF (DELAY1=0) GENERATE
    outp <= inp;
  END GENERATE;

  genDel: IF (DELAY1/=0) GENERATE
      outp <= delayLine(DELAY1-1);
  END GENERATE;

  PROCESS (clk, nGrst)
  BEGIN
    IF (NOT nGrst = '1') THEN
      FOR i IN DLY_INT DOWNTO 0 LOOP
        delayLine(i) <= '0';
      END LOOP;
    ELSIF (clk'EVENT AND clk = '1') THEN
      IF (rst='1') THEN
        FOR i IN DLY_INT DOWNTO 0 LOOP
          delayLine(i) <= '0';
        END LOOP;
      ELSIF (clkEn = '1') THEN
        FOR i IN DLY_INT DOWNTO 1 LOOP
          delayline(i) <= delayline(i-1);
        END LOOP;
        delayline(0) <= inp;
      END IF;  -- rst/clkEn
    END IF;
  END PROCESS;
END ARCHITECTURE rtl;


------------ Register-based Multi-bit DELAY1 has only input and output ----------
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;
USE work.enum_rtl_pack.all;

ENTITY enum_kitDelay_reg IS
  GENERIC(
    BITWIDTH : integer := 16;
    DELAY1:     integer := 2  );
  PORT (nGrst, rst, clk, clkEn : in std_logic;
        inp : in std_logic_vector(BITWIDTH-1 DOWNTO 0);
        outp: out std_logic_vector(BITWIDTH-1 DOWNTO 0) );
END ENTITY enum_kitDelay_reg;

ARCHITECTURE rtl of enum_kitDelay_reg IS
  CONSTANT DLY_INT : integer := intMux (0, DELAY1-1, (DELAY1>0));
  TYPE dlyArray IS ARRAY (0 to DLY_INT) of std_logic_vector(BITWIDTH-1 DOWNTO 0);
  -- initialize DELAY1 line
  SIGNAL delayLine : dlyArray := (OTHERS => std_logic_vector(to_unsigned(0, BITWIDTH)));
BEGIN
  genNoDel: IF (DELAY1=0) GENERATE
    outp <= inp;
  END GENERATE;

  genDel: IF (DELAY1/=0) GENERATE
      outp <= delayLine(DELAY1-1);
  END GENERATE;

  PROCESS (clk, nGrst)
  BEGIN
    IF (NOT nGrst = '1') THEN
      FOR i IN DLY_INT DOWNTO 0 LOOP
        delayLine(i) <= std_logic_vector( to_unsigned(0, BITWIDTH));
      END LOOP;
    ELSIF (clk'EVENT AND clk = '1') THEN
      IF (rst='1') THEN
        FOR i IN DLY_INT DOWNTO 0 LOOP
          delayLine(i) <= std_logic_vector( to_unsigned(0, BITWIDTH));
        END LOOP;
      ELSIF (clkEn = '1') THEN
        FOR i IN DLY_INT DOWNTO 1 LOOP
          delayline(i) <= delayline(i-1);
        END LOOP;
        delayline(0) <= inp;
      END IF;  -- rst/clkEn
    END IF;
  END PROCESS;
END ARCHITECTURE rtl;

--  enum_kitDelay_reg_0 : enum_kitDelay_reg
--  GENERIC MAP (
--    BITWIDTH  => 16,
--    DELAY1     => 2  )
--  PORT MAP (
--    nGrst => nGrst, rst => rst, clk => clk, clkEn => clkEn,
--    inp   => inp,
--    outp  => outp);



-- The delays similar to the above two but the synthesis syn_preserve directive
------------ Register-based 1-bit DELAY1 + syn_preserve ----------
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;
USE work.enum_rtl_pack.all;

ENTITY enum_kitDelay_bit_reg_attr IS
  GENERIC(DELAY1:     integer := 2  );
  PORT (nGrst, rst, clk, clkEn : in std_logic;
        inp : in std_logic;
        outp: out std_logic );
END ENTITY enum_kitDelay_bit_reg_attr;

ARCHITECTURE rtl of enum_kitDelay_bit_reg_attr IS
  CONSTANT DLY_INT : integer := intMux (0, DELAY1-1, (DELAY1>0));
  TYPE dlyArray IS ARRAY (0 to DLY_INT) of std_logic;
  -- initialize DELAY1 line
  SIGNAL delayLine : dlyArray := (OTHERS => '0');
  attribute syn_preserve : boolean;
  attribute syn_preserve of delayLine : signal is true;
BEGIN
  genNoDel: IF (DELAY1=0) GENERATE
    outp <= inp;
  END GENERATE;

  genDel: IF (DELAY1/=0) GENERATE
      outp <= delayLine(DELAY1-1);
  END GENERATE;

  PROCESS (clk, nGrst)
  BEGIN
    IF (NOT nGrst = '1') THEN
      FOR i IN DLY_INT DOWNTO 0 LOOP
        delayLine(i) <= '0';
      END LOOP;
    ELSIF (clk'EVENT AND clk = '1') THEN
      IF (rst='1') THEN
        FOR i IN DLY_INT DOWNTO 0 LOOP
          delayLine(i) <= '0';
        END LOOP;
      ELSIF (clkEn = '1') THEN
        FOR i IN DLY_INT DOWNTO 1 LOOP
          delayline(i) <= delayline(i-1);
        END LOOP;
        delayline(0) <= inp;
      END IF;  -- rst/clkEn
    END IF;
  END PROCESS;
END ARCHITECTURE rtl;


------------ Register-based Multi-bit DELAY1 + syn_preserve ----------
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;
USE work.enum_rtl_pack.all;

ENTITY enum_kitDelay_reg_attr IS
  GENERIC(
    BITWIDTH : integer := 16;
    DELAY1:     integer := 2  );
  PORT (nGrst, rst, clk, clkEn : in std_logic;
        inp : in std_logic_vector(BITWIDTH-1 DOWNTO 0);
        outp: out std_logic_vector(BITWIDTH-1 DOWNTO 0) );
END ENTITY enum_kitDelay_reg_attr;

ARCHITECTURE rtl of enum_kitDelay_reg_attr IS
  CONSTANT DLY_INT : integer := intMux (0, DELAY1-1, (DELAY1>0));
  TYPE dlyArray IS ARRAY (0 to DLY_INT) of std_logic_vector(BITWIDTH-1 DOWNTO 0);
  -- initialize DELAY1 line
  SIGNAL delayLine : dlyArray := (OTHERS => std_logic_vector(to_unsigned(0, BITWIDTH)));
  attribute syn_preserve : boolean;
  attribute syn_preserve of delayLine : signal is true;

BEGIN
  genNoDel: IF (DELAY1=0) GENERATE
    outp <= inp;
  END GENERATE;

  genDel: IF (DELAY1/=0) GENERATE
      outp <= delayLine(DELAY1-1);
  END GENERATE;

  PROCESS (clk, nGrst)
  BEGIN
    IF (NOT nGrst = '1') THEN
      FOR i IN DLY_INT DOWNTO 0 LOOP
        delayLine(i) <= std_logic_vector( to_unsigned(0, BITWIDTH));
      END LOOP;
    ELSIF (clk'EVENT AND clk = '1') THEN
      IF (rst='1') THEN
        FOR i IN DLY_INT DOWNTO 0 LOOP
          delayLine(i) <= std_logic_vector( to_unsigned(0, BITWIDTH));
        END LOOP;
      ELSIF (clkEn = '1') THEN
        FOR i IN DLY_INT DOWNTO 1 LOOP
          delayline(i) <= delayline(i-1);
        END LOOP;
        delayline(0) <= inp;
      END IF;  -- rst/clkEn
    END IF;
  END PROCESS;
END ARCHITECTURE rtl;



LIBRARY IEEE;
  USE IEEE.std_logic_1164.all;
USE work.enum_rtl_pack.all;

ENTITY enum_kitDelay_reg_cond IS
  GENERIC(
    BITWIDTH :  integer := 16;
    DELAY1:      integer := 2;
    BUILD:      integer := 0  );
  PORT (nGrst, rst, clk, clkEn : in std_logic;
        inp : in std_logic_vector(BITWIDTH-1 DOWNTO 0);
        outp: out std_logic_vector(BITWIDTH-1 DOWNTO 0) );
END ENTITY enum_kitDelay_reg_cond;

ARCHITECTURE rtl of enum_kitDelay_reg_cond IS
BEGIN
  build_dly: IF(BUILD=1)  GENERATE
    enum_kitDelay_reg_0 : enum_kitDelay_reg
    GENERIC MAP (
      BITWIDTH  => BITWIDTH,
      DELAY1     => DELAY1 )
    PORT MAP (
      nGrst => nGrst, rst => rst, clk => clk, clkEn => clkEn,
      inp   => inp,
      outp  => outp);
  END GENERATE;
END ARCHITECTURE rtl;



--     #####
--    #     #   ####   #    #  #    #  #####  ######  #####
--    #        #    #  #    #  ##   #    #    #       #    #
--    #        #    #  #    #  # #  #    #    #####   #    #
--    #        #    #  #    #  #  # #    #    #       #####
--    #     #  #    #  #    #  #   ##    #    #       #   #
--     #####    ####    ####   #    #    #    ######  #    #

-- simple incremental counter
LIBRARY IEEE;
  USE IEEE.std_logic_1164.all;
  USE IEEE.numeric_std.all;
USE work.enum_rtl_pack.all;

ENTITY enum_kitCountS IS
  GENERIC ( WIDTH         : INTEGER := 16;
            DCVALUE       : INTEGER := 1;		-- state to decode
            BUILD_DC      : INTEGER := 1  );
  PORT (nGrst, rst, clk, clkEn, cntEn : IN STD_LOGIC;
    Q             : OUT STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
    dc            : OUT STD_LOGIC   );		-- decoder output
END ENTITY enum_kitCountS;

ARCHITECTURE rtl OF enum_kitCountS IS
  SIGNAL count  : unsigned(WIDTH-1 DOWNTO 0);
BEGIN
  Q <= std_logic_vector(count);
  dc <= to_logic(count = DCVALUE) WHEN (BUILD_DC = 1) ELSE 'X';

  PROCESS (nGrst, clk)
  BEGIN
    IF (nGrst = '0') THEN
      count <= to_unsigned(0, WIDTH);
    ELSIF (clk'EVENT AND clk = '1') THEN
      IF (clkEn = '1') THEN
        IF (rst = '1') THEN
          count <= to_unsigned(0, WIDTH);
        ELSIF (cntEn = '1') THEN
          count <= count+1;
        END IF;
      END IF;
    END IF;
  END PROCESS;
END ARCHITECTURE rtl;



--        ___  ____  ___  _  _    ____  _  _  ____  ____  _  _  ____
--       / __)(_  _)/ __)( \( )  ( ___)( \/ )(_  _)( ___)( \( )(  _ \
--       \__ \ _)(_( (_-. )  (    )__)  )  (   )(   )__)  )  (  )(_) )
--       (___/(____)\___/(_)\_)  (____)(_/\_) (__) (____)(_)\_)(____/
-- Resize a vector inp to the specified size.
-- When resizing to a larger vector, sign extend the inp: the new [leftmost]
-- bit positions are filled with a sign bit (UNSIGNED==0) or 0's (UNSIGNED==1).
-- When truncationg to a smaller vector, the sign bit is retained along with the
-- rightmost part (if UNSIGNED==0), or the leftmost bits are all dropped (if
-- UNSIGNED==1)
LIBRARY IEEE;
  USE IEEE.std_logic_1164.all;
  USE IEEE.numeric_std.all;
USE work.enum_rtl_pack.all;
-- If signed, keep the input sign bit; otherwise just drop extra MSB's
ENTITY enum_signExt IS
  GENERIC (
    INWIDTH   : INTEGER := 16;
    OUTWIDTH  : INTEGER := 20;
    UNSIGN    : INTEGER := 0  );
  PORT (
    inp             : IN STD_LOGIC_VECTOR(INWIDTH-1 DOWNTO 0);
    outp            : OUT STD_LOGIC_VECTOR(OUTWIDTH-1 DOWNTO 0)  );
END ENTITY enum_signExt;

ARCHITECTURE rtl OF enum_signExt IS
  SIGNAL sB            : STD_LOGIC;
  signal outp_s : signed  (OUTWIDTH-1 downto 0);
  signal outp_u : unsigned(OUTWIDTH-1 downto 0);
BEGIN
  -- Input sign bit
  sB <= inp(INWIDTH-1);
  pass_thru : IF (INWIDTH = OUTWIDTH) GENERATE
    outp <= inp;
  END GENERATE;

  extend_sign : IF (OUTWIDTH > INWIDTH) GENERATE
    outp_s <= RESIZE (signed(inp), OUTWIDTH);
    outp_u <= RESIZE (unsigned(inp), OUTWIDTH);
    outp <= std_logic_vector(outp_s) WHEN UNSIGN=0 ELSE std_logic_vector(outp_u);
  END GENERATE;

  cut_msbs : IF (OUTWIDTH < INWIDTH)  GENERATE
    outp(OUTWIDTH-2 DOWNTO 0) <= inp(OUTWIDTH-2 DOWNTO 0);
    outp(OUTWIDTH-1) <= sB WHEN (UNSIGN = 0) ELSE inp(OUTWIDTH-1);
  END GENERATE;

END ARCHITECTURE rtl;




-- Generate positive one clkEn period wide pulse on input edge

LIBRARY IEEE;
  USE IEEE.std_logic_1164.all;
ENTITY enum_kitEdge IS
  GENERIC (EDGE : integer);     --0-detect neg edge; 1-pos edge
  PORT (
    nGrst, rst, clk, clkEn, edge_in : IN STD_LOGIC;
    pulse : OUT STD_LOGIC );
END ENTITY enum_kitEdge;

ARCHITECTURE rtl OF enum_kitEdge IS
  SIGNAL d_flop1, d_flop2 : STD_LOGIC;
BEGIN
  pulse <= d_flop1 AND NOT(d_flop2) WHEN EDGE=1 ELSE d_flop2 AND NOT(d_flop1);
  
  PROCESS (nGrst, clk)
  BEGIN
    IF (nGrst = '0') THEN
      d_flop1 <= '0';
      d_flop2 <= '0';
    ELSIF (clk'EVENT AND clk = '1') THEN
      IF (rst = '1') THEN
        d_flop1 <= '0';
        d_flop2 <= '0';
      ELSIF (clkEn = '1') THEN
        d_flop1 <= edge_in;
        d_flop2 <= d_flop1;
      END IF;
    END IF;
  END PROCESS;
END ARCHITECTURE rtl;




--            ____  ____  ____  __  __  ___    ____  _  _  ____  ____
--           (  _ \( ___)(  _ \(  )(  )/ __)  (_  _)( \( )(_  _)(_  _)
--            )(_) ))__)  ) _ < )(__)(( (_-.   _)(_  )  (  _)(_   )(
--           (____/(____)(____/(______)\___/  (____)(_)\_)(____) (__)
-- Convert flattened INIT array back into 18-bit words
  --tr  generate begin: dbg_top_init
  --tr    genvar i;
  --tr    for(i=0; i<16*ROW_TAPS; i=i+1)
  --tr      begin
  --tr        assign dbg_init[i] = INIT[(i+1)*18-1:i*18];
  --tr      end
  --tr    end
  --tr  endgenerate

LIBRARY IEEE;
  USE IEEE.std_logic_1164.all;
ENTITY debug_INIT IS
  GENERIC (NUM_OF_COEFS : integer);
  PORT (
    flat  : in STD_LOGIC_VECTOR(NUM_OF_COEFS*18-1 DOWNTO 0) );
END ENTITY debug_INIT;

ARCHITECTURE rtl OF debug_INIT IS
  TYPE type_dbg IS ARRAY (0 TO NUM_OF_COEFS-1) OF STD_LOGIC_VECTOR(17 DOWNTO 0);
  SIGNAL dbg_init       : type_dbg;

BEGIN
  -- pragma translate_off
  dbg_loop: FOR i IN 0 TO NUM_OF_COEFS-1 GENERATE
    dbg_init(i) <= flat(18*(i+1)-1 DOWNTO 18*i);
  END GENERATE;
  -- pragma translate_on
END ARCHITECTURE rtl;


