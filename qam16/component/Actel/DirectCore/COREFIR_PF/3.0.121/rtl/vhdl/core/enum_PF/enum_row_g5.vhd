-- ***************************************************************************
--Microsemi Corporation Proprietary and Confidential
--Copyright 2015 Microsemi Corporation. All rights reserved.
--
--ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
--ACCORDANCE WITH THE MICROSEMI LICENSE AGREEMENT AND MUST BE APPROVED
--IN ADVANCE IN WRITING.
--
--Description:  G5 CoreFIR RTL
--              G5 Fully Enumerated FIR Filter Row
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

-- A garland of nibbles located on the same physical row.

-- Depending on inter-row connection style, and which row (first or subsequent)
-- is being built, the leftmost nibble can have B & CD cascade inputs. The C
-- input is either available for entering data or shut down (grounded)

-- A row in/out data are DATA_WIDTH wide while internal cascade chain is 18 bits

LIBRARY ieee;
  USE ieee.std_logic_1164.all;
  USE IEEE.numeric_std.all;
USE work.enum_rtl_pack.all;

ENTITY enum_row_g5 IS
  GENERIC (
    PHY_TAPS               : INTEGER := 0;		-- Number of phy taps for a whole filter
    ODD_TAPS               : INTEGER := 0;
    RC_ROWS                : INTEGER := 1;
    ROW_TAPS               : INTEGER := 45;		-- Number of phy taps for a particular row
    MAX_NIB_TAPS           : INTEGER := 8;		-- Make it local at the top level
    COEF_TYPE              : INTEGER := 0;		--0-Const, 1-reload
    COEF_SETS              : INTEGER := 0;		--1-Const const, >1-multiple sets
    COEF_SYMM              : INTEGER := 1;		--0-not symm, 1-symm, 2-antisymm. Shut D if non-symm
    COEF_UNSIGN            : INTEGER := 0;
    COEF_WIDTH             : INTEGER := 12;
    DATA_UNSIGN            : INTEGER := 0;
    DATA_WIDTH             : INTEGER := 12;
    RESERVED1              : INTEGER := 0;
    WARNING_MSGS_ON        : INTEGER := 1;
    INIT                   : STD_LOGIC_VECTOR;
    NIBBLE_PIPE_STAGES     : INTEGER := 2;
    ROW_PIPE_STAGES        : INTEGER := 2;
    NIBBLE_SYMM_STAGES     : INTEGER := 1;
    ROW_SYMM_STAGES        : INTEGER := 1;
    FIRST_ROW              : INTEGER := 1;
    LAST_ROW               : INTEGER := 1;
	HIGH_ROW_SIZE		   : INTEGER := 74;
    INTER_STYLE            : INTEGER := 0;		-- 0-basic; 1-DELAY1-based
    BASIC_INTER_LAYER      : INTEGER := 4;		-- Pipe layers between rows @ basic style
    ADV_FBR_ENDDLY         : INTEGER := 2 );	-- Pipes btw P row output & next row final adder inp
  PORT (
    nGrst                  : IN STD_LOGIC;
    rstn                   : IN STD_LOGIC;
    clk                    : IN STD_LOGIC;
    datai_valid_minus_row  : IN STD_LOGIC;  -- must come (ROW+NIBBLE)_PIPE_STAGES clks prior to datai
    -- Data needs to be sign-extended before it enters B cascade chain
    datai                  : IN STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
    -- The cin port gets connected to a proper tap of a proper nibble at a nibble
    -- level based on FIRST/LAST_NIBBLE, FIRST/LAST_ROW and INTER_STYLE
    cin                    : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
    symm_data_minus_row    : IN STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
    pout                   : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
    row_datao              : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0); -- end of systolic DELAY1 output to fabric
    -- A shift register section input/output
    coefi                  : IN STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
    coefo                  : OUT STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);

    coef_sel               : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    coef_on_minus_row      : IN STD_LOGIC;
    coefi_valid_minus_row  : IN STD_LOGIC  );   -- must come (ROW+NIBBLE)_PIPE_STAGES clks prior to coefi
