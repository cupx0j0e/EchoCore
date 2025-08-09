
-- This is an automatically generated file

-- Simple FIR Input test vector 
LIBRARY ieee; 
  USE IEEE.std_logic_1164.all; 
  USE IEEE.numeric_std.all; 

ENTITY inpTestVect IS 
  PORT (   
    inp_count : IN STD_LOGIC_VECTOR (4 downto 0);
    outp      : OUT STD_LOGIC_VECTOR (3 downto 0)  );
END ENTITY inpTestVect; 

ARCHITECTURE bhv OF inpTestVect IS 
  SIGNAL inp_count_int : integer; 
BEGIN 
  inp_count_int <= to_integer(unsigned(inp_count)); 
  PROCESS (inp_count_int) BEGIN 
    CASE inp_count_int IS 
        WHEN     0 => outp <= "0001"; --         +1 
        WHEN     1 => outp <= "0100"; --         +4 
        WHEN     2 => outp <= "0110"; --         +6 
        WHEN     3 => outp <= "1110"; --         -2 
        WHEN     4 => outp <= "1110"; --         -2 
        WHEN     5 => outp <= "1110"; --         -2 
        WHEN     6 => outp <= "1110"; --         -2 
        WHEN     7 => outp <= "1110"; --         -2 
        WHEN     8 => outp <= "1110"; --         -2 
        WHEN     9 => outp <= "1110"; --         -2 
        WHEN    10 => outp <= "1110"; --         -2 
        WHEN    11 => outp <= "1110"; --         -2 
        WHEN    12 => outp <= "1110"; --         -2 
        WHEN    13 => outp <= "1110"; --         -2 
        WHEN    14 => outp <= "1110"; --         -2 
        WHEN    15 => outp <= "1110"; --         -2 
        WHEN    16 => outp <= "1110"; --         -2 
        WHEN    17 => outp <= "1110"; --         -2 
        WHEN    18 => outp <= "1110"; --         -2 
        WHEN    19 => outp <= "1110"; --         -2 
        WHEN    20 => outp <= "1110"; --         -2 
        WHEN    21 => outp <= "1110"; --         -2 
        WHEN    22 => outp <= "1110"; --         -2 
        WHEN    23 => outp <= "1110"; --         -2 
        WHEN    24 => outp <= "1110"; --         -2 
        WHEN    25 => outp <= "1110"; --         -2 
      WHEN OTHERS => outp <= "0001"; --         +1 
    END CASE; 
  END PROCESS; 
END ARCHITECTURE bhv; 
