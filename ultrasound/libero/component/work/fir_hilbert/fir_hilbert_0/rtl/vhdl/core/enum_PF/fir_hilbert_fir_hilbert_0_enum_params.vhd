-- This is automatically generated INCLUDE (Verilog) or Package (VHDL) 
-- file of Enum FIR array-style parameters
-- RC parameters
LIBRARY ieee; 
  USE IEEE.std_logic_1164.all; 

PACKAGE fir_hilbert_fir_hilbert_0_enum_params IS
  constant RC_MM_BITS      : integer := 8; 
  constant RC_MAX_MAC_ROWS : integer := 20; 
  constant RC_ROWS  : integer := 3; 
  constant FIRST_ROW_SIZE  : integer := 6; 
  constant HIGH_ROW_SIZE  : integer := 6; 
  constant RC_INFO : std_logic_vector(159 DOWNTO 0) := 
"00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000011" & "00000110" & "00000110"; 
  constant RC_RANK : std_logic_vector(159 DOWNTO 0) := 
"00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000011" & "00000010" & "00000001"; 
  constant RC_ADV_DDLY_D : std_logic_vector(159 DOWNTO 0) := 
"00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00001101" & "00001010"; 
  constant RC_ADV_DDLY_S : std_logic_vector(159 DOWNTO 0) := 
"00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000" & "00000000"; 
END fir_hilbert_fir_hilbert_0_enum_params;
