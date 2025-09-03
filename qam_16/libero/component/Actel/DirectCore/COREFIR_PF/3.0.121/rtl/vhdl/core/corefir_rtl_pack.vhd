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
  USE IEEE.STD_LOGIC_1164.all;
  USE IEEE.NUMERIC_STD.all;
USE std.textio.all;

PACKAGE corefir_rtl_pack IS

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
  function ceil_frac (numerat, denominat : integer) return integer;
  function intMux (a, b : integer; sel : boolean ) return integer;
  function logicMux (a, b : std_logic; sel : boolean ) return std_logic;
  function logiVectMux (a, b : std_logic_vector; sel : boolean ) return std_logic_vector;

  function sign_ext (inp: std_logic_vector; OUTWIDTH, UNSIGN: natural)
            return std_logic_vector;
  function significant_row (cur_row, signif_row_number: integer) return integer;
  function vect2int ( index, RC_MM_BITS, RC_MAX_MAC_ROWS: integer; 
                      param: std_logic_vector ) return integer; 
  function row_tap_count (RC_INFO: std_logic_vector; RC_MM_BITS, i: integer) return integer;
  function running_sum_basic (RC_INFO: std_logic_vector; RC_MM_BITS, i: integer) return integer;  
  function running_sum_adv (RC_INFO, RC_RANK: std_logic_vector; 
                            RC_MM_BITS, RC_MAX_MAC_ROWS, i: integer) return integer;
  
  function row_size (fpga_family, die_size : INTEGER ) return INTEGER;  --rtg4
  FUNCTION xreg_count (FPGA_FAMILY, DIE_SIZE : integer) return integer; --rtg4

  COMPONENT corefir_kitDelay_reg
    GENERIC(
      BITWIDTH : integer := 16;
      DELAY1:     integer := 2  );
    PORT (nGrst, rst, clk, clkEn : in std_logic;
        inp : in std_logic_vector(BITWIDTH-1 DOWNTO 0);
        outp: out std_logic_vector(BITWIDTH-1 DOWNTO 0) );
  END COMPONENT;

  COMPONENT corefir_kitDelay_bit_reg
    GENERIC(DELAY1:     integer := 2  );
    PORT (nGrst, rst, clk, clkEn : in std_logic;
          inp : in std_logic;
          outp: out std_logic );
  END COMPONENT;
  
  COMPONENT corefir_kitRndUp IS
    GENERIC ( INWIDTH       : INTEGER;
              OUTWIDTH      : INTEGER;
              QUANTIZATION  : INTEGER );  -- Simply truncate if 0
    PORT (
      nGrst       : IN STD_LOGIC;
      rst         : IN STD_LOGIC;
      clk         : IN STD_LOGIC;
      datai_valid : IN STD_LOGIC;
      inp         : IN STD_LOGIC_VECTOR(INWIDTH-1 DOWNTO 0);
      outp        : OUT STD_LOGIC_VECTOR(OUTWIDTH-1 DOWNTO 0);
      validi      : IN STD_LOGIC; --just a bit that travels side by side with data
      valido      : OUT STD_LOGIC  );
  END COMPONENT;
  
  COMPONENT corefir_kitRndEven IS
    GENERIC ( INWIDTH      : INTEGER;
              OUTWIDTH     : INTEGER  );
    PORT (
      nGrst   : IN STD_LOGIC;
      clk     : IN STD_LOGIC;
      datai_valid  : IN STD_LOGIC;
      rst     : IN STD_LOGIC;
      inp     : IN STD_LOGIC_VECTOR(INWIDTH - 1 DOWNTO 0);
      outp    : OUT STD_LOGIC_VECTOR(OUTWIDTH - 1 DOWNTO 0);
      validi  : IN STD_LOGIC;  --just a bit that travels side by side with data
      valido  : OUT STD_LOGIC  );
  END COMPONENT;
  
  COMPONENT corefir_kitRoundTop IS
    GENERIC ( INWIDTH       : INTEGER;
              OUTWIDTH      : INTEGER;
              QUANTIZATION  : INTEGER );  -- Simply truncate if QUANTIZATION==0
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
  END COMPONENT;


