
-- ***************************************************************************
--Microsemi Corporation Proprietary and Confidential
--Copyright 2015 Microsemi Corporation. All rights reserved.
--
--ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
--ACCORDANCE WITH THE MICROSEMI LICENSE AGREEMENT AND MUST BE APPROVED
--IN ADVANCE IN WRITING.
--
--Description:  G5 CoreFIR RTL
--              G5 Fully Enumerated FIR Filter Undernibble
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

LIBRARY ieee;
  USE ieee.std_logic_1164.all;
  USE IEEE.numeric_std.all;
USE work.enum_rtl_pack.all;

-- A one-tap nibble
ENTITY enum_tap_undernibble_1 IS
  GENERIC (
    PHY_TAPS         : INTEGER := 0;
    ODD_TAPS         : INTEGER := 0;
    NIBBLE_TAPS      : INTEGER := 1;
    COEF_TYPE        : INTEGER := 0;		--0-Const, 1-reload
    COEF_SETS        : INTEGER := 0;		--1-Const const, >1-multiple sets
    COEF_SYMM        : INTEGER := 0;		--0-not symm, 1-symm, 2-antisymm. Shut D if non-symm
    COEF_UNSIGN      : INTEGER := 0;
    COEF_WIDTH       : INTEGER := 12;
    DATA_UNSIGN      : INTEGER := 0;
    DATA_WIDTH       : INTEGER := 12;
    RESERVED1        : INTEGER := 0;
    WARNING_MSGS_ON  : INTEGER := 1;
    INIT             : STD_LOGIC_VECTOR(287 DOWNTO 0);
    -- For the Basic INTER_STYLE, the result from a previous row comes to the left
    -- tap's C input. For the DELAY1-based, the result from the next row comes to
    -- the right tap's C input
    INTER_STYLE      : INTEGER := 0;		-- 0-Basic       inter-row connection
                                        -- 1-DELAY1-based inter-row connection

    -- Identify the first and last nibbles on a given row.  First and last can be
    -- the same nibble if there is a single nibble on a row
    FIRST_NIBBLE     : INTEGER := 0;
    LAST_NIBBLE      : INTEGER := 0;
    SHUT_C_SINGLE    : INTEGER := 1;

    -- Identify the first and last rows of a filter.  First and last can be
    -- the same row if the filter fits one row
    FIRST_ROW        : INTEGER := 1;
    LAST_ROW         : INTEGER := 1  );
  PORT (
    nGrst            : IN STD_LOGIC;
    rstn             : IN STD_LOGIC;
    clk              : IN STD_LOGIC;
    systola          : IN STD_LOGIC;
    -- Data needs to be sign-extended before it enters B cascade chain
    datai            : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    cin              : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
    turnback         : IN STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
    cdin             : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
    cdout            : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
    pout             : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
    bcout            : OUT STD_LOGIC_VECTOR(17 DOWNTO 0); -- B2 output to b chain output
    b2out            : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0); -- Rightmost tap's B2 output to fabric
    -- A shift register section input/output
    coefi            : IN STD_LOGIC_VECTOR(COEF_WIDTH - 1 DOWNTO 0);
    coefo            : OUT STD_LOGIC_VECTOR(COEF_WIDTH - 1 DOWNTO 0);

    coef_sel         : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    coef_on          : IN STD_LOGIC;
    coefi_valid      : IN STD_LOGIC  );
END ENTITY enum_tap_undernibble_1;