END ENTITY enum_row_g5;

ARCHITECTURE rtl OF enum_row_g5 IS
  COMPONENT enum_tap_nibble IS
    GENERIC (
      PHY_TAPS               : INTEGER;
      ODD_TAPS               : INTEGER;
      NIBBLE_TAPS            : INTEGER;
      COEF_TYPE              : INTEGER;
      COEF_SETS              : INTEGER;
      COEF_SYMM              : INTEGER;
      COEF_UNSIGN            : INTEGER;
      COEF_WIDTH             : INTEGER;
      DATA_UNSIGN            : INTEGER;
      DATA_WIDTH             : INTEGER;
      RESERVED1              : INTEGER;
      WARNING_MSGS_ON        : INTEGER;
      INIT                   : STD_LOGIC_VECTOR;
      NIBBLE_PIPE_STAGES     : INTEGER;
      NIBBLE_SYMM_STAGES     : INTEGER;
      INTER_STYLE            : INTEGER;
      FIRST_NIBBLE           : INTEGER;
      LAST_NIBBLE            : INTEGER;
      FIRST_ROW              : INTEGER;
      LAST_ROW               : INTEGER   );
    PORT (
      nGrst                  : IN STD_LOGIC;
      rstn                   : IN STD_LOGIC;
      clk                    : IN STD_LOGIC;
      datai_valid_minus_nibble : IN STD_LOGIC;
      datai                  : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      cin                    : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
      symm_datai_minus_nibble : IN STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
      cdin                   : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
      cdout                  : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
      pout                   : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
      bcout                  : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
      b2out                  : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
      coefi                  : IN STD_LOGIC_VECTOR(COEF_WIDTH - 1 DOWNTO 0);
      coefo                  : OUT STD_LOGIC_VECTOR(COEF_WIDTH - 1 DOWNTO 0);
      coef_sel               : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      coef_on_minus_nibble   : IN STD_LOGIC;
      coefi_valid_minus_nibble : IN STD_LOGIC  );
  END COMPONENT;

  -- Total Number Of Nibbles on a row. Min Number Of Nibbles = 1, that is the
  -- left nibble is always there
  constant NUM_NIB : INTEGER := ceil_frac (ROW_TAPS, MAX_NIB_TAPS);

  --constant ROW_INITi : STD_LOGIC_VECTOR(288*ROW_TAPS-1 DOWNTO 0) := INIT(288*ROW_TAPS-1 DOWNTO 0);               --29/02/16 
  constant ROW_INITi : STD_LOGIC_VECTOR(288*ROW_TAPS-1 DOWNTO 0) := INIT(288*HIGH_ROW_SIZE-1 DOWNTO 288*(HIGH_ROW_SIZE-ROW_TAPS));  -- after array rearrangement 2D coef array
  
  -- Left nibble can be shorter than others. The number of its taps:
  -- If (ROW_TAPS % MAX_NIB_TAPS == 0)
  --    Left Nibble_Taps (LNT) = MAX_NIB_TAPS;
  -- Else
  --    Left Nibble_Taps (LNT) = ROW_TAPS % MAX_NIB_TAPS;
  -- Number LNT of taps in the left nibble (LeftNibbleTaps):
  constant LNT : INTEGER := intMux (ROW_TAPS MOD MAX_NIB_TAPS, MAX_NIB_TAPS, ROW_TAPS MOD MAX_NIB_TAPS = 0);

  -- If there are more than 1 nibble, the last nibble is identified as
  -- right_nibble_0. If there is a single nibble, it is the last one (and the
  -- first (left_nibble_0) at the same nibble
  constant LAST_NIBBLE : INTEGER := intMux (0, 1, NUM_NIB=1);


  -- Row INIT gets separated into the left nibble constant that can be shorter
  -- than 288*MAX_NIB_TAPS and a const for the other nibbles that have
  -- standard size of 288*MAX_NIB_TAPS.

  TYPE type_xhdl3 IS ARRAY (0 TO NUM_NIB) OF STD_LOGIC_VECTOR(17 DOWNTO 0);
  TYPE type_xhdl2 IS ARRAY (0 TO NUM_NIB) OF STD_LOGIC_VECTOR(47 DOWNTO 0);
  TYPE type_xhdl4 IS ARRAY (0 TO NUM_NIB) OF STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
  TYPE type_xhdl5 IS ARRAY (1 TO NUM_NIB) OF STD_LOGIC_VECTOR(47 DOWNTO 0);
  TYPE type_xhdl6 IS ARRAY (1 TO NUM_NIB) OF STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);

  SIGNAL datai_validi, rstnn      : STD_LOGIC;
  SIGNAL coefi_valid_minus_nibble : STD_LOGIC;
  SIGNAL coef_on_minus_nibble     : STD_LOGIC;
  SIGNAL systola                  : STD_LOGIC;
  SIGNAL symm_datai_syst          : STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
  SIGNAL datai_18                 : STD_LOGIC_VECTOR(17 DOWNTO 0);

  SIGNAL cd_w                     : type_xhdl2;
  SIGNAL data_w                   : type_xhdl3;
  SIGNAL coef_w                   : type_xhdl4;
  SIGNAL p_w                      : type_xhdl5;
  SIGNAL b2out_w                  : type_xhdl6;
  SIGNAL cini                     : STD_LOGIC_VECTOR(47 DOWNTO 0);
  SIGNAL cin_adv_style            : STD_LOGIC_VECTOR(47 DOWNTO 0);
  
