
-- ***************************************************************************
--Microsemi Corporation Proprietary and Confidential
--Copyright 2015 Microsemi Corporation. All rights reserved.
--
--ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
--ACCORDANCE WITH THE MICROSEMI LICENSE AGREEMENT AND MUST BE APPROVED
--IN ADVANCE IN WRITING.
--
--Description:  G5 CoreFIR RTL
--              G5 Fully Enumerated FIR Filter Nibble
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

-- A nibble has the number NIBBLE_TAPS of taps. The purpose of having nibbles is
--  - limiting fanout for the symmetric (turnback) data bus to, say 8 by
--    inferring pipes for the whole nibble
--  - limiting fanout for the datai_valid wire by inferring pipe regs for
--    the whole nibble

LIBRARY ieee;
  USE ieee.std_logic_1164.all;
USE work.enum_rtl_pack.all;

ENTITY enum_tap_nibble IS
  GENERIC (
    PHY_TAPS                  : INTEGER := 0;
    ODD_TAPS                  : INTEGER := 0;
    NIBBLE_TAPS               : INTEGER := 8;
    COEF_TYPE                 : INTEGER := 0;		--0-Const, 1-reload
    COEF_SETS                 : INTEGER := 0;		--1-Const const, >1-multiple sets
    COEF_SYMM                 : INTEGER := 1;		--0-not symm, 1-symm, 2-antisymm. Shut D if non-symm
    COEF_UNSIGN               : INTEGER := 0;
    COEF_WIDTH                : INTEGER := 12;
    DATA_UNSIGN               : INTEGER := 0;
    DATA_WIDTH                : INTEGER := 12;
    RESERVED1                 : INTEGER := 0;
    WARNING_MSGS_ON           : INTEGER := 1;
    INIT                      : STD_LOGIC_VECTOR;
    NIBBLE_PIPE_STAGES        : INTEGER := 2;
    NIBBLE_SYMM_STAGES        : INTEGER := 1;
    INTER_STYLE               : INTEGER := 0;		-- 0-Basic       inter-row connection
                                                -- 1-DELAY1-based inter-row connection
    -- Identify the first and last nibbles on a given row.  First and last can be
    -- the same nibble if there is a single nibble on a row
    FIRST_NIBBLE              : INTEGER := 0;
    LAST_NIBBLE               : INTEGER := 0;

    -- Identify the first and last rows of a filter.  First and last can be
    -- the same row if the filter fits one row
    FIRST_ROW                 : INTEGER := 1;
    LAST_ROW                  : INTEGER := 1  );
  PORT (
    nGrst                     : IN STD_LOGIC;
    rstn                      : IN STD_LOGIC;
    clk                       : IN STD_LOGIC;
    datai_valid_minus_nibble  : IN STD_LOGIC; -- NIBBLE_PIPE_STAGES clks prior to systola
    -- Reg A gets coef either from LUT (const coef) or a shift register (reload coefs)
    -- Data needs to be sign-extended before it enters B cascade chain
    datai                     : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    cin                       : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
    -- one systola interval prior to turnback
    symm_datai_minus_nibble   : IN STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
    cdin                      : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
    cdout                     : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
    pout                      : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
    bcout                     : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);  -- B2 output to b chain output
    b2out                     : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);  -- Rightmost tap's B2 output to fabric
    -- A shift register section input/output
    coefi                     : IN STD_LOGIC_VECTOR(COEF_WIDTH - 1 DOWNTO 0);
    coefo                     : OUT STD_LOGIC_VECTOR(COEF_WIDTH - 1 DOWNTO 0);
    coef_sel                  : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    coef_on_minus_nibble      : IN STD_LOGIC; -- NIBBLE_PIPE_STAGES clks prior to coef_on
    coefi_valid_minus_nibble  : IN STD_LOGIC  );  -- NIBBLE_PIPE_STAGES clks prior to coefi_valid
END ENTITY enum_tap_nibble;

