-- ***************************************************************************/
--Microchip Corporation Proprietary and Confidential
--Copyright Microchip Corporation. All rights reserved.
--
--ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
--ACCORDANCE WITH THE Microchip LICENSE AGREEMENT AND MUST BE APPROVED
--IN ADVANCE IN WRITING.
--
--Description:  CoreFIR_PF RTL
--              RTL Package
--
--
-- *********************************************************************/

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
USE work.corefir_rtl_pack.all;

ENTITY corefir_kitDelay_bit_reg IS
  GENERIC(DELAY1:     integer := 2  );
  PORT (nGrst, rst, clk, clkEn : in std_logic;
        inp : in std_logic;
        outp: out std_logic );
END ENTITY corefir_kitDelay_bit_reg;

ARCHITECTURE rtl of corefir_kitDelay_bit_reg IS
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
USE work.corefir_rtl_pack.all;

ENTITY corefir_kitDelay_reg IS
  GENERIC(
    BITWIDTH : integer := 16;
    DELAY1:     integer := 2  );
  PORT (nGrst, rst, clk, clkEn : in std_logic;
        inp : in std_logic_vector(BITWIDTH-1 DOWNTO 0);
        outp: out std_logic_vector(BITWIDTH-1 DOWNTO 0) );
END ENTITY corefir_kitDelay_reg;

ARCHITECTURE rtl of corefir_kitDelay_reg IS
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

--  corefir_kitDelay_reg_0 : corefir_kitDelay_reg
--  GENERIC MAP (
--    BITWIDTH  => 16,
--    DELAY1     => 2  )
--  PORT MAP (
--    nGrst => nGrst, rst => rst, clk => clk, clkEn => clkEn,
--    inp   => inp,
--    outp  => outp);