ARCHITECTURE rtl OF enum_tap_undernibble_1 IS
  COMPONENT enum_tap_g5 IS
    GENERIC (
      COEF_TYPE        : INTEGER;
      COEF_SETS        : INTEGER;
      COEF_SYMM        : INTEGER;
      COEF_UNSIGN      : INTEGER;
      COEF_WIDTH       : INTEGER;
      DATA_UNSIGN      : INTEGER;
      DATA_WIDTH       : INTEGER;
      RESERVED1        : INTEGER;
      USE_BC           : INTEGER;
      SHUT_C           : INTEGER;
      SHUT_CDIN        : INTEGER;
      WARNING_MSGS_ON  : INTEGER;
      INIT             : STD_LOGIC_VECTOR(287 DOWNTO 0)  );   --29/02/16
    PORT (
      nGrst            : IN STD_LOGIC;
      rstn             : IN STD_LOGIC;
      clk              : IN STD_LOGIC;
      systola          : IN STD_LOGIC;
      coefi_valid      : IN STD_LOGIC;
      datai            : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      symm_datai       : IN STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
      coefi            : IN STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
      cin              : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
      cdin             : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
      coef_sel         : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      coef_on          : IN STD_LOGIC;
      coefo            : OUT STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
      bcout            : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      b2out            : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
      cdout            : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
      pout             : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)  );
  END COMPONENT;

  -- COEF_SYMM applies everywhere except for the last filter tap if odd symmetry
  constant COEF_SYMM_LAST : INTEGER := intMux (COEF_SYMM, 0, ((LAST_NIBBLE=1) AND (ODD_TAPS=1)) );

  -- +-+-+-+-+-+ +-+-+-+-+-+-+ +-+-+-+-+-+-+ +-+-+ +-+ +-+-+-+ +-+-+-+-+-+-+-+-+
  -- |B|e|l|o|w| |p|a|r|a|m|s| |d|e|p|e|n|d| |o|n| |a| |t|a|p| |p|o|s|i|t|i|o|n|
  -- +-+-+-+-+-+ +-+-+-+-+-+-+ +-+-+-+-+-+-+ +-+-+ +-+ +-+-+-+ +-+-+-+-+-+-+-+-+
  -- Get datai from fabric if the first nibble on a row
  constant USE_BC     : INTEGER := intMux (1, 0, FIRST_NIBBLE/=0 );
  -- Shut carry chain CDIN input if the first nibble of a row
  constant SHUT_CDIN  : INTEGER := intMux (0, 1, FIRST_NIBBLE/=0 );

BEGIN
  -- The first and only tap of a nibble
  left_tap_0 : enum_tap_g5
    GENERIC MAP (
      COEF_TYPE        => COEF_TYPE,
      COEF_SETS        => COEF_SETS,
      COEF_SYMM        => COEF_SYMM_LAST,
      COEF_UNSIGN      => COEF_UNSIGN,
      COEF_WIDTH       => COEF_WIDTH,
      DATA_UNSIGN      => DATA_UNSIGN,
      DATA_WIDTH       => DATA_WIDTH,
      RESERVED1        => RESERVED1,
      -- Below params depend on first/last nibble/row and INTER_STYLE
      USE_BC           => USE_BC,
      SHUT_C           => SHUT_C_SINGLE,
      SHUT_CDIN        => SHUT_CDIN,
      WARNING_MSGS_ON  => WARNING_MSGS_ON,
      INIT             => INIT(287 DOWNTO 0) )
    PORT MAP (
      nGrst        => nGrst,
      rstn         => rstn,
      clk          => clk,
      systola      => systola,
      datai        => datai,
      cin          => cin,
      symm_datai   => turnback,
      cdin         => cdin,
      cdout        => cdout,
      pout         => pout,
      bcout        => bcout,		-- B2 output to b chain output
      b2out        => b2out,		-- B2 output to fabric
      coefi        => coefi,
      coefo        => coefo,
      coef_sel     => coef_sel,
      coef_on      => coef_on,
      coefi_valid  => coefi_valid );
END ARCHITECTURE rtl;



-- Two-tap nibble
LIBRARY ieee;
  USE ieee.std_logic_1164.all;
  USE IEEE.numeric_std.all;
USE work.enum_rtl_pack.all;

