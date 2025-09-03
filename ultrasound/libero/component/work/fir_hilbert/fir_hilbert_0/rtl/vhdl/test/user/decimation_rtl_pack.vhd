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

library IEEE;
use IEEE.STD_LOGIC_1164.all;
USE std.textio.all;
USE IEEE.NUMERIC_STD.all;

PACKAGE decm_rtl_pack IS

  FUNCTION to_logic   ( x : integer) return std_logic;
  FUNCTION to_logic   ( x : boolean) return std_logic;
  FUNCTION to_integer ( sig : std_logic_vector) return integer;
  function to_integer ( x : boolean) return integer;
  FUNCTION to_signInteger ( din : std_logic_vector ) return integer;
  FUNCTION reductionAnd (x: std_logic_vector) RETURN std_logic;
  FUNCTION reductionOr (x: std_logic_vector) RETURN std_logic;
  FUNCTION reductionXor (x: std_logic_vector) RETURN std_logic;

  FUNCTION kit_resize (a:IN signed; len: IN integer) RETURN signed;
  FUNCTION kit_resize (a:IN unsigned; len: IN integer) RETURN unsigned;

  -- convert std_logic to std_logic_vector and back
  FUNCTION vectorize (s: std_logic)        return std_logic_vector;
  FUNCTION vectorize (v: std_logic_vector) return std_logic_vector;
  FUNCTION scalarize (v: in std_logic_vector) return std_logic;

-- Shift Left Logical: leftShiftL(bbbbb, 2) = bbb00;
  FUNCTION leftShiftL (arg: STD_LOGIC_VECTOR; count: NATURAL)
                                                        RETURN STD_LOGIC_VECTOR;
-- Shift Right Logical: rightShiftL(bbbbb, 2) = 00bbb;
  FUNCTION rightShiftL (ARG: STD_LOGIC_VECTOR; COUNT: NATURAL)
                                                        RETURN STD_LOGIC_VECTOR;
-- Shift Right Arithmetic: rightShiftA(sbbbb, 2) = sssbb;
  FUNCTION rightShiftA (ARG: STD_LOGIC_VECTOR; COUNT: NATURAL)
                                                        RETURN STD_LOGIC_VECTOR;
  function ceil_log2 (N : positive) return natural;
  function ceil_log3 (N : positive) return natural;
  function intMux (a, b : integer; sel : boolean ) return integer;

  function sign_ext (inp: std_logic_vector; OUTWIDTH, UNSIGN: natural)
            return std_logic_vector;
  FUNCTION clmn_break (i, COLUMN, TAPS_PHY : integer) return integer;
  FUNCTION column (FPGA_FAMILY, DIE_SIZE : integer) return integer;
  FUNCTION xreg_count (FPGA_FAMILY, DIE_SIZE : integer) return integer;


