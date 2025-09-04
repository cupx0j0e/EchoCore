
-- ***************************************************************************
--Microsemi Corporation Proprietary and Confidential
--Copyright 2016 Microsemi Corporation. All rights reserved.
--
--ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
--ACCORDANCE WITH THE MICROSEMI LICENSE AGREEMENT AND MUST BE APPROVED
--IN ADVANCE IN WRITING.
--
--Description:  G5 CoreFIR RTL
--              G5 Fully Enumerated FIR Filter Top
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
USE work.enum_rtl_pack.all;
USE work.COREFIR_PF_C0_COREFIR_PF_C0_0_enum_params.all;
--USE work.COREFIR_PF_C0_COREFIR_PF_C0_0_enumFIR_coefs.all;

ENTITY COREFIR_PF_C0_COREFIR_PF_C0_0_enum_fir_g5 IS
  GENERIC (
    CFG_ARCH            : INTEGER := 1;
    TAPS                : INTEGER := 45;		-- Overall number of phy taps
    COEF_TYPE           : INTEGER := 0;		--0-Const, 1-reload
    COEF_SETS           : INTEGER := 0;		--1-Const const, >1-multiple sets
    COEF_SYMM           : INTEGER := 1;		--0-not symm, 1-symm, 2-antisymm. Shut D if non-symm
    COEF_UNSIGN         : INTEGER := 0;
    COEF_WIDTH          : INTEGER := 12;
    DATA_UNSIGN         : INTEGER := 0;
    DATA_WIDTH          : INTEGER := 12;
    URAM_MAXDEPTH       : INTEGER := 0;
    RESERVED2           : INTEGER := 0;
    NIBBLE_PIPE_STAGES  : INTEGER := 2;
    ROW_PIPE_STAGES     : INTEGER := 2;
    PAD_PIPE_STAGES     : INTEGER := 2;
    NIBBLE_SYMM_STAGES  : INTEGER := 1;
    ROW_SYMM_STAGES     : INTEGER := 1;
    INTER_STYLE         : INTEGER := 1;		-- 0-basic       inter-row connection
    -- 1-DELAY1-based inter-row connection
    BASIC_INTER_LAYER   : INTEGER := 4;		-- Pipe layers between rows @ basic style
    ADV_FBR_ENDDLY      : INTEGER := 2  );-- Pipes btw P row output & next row final adder inp
  PORT (
    nGrst, rstn         : IN STD_LOGIC;   -- either one needs to be present
    clk                 : IN STD_LOGIC;
    datai_valid         : IN STD_LOGIC;
    --Data needs to be sign-extended before it enters B cascade chain
    datai               : IN STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
    pout                : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
    coefi               : IN STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0); -- A shift register section input
    coef_sel            : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    coef_on             : IN STD_LOGIC;     -- writes coef in A reg in all coef modes
    coefi_valid         : IN STD_LOGIC;
    firo_valid          : OUT STD_LOGIC  );
END ENTITY COREFIR_PF_C0_COREFIR_PF_C0_0_enum_fir_g5;

