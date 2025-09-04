-- ***************************************************************************/
--Actel Corporation Proprietary and Confidential
--Copyright 2008 Actel Corporation. All rights reserved.
--
--ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
--ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
--IN ADVANCE IN WRITING.
--
--Description:  CoreEDAC User Test Bench
--              Behavioral entities
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
USE work.bhv_pack.all;

ENTITY bhv_kitCountS IS
  GENERIC ( WIDTH         : INTEGER := 16;
            DCVALUE       : INTEGER := 1;		-- state to decode
            BUILD_DC      : INTEGER := 1  );
  PORT (nGrst, rst, clk, clkEn, cntEn : IN STD_LOGIC;
    Q             : OUT STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
    dc            : OUT STD_LOGIC   );		-- decoder output
END ENTITY bhv_kitCountS;

ARCHITECTURE rtl OF bhv_kitCountS IS
  SIGNAL count  : unsigned(WIDTH-1 DOWNTO 0);
BEGIN
  Q <= std_logic_vector(count);
  dc <= to_logic_bhv(count = DCVALUE) WHEN (BUILD_DC = 1) ELSE 'X';

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



LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY bhvCounter IS
  GENERIC(
    WIDTH: positive := 16;
    UPDOWN: natural := 2    );
  PORT (nGrst, rst, clk, clkEn, up, ld : in std_logic;
        din: in natural;
        Q  : out natural   );
END ENTITY bhvCounter;

ARCHITECTURE bhv OF bhvCounter IS