ENTITY enum_tap_undernibble_2 IS
  GENERIC (
    PHY_TAPS            : INTEGER := 0;
    ODD_TAPS            : INTEGER := 0;
    NIBBLE_TAPS         : INTEGER := 8;
    COEF_TYPE           : INTEGER := 0;		--0-Const, 1-reload
    COEF_SETS           : INTEGER := 0;		--1-Const const, >1-multiple sets
    COEF_SYMM           : INTEGER := 1;		--0-not symm, 1-symm, 2-antisymm. Shut D if non-symm
    COEF_UNSIGN         : INTEGER := 0;
    COEF_WIDTH          : INTEGER := 12;
    DATA_UNSIGN         : INTEGER := 0;
    DATA_WIDTH          : INTEGER := 12;
    RESERVED1           : INTEGER := 0;
    WARNING_MSGS_ON     : INTEGER := 1;
    INIT             : STD_LOGIC_VECTOR(575 DOWNTO 0);      --29/02/16
    -- For the basic INTER_STYLE, the result from a previous row comes to the left
    -- tap's C input. For the advanced, the result from the next row comes to
    -- the right's tap C input
    INTER_STYLE         : INTEGER := 0;		-- 0-Basic       inter-row connection
                                          -- 1-DELAY1-based inter-row connection
    FIRST_NIBBLE        : INTEGER := 0;
    LAST_NIBBLE         : INTEGER := 0;

    FIRST_ROW           : INTEGER := 1;
    LAST_ROW            : INTEGER := 1;

    -- See enum_nibble_g5 for logic behind the following two params
    SHUT_C_BASIC_STYLE  : INTEGER := 1;
    SHUT_C_ADV_STYLE    : INTEGER := 1  );
  PORT (
    nGrst            : IN STD_LOGIC;
    rstn             : IN STD_LOGIC;
    clk              : IN STD_LOGIC;
    systola          : IN STD_LOGIC;
    -- Data needs to be sign-extended before it enters B cascade chain
    datai            : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    cin              : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
    turnback         : IN STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
    cdin             : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
    cdout            : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
    pout             : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
    bcout            : OUT STD_LOGIC_VECTOR(17 DOWNTO 0); -- B2 output to b chain output
    b2out            : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0); -- Rightmost tap's B2 output to fabric
    -- A shift register section input/output
    coefi            : IN STD_LOGIC_VECTOR(COEF_WIDTH - 1 DOWNTO 0);
    coefo            : OUT STD_LOGIC_VECTOR(COEF_WIDTH - 1 DOWNTO 0);

    coef_sel         : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    coef_on          : IN STD_LOGIC;
    coefi_valid      : IN STD_LOGIC  );
END ENTITY enum_tap_undernibble_2;

ARCHITECTURE rtl OF enum_tap_undernibble_2 IS
  COMPONENT enum_tap_g5 IS
    GENERIC (
      COEF_TYPE        : INTEGER;
      COEF_SETS        : INTEGER;
      COEF_SYMM        : INTEGER;
      COEF_UNSIGN      : INTEGER;
      COEF_WIDTH       : INTEGER;
      DATA_UNSIGN      : INTEGER;
      DATA_WIDTH       : INTEGER;
      RESERVED1        : INTEGER;
      USE_BC           : INTEGER;
      SHUT_C           : INTEGER;
      SHUT_CDIN        : INTEGER;
      WARNING_MSGS_ON  : INTEGER;
      INIT             : STD_LOGIC_VECTOR(287 DOWNTO 0)  );
    PORT (
      nGrst            : IN STD_LOGIC;
      rstn             : IN STD_LOGIC;
      clk              : IN STD_LOGIC;
      systola          : IN STD_LOGIC;
      coefi_valid      : IN STD_LOGIC;
      datai            : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      symm_datai       : IN STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
      coefi            : IN STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
      cin              : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
      cdin             : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
      coef_sel         : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      coef_on          : IN STD_LOGIC;
      coefo            : OUT STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
      bcout            : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      b2out            : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
      cdout            : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
      pout             : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)  );
  END COMPONENT;

  -- COEF_SYMM applies everywhere except for the last filter tap if odd symmetry
  constant COEF_SYMM_LAST : INTEGER := intMux (COEF_SYMM, 0,
                            (LAST_NIBBLE=1) AND (ODD_TAPS=1) AND (LAST_ROW=1) );

  -- +-+-+-+-+-+ +-+-+-+-+-+-+ +-+-+-+-+-+-+ +-+-+ +-+ +-+-+-+ +-+-+-+-+-+-+-+-+
  -- |B|e|l|o|w| |p|a|r|a|m|s| |d|e|p|e|n|d| |o|n| |a| |t|a|p| |p|o|s|i|t|i|o|n|
  -- +-+-+-+-+-+ +-+-+-+-+-+-+ +-+-+-+-+-+-+ +-+-+ +-+ +-+-+-+ +-+-+-+-+-+-+-+-+
  -- Get datai from fabric if the first nibble on a row
  constant USE_BC     : INTEGER := intMux (1, 0, FIRST_NIBBLE/=0 );
  -- Shut carry chain CDIN input if the first nibble of a row
  constant SHUT_CDIN  : INTEGER := intMux (0, 1, FIRST_NIBBLE/=0 );

  TYPE type_array IS ARRAY (1 TO NIBBLE_TAPS) OF STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
  SIGNAL cdout_0     : STD_LOGIC_VECTOR(47 DOWNTO 0);
  SIGNAL pout_0      : STD_LOGIC_VECTOR(47 DOWNTO 0);
  SIGNAL bcout_0     : STD_LOGIC_VECTOR(17 DOWNTO 0);
  SIGNAL b2out_w     : type_array;
  SIGNAL coefi_0     : STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);