ARCHITECTURE rtl OF enum_tap_nibble IS
  COMPONENT enum_tap_undernibble_1 IS
    GENERIC (
      PHY_TAPS         : INTEGER;
      ODD_TAPS         : INTEGER;
      NIBBLE_TAPS      : INTEGER;
      COEF_TYPE        : INTEGER;
      COEF_SETS        : INTEGER;
      COEF_SYMM        : INTEGER;
      COEF_UNSIGN      : INTEGER;
      COEF_WIDTH       : INTEGER;
      DATA_UNSIGN      : INTEGER;
      DATA_WIDTH       : INTEGER;
      RESERVED1        : INTEGER;
      WARNING_MSGS_ON  : INTEGER;
      INIT             : STD_LOGIC_VECTOR;
      INTER_STYLE      : INTEGER;
      FIRST_NIBBLE     : INTEGER := 0;
      LAST_NIBBLE      : INTEGER := 0;
      SHUT_C_SINGLE    : INTEGER := 1;
      FIRST_ROW        : INTEGER := 1;
      LAST_ROW         : INTEGER := 1  );
    PORT (
      nGrst            : IN STD_LOGIC;
      rstn             : IN STD_LOGIC;
      clk              : IN STD_LOGIC;
      systola          : IN STD_LOGIC;
      datai            : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      cin              : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
      turnback         : IN STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
      cdin             : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
      cdout            : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
      pout             : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
      bcout            : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      b2out            : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
      coefi            : IN STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
      coefo            : OUT STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
      coef_sel         : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      coef_on          : IN STD_LOGIC;
      coefi_valid      : IN STD_LOGIC  );
  END COMPONENT;

  COMPONENT enum_tap_undernibble_2 IS
    GENERIC (
      PHY_TAPS            : INTEGER;
      ODD_TAPS            : INTEGER;
      NIBBLE_TAPS         : INTEGER;
      COEF_TYPE           : INTEGER;
      COEF_SETS           : INTEGER;
      COEF_SYMM           : INTEGER;
      COEF_UNSIGN         : INTEGER;
      COEF_WIDTH          : INTEGER;
      DATA_UNSIGN         : INTEGER;
      DATA_WIDTH          : INTEGER;
      RESERVED1           : INTEGER;
      WARNING_MSGS_ON     : INTEGER;
       INIT             : STD_LOGIC_VECTOR;
      INTER_STYLE         : INTEGER;
      FIRST_NIBBLE        : INTEGER;
      LAST_NIBBLE         : INTEGER;
      FIRST_ROW           : INTEGER;
      LAST_ROW            : INTEGER;
      SHUT_C_BASIC_STYLE  : INTEGER;
      SHUT_C_ADV_STYLE    : INTEGER  );
    PORT (
      nGrst            : IN STD_LOGIC;
      rstn             : IN STD_LOGIC;
      clk              : IN STD_LOGIC;
      systola          : IN STD_LOGIC;
      datai            : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      cin              : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
      turnback         : IN STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
      cdin             : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
      cdout            : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
      pout             : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
      bcout            : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      b2out            : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
      coefi            : IN STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
      coefo            : OUT STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
      coef_sel         : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      coef_on          : IN STD_LOGIC;
      coefi_valid      : IN STD_LOGIC  );
  END COMPONENT;

  COMPONENT enum_tap_undernibble_3 IS
    GENERIC (
      PHY_TAPS            : INTEGER;
      ODD_TAPS            : INTEGER;
      NIBBLE_TAPS         : INTEGER;
      COEF_TYPE           : INTEGER;
      COEF_SETS           : INTEGER;
      COEF_SYMM           : INTEGER;
      COEF_UNSIGN         : INTEGER;
      COEF_WIDTH          : INTEGER;
      DATA_UNSIGN         : INTEGER;
      DATA_WIDTH          : INTEGER;
      RESERVED1           : INTEGER;
      WARNING_MSGS_ON     : INTEGER;
      INIT             : STD_LOGIC_VECTOR;
      INTER_STYLE         : INTEGER;
      FIRST_NIBBLE        : INTEGER;
      LAST_NIBBLE         : INTEGER;
      FIRST_ROW           : INTEGER;
      LAST_ROW            : INTEGER;
      SHUT_C_BASIC_STYLE  : INTEGER;
      SHUT_C_ADV_STYLE    : INTEGER  );
    PORT (
      nGrst            : IN STD_LOGIC;
      rstn             : IN STD_LOGIC;
      clk              : IN STD_LOGIC;
      systola          : IN STD_LOGIC;
      datai            : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      cin              : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
      turnback         : IN STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
      cdin             : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
      cdout            : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
      pout             : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
      bcout            : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      b2out            : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
      coefi            : IN STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
      coefo            : OUT STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
      coef_sel         : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      coef_on          : IN STD_LOGIC;
      coefi_valid      : IN STD_LOGIC  );
  END COMPONENT;

  --                              +-+-+-+ +-+-+-+-+-+
  --                              |c|i|n| |L|o|g|i|c|
  --                              +-+-+-+ +-+-+-+-+-+
  -- The cin use depends on inter-row style. For the Basic option, the first
  -- tap of a row should accept P carry-out from a previous row, that is have
  -- the C input available. Note: the very first (top) row must have the C input
  -- grounded.
  -- For the Advanced option, the last tap of every row should accept the P
  -- output from a previous row, that is have the C input available. Notes:
  -- - the very first row must have the C input grounded
  -- - here the row order is arranged according to their lengths
  -- The decision to either shut the C input or enable it is made here based on
  -- inter-row style, first/last nibble flag and first row flag. The following
  -- localparams also define which tap, first or last, will get its C input
  -- exposed.

  -- Do not shut C (SHUT_C=0), that is use C input when
  --  - if(INTER_STYLE==0) on the first tap of any row except the first row
  --  - if(INTER_STYLE!=0) on the last tap of of any row except the first row
  -- Shut C in all other cases
  constant SHUT_C_BASIC_STYLE : INTEGER := intMux (1, 0, (INTER_STYLE=0) AND (FIRST_NIBBLE=1) AND (FIRST_ROW/=1) );
  constant SHUT_C_ADV_STYLE   : INTEGER := intMux (1, 0, (INTER_STYLE/=0) AND (LAST_NIBBLE=1) AND (FIRST_ROW/=1) );

  -- Special case to cover a single-tap nibble
  constant SHUT_C_STYLE_B     : INTEGER := intMux (1, 0, (FIRST_NIBBLE=1) AND (FIRST_ROW/=1) );
  constant SHUT_C_STYLE_A     : INTEGER := intMux (1, 0, (LAST_NIBBLE=1) AND (FIRST_ROW/=1) );
  constant SHUT_C_SINGLE      : INTEGER := intMux (SHUT_C_STYLE_A, SHUT_C_STYLE_B, INTER_STYLE=0 );

  SIGNAL systola      : STD_LOGIC;
  SIGNAL coefi_validi : STD_LOGIC;
  SIGNAL coef_on      : STD_LOGIC;
  SIGNAL turnback     : STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
  SIGNAL rstnn        : STD_LOGIC;

