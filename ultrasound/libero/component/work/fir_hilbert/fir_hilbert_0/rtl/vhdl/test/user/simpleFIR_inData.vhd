
-- This is an automatically generated file

-- Simple FIR Input test vector 
LIBRARY ieee; 
  USE IEEE.std_logic_1164.all; 
  USE IEEE.numeric_std.all; 

ENTITY inpTestVect IS 
  PORT (   
    inp_count : IN STD_LOGIC_VECTOR (5 downto 0);
    outp      : OUT STD_LOGIC_VECTOR (17 downto 0)  );
END ENTITY inpTestVect; 

ARCHITECTURE bhv OF inpTestVect IS 
  SIGNAL inp_count_int : integer; 
BEGIN 
  inp_count_int <= to_integer(unsigned(inp_count)); 
  PROCESS (inp_count_int) BEGIN 
    CASE inp_count_int IS 
        WHEN     0 => outp <= "000000000000000001"; --         +1 
        WHEN     1 => outp <= "111111111100010010"; --       -238 
        WHEN     2 => outp <= "000000000000000000"; --         +0 
        WHEN     3 => outp <= "111111101111100000"; --      -1056 
        WHEN     4 => outp <= "000000000000000000"; --         +0 
        WHEN     5 => outp <= "111110111010001101"; --      -4467 
        WHEN     6 => outp <= "000000000000000000"; --         +0 
        WHEN     7 => outp <= "111011001000111010"; --     -19910 
        WHEN     8 => outp <= "000000000000000000"; --         +0 
        WHEN     9 => outp <= "000100110111000110"; --     +19910 
        WHEN    10 => outp <= "000000000000000000"; --         +0 
        WHEN    11 => outp <= "000001000101110011"; --      +4467 
        WHEN    12 => outp <= "000000000000000000"; --         +0 
        WHEN    13 => outp <= "000000010000100000"; --      +1056 
        WHEN    14 => outp <= "000000000000000000"; --         +0 
        WHEN    15 => outp <= "000000000011101110"; --       +238 
        WHEN    16 => outp <= "111111111111111110"; --         -2 
        WHEN    17 => outp <= "111111111111111110"; --         -2 
        WHEN    18 => outp <= "111111111111111110"; --         -2 
        WHEN    19 => outp <= "111111111111111110"; --         -2 
        WHEN    20 => outp <= "111111111111111110"; --         -2 
        WHEN    21 => outp <= "111111111111111110"; --         -2 
        WHEN    22 => outp <= "111111111111111110"; --         -2 
        WHEN    23 => outp <= "111111111111111110"; --         -2 
        WHEN    24 => outp <= "111111111111111110"; --         -2 
        WHEN    25 => outp <= "111111111111111110"; --         -2 
        WHEN    26 => outp <= "111111111111111110"; --         -2 
        WHEN    27 => outp <= "111111111111111110"; --         -2 
        WHEN    28 => outp <= "111111111111111110"; --         -2 
        WHEN    29 => outp <= "111111111111111110"; --         -2 
        WHEN    30 => outp <= "111111111111111110"; --         -2 
        WHEN    31 => outp <= "111111111111111110"; --         -2 
        WHEN    32 => outp <= "111111111111111110"; --         -2 
        WHEN    33 => outp <= "111111111111111110"; --         -2 
        WHEN    34 => outp <= "111111111111111110"; --         -2 
        WHEN    35 => outp <= "111111111111111110"; --         -2 
        WHEN    36 => outp <= "111111111111111110"; --         -2 
        WHEN    37 => outp <= "111111111111111110"; --         -2 
        WHEN    38 => outp <= "111111111111111110"; --         -2 
        WHEN    39 => outp <= "111111111111111110"; --         -2 
        WHEN    40 => outp <= "111111111111111110"; --         -2 
        WHEN    41 => outp <= "111111111111111110"; --         -2 
        WHEN    42 => outp <= "111111111111111110"; --         -2 
        WHEN    43 => outp <= "111111111111111110"; --         -2 
        WHEN    44 => outp <= "111111111111111110"; --         -2 
        WHEN    45 => outp <= "111111111111111110"; --         -2 
      WHEN OTHERS => outp <= "000000000000000001"; --         +1 
    END CASE; 
  END PROCESS; 
END ARCHITECTURE bhv; 