END corefir_rtl_pack;
--------------------------------------------------------------------------------
PACKAGE BODY corefir_rtl_pack IS

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

  function ceil_frac (numerat, denominat : integer) return integer is
    variable round_bit : integer;
  begin
    round_bit := numerat MOD denominat;
    return numerat/denominat + round_bit;
  end ceil_frac;  


-- Integer Mux: attempt to simulate a Verilog constant function
  function intMux (a, b : integer; sel : boolean ) return integer is
    variable tmp: integer;
  begin
    IF (sel=False) THEN tmp := a;
    ELSE tmp := b;
    END IF;
    return tmp;
  end intMux;


  function logicMux (a, b : std_logic; sel : boolean ) return std_logic is
    variable tmp: std_logic;
  begin
    IF (sel=False) THEN tmp := a;
    ELSE tmp := b;
    END IF;
    return tmp;
  end logicMux;


  function logiVectMux (a, b : std_logic_vector; sel : boolean ) 
                                                    return std_logic_vector is
    constant ARG_L: INTEGER := a'LENGTH;
    variable tmp: std_logic_vector(ARG_L-1 downto 0);
  begin
    IF (sel=False) THEN tmp := a;
    ELSE tmp := b;
    END IF;
    return tmp;
  end logiVectMux;



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