--------------------------------------------------------------------------------
  COMPONENT decm_kitEdge IS
    GENERIC (REDGE  : INTEGER := 1 );		-- 1 - rising edge, or 0 - falling edge
    PORT (nGrst, rst, clk, inp  : IN STD_LOGIC;
      outp                      : OUT STD_LOGIC  );
  END COMPONENT;

  COMPONENT decm_kitDelay_bit_reg IS
    GENERIC (DELAY1  : INTEGER := 2);
    PORT (nGrst, rst, clk, clkEn, inp : IN STD_LOGIC;
      outp                            : OUT STD_LOGIC  );
  END COMPONENT;

  COMPONENT decm_kitDelay_reg IS
    GENERIC ( BITWIDTH      : INTEGER := 16;
              DELAY1         : INTEGER := 2  );
    PORT (nGrst, rst, clk, clkEn : in std_logic;
          inp : in std_logic_vector(BITWIDTH-1 DOWNTO 0);
          outp: out std_logic_vector(BITWIDTH-1 DOWNTO 0) );
  END COMPONENT;

  COMPONENT decm_kitCountS IS
    GENERIC ( WIDTH         : INTEGER := 16;
              DCVALUE       : INTEGER := 1;		-- state to decode
              BUILD_DC      : INTEGER := 1  );
    PORT (nGrst, rst, clk, clkEn, cntEn : IN STD_LOGIC;
      Q             : OUT STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
      dc            : OUT STD_LOGIC   );		-- decoder output
  END COMPONENT;

  COMPONENT kitCountC IS
    GENERIC ( WIDTH         : INTEGER := 16;		-- in bits
              UPDOWN        : INTEGER := 2;		-- 0 - up, 1-down, 2 - up/down
              DCVALUE       : INTEGER := 1;		-- state to decode
              BUILD_CLKEN   : INTEGER := 1;
              BUILD_RST     : INTEGER := 1;
              BUILD_LD      : INTEGER := 1;
              BUILD_DC      : INTEGER := 1  );
    PORT (nGrst, rst, clk, clkEn, cntEn : IN STD_LOGIC;
          up, ld                        : IN STD_LOGIC;
      din           : IN STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
      Q             : OUT STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
      dc            : OUT STD_LOGIC   );		-- decoder output
  END COMPONENT;

  COMPONENT decm_signExt IS
    GENERIC ( INWIDTH       : INTEGER := 16;
              OUTWIDTH      : INTEGER := 20;
              UNSIGN        : INTEGER := 0    );		-- 0-signed conversion; 1-unsigned
    PORT (  inp   : IN STD_LOGIC_VECTOR(INWIDTH-1 DOWNTO 0);
            outp  : OUT STD_LOGIC_VECTOR(OUTWIDTH-1 DOWNTO 0)  );
  END COMPONENT;

  COMPONENT decm_RAM_fabric IS
    GENERIC(
      BITWIDTH      : INTEGER := 16;
      RAM_DEPTH     : INTEGER := 256;
      RAM_LOGDEPTH  : INTEGER := 8      );
    PORT (nGrst, RCLOCK, WCLOCK : in std_logic;
          WRB, RDB : in std_logic;
          DI     : in std_logic_vector(BITWIDTH-1 DOWNTO 0);
          RADDR, WADDR : in std_logic_vector(RAM_LOGDEPTH-1 downto 0);
          DO_OUT : out std_logic_vector(BITWIDTH-1 DOWNTO 0) );
  END COMPONENT;

  COMPONENT fabric_accumulator
    GENERIC ( BITWIDTH  : INTEGER := 16 );
    PORT (    
      nGrst         : IN STD_LOGIC;
      clk           : IN STD_LOGIC;
      rst           : IN STD_LOGIC;
      D             : IN STD_LOGIC_VECTOR(BITWIDTH-1 DOWNTO 0);
      Q             : OUT STD_LOGIC_VECTOR(BITWIDTH-1 DOWNTO 0);
      clkEn         : IN STD_LOGIC  );
  END COMPONENT;

  COMPONENT decm_accumulator
    GENERIC (	ACC_WIDTH   : INTEGER;
              CD_WIDTH    : INTEGER   );
    PORT (
      nGrst, rstn, clk            : IN STD_LOGIC;
      din_en, acc_en, break_fdbk  : IN STD_LOGIC;
      din                         : IN STD_LOGIC_VECTOR(CD_WIDTH-1 DOWNTO 0);
      acc_out                     : OUT STD_LOGIC_VECTOR(ACC_WIDTH-1 DOWNTO 0)   );
  END COMPONENT;