BEGIN
  rstnn <= NOT(rstn);

  --tr  generate begin: dbg_top_init
  --tr    genvar i;
  --tr    for(i=0; i<16*ROW_TAPS; i=i+1)
  --tr      begin
  --tr        assign dbg_init[i] = INIT[(i+1)*18-1:i*18];
  --tr      end
  --tr    end
  --tr  endgenerate
  -- debug_init_0 : debug_INIT
    -- GENERIC MAP (NUM_OF_COEFS => 16*ROW_TAPS)
    -- PORT MAP    (flat         => INIT );

  cini <= cin WHEN (INTER_STYLE = 0) ELSE cin_adv_style;

  -- Sign extend row data input to 18 bits
--20/06/16  datai_18 <= sign_ext (datai, 18, 0);
  datai_18 <= sign_ext (datai, 18, DATA_UNSIGN);          --20/06/16

  -- Feed the cdin, data & coef in the leftmost tap
  cd_w(0) <= "000000000000000000000000000000000000000000000000";
  data_w(0) <= datai_18;
  coef_w(0) <= coefi;

  --  -------------------  How the constant of INIT connects to nibbles   --------------
  -- Nibble:      Left   First   Second     i-th    Right
  --              ----- -------- --------  ------  --------
  -- To the left  : INIT[288*LNT-1 : 0]
  -- To the first : MID_ROM_DATA_[288*MAX_NIB_TAPS-1 : 0]
  -- To the second: MID_ROM_DATA[2*288*MAX_NIB_TAPS-1 : 288*MAX_NIB_TAPS]
  -- ...
  -- To the i-th  : MID_ROM_DATA[i*288*MAX_NIB_TAPS-1 : 288*(i-1)*MAX_NIB_TAPS]
  -- ...

  -- Row nibbles are numbered from 0 to NUM_NIBBLE-1
  -- The first nibble of a row might be different than others by number of taps
  -- and parameter SHUT_C value


  left_nibble_0 : enum_tap_nibble       -- Nibble 0
    GENERIC MAP (
      PHY_TAPS            => PHY_TAPS,
      ODD_TAPS            => ODD_TAPS,
      NIBBLE_TAPS         => LNT,
      COEF_TYPE           => COEF_TYPE,
      COEF_SETS           => COEF_SETS,
      COEF_SYMM           => COEF_SYMM,
      COEF_UNSIGN         => COEF_UNSIGN,
      COEF_WIDTH          => COEF_WIDTH,
      DATA_UNSIGN         => DATA_UNSIGN,
      DATA_WIDTH          => DATA_WIDTH,
      RESERVED1           => RESERVED1,
      WARNING_MSGS_ON     => WARNING_MSGS_ON,
--29/02/16      INIT                => INIT(288*LNT-1 DOWNTO 0),
      INIT                => ROW_INITi(288*LNT-1 DOWNTO 0),
      NIBBLE_PIPE_STAGES  => NIBBLE_PIPE_STAGES,
      NIBBLE_SYMM_STAGES  => NIBBLE_SYMM_STAGES,
      FIRST_NIBBLE        => 1,
      LAST_NIBBLE         => LAST_NIBBLE,
      FIRST_ROW           => FIRST_ROW,
      LAST_ROW            => LAST_ROW,
      INTER_STYLE         => INTER_STYLE  )
    PORT MAP (
      nGrst                     => nGrst,
      rstn                      => rstn,
      clk                       => clk,
      datai_valid_minus_nibble  => datai_validi,
      datai                     => data_w(0),
      cin                       => cini,
      symm_datai_minus_nibble   => symm_datai_syst,
      cdin                      => cd_w(0),
      cdout                     => cd_w(1),
      pout                      => p_w(1),
      bcout                     => data_w(1),		-- B2 output to b chain output
      b2out                     => b2out_w(1),  -- B2 output to fabric
      coefi                     => coef_w(0),
      coefo                     => coef_w(1),
      coef_sel                  => coef_sel,
      coef_on_minus_nibble      => coef_on_minus_nibble,
      coefi_valid_minus_nibble  => coefi_valid_minus_nibble );

  -- The last (rightmost) nibble can be special, too due to SHUT_C param,
  -- or odd symmetry
  
  
  right_nibble : IF (NUM_NIB > 1) GENERATE		-- Rightmost nibble NUM_NIB-1 if any
    right_nibble_0 : enum_tap_nibble
      GENERIC MAP (
        PHY_TAPS            => PHY_TAPS,
        ODD_TAPS            => ODD_TAPS,
        NIBBLE_TAPS         => MAX_NIB_TAPS,
        COEF_TYPE           => COEF_TYPE,
        COEF_SETS           => COEF_SETS,
        COEF_SYMM           => COEF_SYMM,
        COEF_UNSIGN         => COEF_UNSIGN,
        COEF_WIDTH          => COEF_WIDTH,
        DATA_UNSIGN         => DATA_UNSIGN,
        DATA_WIDTH          => DATA_WIDTH,
        RESERVED1           => RESERVED1,
        WARNING_MSGS_ON     => WARNING_MSGS_ON,
--29/02/16        INIT                => INIT(288*ROW_TAPS-1 DOWNTO 288*(ROW_TAPS-MAX_NIB_TAPS)),   --test
        INIT                => ROW_INITi(288*ROW_TAPS-1 DOWNTO 288*(ROW_TAPS-MAX_NIB_TAPS)),   --test
        NIBBLE_PIPE_STAGES  => NIBBLE_PIPE_STAGES,
        NIBBLE_SYMM_STAGES  => NIBBLE_SYMM_STAGES,
        FIRST_NIBBLE        => 0,
        LAST_NIBBLE         => 1,
        FIRST_ROW           => FIRST_ROW,
        LAST_ROW            => LAST_ROW,
        INTER_STYLE         => INTER_STYLE  )
      PORT MAP (
        nGrst                     => nGrst,
        rstn                      => rstn,
        clk                       => clk,
        datai_valid_minus_nibble  => datai_validi,
        datai                     => data_w(NUM_NIB-1),
        cin                       => cini,
        symm_datai_minus_nibble   => symm_datai_syst,
        cdin                      => cd_w(NUM_NIB - 1),
        cdout                     => cd_w(NUM_NIB),
        pout                      => p_w(NUM_NIB),
        bcout                     => data_w(NUM_NIB),
        b2out                     => b2out_w(NUM_NIB),
        coefi                     => coef_w(NUM_NIB - 1),
        coefo                     => coef_w(NUM_NIB),
        coef_sel                  => coef_sel,
        coef_on_minus_nibble      => coef_on_minus_nibble,
        coefi_valid_minus_nibble  => coefi_valid_minus_nibble );
  END GENERATE;

  mid_nibbles: FOR i IN 1 TO NUM_NIB-2 GENERATE
    a_nibble : enum_tap_nibble
      GENERIC MAP (
        PHY_TAPS            => PHY_TAPS,
        ODD_TAPS            => ODD_TAPS,
        NIBBLE_TAPS         => MAX_NIB_TAPS,
        COEF_TYPE           => COEF_TYPE,
        COEF_SETS           => COEF_SETS,
        COEF_SYMM           => COEF_SYMM,
        COEF_UNSIGN         => COEF_UNSIGN,
        COEF_WIDTH          => COEF_WIDTH,
        DATA_UNSIGN         => DATA_UNSIGN,
        DATA_WIDTH          => DATA_WIDTH,
        RESERVED1           => RESERVED1,
        WARNING_MSGS_ON     => WARNING_MSGS_ON,
--29/02/16        INIT                => INIT(288*(LNT+i*MAX_NIB_TAPS)-1 DOWNTO 288*(LNT+(i-1)*MAX_NIB_TAPS)),   --test
        INIT                => ROW_INITi(288*(LNT+i*MAX_NIB_TAPS)-1 DOWNTO 288*(LNT+(i-1)*MAX_NIB_TAPS)),
        NIBBLE_PIPE_STAGES  => NIBBLE_PIPE_STAGES,
        NIBBLE_SYMM_STAGES  => NIBBLE_SYMM_STAGES,
        FIRST_NIBBLE        => 0,
        LAST_NIBBLE         => 0,
        FIRST_ROW           => FIRST_ROW,
        LAST_ROW            => LAST_ROW,
        INTER_STYLE         => INTER_STYLE  )
      PORT MAP (
        nGrst                     => nGrst,
        rstn                      => rstn,
        clk                       => clk,
        datai_valid_minus_nibble  => datai_validi,
        datai                     => data_w(i),
        cin                       => (others=>'1'),
        symm_datai_minus_nibble   => symm_datai_syst,
        cdin                      => cd_w(i),
        cdout                     => cd_w(i+1),
        pout                      => p_w(i+1),
        bcout                     => data_w(i+1),
        b2out                     => b2out_w(i+1),
        coefi                     => coef_w(i),
        coefo                     => coef_w(i+1),
        coef_sel                  => coef_sel,
        coef_on_minus_nibble      => coef_on_minus_nibble,
        coefi_valid_minus_nibble  => coefi_valid_minus_nibble );
  END GENERATE;

  -- Form output ports: connect them to the proper tap outputs
  coefo <= coef_w(NUM_NIB);

  -- The following signal matches the datai_valid that applies immediately to
  -- MAC's. In particular it clocks data in the systolic B chain
  dvalid_pipe_1 : enum_kitDelay_bit_reg_attr
    GENERIC MAP ( DELAY1  => NIBBLE_PIPE_STAGES  )
    PORT MAP (
      nGrst  => nGrst,
      rst    => '0',
      clk    => clk,
      clken  => '1',
      inp    => datai_validi,
      outp   => systola );

  -- A row has a separate set of pipe regs on the top of nibble pipes.
  -- Note: the overall DELAY1 the core applies to _tick_minus signals =
  -- ROW_PIPE_STAGES + NIBBLE_PIPE_STAGES.
  -- SynPro must not optimize out the pipeline regs.  Use kit _attr versions
  symm_data_pad : IF (COEF_SYMM /= 0) GENERATE
    symm_data_pipe_0 : enum_kitDelay_reg_attr
      GENERIC MAP ( BITWIDTH  => DATA_WIDTH,
                    DELAY1     => ROW_SYMM_STAGES  )
      PORT MAP (
        nGrst  => nGrst,
        rst    => rstnn,
        clk    => clk,
        clken  => systola,
        inp    => symm_data_minus_row,
        outp   => symm_datai_syst   );
  END GENERATE;


  dvalid_pipe_0 : enum_kitDelay_bit_reg_attr
    GENERIC MAP ( DELAY1  => ROW_PIPE_STAGES )
    PORT MAP (
      nGrst  => nGrst,
      rst    => '0',
      clk    => clk,
      clken  => '1',
      inp    => datai_valid_minus_row,
      outp   => datai_validi  );

  cvalid_pipe_0 : enum_kitDelay_bit_reg_attr
    GENERIC MAP ( DELAY1  => ROW_PIPE_STAGES  )
    PORT MAP (
      nGrst  => nGrst,
      rst    => rstnn,
      clk    => clk,
      clken  => '1',
      inp    => coefi_valid_minus_row,
      outp   => coefi_valid_minus_nibble  );

  valid_pipe_0 : enum_kitDelay_bit_reg_attr
    GENERIC MAP ( DELAY1  => ROW_PIPE_STAGES )
    PORT MAP (
      nGrst  => nGrst,
      rst    => rstnn,
      clk    => clk,
      clken  => '1',
      inp    => coef_on_minus_row,
      outp   => coef_on_minus_nibble  );

  --                       _   _   _   _   _   _   _   _   _
  --                      / \ / \ / \ / \ / \ / \ / \ / \ / \
  --                     ( I | n | t | e | r | - | R | o | w )
  --                      \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/

  --  ------------------------------  BASIC STYLE  ------------------------------
  inter_basic : IF ((INTER_STYLE=0) AND (RC_ROWS>1) AND (LAST_ROW/=1)) GENERATE
    -- Data inter-row pipes connect systolic DELAY1 lines. DELAY1 is one
    -- less, as internal MAC B register of a next row is enabled
    data_inter_layers_0 : enum_kitDelay_reg
      GENERIC MAP ( BITWIDTH  => DATA_WIDTH,
                    DELAY1     => BASIC_INTER_LAYER  )
      PORT MAP (
        nGrst  => nGrst,
        rst    => rstnn,
        clk    => clk,
        clken  => systola,
        inp    => b2out_w(NUM_NIB),
        outp   => row_datao  );

    -- Cascade inter-row pipes connect cascade chains. DELAY1 is one less, as
    -- C input of a next row has internal MAC register enabled
    acc_inter_layers_0 : enum_kitDelay_reg
      GENERIC MAP ( BITWIDTH  => 48,
                    DELAY1     => BASIC_INTER_LAYER-1  )
      PORT MAP (
        nGrst  => nGrst,
        rst    => rstnn,
        clk    => clk,
        clken  => systola,
        inp    => p_w(NUM_NIB),
        outp   => pout  );
  END GENERATE;

  --  ------------------------------  ADVANCED STYLE  ------------------------------
  inter_advanced : IF ((INTER_STYLE/=0) OR (RC_ROWS=1) OR (LAST_ROW=1)) GENERATE
    -- Use pout directly
    pout <= p_w(NUM_NIB);

    -- Infer EndDly on every row 'cin' (starting with row 2)
    end_dly_0 : enum_kitDelay_reg
      GENERIC MAP ( BITWIDTH  => 48,
                    DELAY1     => ADV_FBR_ENDDLY  )
      PORT MAP (
        nGrst  => nGrst,
        rst    => '0',
        clk    => clk,
        clken  => systola,
        inp    => cin,
        outp   => cin_adv_style  );
  END GENERATE;

END ARCHITECTURE rtl;