--           +-+-+-+-+ +-+-+-+-+-+-+ +-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+
--           |E|n|u|m| |F|i|l|t|e|r| |L|a|y|o|u|t| |F|u|n|c|t|i|o|n|s|
--           +-+-+-+-+ +-+-+-+-+-+-+ +-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+
  function significant_row (cur_row, signif_row_number: integer) return integer IS
    variable outp: integer; 
  begin
    IF(cur_row = signif_row_number) THEN  outp := 1;
    ELSE                                  outp := 0;
    END IF;
    return outp;
  end significant_row;
    
  function vect2int ( index, RC_MM_BITS, RC_MAX_MAC_ROWS: integer; 
                      param: std_logic_vector ) return integer IS 
    variable nibble : std_logic_vector(RC_MM_BITS-1 downto 0);
    variable outp   : integer;
  begin
    nibble := param(RC_MM_BITS*index-1 downto RC_MM_BITS*(index-1));  
    outp   := to_integer(unsigned(nibble));  
    return outp;
  end vect2int;


  function row_tap_count (RC_INFO: std_logic_vector; RC_MM_BITS, i: integer) return integer IS
    variable tap_count_vect : std_logic_vector(RC_MM_BITS-1 downto 0);
    variable tap_count_int  : integer;    
  begin
    CASE i IS
      WHEN 1 => tap_count_vect := RC_INFO(RC_MM_BITS-1 downto 0); 
      WHEN 2 => tap_count_vect := RC_INFO(2*RC_MM_BITS-1 downto 1*RC_MM_BITS); 
      WHEN 3 => tap_count_vect := RC_INFO(3*RC_MM_BITS-1 downto 2*RC_MM_BITS); 
      WHEN 4 => tap_count_vect := RC_INFO(4*RC_MM_BITS-1 downto 3*RC_MM_BITS); 
      WHEN 5 => tap_count_vect := RC_INFO(5*RC_MM_BITS-1 downto 4*RC_MM_BITS); 
      WHEN 6 => tap_count_vect := RC_INFO(6*RC_MM_BITS-1 downto 5*RC_MM_BITS); 
      WHEN 7 => tap_count_vect := RC_INFO(7*RC_MM_BITS-1 downto 6*RC_MM_BITS); 
      WHEN 8 => tap_count_vect := RC_INFO(8*RC_MM_BITS-1 downto 7*RC_MM_BITS); 
      WHEN 9 => tap_count_vect := RC_INFO(9*RC_MM_BITS-1 downto 8*RC_MM_BITS); 
      WHEN 10 => tap_count_vect := RC_INFO(10*RC_MM_BITS-1 downto 9*RC_MM_BITS); 
      WHEN 11 => tap_count_vect := RC_INFO(11*RC_MM_BITS-1 downto 10*RC_MM_BITS); 
      WHEN 12 => tap_count_vect := RC_INFO(12*RC_MM_BITS-1 downto 11*RC_MM_BITS); 
      WHEN 13 => tap_count_vect := RC_INFO(13*RC_MM_BITS-1 downto 12*RC_MM_BITS); 
      WHEN 14 => tap_count_vect := RC_INFO(14*RC_MM_BITS-1 downto 13*RC_MM_BITS); 
      WHEN 15 => tap_count_vect := RC_INFO(15*RC_MM_BITS-1 downto 14*RC_MM_BITS); 
      WHEN 16 => tap_count_vect := RC_INFO(16*RC_MM_BITS-1 downto 15*RC_MM_BITS); 
      WHEN 17 => tap_count_vect := RC_INFO(17*RC_MM_BITS-1 downto 16*RC_MM_BITS); 
      WHEN 18 => tap_count_vect := RC_INFO(18*RC_MM_BITS-1 downto 17*RC_MM_BITS); 
      WHEN 19 => tap_count_vect := RC_INFO(19*RC_MM_BITS-1 downto 18*RC_MM_BITS); 
      WHEN 20 => tap_count_vect := RC_INFO(20*RC_MM_BITS-1 downto 19*RC_MM_BITS); 
      WHEN OTHERS => tap_count_vect := (others=>'0'); 
    END CASE;

    tap_count_int := to_integer(unsigned(tap_count_vect));
    return tap_count_int;
  end row_tap_count;


  function running_sum_basic (RC_INFO: std_logic_vector; RC_MM_BITS, i: integer)
                                                            return integer IS
    variable tmp: integer;
  begin
    tmp := 0;
    FOR j IN 1 TO i LOOP
      tmp := tmp + row_tap_count(RC_INFO, RC_MM_BITS, j);
    END LOOP;
  end running_sum_basic;


  function running_sum_adv (RC_INFO, RC_RANK: std_logic_vector; 
                            RC_MM_BITS, RC_MAX_MAC_ROWS, i: integer) return integer IS
    variable tmp: integer;
  begin
    tmp := 0;
    FOR j IN 1 TO i LOOP
      tmp := tmp + vect2int(vect2int(j, RC_MM_BITS, RC_MAX_MAC_ROWS, RC_RANK), 
                                          RC_MM_BITS, RC_MAX_MAC_ROWS, RC_INFO);
    END LOOP;
    return tmp;
  end running_sum_adv;

  -- Fully Enumerated Filter Layout functions end

  
  function row_size (fpga_family, die_size : INTEGER ) return INTEGER is        
    variable tmp: integer;                                                      
  begin                                                                         
    IF (fpga_family=12) THEN            --Put actual numeric value for RTAX-D   
      CASE die_size IS                                                          
        WHEN 0 => tmp := 16;                                                    
        WHEN 1 => tmp := 24;                                                    
        WHEN OTHERS => tmp := 16;                                               
      END CASE;                                                                 
                                                                                
    ELSIF (fpga_family=19) THEN   --SF2, Igloo2                                 
      CASE die_size IS          --Name    Rows                                  
        WHEN  5 => tmp := 11;   --M2S005  1 x 11                                
        WHEN 10 => tmp := 11;   --M2S010  2 x 11                                
        WHEN 15 => tmp := 17;   --M2S025  2 x 17                                
        WHEN 20 => tmp := 24;   --M2S050  3 x 24                                
        WHEN 25 => tmp := 24;   --M2S090  3 x 28                                
        WHEN 28 => tmp := 40;   --M2S100  6 x 40 but total <=160; virtual M2S150
        WHEN 30 => tmp := 40;   --M2S150  6 x 40                                
        WHEN OTHERS => tmp := 24;                                               
      END CASE;                                                                 
                                                                                
    ELSIF (fpga_family=25) THEN                                                 
      CASE die_size IS                                                          
        WHEN  5 => tmp := 6;                    --                              
        WHEN 10 => tmp := 7;                    --                              
        WHEN 15 => tmp := 8;                    --                              
        WHEN 20 => tmp := 24;                   --                              
        WHEN 25 => tmp := 28;                   --RT4G075   4 X 28              
        WHEN 28 => tmp := 42;                   --RT4G150   5 X 42              
        WHEN 30 => tmp := 54;                   --RT4G200   5 X 54              
        WHEN OTHERS => tmp := 28;                                               
      END CASE;         

	ELSIF (fpga_family=26) THEN                                                 
      CASE die_size IS                           -- //  Name           Rows                           
        WHEN  5 => tmp := 26;                    --  //Tr001             5                            
        WHEN 10 => tmp := 42;                    --  //Tr002             8                            
        WHEN 15 => tmp := 42;                    --  //MPF200           14                            
        WHEN 20 => tmp := 66;                    --  //MPF300           14                           
        WHEN 25 => tmp := 74;                    --  //MPF500           20      
        WHEN OTHERS => tmp := 66;                                               
      END CASE; 
  	  
    END IF;                                                                     
    RETURN tmp;                                                                 
  end row_size;                                                                 

  FUNCTION xreg_count (FPGA_FAMILY, DIE_SIZE : integer) return integer IS
    variable res : integer;
  BEGIN
    IF(FPGA_FAMILY=12) THEN
      IF(DIE_SIZE=0) THEN res := 2;
      ELSE                res := 3;
      END IF;
    END IF;

    IF(FPGA_FAMILY=19) OR (FPGA_FAMILY=24) THEN --SF2,IGLOO2
      IF    (DIE_SIZE=5) THEN
        res := 2;
      ELSIF (DIE_SIZE=10) THEN
        res := 2;
      ELSIF (DIE_SIZE=15) THEN
        res := 2;
      ELSIF (DIE_SIZE=20) THEN
        res := 3;
      ELSIF (DIE_SIZE=25) THEN
        res := 3;
      ELSIF (DIE_SIZE=28) THEN
        res := 3;
      ELSIF (DIE_SIZE=30) THEN
        res := 4;
      ELSE
        res := 3;
      END IF;
    END IF;

    IF (FPGA_FAMILY=25) THEN                  --rtg4
      IF    (DIE_SIZE=5) THEN     --?
        res := 2;
      ELSIF (DIE_SIZE=10) THEN    --?    
        res := 2;
      ELSIF (DIE_SIZE=15) THEN    --?
        res := 2;
      ELSIF (DIE_SIZE=20) THEN    --?
        res := 3;
      ELSIF (DIE_SIZE=25) THEN
        res := 3;
      ELSIF (DIE_SIZE=28) THEN
        res := 4;
      ELSIF (DIE_SIZE=30) THEN
        res := 5;
      ELSE
        res := 3;
      END IF;
    END IF;
	
	 IF (FPGA_FAMILY=26) THEN                  
      IF    (DIE_SIZE=5) THEN     
        res := 3;
      ELSIF (DIE_SIZE=10) THEN       
        res := 4;
      ELSIF (DIE_SIZE=15) THEN    
        res := 4;
      ELSIF (DIE_SIZE=20) THEN    
        res := 6;
      ELSIF (DIE_SIZE=25) THEN
        res := 7;
      ELSE
        res := 6;
      END IF;
    END IF;

    return res;
  END xreg_count;


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

END corefir_rtl_pack;