BEGIN
  left_tap_0 : enum_tap_g5
    GENERIC MAP (
      COEF_TYPE        => COEF_TYPE,
      COEF_SETS        => COEF_SETS,
      COEF_SYMM        => COEF_SYMM,
      COEF_UNSIGN      => COEF_UNSIGN,
      COEF_WIDTH       => COEF_WIDTH,
      DATA_UNSIGN      => DATA_UNSIGN,
      DATA_WIDTH       => DATA_WIDTH,
      RESERVED1        => RESERVED1,
      USE_BC           => USE_BC,
      SHUT_C           => SHUT_C_BASIC_STYLE,
      SHUT_CDIN        => SHUT_CDIN,
      WARNING_MSGS_ON  => WARNING_MSGS_ON,
      INIT             => INIT(287 DOWNTO 0) )
    PORT MAP (
      nGrst        => nGrst,
      rstn         => rstn,
      clk          => clk,
      systola      => systola,
      datai        => datai,
      cin          => cin,
      symm_datai   => turnback,
      cdin         => cdin,
      cdout        => cdout_0,
      pout         => open,
      bcout        => bcout_0,
      b2out        => b2out_w(1),
      coefi        => coefi,
      coefo        => coefi_0,
      coef_sel     => coef_sel,
      coef_on      => coef_on,
      coefi_valid  => coefi_valid  );

  right_tap_0 : enum_tap_g5
    GENERIC MAP (
      COEF_TYPE        => COEF_TYPE,
      COEF_SETS        => COEF_SETS,
      COEF_SYMM        => COEF_SYMM_LAST,
      COEF_UNSIGN      => COEF_UNSIGN,
      COEF_WIDTH       => COEF_WIDTH,
      DATA_UNSIGN      => DATA_UNSIGN,
      DATA_WIDTH       => DATA_WIDTH,
      RESERVED1        => RESERVED1,
      USE_BC           => 1,
      SHUT_C           => SHUT_C_ADV_STYLE,
      SHUT_CDIN        => 0,
      WARNING_MSGS_ON  => WARNING_MSGS_ON,
      INIT             => INIT(575 downto 288)  )
    PORT MAP (
      nGrst        => nGrst,
      rstn         => rstn,
      clk          => clk,
      systola      => systola,
      datai        => bcout_0,
      cin          => cin,
      symm_datai   => turnback,
      cdin         => cdout_0,
      cdout        => cdout,
      pout         => pout,
      bcout        => bcout,
      b2out        => b2out_w(2),
      coefi        => coefi_0,
      coefo        => coefo,
      coef_sel     => coef_sel,
      coef_on      => coef_on,
      coefi_valid  => coefi_valid );

  b2out <= b2out_w(NIBBLE_TAPS);
END ARCHITECTURE rtl;



-- 3 or more taps nibble
LIBRARY ieee;
  USE ieee.std_logic_1164.all;
  USE IEEE.numeric_std.all;
