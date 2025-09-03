----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Fri Aug  8 22:36:35 2025
-- Parameters for COREFIR_PF
----------------------------------------------------------------------


LIBRARY ieee;
   USE ieee.std_logic_1164.all;
   USE ieee.std_logic_unsigned.all;
   USE ieee.numeric_std.all;

package coreparameters is
    constant CFG_ARCH : integer := 1;
    constant COEF_RAM : integer := 0;
    constant COEF_SETS : integer := 1;
    constant COEF_SYMM : integer := 0;
    constant COEF_TYPE : integer := 0;
    constant COEF_UNSIGN : integer := 0;
    constant COEF_WIDTH : integer := 12;
    constant COEF_WIDTH_REQ : integer := 16;
    constant COEFFS : string( 1 to 66 ) := "coefficient_set_1
552
703
837
948
1025
1064
1062
1019
939
826
689
";
    constant CTRL_LAYOUT : 
    constant DATA_RAM : integer := 0;
    constant DATA_UNSIGN : integer := 0;
    constant DATA_WIDTH : integer := 4;
    constant DATA_WIDTH_REQ : integer := 8;
    constant DIE_SIZE : integer := 5;
    constant EXTRA_TAPS : integer := 0;
    constant FAMILY : integer := 27;
    constant FF : integer := 2;
    constant FIRO_WIDTH : integer := 48;
    constant FPGA_FAMILY : integer := 27;
    constant L : integer := 2;
    constant M : integer := 2;
    constant MACC_COUNT_PER_ROW : integer := 66;
    constant NATIV_AXI4 : integer := 0;
    constant RADIX : integer := 10;
    constant RC_INFO_1 : integer := 0;
    constant RC_INFO_2 : integer := 0;
    constant RC_INFO_3 : integer := 0;
    constant RC_INFO_4 : integer := 0;
    constant RC_INFO_5 : integer := 0;
    constant RC_INFO_6 : integer := 0;
    constant RC_INFO_7 : integer := 0;
    constant RC_INFO_8 : integer := 0;
    constant RC_INFO_9 : integer := 0;
    constant RC_INFO_10 : integer := 0;
    constant RC_INFO_11 : integer := 0;
    constant RC_INFO_12 : integer := 0;
    constant RC_INFO_13 : integer := 0;
    constant RC_INFO_14 : integer := 0;
    constant RC_INFO_15 : integer := 0;
    constant RC_INFO_16 : integer := 0;
    constant RC_INFO_17 : integer := 0;
    constant RC_INFO_18 : integer := 0;
    constant RC_INFO_19 : integer := 0;
    constant RC_INFO_20 : integer := 0;
    constant TAPS : integer := 11;
    constant testbench : integer := 1;
    constant URAM_MAXDEPTH : integer := 0;
end coreparameters;