--                         _____                       _
--                        |  __ \                     | |
--                        | |__) |___  _   _ _ __   __| |
--                        |  _  // _ \| | | | '_ \ / _` |
--                        | | \ \ (_) | |_| | | | | (_| |
--                        |_|  \_\___/ \__,_|_| |_|\__,_|

-- ----------------------------  Simple Round Up  -----------------------------
-- 2-clk DELAY1 to match convergent rounding
-- -------------------------------
-- INWIDTH must be >= OUTWIDTH+1.
-- -------------------------------
LIBRARY IEEE;
  USE IEEE.std_logic_1164.all;
  USE IEEE.numeric_std.all;
USE work.corefir_rtl_pack.all;

ENTITY corefir_kitRndUp IS
  GENERIC ( INWIDTH       : INTEGER := 16;
            OUTWIDTH      : INTEGER := 12;
            QUANTIZATION  : INTEGER := 1  );  -- Simply truncate if 0
  PORT (
    nGrst       : IN STD_LOGIC;
    rst         : IN STD_LOGIC;
    clk         : IN STD_LOGIC;
    datai_valid : IN STD_LOGIC;
    inp         : IN STD_LOGIC_VECTOR(INWIDTH-1 DOWNTO 0);
    outp        : OUT STD_LOGIC_VECTOR(OUTWIDTH-1 DOWNTO 0);
    validi      : IN STD_LOGIC; --just a bit that travels side by side with data
    valido      : OUT STD_LOGIC  );
END ENTITY corefir_kitRndUp;

ARCHITECTURE rtl OF corefir_kitRndUp IS

  SIGNAL inp_w     : STD_LOGIC_VECTOR(OUTWIDTH DOWNTO 0);
  SIGNAL inp_ww    : signed(OUTWIDTH DOWNTO 0);
  SIGNAL outp_w    : STD_LOGIC_VECTOR(OUTWIDTH-1 DOWNTO 0);

BEGIN
  round : IF (QUANTIZATION/=0) GENERATE
    -- drop all but one trunkated LSB
    inp_w <= inp(INWIDTH-1 DOWNTO INWIDTH-OUTWIDTH-1);
    inp_ww <= signed(inp_w) + to_signed(1, OUTWIDTH+1);
    outp_w <= std_logic_vector(inp_ww(OUTWIDTH DOWNTO 1));
  END GENERATE;

  trunkate : IF (QUANTIZATION = 0) GENERATE
    outp_w <= inp(INWIDTH-1 DOWNTO INWIDTH-OUTWIDTH);
  END GENERATE;

  pipe_0 : corefir_kitDelay_reg
    GENERIC MAP ( BITWIDTH  => OUTWIDTH,
                  DELAY1     => 2    )
    PORT MAP (
      nGrst  => nGrst, rst => rst, clk => clk,
      clkEn  => datai_valid,
      inp    => outp_w,
      outp   => outp  );

  pipe_1 : corefir_kitDelay_bit_reg
    GENERIC MAP ( DELAY1  => 2 )
    PORT MAP (
      nGrst  => nGrst, rst => rst, clk => clk,
      clkEn  => datai_valid,
      inp    => validi,
      outp   => valido    );

END ARCHITECTURE rtl;


-- ---------------------------  Convergent Rounding  --------------------------
-- Round-to-nearest-even  = Convergent = Round half to even = Unbiased =
-- statistician's rounding = Dutch rounding = Gaussian rounding =
-- Odd-even rounding = Bankers' rounding = broken rounding = DDR rounding
-- and is widely used in bookkeeping.
-- 2-clk DELAY1
-- -------------------------------
-- INWIDTH must be >= OUTWIDTH+2.
-- -------------------------------
-- Overflow may occur when inp>0 only since we always add 1 or 0, never add -1

LIBRARY IEEE;
  USE IEEE.std_logic_1164.all;
  USE IEEE.numeric_std.all;
USE work.corefir_rtl_pack.all;

ENTITY corefir_kitRndEven IS
  GENERIC ( INWIDTH      : INTEGER := 16;
            OUTWIDTH     : INTEGER := 12  );
  PORT (
    nGrst   : IN STD_LOGIC;
    clk     : IN STD_LOGIC;
    datai_valid  : IN STD_LOGIC;
    rst     : IN STD_LOGIC;
    inp     : IN STD_LOGIC_VECTOR(INWIDTH - 1 DOWNTO 0);
    outp    : OUT STD_LOGIC_VECTOR(OUTWIDTH - 1 DOWNTO 0);
    validi  : IN STD_LOGIC;  --just a bit that travels side by side with data
    valido  : OUT STD_LOGIC  );
END ENTITY corefir_kitRndEven;

ARCHITECTURE rtl OF corefir_kitRndEven IS
  SIGNAL roundBit      : STD_LOGIC;
  SIGNAL roundBit_tick : STD_LOGIC;
  SIGNAL stickyBit     : STD_LOGIC;
  SIGNAL rBit          : STD_LOGIC;
  SIGNAL lsBit         : STD_LOGIC;
  SIGNAL riskOV        : STD_LOGIC;
  SIGNAL inp_w         : STD_LOGIC_VECTOR(OUTWIDTH-1 DOWNTO 0);
  SIGNAL inp_tick      : STD_LOGIC_VECTOR(OUTWIDTH-1 DOWNTO 0);
  SIGNAL outp_w        : STD_LOGIC_VECTOR(OUTWIDTH-1 DOWNTO 0);
  SIGNAL signBit       : STD_LOGIC;
  SIGNAL rndBit_vect   : STD_LOGIC_VECTOR(OUTWIDTH-1 DOWNTO 0);

BEGIN
  signBit <= inp(INWIDTH-1);
  -- the least significant remaining bit
  lsBit <= inp(INWIDTH-OUTWIDTH);
  -- the most significant truncated bit
  rBit <= inp(INWIDTH-OUTWIDTH-1);
  stickyBit <= reductionOr(inp(INWIDTH-OUTWIDTH-2 DOWNTO 0));
  -- Detect the max positive number of size OUTWIDTH: sign==0, others==1
  riskOV <= (NOT(signBit)) AND (reductionAnd(inp(INWIDTH-2 DOWNTO INWIDTH-OUTWIDTH)));
  -- Calculate the bit to be added to the remaining bits
  roundBit <= rBit AND (stickyBit OR lsBit) AND NOT(riskOV);

  -- Pipe the roundBit
  roundBit_pipe_0 : corefir_kitDelay_bit_reg
    GENERIC MAP ( DELAY1 => 1 )
    PORT MAP (
      nGrst => nGrst, rst => rst, clk => clk,
      clkEn  => datai_valid,
      inp    => roundBit,
      outp   => roundBit_tick  );

  -- Simply DELAY1 the bits to keep to match the roundBit DELAY1
  inp_w <= inp(INWIDTH-1 DOWNTO INWIDTH-OUTWIDTH);
  inp_pipe_0 : corefir_kitDelay_reg
    GENERIC MAP ( BITWIDTH  => OUTWIDTH, DELAY1 => 1)
    PORT MAP (
      nGrst  => nGrst, rst => rst, clk => clk,
      clkEn  => datai_valid,
      inp    => inp_w,
      outp   => inp_tick  );

  -- Calculate the result and pipe it
  rndBit_vect <= (0=>roundBit_tick, others=>'0');
  outp_w <= std_logic_vector(signed(inp_tick) + signed(rndBit_vect));

  result_pipe_0 : corefir_kitDelay_reg
    GENERIC MAP (BITWIDTH  => OUTWIDTH, DELAY1 => 1)
    PORT MAP (
      nGrst  => nGrst, rst => rst, clk => clk,
      clkEn  => datai_valid,
      inp    => outp_w,
      outp   => outp  );

  -- Pipe valid bit
  valid_pipe_0 : corefir_kitDelay_bit_reg
    GENERIC MAP (DELAY1  => 2)
    PORT MAP (
      nGrst  => nGrst, rst => rst, clk => clk,
      clkEn  => datai_valid,
      inp    => validi,
      outp   => valido    );

END ARCHITECTURE rtl;



-- Combine all round types depending on QUANTIZATION parameter and
-- INWIDTH/OUTWIDTH values:
-- QUANTIZATION                   Function
-- ---------------------------------------
--  0     INWIDTH >  OUTWIDTH     Truncate
--  1     INWIDTH >  OUTWIDTH     Round up
--  2     INWIDTH > OUTWIDTH+1    Convergent round
--  2     INWIDTH ==OUTWIDTH+1    Round up
--  x     INWIDTH <= OUTWIDTH     Sign extend

LIBRARY ieee;
  USE ieee.std_logic_1164.all;
USE work.corefir_rtl_pack.all;

ENTITY corefir_kitRoundTop IS
  GENERIC (INWIDTH : INTEGER := 16;
    OUTWIDTH      : INTEGER := 12;
    QUANTIZATION  : INTEGER := 1  );  -- Simply truncate if QUANTIZATION==0
  PORT (
    nGrst         : IN STD_LOGIC;
    rst           : IN STD_LOGIC;
    clk           : IN STD_LOGIC;
    datai_valid   : IN STD_LOGIC;
    inp           : IN STD_LOGIC_VECTOR(INWIDTH - 1 DOWNTO 0);
    outp          : OUT STD_LOGIC_VECTOR(OUTWIDTH - 1 DOWNTO 0);
    --A bit that travels side by side with data.  No interaction with rounding
    validi        : IN STD_LOGIC;
    valido        : OUT STD_LOGIC  );
END ENTITY corefir_kitRoundTop;

ARCHITECTURE rtl OF corefir_kitRoundTop IS
  SIGNAL outp_w        : STD_LOGIC_VECTOR(OUTWIDTH-1 DOWNTO 0);
BEGIN
  -- Just sign extend
  sign_extend : IF (INWIDTH <= OUTWIDTH) GENERATE
    outp_w <= sign_ext(inp, OUTWIDTH, 0);

    pipe_0 : corefir_kitDelay_reg
      GENERIC MAP (BITWIDTH => OUTWIDTH, DELAY1 => 2)
      PORT MAP (
        nGrst  => nGrst, rst => rst, clk => clk,
        clkEn  => datai_valid,
        inp    => outp_w,
        outp   => outp      );

    pipe_1 : corefir_kitDelay_bit_reg
      GENERIC MAP (DELAY1  => 2)
      PORT MAP (
        nGrst  => nGrst, rst => rst, clk => clk,
        clkEn  => datai_valid,
        inp    => validi,
        outp   => valido      );
  END GENERATE;

  -- Truncate or round up
  round_up : IF (((INWIDTH>OUTWIDTH) AND (QUANTIZATION<2)) OR
                                                (INWIDTH=OUTWIDTH+1)) GENERATE
    corefir_kitRndUp_0 : corefir_kitRndUp
      GENERIC MAP (
        INWIDTH       => INWIDTH,
        OUTWIDTH      => OUTWIDTH,
        QUANTIZATION  => QUANTIZATION )
      PORT MAP (
        nGrst => nGrst, rst => rst, clk => clk,
        datai_valid  => datai_valid,
        inp          => inp,
        outp         => outp,
        validi       => validi,
        valido       => valido      );
  END GENERATE;

  -- Convergent rounding
  converg_rnd : IF ((INWIDTH>OUTWIDTH+1) AND (QUANTIZATION=2)) GENERATE
    corefir_kitRndEven_0 : corefir_kitRndEven
      GENERIC MAP (INWIDTH => INWIDTH, OUTWIDTH => OUTWIDTH)
      PORT MAP (
        nGrst => nGrst, rst => rst, clk => clk,
        datai_valid  => datai_valid,
        inp          => inp,
        outp         => outp,
        validi       => validi,
        valido       => valido      );
  END GENERATE;

END ARCHITECTURE rtl;



----        ___  ____  ___  _  _    ____  _  _  ____  ____  _  _  ____
----       / __)(_  _)/ __)( \( )  ( ___)( \/ )(_  _)( ___)( \( )(  _ \
----       \__ \ _)(_( (_-. )  (    )__)  )  (   )(   )__)  )  (  )(_) )
----       (___/(____)\___/(_)\_)  (____)(_/\_) (__) (____)(_)\_)(____/
---- Resize a vector inp to the specified size.
---- When resizing to a larger vector, sign extend the inp: the new [leftmost]
---- bit positions are filled with a sign bit (UNSIGNED==0) or 0's (UNSIGNED==1).
---- When truncationg to a smaller vector, the sign bit is retained along with the
---- rightmost part (if UNSIGNED==0), or the leftmost bits are all dropped (if
---- UNSIGNED==1)
--LIBRARY IEEE;
--  USE IEEE.std_logic_1164.all;
--  USE IEEE.numeric_std.all;
--USE work.corefir_rtl_pack.all;
---- If signed, keep the input sign bit; otherwise just drop extra MSB's
--ENTITY corefir_signExt IS
--  GENERIC (
--    INWIDTH   : INTEGER := 16;
--    OUTWIDTH  : INTEGER := 20;
--    UNSIGN    : INTEGER := 0  );
--  PORT (
--    inp             : IN STD_LOGIC_VECTOR(INWIDTH-1 DOWNTO 0);
--    outp            : OUT STD_LOGIC_VECTOR(OUTWIDTH-1 DOWNTO 0)  );
--END ENTITY corefir_signExt;
--
--ARCHITECTURE rtl OF corefir_signExt IS
--  SIGNAL sB            : STD_LOGIC;
--  signal outp_s : signed  (OUTWIDTH-1 downto 0);
--  signal outp_u : unsigned(OUTWIDTH-1 downto 0);
--BEGIN
--  -- Input sign bit
--  sB <= inp(INWIDTH-1);
--  pass_thru : IF (INWIDTH = OUTWIDTH) GENERATE
--    outp <= inp;
--  END GENERATE;
--
--  extend_sign : IF (OUTWIDTH > INWIDTH) GENERATE
--    outp_s <= RESIZE (signed(inp), OUTWIDTH);
--    outp_u <= RESIZE (unsigned(inp), OUTWIDTH);
--    outp <= std_logic_vector(outp_s) WHEN UNSIGN=0 ELSE std_logic_vector(outp_u);
--  END GENERATE;
--
--  cut_msbs : IF ((OUTWIDTH < INWIDTH) AND (DROP_MSB = 1)) GENERATE
--    outp(OUTWIDTH-2 DOWNTO 0) <= inp(OUTWIDTH-2 DOWNTO 0);
--    outp(OUTWIDTH-1) <= sB WHEN (UNSIGN = 0) ELSE inp(OUTWIDTH-1);
--  END GENERATE;
--
--END ARCHITECTURE rtl;
--