USE work.enum_rtl_pack.all;

ENTITY enum_tap_undernibble_3 IS
  GENERIC (
    PHY_TAPS            : INTEGER := 0;
    ODD_TAPS            : INTEGER := 0;
    NIBBLE_TAPS         : INTEGER := 8;
    COEF_TYPE           : INTEGER := 0;		--0-Const, 1-reload
    COEF_SETS           : INTEGER := 0;		--1-Const const, >1-multiple sets
    COEF_SYMM           : INTEGER := 1;		--0-not symm, 1-symm, 2-antisymm. Shut D if non-symm
    COEF_UNSIGN         : INTEGER := 0;
    COEF_WIDTH          : INTEGER := 12;
    DATA_UNSIGN         : INTEGER := 0;
    DATA_WIDTH          : INTEGER := 12;
    RESERVED1           : INTEGER := 0;
    WARNING_MSGS_ON     : INTEGER := 1;
--23/02/16    INIT             : STD_LOGIC_VECTOR(16*18*NIBBLE_TAPS-1 DOWNTO 0) := (others=>'0');
    INIT                : STD_LOGIC_VECTOR;
    -- For the basic INTER_STYLE, the result from a previous row comes to the left
    -- tap's C input. For the advanced, the result from the next row comes to
    -- the right's tap C input
    INTER_STYLE         : INTEGER := 0;		-- 0-Basic       inter-row connection
                                          -- 1-DELAY1-based inter-row connection
    FIRST_NIBBLE        : INTEGER := 0;
    LAST_NIBBLE         : INTEGER := 0;

    FIRST_ROW           : INTEGER := 1;
    LAST_ROW            : INTEGER := 1;

    -- See enum_nibble_g5 for logic behind the following two params
    SHUT_C_BASIC_STYLE  : INTEGER := 1;
    SHUT_C_ADV_STYLE    : INTEGER := 1  );

  PORT (
    nGrst            : IN STD_LOGIC;
    rstn             : IN STD_LOGIC;
    clk              : IN STD_LOGIC;
    systola          : IN STD_LOGIC;
    -- Data needs to be sign-extended before it enters B cascade chain
    datai            : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    cin              : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
    turnback         : IN STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
    cdin             : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
    cdout            : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
    pout             : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
    bcout            : OUT STD_LOGIC_VECTOR(17 DOWNTO 0); -- B2 output to b chain output
    b2out            : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0); -- Rightmost tap's B2 output to fabric
    -- A shift register section input/output
    coefi            : IN STD_LOGIC_VECTOR(COEF_WIDTH - 1 DOWNTO 0);
    coefo            : OUT STD_LOGIC_VECTOR(COEF_WIDTH - 1 DOWNTO 0);

    coef_sel         : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    coef_on          : IN STD_LOGIC;
    coefi_valid      : IN STD_LOGIC  );
END ENTITY enum_tap_undernibble_3;