BEGIN
  rstnn <= NOT(rstn);

  --tr  generate begin: dbg_top_init
  --tr    genvar i;
  --tr    for(i=0; i<16*NIBBLE_TAPS; i=i+1)
  --tr      begin
  --tr        assign dbg_init[i] = INIT[(i+1)*18-1:i*18];
  --tr      end
  --tr    end
  --tr  endgenerate
  debug_init_0 : debug_INIT
    GENERIC MAP (NUM_OF_COEFS => 16*NIBBLE_TAPS)
    PORT MAP    (flat         => INIT );

  -- On all taps of a nibble, either SHUT_C or SHUT_CDIN or both are on.
  -- Only adders that combine rows can have both off
  one_tap_nibble : IF (NIBBLE_TAPS = 1) GENERATE
    one_tap_nibble_0 : enum_tap_undernibble_1
      GENERIC MAP (
        PHY_TAPS         => PHY_TAPS,
        ODD_TAPS         => ODD_TAPS,
        NIBBLE_TAPS      => 1,
        COEF_TYPE        => COEF_TYPE,
        COEF_SETS        => COEF_SETS,
        COEF_SYMM        => COEF_SYMM,
        COEF_UNSIGN      => COEF_UNSIGN,
        COEF_WIDTH       => COEF_WIDTH,
        DATA_UNSIGN      => DATA_UNSIGN,
        DATA_WIDTH       => DATA_WIDTH,
        RESERVED1        => RESERVED1,
        WARNING_MSGS_ON  => WARNING_MSGS_ON,
        INIT             => INIT,
        INTER_STYLE      => 0,
        FIRST_NIBBLE     => FIRST_NIBBLE,
        LAST_NIBBLE      => LAST_NIBBLE,
        FIRST_ROW        => FIRST_ROW,
        LAST_ROW         => LAST_ROW,
        SHUT_C_SINGLE    => SHUT_C_SINGLE  )
      PORT MAP (
        nGrst        => nGrst,
        rstn         => rstn,
        clk          => clk,
        systola      => systola,
        datai        => datai,
        cin          => cin,
        turnback     => turnback,
        cdin         => cdin,
        cdout        => cdout,
        pout         => pout,
        bcout        => bcout,
        b2out        => b2out,
        coefi        => coefi,
        coefo        => coefo,
        coef_sel     => coef_sel,
        coef_on      => coef_on,
        coefi_valid  => coefi_validi  );
  END GENERATE;


  two_tap_nibble : IF (NIBBLE_TAPS = 2) GENERATE
    two_tap_nibble_0 : enum_tap_undernibble_2
      GENERIC MAP (
        PHY_TAPS            => PHY_TAPS,
        ODD_TAPS            => ODD_TAPS,
        NIBBLE_TAPS         => 2,
        COEF_TYPE           => COEF_TYPE,
        COEF_SETS           => COEF_SETS,
        COEF_SYMM           => COEF_SYMM,
        COEF_UNSIGN         => COEF_UNSIGN,
        COEF_WIDTH          => COEF_WIDTH,
        DATA_UNSIGN         => DATA_UNSIGN,
        DATA_WIDTH          => DATA_WIDTH,
        RESERVED1           => RESERVED1,
        WARNING_MSGS_ON     => WARNING_MSGS_ON,
        INIT                => INIT,
        SHUT_C_BASIC_STYLE  => SHUT_C_BASIC_STYLE,
        SHUT_C_ADV_STYLE    => SHUT_C_ADV_STYLE,
        INTER_STYLE         => 0,
        FIRST_NIBBLE        => FIRST_NIBBLE,
        LAST_NIBBLE         => LAST_NIBBLE,
        FIRST_ROW           => FIRST_ROW,
        LAST_ROW            => LAST_ROW  )
      PORT MAP (
        nGrst        => nGrst,
        rstn         => rstn,
        clk          => clk,
        systola      => systola,
        datai        => datai,
        cin          => cin,
        turnback     => turnback,
        cdin         => cdin,
        cdout        => cdout,
        pout         => pout,
        bcout        => bcout,
        b2out        => b2out,
        coefi        => coefi,
        coefo        => coefo,
        coef_sel     => coef_sel,
        coef_on      => coef_on,
        coefi_valid  => coefi_validi  );
  END GENERATE;


  many_tap_nibble : IF (NIBBLE_TAPS > 2) GENERATE
    many_tap_nibble_0 : enum_tap_undernibble_3
      GENERIC MAP (
        PHY_TAPS            => PHY_TAPS,
        ODD_TAPS            => ODD_TAPS,
        NIBBLE_TAPS         => NIBBLE_TAPS,
        COEF_TYPE           => COEF_TYPE,
        COEF_SETS           => COEF_SETS,
        COEF_SYMM           => COEF_SYMM,
        COEF_UNSIGN         => COEF_UNSIGN,
        COEF_WIDTH          => COEF_WIDTH,
        DATA_UNSIGN         => DATA_UNSIGN,
        DATA_WIDTH          => DATA_WIDTH,
        RESERVED1           => RESERVED1,
        WARNING_MSGS_ON     => WARNING_MSGS_ON,
        INIT                => INIT,
        SHUT_C_BASIC_STYLE  => SHUT_C_BASIC_STYLE,
        SHUT_C_ADV_STYLE    => SHUT_C_ADV_STYLE,
        INTER_STYLE         => 0,
        FIRST_NIBBLE        => FIRST_NIBBLE,
        LAST_NIBBLE         => LAST_NIBBLE,
        FIRST_ROW           => FIRST_ROW,
        LAST_ROW            => LAST_ROW )
      PORT MAP (
        nGrst        => nGrst,
        rstn         => rstn,
        clk          => clk,
        systola      => systola,
        datai        => datai,
        cin          => cin,
        turnback     => turnback,
        cdin         => cdin,
        cdout        => cdout,
        pout         => pout,
        bcout        => bcout,
        b2out        => b2out,
        coefi        => coefi,
        coefo        => coefo,
        coef_sel     => coef_sel,
        coef_on      => coef_on,
        coefi_valid  => coefi_validi  );
  END GENERATE;

  -- SynPro must not optimize out the pipeline regs.  Use kit _attr versions
  symm_data_pad : IF (COEF_SYMM /= 0) GENERATE
    symm_data_pipe_0 : enum_kitDelay_reg_attr
      GENERIC MAP ( BITWIDTH  => DATA_WIDTH,
                    DELAY1     => NIBBLE_SYMM_STAGES )
      PORT MAP (
        nGrst  => nGrst,
        rst    => rstnn,
        clk    => clk,
        clken  => systola,
        inp    => symm_datai_minus_nibble,
        outp   => turnback  );
  END GENERATE;

  dvalid_pipe_0 : enum_kitDelay_bit_reg_attr
    GENERIC MAP ( DELAY1  => NIBBLE_PIPE_STAGES  )
    PORT MAP (
      nGrst  => nGrst,
      rst    => '0',
      clk    => clk,
      clken  => '1',
      inp    => datai_valid_minus_nibble,
      outp   => systola  );

  cvalid_pipe_0 : enum_kitDelay_bit_reg_attr
    GENERIC MAP ( DELAY1  => NIBBLE_PIPE_STAGES  )
    PORT MAP (
      nGrst  => nGrst,
      rst    => rstnn,
      clk    => clk,
      clken  => '1',
      inp    => coefi_valid_minus_nibble,
      outp   => coefi_validi  );

  valid_pipe_0 : enum_kitDelay_bit_reg_attr
    GENERIC MAP ( DELAY1  => NIBBLE_PIPE_STAGES  )
    PORT MAP (
      nGrst  => nGrst,
      rst    => rstnn,
      clk    => clk,
      clken  => '1',
      inp    => coef_on_minus_nibble,
      outp   => coef_on  );

END ARCHITECTURE rtl;