BEGIN
  PROCESS (clk, nGrst)
    variable count: natural;
  BEGIN
    IF (nGrst = '0') THEN
      count := 0;
    ELSIF (clk'EVENT AND clk = '1') THEN
      IF(rst='1') THEN
        count := 0;
      ELSIF (clkEn='1') THEN
        IF (ld='1') THEN
          count := din;
        ELSIF (UPDOWN=0) THEN
          IF(count = 2**WIDTH-1) THEN count := 0;
          ELSE                        count := count + 1;
          END IF;
        ELSIF (UPDOWN=1) THEN
          IF(count = 0) THEN count := 2**WIDTH-1;
          ELSE               count := count - 1;
          END IF;
        ELSIF ((UPDOWN=2) AND (up='1')) THEN
          IF(count = 2**WIDTH-1) THEN count := 0;
          ELSE                        count := count + 1;
          END IF;
        ELSIF ((UPDOWN=2) AND (up='0')) THEN
          IF(count = 0) THEN count := 2**WIDTH-1;
          ELSE               count := count - 1;
          END IF;
        END IF;
      END IF;
    END IF;
    Q <= count;
  END PROCESS;
END ARCHITECTURE bhv;



--------------------------------------------------------------------------------

--    ########    ########   ##           ###     ##    ##
--    ##     ##   ##         ##          ## ##     ##  ##
--    ##     ##   ##         ##         ##   ##     ####
--    ##     ##   ######     ##        ##     ##     ##
--    ##     ##   ##         ##        #########     ##
--    ##     ##   ##         ##        ##     ##     ##
--    ########    ########   ########  ##     ##     ##

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY bhvDelay IS
  GENERIC ( DELAY1: natural := 2  );
  PORT    ( nGrst, rst, clk : in std_logic;
            inp : in natural;
            outp: out natural );
END ENTITY bhvDelay;

ARCHITECTURE bhv of bhvDelay IS
  TYPE dlyArray IS ARRAY (0 to DELAY1) of integer;
  -- initialize DELAY1 line
  SIGNAL delayLine : dlyArray := (OTHERS => 0);
BEGIN
  outp <= inp WHEN DELAY1=0 ELSE
          delayLine(DELAY1-1);

  PROCESS (clk, nGrst)
  BEGIN
    IF (NOT nGrst = '1') THEN
      FOR i IN DELAY1 DOWNTO 0 LOOP
        delayLine(i) <= 0;
      END LOOP;
    ELSIF (clk'EVENT AND clk = '1') THEN
      IF (rst='1') THEN
        FOR i IN DELAY1 DOWNTO 0 LOOP
          delayLine(i) <= 0;
        END LOOP;
      ELSE
        FOR i IN DELAY1 DOWNTO 1 LOOP
          delayline(i) <= delayline(i-1);
        END LOOP;
        delayline(0) <= inp;
      END IF;  -- rst/clkEn
    END IF;
  END PROCESS;
END ARCHITECTURE bhv;


----------- Register-based 1-bit wide DELAY1 has only input and output ---------
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;
USE work.bhv_pack.all;

ENTITY bhvDelay_bit_reg IS
  GENERIC(DELAY1:     integer := 2  );
  PORT (nGrst, rst, clk, clkEn : in std_logic;
        inp : in std_logic;
        outp: out std_logic );
END ENTITY bhvDelay_bit_reg;

ARCHITECTURE bhv of bhvDelay_bit_reg IS
  CONSTANT DLY_INT : integer := intMux_bhv (0, DELAY1-1, (DELAY1>0));
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
END ARCHITECTURE bhv;


------------ Register-based Multi-bit DELAY1 has only input and output ----------
-- similar to Verilog bhvDelay but rst has higher priority than clkEn
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;
USE work.bhv_pack.all;

ENTITY bhvDelay_reg IS
  GENERIC(
    WIDTH : integer := 16;
    DELAY1:     integer := 2  );
  PORT (nGrst, rst, clk, clkEn : in std_logic;
        inp : in std_logic_vector(WIDTH-1 DOWNTO 0);
        outp: out std_logic_vector(WIDTH-1 DOWNTO 0) );
END ENTITY bhvDelay_reg;

ARCHITECTURE bhv of bhvDelay_reg IS
  CONSTANT DLY_INT : integer := intMux_bhv (0, DELAY1-1, (DELAY1>0));
  TYPE dlyArray IS ARRAY (0 to DLY_INT) of std_logic_vector(WIDTH-1 DOWNTO 0);
  -- initialize DELAY1 line
  SIGNAL delayLine : dlyArray := (OTHERS => std_logic_vector(to_unsigned(0, WIDTH)));
BEGIN
  genNoDel: IF (DELAY1=0) GENERATE
    outp <= inp;
  END GENERATE;

  genDel: IF (DELAY1/=0) GENERATE
      outp <= delayLine(DELAY1-1);
  END GENERATE;

  PROCESS (clk, nGrst)
  BEGIN
    IF (nGrst = '0') THEN
      FOR i IN DLY_INT DOWNTO 0 LOOP
        delayLine(i) <= std_logic_vector( to_unsigned(0, WIDTH));
      END LOOP;
    ELSIF (clk'EVENT AND clk = '1') THEN
      IF (rst='1') THEN
        FOR i IN DLY_INT DOWNTO 0 LOOP
          delayLine(i) <= std_logic_vector( to_unsigned(0, WIDTH));
        END LOOP;
      ELSIF (clkEn = '1') THEN
        FOR i IN DLY_INT DOWNTO 1 LOOP
          delayline(i) <= delayline(i-1);
        END LOOP;
        delayline(0) <= inp;
      END IF;  -- rst/clkEn
    END IF;
  END PROCESS;
END ARCHITECTURE bhv;




------------------------------- CLOCK GENERATOR --------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;

ENTITY bhvClockGen IS
  GENERIC (
    CLKPERIOD   : delay_length := 20 ns;
    NGRSTLASTS  : delay_length := 24 ns  );
  PORT (halt    :  IN std_logic;
    clk, nGrst  : OUT std_logic);
END bhvClockGen;

ARCHITECTURE behav OF bhvClockGen IS
  SIGNAL clk_w : std_logic := '0';
  SIGNAL nGrst_w : std_logic := '0';

BEGIN
  clk   <= clk_w;
  nGrst <= nGrst_w;
  nGrst_w <= '1' AFTER NGRSTLASTS;

  PROCESS
    BEGIN
      clk_w <= '0', '1' AFTER CLKPERIOD/2;
      LOOP
        IF (halt='1') THEN WAIT;
        ELSE
          clk_w <= '0', '1' AFTER CLKPERIOD/2;
          WAIT FOR CLKPERIOD;
        END IF;
      END LOOP;
  END PROCESS;

END ARCHITECTURE behav;

------------------------------------ Pulse edge detector
LIBRARY ieee;
  USE ieee.std_logic_1164.all;

ENTITY bhvEdge_ce IS
  GENERIC ( REDGE : INTEGER := 1	);	  -- 1 - rising edge, or 0 - falling edge
  PORT (  nGrst, rst, clk, clkEn, inp : IN STD_LOGIC;
          outp                        : OUT STD_LOGIC );
END ENTITY bhvEdge_ce;

ARCHITECTURE bhv OF bhvEdge_ce IS
  SIGNAL inp_tick        : STD_LOGIC;
  SIGNAL rise_edge       : STD_LOGIC;
  SIGNAL fall_edge       : STD_LOGIC;

BEGIN
  rise_edge <= inp AND NOT(inp_tick);
  fall_edge <= NOT(inp) AND inp_tick;
  outp <= fall_edge WHEN REDGE=0 ELSE rise_edge;

  PROCESS (clk, nGrst)
  BEGIN
    IF (nGrst = '0') THEN
      inp_tick <= '0';
    ELSIF (clk'EVENT AND clk = '1') THEN
      IF (rst = '1') THEN inp_tick <= '0';
      ELSE        
        IF(clkEn = '1') THEN  inp_tick <= inp;
        END IF;
      END IF;
    END IF;
  END PROCESS;
END ARCHITECTURE bhv;

------------------------------------ Pulse edge detector
LIBRARY ieee;
  USE ieee.std_logic_1164.all;

ENTITY decm_bhvEdge IS
  GENERIC ( REDGE : INTEGER := 1	);	  -- 1 - rising edge, or 0 - falling edge
  PORT (  nGrst, rst, clk, inp  : IN STD_LOGIC;
          outp                  : OUT STD_LOGIC );
END ENTITY decm_bhvEdge;

ARCHITECTURE bhv OF decm_bhvEdge IS
  SIGNAL inp_tick        : STD_LOGIC;
  SIGNAL rise_edge       : STD_LOGIC;
  SIGNAL fall_edge       : STD_LOGIC;

BEGIN
  rise_edge <= inp AND NOT(inp_tick);
  fall_edge <= NOT(inp) AND inp_tick;
  outp <= fall_edge WHEN REDGE=0 ELSE rise_edge;

  PROCESS (clk, nGrst)
  BEGIN
    IF ((NOT(nGrst)) = '1') THEN
      inp_tick <= '0';
    ELSIF (clk'EVENT AND clk = '1') THEN
      IF (rst = '1') THEN inp_tick <= '0';
      ELSE                inp_tick <= inp;
      END IF;
    END IF;
  END PROCESS;
END ARCHITECTURE bhv;


-- ------------------------------------------------------------------------
-- Synchronize two same-clk-domain pulses, whose clkEn are different
-- inp              ____|______________________
-- receiver_clkEn   _|______|______|_____|_____
--                           ______
-- outp             ________|      |___________
--
LIBRARY ieee;
  USE ieee.std_logic_1164.all;

ENTITY bhv_fEdge_ce IS
  PORT (  nGrst, rst, clk, inp, receiver_clkEn  : IN STD_LOGIC;
          outp                                  : OUT STD_LOGIC );
END ENTITY bhv_fEdge_ce;

ARCHITECTURE bhv OF bhv_fEdge_ce IS
  SIGNAL async_flop      : STD_LOGIC;
  SIGNAL flop            : STD_LOGIC;
BEGIN
  outp <= flop;
  PROCESS (clk, nGrst)
  BEGIN
    IF (nGrst = '0') THEN
      async_flop <= '0';
      flop <= '0';
    ELSIF (clk'EVENT AND clk = '1') THEN
      IF    (inp = '1') THEN  async_flop <= '1';
      ELSIF (flop ='1') THEN  async_flop <= '0';
      END IF;
      IF (receiver_clkEn='1') THEN
        IF (rst = '1') THEN   flop <= '0';
        ELSE                  flop <= async_flop;
        END IF;
      END IF;
    END IF;
  END PROCESS;
END ARCHITECTURE bhv;


--  Generate another random sample on every clock if clkEn is active  ---------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
USE IEEE.numeric_std.all;
use work.bhv_pack.all;
-- Douglas J. Smith p.185
entity bhv_lfsr is
  generic ( WIDTH: integer;
            LNGTH: integer );
  port(
    nGrst, rst, clk, clkEn, start :  in std_logic;
    term                          : out std_logic;
    outp  : out std_logic_vector (WIDTH-1 downto 0)   );
end entity bhv_lfsr;

architecture bhv of bhv_lfsr is
  type taps_arr_type is array(2 to 32) of unsigned(31 downto 0);
  constant taps_arr: taps_arr_type := (
    2  => (0  =>'1', 1  =>'1', others=>'0'),
    3  => (0  =>'1', 2  =>'1', others=>'0'),
    4  => (0  =>'1', 3  =>'1', others=>'0'),
    5  => (1  =>'1', 4  =>'1', others=>'0'),
    6  => (0  =>'1', 5  =>'1', others=>'0'),
    7  => (0  =>'1', 6  =>'1', others=>'0'),
    8  => (1  =>'1', 2  =>'1', 3  =>'1', 7  =>'1', others=>'0'),
    9  => (3  =>'1', 8  =>'1', others=>'0'),
    10 => (2  =>'1', 9  =>'1', others=>'0'),
    11 => (1  =>'1', 10 =>'1', others=>'0'),
    12 => (0  =>'1', 3  =>'1', 5  =>'1', 11 =>'1', others=>'0'),
    13 => (0  =>'1', 2  =>'1', 3  =>'1', 12 =>'1', others=>'0'),
    14 => (0  =>'1', 2  =>'1', 4  =>'1', 13 =>'1', others=>'0'),
    15 => (0  =>'1', 14 =>'1', others=>'0'),
    16 => (1  =>'1', 2  =>'1', 4  =>'1', 15 =>'1', others=>'0'),
    17 => (2  =>'1', 16 =>'1', others=>'0'),
    18 => (6  =>'1', 17 =>'1', others=>'0'),
    19 => (0  =>'1', 1  =>'1', 4  =>'1', 18 =>'1', others=>'0'),
    20 => (2  =>'1', 19 =>'1', others=>'0'),
    21 => (1  =>'1', 20 =>'1', others=>'0'),
    22 => (0  =>'1', 21 =>'1', others=>'0'),
    23 => (4  =>'1', 22 =>'1', others=>'0'),
    24 => (0  =>'1', 2  =>'1', 3  =>'1', 23 =>'1', others=>'0'),
    25 => (2  =>'1', 24 =>'1', others=>'0'),
    26 => (0  =>'1', 1  =>'1', 5  =>'1', 25 =>'1', others=>'0'),
    27 => (0  =>'1', 1  =>'1', 4  =>'1', 26 =>'1', others=>'0'),
    28 => (2  =>'1', 27 =>'1', others=>'0'),
    29 => (1  =>'1', 28 =>'1', others=>'0'),
    30 => (0  =>'1', 3  =>'1', 5  =>'1', 29 =>'1', others=>'0'),
    31 => (2  =>'1', 30 =>'1', others=>'0'),
    32 => (1  =>'1', 5  =>'1', 6  =>'1', 31 =>'1', others=>'0') );

  signal taps_w: unsigned(WIDTH-1 downto 0);
  signal timer : integer;

BEGIN
  lfsr: process(nGrst, clk)
    variable lfsr_reg: unsigned(WIDTH-1 downto 0);
    variable bits0_nminus1_zero, feedback : std_logic;
  begin
    taps_w  <= taps_arr(WIDTH)(WIDTH-1 downto 0);
    IF (nGrst='0') THEN
      lfsr_reg := (others=>'0');
    ELSIF (clk'EVENT AND clk='1') THEN
      IF (clkEn='1') THEN
        IF((rst='1') OR (start='1')) THEN
          lfsr_reg  := (others=>'0');
        ELSE
          bits0_nminus1_zero  := '0';
          for N in 0 to WIDTH-2 loop
            bits0_nminus1_zero  := bits0_nminus1_zero or lfsr_reg(N);
          end loop;
          bits0_nminus1_zero  := NOT bits0_nminus1_zero;
          feedback  := lfsr_reg(WIDTH-1) xor bits0_nminus1_zero;
          for N in WIDTH-1 downto 1 loop
            IF(taps_w(N-1)='1') then
              lfsr_reg(N) := lfsr_reg(N-1) xor feedback;
            ELSE
              lfsr_reg(N) := lfsr_reg(N-1);
            END IF;
          end loop;
          lfsr_reg(0) := feedback;
        END IF;
      END IF;
      outp <= std_logic_vector(lfsr_reg);
    END IF;
  end process;

  PROCESS (nGrst, clk)
  BEGIN
    IF (nGrst = '0') THEN
      timer <= 0;
      term <= '0';
    ELSIF (clk'EVENT AND clk = '1') THEN
      IF (clkEn = '1') THEN
        IF((rst='1') OR (start='1')) THEN
          timer <= 0;
          term <= '0';
        ELSE
          timer <= timer + 1;
          term <= to_logic_bhv(timer=10+LNGTH);
        END IF;
      END IF;
    END IF;
  END PROCESS;
end architecture;


-----==========================--------
-- Dirac delta function: _______|_____________
-- Generate another Dirac sample on every clock if clkEn is active
-- 0 0 0 .. 0 0 1 0 0 0 0 .. 0 0
library IEEE;
use IEEE.STD_LOGIC_1164.all;
USE IEEE.numeric_std.all;
use work.bhv_pack.all;

ENTITY bhv_dirac IS
  GENERIC ( WIDTH   : integer := 8;
            AMPL    : integer := 0;		-- 0 - classic amplitude=1; 1-ampl=2^(WIDTH-1)
            LNGTH   : integer := 100    );
  PORT (nGrst, rst, clk, clkEn, start  : IN STD_LOGIC;
        outp  : OUT std_logic_vector(WIDTH-1 downto 0);
        term  : OUT std_logic );  -- terminate a particular test sequence
END ENTITY bhv_dirac;

ARCHITECTURE bhv OF bhv_dirac IS
  SIGNAL timer      : integer;
  SIGNAL amplitude  : signed (WIDTH-1 DOWNTO 0);
BEGIN

  -- amplitude = 0111..11 or 000..0001
  amplitude <=  to_signed(1, WIDTH) when AMPL=0 else
                to_signed(2**(WIDTH-1)-1, WIDTH);

  PROCESS (nGrst, clk)
  BEGIN
    IF (nGrst = '0') THEN
      timer <= 0;
      term <= '0';
    ELSIF (clk'EVENT AND clk='1') THEN
      IF (clkEn='1') THEN
        IF((rst='1') OR (start='1')) THEN
          timer <= 0;
          term <= '0';
        ELSE
          timer <= timer + 1;
          term <= to_logic_bhv(timer=10+2*LNGTH);
        END IF;
      END IF;
    END IF;
  END PROCESS;

  PROCESS (timer)
  BEGIN
    IF (timer = 10) THEN
      outp <= std_logic_vector(amplitude);
    ELSIF (timer = 10 + LNGTH) THEN
      outp <= std_logic_vector(-amplitude);
    ELSE
      outp <= (others=>'0');
    END IF;
  END PROCESS;
END ARCHITECTURE bhv;


--           ________
-- Step: ___|
-- Generate Step function sample on every clock if clkEn is active
-- 0 0 0 .. 0 0 1 0 0 0 0 .. 0 0
library IEEE;
use IEEE.STD_LOGIC_1164.all;
USE IEEE.numeric_std.all;
use work.bhv_pack.all;

ENTITY bhv_step IS
  GENERIC ( WIDTH     : INTEGER := 8;
            AMPL      : INTEGER := 0;		-- 0 - classic amplitude=1; 1-ampl=2^(WIDTH-1)
            NEG_AMPL  : INTEGER := 0;		-- negative amplitude
            LNGTH     : INTEGER := 100  );
  PORT (nGrst, rst, clk, clkEn, start  : IN STD_LOGIC;
        outp  : OUT std_logic_vector(WIDTH-1 downto 0);
        term  : OUT std_logic );  -- terminate a particular test sequence
END ENTITY bhv_step;

ARCHITECTURE bhv OF bhv_step IS
  SIGNAL timer           : INTEGER;
  SIGNAL amplitude, amplit : signed (WIDTH-1 DOWNTO 0);
BEGIN
  -- ampl = 0111..11 or 000..001
  amplit <= to_signed(1, WIDTH) when AMPL=0 else
                to_signed(2**(WIDTH-1)-1, WIDTH);

  amplitude <= amplit WHEN NEG_AMPL=0 ELSE -amplit;

  PROCESS (nGrst, clk)
  BEGIN
    IF (nGrst = '0') THEN
      timer <= 0;
      term <= '0';
    ELSIF (clk'EVENT AND clk='1') THEN
      IF (clkEn='1') THEN
        IF((rst='1') OR (start='1')) THEN
          timer <= 0;
          term <= '0';
        ELSE
          timer <= timer + 1;
          term <= to_logic_bhv(timer=10+LNGTH);
        END IF;
      END IF;
    END IF;
  END PROCESS;

  PROCESS (timer)
  BEGIN
    IF ((timer >= 0) AND (timer <= 10+LNGTH)) THEN
      outp <= std_logic_vector(amplitude);
    ELSE
      outp <= (others=>'0');
    END IF;
  END PROCESS;
END ARCHITECTURE bhv;


------ Combine all test generators
LIBRARY ieee;
  USE ieee.std_logic_1164.all;
use work.bhv_pack.all;

ENTITY bhv_gen IS
  GENERIC ( KIND      : INTEGER := 0;		--0-Dirac, 1-step, 2-random
            WIDTH     : INTEGER := 8;
            AMPL      : INTEGER := 0;		-- 0 - classic amplitude=1; 1-ampl=2^(WIDTH-1)
            LNGTH     : INTEGER := 100;
            NEG_AMPL  : INTEGER := 0  );		-- negative amplitude
  PORT (nGrst, rst, clk, clkEn, start  : IN STD_LOGIC;
        outp  : OUT std_logic_vector(WIDTH-1 downto 0);
        term  : OUT std_logic );  -- terminate a particular test sequence
END ENTITY bhv_gen;

ARCHITECTURE bhv OF bhv_gen IS
  SIGNAL starti          : STD_LOGIC;
  SIGNAL termi           : STD_LOGIC;
  signal outp_w          : std_logic_vector(WIDTH-1 downto 0);
BEGIN
  -- Detect start if it falls in btw clkEn
  detect_start_0 : bhv_fEdge_ce
    PORT MAP (  nGrst           => nGrst,
                clk             => clk,
                receiver_clkEn  => clkEn,
                rst             => '0',
                inp             => start,
                outp            => starti );

  outp <= outp_w after 1 ns;

  gen_dirac: if KIND=0 generate
    dirac_0: bhv_dirac
      GENERIC MAP ( WIDTH => WIDTH,
                    AMPL  => AMPL,
                    LNGTH => LNGTH  )
      PORT MAP (nGrst => nGrst, rst => rst, clk => clk, clkEn => clkEn,
                start => starti,
                outp  => outp_w,
                term  => termi  );
  end generate;

  gen_step: if KIND=1 generate
    step_0: bhv_step
      GENERIC MAP ( WIDTH => WIDTH,
                    AMPL  => AMPL,
                    NEG_AMPL => NEG_AMPL,
                    LNGTH => LNGTH  )
      PORT MAP (nGrst => nGrst, rst => rst, clk => clk, clkEn => clkEn,
                start => starti,
                outp  => outp_w,
                term  => termi  );
  end generate;

  gen_lfsr: if KIND=2 generate
    lfsr_0: bhv_lfsr
      GENERIC MAP ( WIDTH => WIDTH,
                    LNGTH => LNGTH  )
      PORT MAP (nGrst => nGrst, rst => rst, clk => clk, clkEn => clkEn,
                start => starti,
                outp  => outp_w,
                term  => termi  );
  end generate;

  -- Narrow term down to 1 clk
  edge_detect_0 : bhvEdge_ce
    GENERIC MAP ( REDGE  => 1 )
    PORT MAP (  nGrst  => nGrst,
                rst    => rst,
                clk    => clk,
                clkEn  => '1',
                inp    => termi,
                outp   => term  );
END ARCHITECTURE bhv;


-- Behavioral reloadable coefficient generator
LIBRARY ieee;
  USE ieee.std_logic_1164.all;
  USE IEEE.numeric_std.all;
use work.bhv_pack.all;

ENTITY bhv_coef_gen IS
  GENERIC ( TAPS        : INTEGER := 100;
            COEF_WIDTH  : INTEGER := 12 );
  PORT (nGrst, rst, clk, clkEn, start  : IN STD_LOGIC;
        coef  : OUT STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
        term, coef_valid  : OUT std_logic );  -- terminate test sequence
END ENTITY bhv_coef_gen;

ARCHITECTURE bhv OF bhv_coef_gen IS
  COMPONENT COREFIR_PF_C0_COREFIR_PF_C0_0_const_arr
    GENERIC ( COEF_WIDTH  : INTEGER := 8;
              TAPS        : INTEGER := 100;
              COEF_SETS   : INTEGER := 1         );
    PORT (
      set       :  IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      coef_flat : OUT STD_LOGIC_VECTOR(TAPS*COEF_WIDTH-1 DOWNTO 0) );
  END COMPONENT;

  SIGNAL gate            : STD_LOGIC;
  SIGNAL gate_tick       : STD_LOGIC;
  SIGNAL coef_count      : INTEGER := TAPS-1;
  SIGNAL timer, timer3bit : INTEGER := 0;
  SIGNAL coef_valid_w1   : STD_LOGIC;
  SIGNAL coef_flat  : STD_LOGIC_VECTOR(TAPS*COEF_WIDTH-1 DOWNTO 0);

BEGIN
  -- Use the first coefficient set as a pattern for the reloadable coefficients
  const_arr_0: COREFIR_PF_C0_COREFIR_PF_C0_0_const_arr
    GENERIC MAP( COEF_WIDTH => COEF_WIDTH,
                 TAPS       => TAPS,
                 COEF_SETS  => 16     )
    PORT MAP (set => "0000",
              coef_flat => coef_flat );

  coef  <= coef_flat((coef_count+1)*COEF_WIDTH-1 DOWNTO coef_count*COEF_WIDTH);

  timer3bit <= timer rem 8;
  coef_valid_w1 <= to_logic_bhv( (timer3bit < 5) OR (timer3bit = 6));

  coef_valid <= coef_valid_w1 AND gate;
  -- rear end of the gate
  term <= gate_tick AND NOT(gate);

  PROCESS (nGrst, clk)
  BEGIN
    IF (nGrst = '0') THEN
      coef_count  <= TAPS-1;
      gate_tick   <= '0';
      gate        <= '0';
    ELSIF (clk'EVENT AND clk='1') THEN
      IF (clkEn='1') THEN
        IF (rst = '1') THEN
          coef_count  <= TAPS-1;
          gate_tick   <= '0';
          gate        <= '0';
        ELSIF (start = '1') THEN
          coef_count  <= TAPS-1;
          gate_tick   <= '0';
          gate        <= '1';
        ELSE
          gate_tick   <= gate;
          IF (coef_valid_w1 = '1') THEN
            IF (coef_count  = 0) then
              coef_count  <= TAPS-1;
              gate        <= '0';
            ELSIF (gate = '1') THEN
              coef_count <= coef_count-1;
            END IF;
          END IF;
        END IF;
      END IF;
    END IF;
  END PROCESS;

  -- Free running timer
  PROCESS (nGrst, clk)
  BEGIN
    IF (nGrst = '0') THEN
        timer <= 0;
    ELSIF (clk'EVENT AND clk = '1') THEN
      IF (clkEn = '1') THEN
        IF ((rst OR start) = '1') THEN
          timer <= 0;
        ELSE
          timer <= timer + 1;
        END IF;
      END IF;
    END IF;
  END PROCESS;

END ARCHITECTURE bhv;


--------------------------------------------------------- CROSS CLOCK ----------
library IEEE;
use IEEE.STD_LOGIC_1164.all;

ENTITY bhvCrossClk IS
  PORT    ( nGrst      :  IN std_logic;
            destin_clk :  IN std_logic;
            inp        :  IN std_logic;
            outp       : OUT std_logic );
END ENTITY bhvCrossClk;

ARCHITECTURE bhv OF bhvCrossClk IS
  SIGNAL inp_tick : std_logic;
BEGIN
  PROCESS (destin_clk, nGrst)
  BEGIN
    IF (nGrst = '0') THEN
      inp_tick  <= '0';
      outp      <= '0';
    ELSIF (destin_clk'EVENT AND destin_clk = '1') THEN
      inp_tick  <= inp;
      outp      <= inp_tick;
    END IF;
  END PROCESS;
END ARCHITECTURE bhv;