ARCHITECTURE rtl OF enum_tap_undernibble_3 IS
  COMPONENT enum_tap_g5 IS
    GENERIC (
      COEF_TYPE        : INTEGER;
      COEF_SETS        : INTEGER;
      COEF_SYMM        : INTEGER;
      COEF_UNSIGN      : INTEGER;
      COEF_WIDTH       : INTEGER;
      DATA_UNSIGN      : INTEGER;
      DATA_WIDTH       : INTEGER;
      RESERVED1        : INTEGER;
      USE_BC           : INTEGER;
      SHUT_C           : INTEGER;
      SHUT_CDIN        : INTEGER;
      WARNING_MSGS_ON  : INTEGER;
      INIT             : STD_LOGIC_VECTOR(287 DOWNTO 0)  );
    PORT (
      nGrst            : IN STD_LOGIC;
      rstn             : IN STD_LOGIC;
      clk              : IN STD_LOGIC;
      systola          : IN STD_LOGIC;
      coefi_valid      : IN STD_LOGIC;
      datai            : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      symm_datai       : IN STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
      coefi            : IN STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
      cin              : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
      cdin             : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
      coef_sel         : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      coef_on          : IN STD_LOGIC;
      coefo            : OUT STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
      bcout            : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      b2out            : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
      cdout            : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
      pout             : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)  );
  END COMPONENT;

  -- COEF_SYMM applies everywhere except for the last filter tap if odd symmetry
  constant COEF_SYMM_LAST : INTEGER := intMux (COEF_SYMM, 0,
                            (LAST_NIBBLE=1) AND (ODD_TAPS=1) AND (LAST_ROW=1) );

  -- +-+-+-+-+-+ +-+-+-+-+-+-+ +-+-+-+-+-+-+ +-+-+ +-+ +-+-+-+ +-+-+-+-+-+-+-+-+
  -- |B|e|l|o|w| |p|a|r|a|m|s| |d|e|p|e|n|d| |o|n| |a| |t|a|p| |p|o|s|i|t|i|o|n|
  -- +-+-+-+-+-+ +-+-+-+-+-+-+ +-+-+-+-+-+-+ +-+-+ +-+ +-+-+-+ +-+-+-+-+-+-+-+-+
  -- Get datai from fabric if the first nibble on a row
  constant USE_BC     : INTEGER := intMux (1, 0, FIRST_NIBBLE/=0 );
  -- Shut carry chain CDIN input if the first nibble of a row
  constant SHUT_CDIN  : INTEGER := intMux (0, 1, FIRST_NIBBLE/=0 );
                                                                       
  constant INITi : STD_LOGIC_VECTOR(288*NIBBLE_TAPS-1 DOWNTO 0) := INIT;
                                                                        
  TYPE type_array IS ARRAY (1 TO NIBBLE_TAPS) OF STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);

--  TYPE type_dbg IS ARRAY (0 TO 16*NIBBLE_TAPS) OF STD_LOGIC_VECTOR(17 DOWNTO 0);
  TYPE type_dat_arr IS ARRAY (1 TO NIBBLE_TAPS) OF STD_LOGIC_VECTOR(17 DOWNTO 0);
  TYPE type_p_arr IS ARRAY (1 TO NIBBLE_TAPS) OF STD_LOGIC_VECTOR(47 DOWNTO 0);
  TYPE type_coef_arr IS ARRAY (1 TO NIBBLE_TAPS) OF STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
  TYPE type_data_arr IS ARRAY (1 TO NIBBLE_TAPS) OF STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);

  SIGNAL cd_w               : type_p_arr;
  SIGNAL p_w                : type_p_arr;
  SIGNAL data_w             : type_dat_arr;
  SIGNAL coef_w             : type_coef_arr;
  SIGNAL b2out_w            : type_data_arr;