ARCHITECTURE rtl OF COREFIR_PF_C0_COREFIR_PF_C0_0_enum_fir_g5 IS

  COMPONENT enum_fir_basic_g5 IS
    GENERIC (
      TAPS                   : INTEGER;
      PHY_TAPS               : INTEGER;
      MAX_NIB_TAPS           : INTEGER;
      COEF_TYPE              : INTEGER;
      COEF_SETS              : INTEGER;
      COEF_SYMM              : INTEGER;
      COEF_UNSIGN            : INTEGER;
      COEF_WIDTH             : INTEGER;
      DATA_UNSIGN            : INTEGER;
      DATA_WIDTH             : INTEGER;
      RESERVED1              : INTEGER;
      RESERVED2              : INTEGER;
      WARNING_MSGS_ON        : INTEGER;
      INIT                   : STD_LOGIC_VECTOR;
      NIBBLE_PIPE_STAGES     : INTEGER;
      ROW_PIPE_STAGES        : INTEGER;
      PAD_PIPE_STAGES        : INTEGER;
      NIBBLE_SYMM_STAGES     : INTEGER;
      ROW_SYMM_STAGES        : INTEGER;
      RC_MM_BITS             : INTEGER;
      RC_MAX_MAC_ROWS        : INTEGER;
      RC_INFO                : STD_LOGIC_VECTOR;
      RC_ROWS                : INTEGER;
      BASIC_INTER_LAYER      : INTEGER;
      ADV_FBR_ENDDLY         : INTEGER );
    PORT (
      nGrst, rstn            : IN STD_LOGIC;
      clk                    : IN STD_LOGIC;
      datai_valid            : IN STD_LOGIC;
      datai                  : IN STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
      pout                   : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
      coefi                  : IN STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
      coefo                  : OUT STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
      coef_sel               : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      coef_on                : IN STD_LOGIC;
      coefi_valid            : IN STD_LOGIC;
      firo_valid             : OUT STD_LOGIC  );
  END COMPONENT;

  COMPONENT enum_fir_adv_g5 IS
    GENERIC (
      TAPS                : INTEGER;
      PHY_TAPS            : INTEGER;
      MAX_NIB_TAPS        : INTEGER;
      COEF_TYPE           : INTEGER;
      COEF_SETS           : INTEGER;
      COEF_SYMM           : INTEGER;
      COEF_UNSIGN         : INTEGER;
      COEF_WIDTH          : INTEGER;
      DATA_UNSIGN         : INTEGER;
      DATA_WIDTH          : INTEGER;
      URAM_MAXDEPTH       : INTEGER;
      WARNING_MSGS_ON     : INTEGER;
    --  INIT                : STD_LOGIC_VECTOR;
      NIBBLE_PIPE_STAGES  : INTEGER;
      ROW_PIPE_STAGES     : INTEGER;
      PAD_PIPE_STAGES     : INTEGER;
      RESERVED2           : INTEGER;
      NIBBLE_SYMM_STAGES  : INTEGER;
      ROW_SYMM_STAGES     : INTEGER;
      RC_MM_BITS          : INTEGER;
      RC_MAX_MAC_ROWS     : INTEGER;
      RC_INFO             : STD_LOGIC_VECTOR;
      RC_RANK             : STD_LOGIC_VECTOR;
      FIRST_ROW_SIZE      : INTEGER;
	  HIGH_ROW_SIZE   	  : INTEGER;
      RC_ADV_DDLY_D       : STD_LOGIC_VECTOR;
      RC_ADV_DDLY_S       : STD_LOGIC_VECTOR;
      RC_ROWS             : INTEGER;
      BASIC_INTER_LAYER   : INTEGER;
      ADV_FBR_ENDDLY      : INTEGER );
    PORT (
      nGrst, rstn         : IN STD_LOGIC;
      clk                 : IN STD_LOGIC;
      datai_valid         : IN STD_LOGIC;
      datai               : IN STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
      pout                : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
      coefi               : IN STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
      coef_sel            : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      coef_on             : IN STD_LOGIC;
      coefi_valid         : IN STD_LOGIC;
      firo_valid          : OUT STD_LOGIC  );
  END COMPONENT;

  constant MAX_NIB_TAPS     : POSITIVE := 8;
  constant PHY_TAPS         : POSITIVE :=   intMux (
      intMux (TAPS/2+1, TAPS/2, TAPS MOD 2 = 0), TAPS, COEF_SYMM=0);
  constant WARNING_MSGS_ON  : POSITIVE := 1;

BEGIN

  --tr  generate begin: dbg_top_init
  --tr    genvar i;
  --tr    for(i=0; i<16*PHY_TAPS; i=i+1)
  --tr      begin
  --tr        assign dbg_init[i] = INIT[(i+1)*18-1:i*18];
  --tr      end
  --tr    end
  --tr  endgenerate
  -- debug_init_0 : debug_INIT
    -- GENERIC MAP (NUM_OF_COEFS => 16*PHY_TAPS)
    -- PORT MAP    (flat         => INIT );


