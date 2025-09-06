-- ***************************************************************************
--Microsemi Corporation Proprietary and Confidential
--Copyright 2015 Microsemi Corporation. All rights reserved.
--
--ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
--ACCORDANCE WITH THE MICROSEMI LICENSE AGREEMENT AND MUST BE APPROVED
--IN ADVANCE IN WRITING.
--
--Description:  G5 CoreFIR RTL
--              G5 Fully Enumerated FIR Filter Pad
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

-- A pad of delays btw input signals and the (first) row to create advanced in
-- time signals.  The pad itself delays every signal by PAD_PIPE_STAGES
-- including the advanced ones
--
--  Input           Delayed signal        Width         DELAY1
--  ------------------------------------------------------------------------------------------------------
--                  Advanced Signals
--  datai_valid     datai_valid_minus_row   1         PAD_PIPE_STAGES
--  coef_on         coef_on_minus_row       1         PAD_PIPE_STAGES
--  coefi_valid     coefi_valid_minus_row   1         PAD_PIPE_STAGES

--  datai           datai_dly             DATA_WIDTH  PAD_PIPE_STAGES+ROW_PIPE_STAGES+NIBBLE_PIPE_STAGES
--//  cin             cin_dly                 48        PAD_PIPE_STAGES+ROW_PIPE_STAGES+NIBBLE_PIPE_STAGES
--  coefi           coefi_dly             COEF_WIDTH  PAD_PIPE_STAGES+ROW_PIPE_STAGES+NIBBLE_PIPE_STAGES
--  coef_sel        coef_sel_dly            4         PAD_PIPE_STAGES+ROW_PIPE_STAGES+NIBBLE_PIPE_STAGES

LIBRARY ieee;
  USE ieee.std_logic_1164.all;
USE work.enum_rtl_pack.all;

ENTITY enum_pad_g5 IS
  GENERIC (
    NIBBLE_PIPE_STAGES     : INTEGER := 2;
    ROW_PIPE_STAGES        : INTEGER := 2;
    PAD_PIPE_STAGES        : INTEGER := 2;
    COEF_TYPE              : INTEGER := 1;		--0-Const, 1-reload
    COEF_SYMM              : INTEGER := 1;
    COEF_UNSIGN            : INTEGER := 0;
    COEF_WIDTH             : INTEGER := 12;
    DATA_UNSIGN            : INTEGER := 0;
    DATA_WIDTH             : INTEGER := 12  );
  PORT (
    nGrst                  : IN STD_LOGIC;
    rstn                   : IN STD_LOGIC;
    clk                    : IN STD_LOGIC;
    datai_valid            : IN STD_LOGIC;
    datai_valid_minus_row  : OUT STD_LOGIC;
    -- Data needs to be sign-extended before it enters B cascade chain
    datai                  : IN STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
    datai_dly              : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
    coefi                  : IN STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);		-- A shift register input
    coefi_dly              : OUT STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
    coef_sel               : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    coef_sel_dly           : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    coef_on                : IN STD_LOGIC;
    coef_on_minus_row      : OUT STD_LOGIC;
    coefi_valid            : IN STD_LOGIC;
    coefi_valid_minus_row  : OUT STD_LOGIC  );
END ENTITY enum_pad_g5;

ARCHITECTURE rtl OF enum_pad_g5 IS
  SIGNAL rstnn        : STD_LOGIC;

BEGIN
  rstnn <= NOT(rstn);

  -- Advanced signals _tick_minus are delayed by PAD_PIPE_STAGES
  dvalid_pipe_0 : enum_kitDelay_bit_reg
    GENERIC MAP ( DELAY1  => PAD_PIPE_STAGES )
    PORT MAP (
      nGrst  => nGrst,
      rst    => '0',
      clk    => clk,
      clken  => '1',
      inp    => datai_valid,
      outp   => datai_valid_minus_row );

  dvalid_pipe_1 : enum_kitDelay_bit_reg
    GENERIC MAP (
      DELAY1  => PAD_PIPE_STAGES )
    PORT MAP (
      nGrst  => nGrst,
      rst    => rstnn,
      clk    => clk,
      clken  => '1',
      inp    => coef_on,
      outp   => coef_on_minus_row );

  reload_pad : IF (COEF_TYPE /= 0) GENERATE
    dvalid_pipe_2 : enum_kitDelay_bit_reg
      GENERIC MAP ( DELAY1  => PAD_PIPE_STAGES )
      PORT MAP (
        nGrst  => nGrst,
        rst    => rstnn,
        clk    => clk,
        clken  => '1',
        inp    => coefi_valid,
        outp   => coefi_valid_minus_row  );
  END GENERATE;

  -- _dly signals delayed by PAD_PIPE_STAGES+NIBBLE_PIPE_STAGES+ROW_PIPE_STAGES
  data_pipe_0 : enum_kitDelay_reg
    GENERIC MAP (
      BITWIDTH  => DATA_WIDTH,
      DELAY1     => PAD_PIPE_STAGES+NIBBLE_PIPE_STAGES+ROW_PIPE_STAGES )
    PORT MAP (
      nGrst  => nGrst,
      rst    => rstnn,
      clk    => clk,
      clken  => '1',
      inp    => datai,
      outp   => datai_dly );

  reload_coef_pad : IF (COEF_TYPE /= 0) GENERATE
    symm_data_pipe_0 : enum_kitDelay_reg
      GENERIC MAP (
        BITWIDTH  => COEF_WIDTH,
        DELAY1     => PAD_PIPE_STAGES+NIBBLE_PIPE_STAGES+ROW_PIPE_STAGES )
      PORT MAP (
        nGrst  => nGrst,
        rst    => rstnn,
        clk    => clk,
        clken  => '1',
        inp    => coefi,
        outp   => coefi_dly  );
  END GENERATE;

  reload_sel_pad : IF (COEF_TYPE = 0) GENERATE
    symm_data_pipe_0 : enum_kitDelay_reg
      GENERIC MAP (
        BITWIDTH  => 4,
        DELAY1     => PAD_PIPE_STAGES+NIBBLE_PIPE_STAGES+ROW_PIPE_STAGES  )
      PORT MAP (
        nGrst  => nGrst,
        rst    => rstnn,
        clk    => clk,
        clken  => '1',
        inp    => coef_sel,
        outp   => coef_sel_dly );
  END GENERATE;

END ARCHITECTURE rtl;