BEGIN
  --tr  generate begin: dbg_top_init
  --tr    genvar i;
  --tr    for(i=0; i<16*NIBBLE_TAPS; i=i+1)
  --tr      begin
  --tr        assign dbg_top_init_array[i] = INIT[(i+1)*18-1:i*18];
  --tr      end
  --tr    end
  --tr  endgenerate
  debug_init_0 : debug_INIT
    GENERIC MAP (NUM_OF_COEFS => 16*NIBBLE_TAPS)
  PORT MAP    (flat         => INIT );


  -- On all taps of a nibble, either SHUT_C or SHUT_CDIN or both are on.
  -- Only adders that combine rows can have both = 0

  -- The first tap of a nibble might be different than others
  left_tap_0 : enum_tap_g5
    GENERIC MAP (
      COEF_TYPE        => COEF_TYPE,
      COEF_SETS        => COEF_SETS,
      COEF_SYMM        => COEF_SYMM,
      COEF_UNSIGN      => COEF_UNSIGN,
      COEF_WIDTH       => COEF_WIDTH,
      DATA_UNSIGN      => DATA_UNSIGN,
      DATA_WIDTH       => DATA_WIDTH,
      RESERVED1        => RESERVED1,
      USE_BC           => USE_BC,
      SHUT_C           => SHUT_C_BASIC_STYLE,
      SHUT_CDIN        => SHUT_CDIN,
      WARNING_MSGS_ON  => WARNING_MSGS_ON,
--29/02/16      INIT             => INIT(287 DOWNTO 0) )
      INIT             => INITi(287 DOWNTO 0) )
    PORT MAP (
      nGrst        => nGrst,
      rstn         => rstn,
      clk          => clk,
      systola      => systola,
      datai        => datai,
      cin          => cin,
      symm_datai   => turnback,
      cdin         => cdin,
      cdout        => cd_w(1),
      pout         => p_w(1),
      bcout        => data_w(1),		-- B2 output to b chain output
      b2out        => b2out_w(1),		-- B2 output to fabric
      coefi        => coefi,
      coefo        => coef_w(1),
      coef_sel     => coef_sel,
      coef_on      => coef_on,
      coefi_valid  => coefi_valid );

  -- Middle nibble taps
  taps : FOR i IN 1 TO NIBBLE_TAPS-2 GENERATE
    atap : enum_tap_g5
      GENERIC MAP (
        COEF_TYPE        => COEF_TYPE,
        COEF_SETS        => COEF_SETS,
        COEF_SYMM        => COEF_SYMM,
        COEF_UNSIGN      => COEF_UNSIGN,
        COEF_WIDTH       => COEF_WIDTH,
        DATA_UNSIGN      => DATA_UNSIGN,
        DATA_WIDTH       => DATA_WIDTH,
        RESERVED1        => RESERVED1,
        USE_BC           => 1,
        SHUT_C           => 1,
        SHUT_CDIN        => 0,
        WARNING_MSGS_ON  => WARNING_MSGS_ON,
        INIT             => INITi(288*(i+1)-1 DOWNTO 288*i)  )
      PORT MAP (
        nGrst        => nGrst,
        rstn         => rstn,
        clk          => clk,
        systola      => systola,
        datai        => data_w(i),
        cin          => (others=>'1'),
        symm_datai   => turnback,
        cdin         => cd_w(i),
        cdout        => cd_w(i+1),
        pout         => p_w(i+1),
        bcout        => data_w(i+1),
        b2out        => b2out_w(i+1),
        coefi        => coef_w(i),
        coefo        => coef_w(i+1),
        coef_sel     => coef_sel,
        coef_on      => coef_on,
        coefi_valid  => coefi_valid );
  END GENERATE;

  -- The rightmost tap on a (symmetric) filter
  right_tap_0 : enum_tap_g5
    GENERIC MAP (
      COEF_TYPE        => COEF_TYPE,
      COEF_SETS        => COEF_SETS,
      COEF_SYMM        => COEF_SYMM_LAST,
      COEF_UNSIGN      => COEF_UNSIGN,
      COEF_WIDTH       => COEF_WIDTH,
      DATA_UNSIGN      => DATA_UNSIGN,
      DATA_WIDTH       => DATA_WIDTH,
      RESERVED1        => RESERVED1,
      USE_BC           => 1,
      SHUT_C           => SHUT_C_ADV_STYLE,
      SHUT_CDIN        => 0,
      WARNING_MSGS_ON  => WARNING_MSGS_ON,
      INIT             => INITi(288*NIBBLE_TAPS-1 DOWNTO 288*(NIBBLE_TAPS-1))  )
    PORT MAP (
      nGrst        => nGrst,
      rstn         => rstn,
      clk          => clk,
      systola      => systola,
      datai        => data_w(NIBBLE_TAPS - 1),
      cin          => cin,
      symm_datai   => turnback,
      cdin         => cd_w(NIBBLE_TAPS - 1),
      cdout        => cd_w(NIBBLE_TAPS),
      pout         => p_w(NIBBLE_TAPS),
      bcout        => bcout,
      b2out        => b2out_w(NIBBLE_TAPS),
      coefi        => coef_w(NIBBLE_TAPS - 1),
      coefo        => coefo,
      coef_sel     => coef_sel,
      coef_on      => coef_on,
      coefi_valid  => coefi_valid );

  b2out <= b2out_w(NIBBLE_TAPS);
  cdout <= cd_w(NIBBLE_TAPS);
  pout <= p_w(NIBBLE_TAPS);

END ARCHITECTURE rtl;