END decm_rtl_pack;
--------------------------------------------------------------------------------
PACKAGE BODY decm_rtl_pack IS

  FUNCTION to_logic ( x : integer) return std_logic is
  variable y  : std_logic;
  begin
    if x = 0 then
      y := '0';
    else
      y := '1';
    end if;
    return y;
  end to_logic;


  FUNCTION to_logic( x : boolean) return std_logic is
    variable y : std_logic;
  begin
    if x then
      y := '1';
    else
      y := '0';
    end if;
    return(y);
  end to_logic;


  FUNCTION to_integer(sig : std_logic_vector) return integer is
    variable num : integer := 0;  -- descending sig as integer
  begin
    for i in sig'range loop
      if sig(i)='1' then
        num := num*2+1;
      else  -- take anything other than '1' as '0'
        num := num*2;
      end if;
    end loop;  -- i
    return num;
  end function to_integer;


  FUNCTION to_signInteger ( din : std_logic_vector ) return integer is
  begin
    return to_integer(signed(din));
  end to_signInteger;


  FUNCTION to_integer( x : boolean) return integer is
    variable y : integer;
  BEGIN
    if x then
      y := 1;
    else
      y := 0;
    end if;
    return(y);
  END to_integer;


  FUNCTION reductionAnd (x: std_logic_vector) RETURN std_logic IS
    VARIABLE r: std_logic := '1';
    BEGIN
      FOR i IN x'range LOOP
        r := r AND x(i);
      END LOOP;
      RETURN r;
  END FUNCTION reductionAnd;


  FUNCTION reductionOr (x: std_logic_vector) RETURN std_logic IS
    VARIABLE r: std_logic := '0';
    BEGIN
      FOR i IN x'range LOOP
        r := r OR x(i);
      END LOOP;
      RETURN r;
  END FUNCTION reductionOr;


  FUNCTION reductionXor (x: std_logic_vector) RETURN std_logic IS
    VARIABLE r: std_logic := '0';
    BEGIN
      FOR i IN x'range LOOP
        r := r XOR x(i);
      END LOOP;
      RETURN r;
  END FUNCTION reductionXor;


  -- Result: Resizes the SIGNED vector IN to the specified size.
  --         To create a larger vector, the new [leftmost] bit positions
  --         are filled with the sign bit.
  --         When truncating, the sign bit is retained along with the MSB's
  FUNCTION kit_resize(a:IN signed; len: IN integer) RETURN signed IS
  BEGIN
    IF a'length > len then
       RETURN a(len-1+a'right DOWNTO a'right);
    ELSE
      RETURN Resize(a,len);
    END IF;
  END kit_resize;


  -- Result: Resizes the UNSIGNED vector IN to the specified size.
  --         To create a larger vector, the new [leftmost] bit positions
  --         are filled with '0'. When truncating, the leftmost bits
  --         are dropped (!)
  FUNCTION kit_resize(a:IN unsigned; len: IN integer) RETURN unsigned IS
  BEGIN
    RETURN Resize(a,len);
  END kit_resize;


  -- Convert std_logic to std_logic_vector(0 downto 0) and back
  FUNCTION vectorize(s: std_logic) return std_logic_vector is
    variable v: std_logic_vector(0 downto 0);
  BEGIN
    v(0) := s;
    return v;
  END;


  FUNCTION vectorize(v: std_logic_vector) return std_logic_vector is
  BEGIN
    return v;
  END;


  -- scalarize returns an LSB
  FUNCTION scalarize(v: in std_logic_vector) return std_logic is
  BEGIN
    --assert v'length = 1
    --report "scalarize: output port must be single bit!"
    --severity FAILURE;
    return v(v'LEFT);
  END;


  -- Shift Left Logical: leftShiftL(bbbbb, 2) = bbb00;
  FUNCTION leftShiftL (arg: STD_LOGIC_VECTOR; count: NATURAL)
                                                      return STD_LOGIC_VECTOR is
    constant ARG_L: INTEGER := ARG'LENGTH-1;
    alias XARG: STD_LOGIC_VECTOR(ARG_L downto 0) is ARG;
    variable RESULT: STD_LOGIC_VECTOR(ARG_L downto 0) := (others => '0');
  BEGIN
    if COUNT <= ARG_L then
      RESULT(ARG_L downto COUNT) := XARG(ARG_L-COUNT downto 0);
    end if;
    return RESULT;
  END leftShiftL;


-- Shift Right Logical: rightShiftL(bbbbb, 2) = 00bbb;
  FUNCTION rightShiftL (ARG: STD_LOGIC_VECTOR; COUNT: NATURAL)
                                                      return STD_LOGIC_VECTOR is
    constant ARG_L: INTEGER := ARG'LENGTH-1;
    alias XARG: STD_LOGIC_VECTOR(ARG_L downto 0) is ARG;
    variable RESULT: STD_LOGIC_VECTOR(ARG_L downto 0) := (others => '0');
  begin
    if COUNT <= ARG_L then
      RESULT(ARG_L-COUNT downto 0) := XARG(ARG_L downto COUNT);
    end if;
    return RESULT;
  end rightShiftL;


-- Shift Right Arithmetic: rightShiftA(sbbbb, 2) = sssbb;
  function rightShiftA (ARG: STD_LOGIC_VECTOR; COUNT: NATURAL)
                                                      return STD_LOGIC_VECTOR is
    constant ARG_L: INTEGER := ARG'LENGTH-1;
    alias XARG: STD_LOGIC_VECTOR(ARG_L downto 0) is ARG;
    variable RESULT: STD_LOGIC_VECTOR(ARG_L downto 0);
    variable XCOUNT: NATURAL := COUNT;
  begin
    if ((ARG'LENGTH <= 1) or (XCOUNT = 0)) then return ARG;
    else
      if (XCOUNT > ARG_L) then XCOUNT := ARG_L;
      end if;
      RESULT(ARG_L-XCOUNT downto 0) := XARG(ARG_L downto XCOUNT);
      RESULT(ARG_L downto (ARG_L - XCOUNT + 1)) := (others => XARG(ARG_L));
    end if;
    return RESULT;
  end rightShiftA;


-- Log2
  function ceil_log2 (N : positive) return natural is
    variable tmp, res : integer;
  begin
    tmp:=1 ;
    res:=0;
    WHILE tmp < N LOOP
      tmp := tmp*2;
      res := res+1;
    END LOOP;
    return res;
  end ceil_log2;

-- Log3
  function ceil_log3 (N : positive) return natural is
    variable tmp, res : integer;
  begin
    tmp:=1 ;
    res:=0;
    WHILE tmp < N LOOP
      tmp := tmp*3;
      res := res+1;
    END LOOP;
    return res;
  end ceil_log3;

-- Integer Mux: mimics a Verilog constant function sel ? b : a;
  function intMux (a, b : integer; sel : boolean ) return integer is
    variable tmp: integer;
  begin
    IF (sel=False) THEN tmp := a;
    ELSE tmp := b;
    END IF;
    return tmp;
  end intMux;


  -- Result: Resizes the vector inp to the specified size.
  -- To create a larger vector, the new [leftmost] bit positions are filled
  -- with the sign bit (if UNSIGNED==0) or 0's (if UNSIGNED==1).
  -- When truncating, the sign bit is retained along with the rightmost part
  -- (if UNSIGNED==0), or the leftmost bits are all dropped (if UNSIGNED==1)
  function sign_ext (inp: std_logic_vector; OUTWIDTH, UNSIGN: natural)
            return std_logic_vector IS
    constant INWIDTH: INTEGER := inp'LENGTH;
    variable outp_s : signed  (OUTWIDTH-1 downto 0);
    variable outp_u : unsigned(OUTWIDTH-1 downto 0);
    variable res: STD_LOGIC_VECTOR(OUTWIDTH-1 downto 0);
  begin
    outp_s := RESIZE (signed(inp), OUTWIDTH);
    outp_u := RESIZE (unsigned(inp), OUTWIDTH);
    if UNSIGN=0 then res := std_logic_vector(outp_s);
    else             res := std_logic_vector(outp_u);
    end if;
    return res;
  end sign_ext;


-- Reed-Solomon
  FUNCTION alpha_to (indxExt : integer;
                     MM, PRIMPOLY : positive )
           return natural is
    constant SEED: positive := 1;
    variable indx, res : natural;
  begin
    res := SEED;
    indx := indxExt MOD (2**MM-1);
    FOR i IN 1 TO indx LOOP
      IF (res >= 2**(MM-1)) THEN res := to_integer(
          std_logic_vector(to_unsigned(2*res, MM)) XOR
          std_logic_vector(to_unsigned(PRIMPOLY, MM)) );
      ELSE                       res := 2*res;
      END IF;
    END LOOP;
    IF (indxExt < 0) THEN res:= 0;
    END IF;
    return res;
  end alpha_to;

  -- EDAC: calculate parity bits
  FUNCTION edac_d2p (datwidth: natural) return integer IS
    variable res: integer range 4 to 8;
  BEGIN
    IF    (datwidth<5)  THEN res := 4;
    ELSIF (datwidth<12) THEN res := 5;
    ELSIF (datwidth<27) THEN res := 6;
    ELSIF (datwidth<58) THEN res := 7;
    ELSE                     res := 8;
    END IF;
    return res;
  END edac_d2p;

  -- Filters
  FUNCTION clmn_break (i, COLUMN, TAPS_PHY : integer) return integer IS
    variable res : integer;
  BEGIN
    -- don't DO_OUT column break (fabric preg) if it is the last tap. Just use p
    IF( ((i MOD COLUMN) = 0) AND (i /= TAPS_PHY) ) THEN
      res := 1;
    ELSE res := 0;
    END IF;
    RETURN res;
  END clmn_break;

  -- Filters
  FUNCTION column (FPGA_FAMILY, DIE_SIZE : integer) return integer IS
    variable res : integer;
  BEGIN
    IF (FPGA_FAMILY=26) THEN  
		CASE DIE_SIZE IS
			WHEN  5 => res := 30;                    --
			WHEN 10 => res := 42;                    --
			WHEN 15 => res := 42;                    --
			WHEN 20 => res := 66;                    --
			WHEN 25 => res := 74;                    
			WHEN 30 => res := 74;      		--RTPF             
			WHEN OTHERS => res := 74;
		END CASE;
    END IF;

   IF (FPGA_FAMILY=27) THEN   
		CASE DIE_SIZE IS
			WHEN  5 => res := 6;                    --
			WHEN 10 => res := 34;                    --
			WHEN 15 => res := 38;                    --
			WHEN 20 => res := 46;                    --
			WHEN 25 => res := 58;                          
			WHEN OTHERS => res := 46;
		END CASE;
    END IF;

    return res;
  END column;

  -- Filters
  FUNCTION xreg_count (FPGA_FAMILY, DIE_SIZE : integer) return integer IS
    variable res : integer;
  BEGIN
   IF (FPGA_FAMILY=26) THEN                --PF  
		CASE DIE_SIZE IS
			WHEN  5 => res := 2;                    --
			WHEN 10 => res := 3;                    --
			WHEN 15 => res := 3;                    --
			WHEN 20 => res := 4;                    --
			WHEN 25 => res := 5;                    
			WHEN 30 => res := 5;      		--RTPF             
			WHEN OTHERS => res := 3;
		END CASE;
    END IF;
	
	IF (FPGA_FAMILY=27) THEN               --PFSOC
		CASE DIE_SIZE IS
			WHEN  5 => res := 2;                    --
			WHEN 10 => res := 3;                    --
			WHEN 15 => res := 3;                    --
			WHEN 20 => res := 4;                    --
			WHEN 25 => res := 4;        			            
			WHEN OTHERS => res := 4;
		END CASE;
    END IF;
    return res;
  END xreg_count;

END decm_rtl_pack;