-- /*   basic_enum : IF (INTER_STYLE = 0) GENERATE
    -- basic_enum_0 : enum_fir_basic_g5
      -- GENERIC MAP (
        -- TAPS                => TAPS,
        -- PHY_TAPS            => PHY_TAPS,
        -- MAX_NIB_TAPS        => MAX_NIB_TAPS,
        -- COEF_TYPE           => COEF_TYPE,
        -- COEF_SETS           => COEF_SETS,
        -- COEF_SYMM           => COEF_SYMM,
        -- COEF_UNSIGN         => COEF_UNSIGN,
        -- COEF_WIDTH          => COEF_WIDTH,
        -- DATA_UNSIGN         => DATA_UNSIGN,
        -- DATA_WIDTH          => DATA_WIDTH,
        -- RESERVED1           => 0,
        -- WARNING_MSGS_ON     => WARNING_MSGS_ON,
        -- INIT                => INIT,    -- Fake: to debug if used at all
        -- NIBBLE_PIPE_STAGES  => NIBBLE_PIPE_STAGES,
        -- ROW_PIPE_STAGES     => ROW_PIPE_STAGES,
        -- PAD_PIPE_STAGES     => PAD_PIPE_STAGES,
        -- RESERVED2           => RESERVED2,
        -- NIBBLE_SYMM_STAGES  => NIBBLE_SYMM_STAGES,
        -- ROW_SYMM_STAGES     => ROW_SYMM_STAGES,
        -- RC_MM_BITS          => RC_MM_BITS,
        -- RC_MAX_MAC_ROWS     => RC_MAX_MAC_ROWS,
        -- RC_INFO             => RC_INFO,
        -- RC_ROWS             => RC_ROWS,
        -- BASIC_INTER_LAYER   => BASIC_INTER_LAYER,
        -- ADV_FBR_ENDDLY      => ADV_FBR_ENDDLY  )
      -- PORT MAP (
        -- nGrst        => nGrst,
        -- rstn         => rstn,
        -- clk          => clk,
        -- datai_valid  => datai_valid,
        -- datai        => datai,
        -- pout         => pout,
        -- coefi        => coefi,
        -- coefo        => open,
        -- coef_sel     => coef_sel,
        -- coef_on      => coef_on,
        -- coefi_valid  => coefi_valid,
        -- firo_valid   => firo_valid  );
  -- END GENERATE; */

  adv_enum : IF (INTER_STYLE = 1) GENERATE
    adv_enum_0 : enum_fir_adv_g5
      GENERIC MAP (
        TAPS                => TAPS,
        PHY_TAPS            => PHY_TAPS,
        MAX_NIB_TAPS        => MAX_NIB_TAPS,
        COEF_TYPE           => COEF_TYPE,
        COEF_SETS           => COEF_SETS,
        COEF_SYMM           => COEF_SYMM,
        COEF_UNSIGN         => COEF_UNSIGN,
        COEF_WIDTH          => COEF_WIDTH,
        DATA_UNSIGN         => DATA_UNSIGN,
        DATA_WIDTH          => DATA_WIDTH,
        URAM_MAXDEPTH       => URAM_MAXDEPTH,
        WARNING_MSGS_ON     => WARNING_MSGS_ON,
    --    INIT                => INIT,
        NIBBLE_PIPE_STAGES  => NIBBLE_PIPE_STAGES,
        ROW_PIPE_STAGES     => ROW_PIPE_STAGES,
        PAD_PIPE_STAGES     => PAD_PIPE_STAGES,
        RESERVED2           => RESERVED2,
        NIBBLE_SYMM_STAGES  => NIBBLE_SYMM_STAGES,
        ROW_SYMM_STAGES     => ROW_SYMM_STAGES,
        RC_MM_BITS          => RC_MM_BITS,
        RC_MAX_MAC_ROWS     => RC_MAX_MAC_ROWS,
        RC_INFO             => RC_INFO,
        RC_RANK             => RC_RANK,
        FIRST_ROW_SIZE      => FIRST_ROW_SIZE,
		HIGH_ROW_SIZE	    => HIGH_ROW_SIZE,
        RC_ADV_DDLY_D       => RC_ADV_DDLY_D,
        RC_ADV_DDLY_S       => RC_ADV_DDLY_S,
        RC_ROWS             => RC_ROWS,
        BASIC_INTER_LAYER   => BASIC_INTER_LAYER,
        ADV_FBR_ENDDLY      => ADV_FBR_ENDDLY  )
      PORT MAP (
        nGrst        => nGrst,
        rstn         => rstn,
        clk          => clk,
        datai_valid  => datai_valid,
        datai        => datai,
        pout         => pout,
        coefi        => coefi,
        coef_sel     => coef_sel,
        coef_on      => coef_on,
        coefi_valid  => coefi_valid,
        firo_valid   => firo_valid  );
  END GENERATE;

END ARCHITECTURE rtl;


