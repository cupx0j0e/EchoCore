
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


--10/23/2015  The example of 4-row filter is used to verify correct indexing:
--            rc_info[]: 5, 16, 10, 4. Constants for the example are row ranks:
--            RC_RANK[]=2, 3, 1, 4; num of rows RC_ROWS=4. Then vect2int yeilds
--              i       vect2int(i, RC_RANK)
--            ------------------------------
--              1               2
--              2               3
--              3               1
--            RC_ROWS           4

-- The function vect2int(vect2int(j, RC_RANK), RC_INFO) returns lengths of the
-- sorted rows.  For the above example:
--    j       vect2int(j, RC_RANK)      vect2int(vect2int(j, RC_RANK), RC_INFO)
--  ---------------------------------------------------------------------------
--    1               2                                 16
--    2               3                                 10
--    3               1                                  5
--  RC_ROWS           4                                  4



LIBRARY ieee;
  USE ieee.std_logic_1164.all;
  USE IEEE.numeric_std.all;
USE work.enum_rtl_pack.all;
USE work.COREFIR_PF_C0_COREFIR_PF_C0_0_enumFIR_coefs.all;

ENTITY enum_fir_adv_g5 IS
  GENERIC (
    TAPS                : INTEGER := 45;	-- Overall number of taps
    PHY_TAPS            : INTEGER := 45;	-- Overall number of phy taps
    MAX_NIB_TAPS        : INTEGER := 8;		-- Make it local at the top level
    COEF_TYPE           : INTEGER := 0;		--0-Const, 1-reload
    COEF_SETS           : INTEGER := 0;		--1-Const const, >1-multiple sets
    COEF_SYMM           : INTEGER := 1;		--0-not symm, 1-symm, 2-antisymm. Shut D if non-symm
    COEF_UNSIGN         : INTEGER := 0;
    COEF_WIDTH          : INTEGER := 12;
    DATA_UNSIGN         : INTEGER := 0;
    DATA_WIDTH          : INTEGER := 12;
    URAM_MAXDEPTH       : INTEGER := 0;
    WARNING_MSGS_ON     : INTEGER := 1;
 --   INIT                : STD_LOGIC_VECTOR;
    NIBBLE_PIPE_STAGES  : INTEGER := 2;
    ROW_PIPE_STAGES     : INTEGER := 2;
    PAD_PIPE_STAGES     : INTEGER := 2;
    RESERVED2           : INTEGER := 2;
    NIBBLE_SYMM_STAGES  : INTEGER := 1;
    ROW_SYMM_STAGES     : INTEGER := 1;
    -- Placement parameters
    RC_MM_BITS          : INTEGER := 8;		-- Bit count sufficient to present the RC_MAX_MAC_PER_ROW
    RC_MAX_MAC_ROWS     : INTEGER := 12;	-- const: max row count on a largest device

    -- Concatenated quantities of phy MAC's occupied on any row:
    -- {row_11, row_10, row_9, ..., row_1, row_0}
    RC_INFO             : STD_LOGIC_VECTOR;
    RC_RANK             : STD_LOGIC_VECTOR;
    FIRST_ROW_SIZE      : INTEGER := 10;
	HIGH_ROW_SIZE   	: INTEGER := 74;
    -- There can be 2*RC_MAX_MAC_ROWS-1 delays
    RC_ADV_DDLY_D       : STD_LOGIC_VECTOR;
    RC_ADV_DDLY_S       : STD_LOGIC_VECTOR;

    RC_ROWS             : INTEGER := 4;
    BASIC_INTER_LAYER   : INTEGER := 4;		  -- Pipe layers between rows @ basic style
    ADV_FBR_ENDDLY      : INTEGER := 2  );  -- Pipes btw P row output & next row final adder inp
  PORT (
    nGrst, rstn         : IN STD_LOGIC;     -- either one needs to be present
    clk                 : IN STD_LOGIC;
    datai_valid         : IN STD_LOGIC;
    -- Data needs to be sign-extended before it enters B cascade chain
    datai               : IN STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
    pout                : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
    coefi               : IN STD_LOGIC_VECTOR(COEF_WIDTH - 1 DOWNTO 0);
    coef_sel            : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    coef_on             : IN STD_LOGIC; -- writes coef in A reg in all coef modes
    coefi_valid         : IN STD_LOGIC;
    firo_valid          : OUT STD_LOGIC  );
END ENTITY enum_fir_adv_g5;

ARCHITECTURE rtl OF enum_fir_adv_g5 IS
  COMPONENT enum_row_g5 IS
    GENERIC (
      PHY_TAPS               : INTEGER;
      ODD_TAPS               : INTEGER;
      RC_ROWS                : INTEGER;
      ROW_TAPS               : INTEGER;
      MAX_NIB_TAPS           : INTEGER;
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
      ROW_PIPE_STAGES        : INTEGER;
      NIBBLE_SYMM_STAGES     : INTEGER;
      ROW_SYMM_STAGES        : INTEGER;
      FIRST_ROW              : INTEGER;
      LAST_ROW               : INTEGER;
	  HIGH_ROW_SIZE   		 : INTEGER;
      INTER_STYLE            : INTEGER;
      BASIC_INTER_LAYER      : INTEGER;
      ADV_FBR_ENDDLY         : INTEGER  );
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
      coefi_valid_minus_row  : IN STD_LOGIC  );
  END COMPONENT;

  COMPONENT enum_dly_line_18x192 IS
    GENERIC (
      WIDTH         : INTEGER := 15;
      DELAY1         : INTEGER := 150;
      BUILD         : INTEGER := 0;
      URAM_MAXDEPTH : INTEGER := 0  );
    PORT (
      nGrst         : IN STD_LOGIC;
      rst           : IN STD_LOGIC;
      clk           : IN STD_LOGIC;
      din_valid     : IN STD_LOGIC;
      din           : IN STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
      dout          : OUT STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0)   );
  END COMPONENT;

  COMPONENT enum_g5_latency_adv IS
    GENERIC (
      PHY_TAPS            : INTEGER;
      RC_ROWS             : INTEGER;
      NIBBLE_PIPE_STAGES  : INTEGER;
      ROW_PIPE_STAGES     : INTEGER;
      PAD_PIPE_STAGES     : INTEGER;
      ADV_FBR_ENDDLY      : INTEGER;
      FIRST_ROW_SIZE      : INTEGER  );
    PORT (
      clk                 : IN STD_LOGIC;
      rstn                : IN STD_LOGIC;
      nGrst               : IN STD_LOGIC;
      systola             : IN STD_LOGIC;
      coef_on_inp         : IN STD_LOGIC;
      coef_on_outp        : OUT STD_LOGIC;
      datao_valid         : OUT STD_LOGIC;
      datao_valid_pulse   : OUT STD_LOGIC  );
  END COMPONENT;

  COMPONENT enum_pad_g5 IS
    GENERIC (
      NIBBLE_PIPE_STAGES  : INTEGER;
      ROW_PIPE_STAGES     : INTEGER;
      PAD_PIPE_STAGES     : INTEGER;
      COEF_TYPE           : INTEGER;
      COEF_SYMM           : INTEGER;
      COEF_UNSIGN         : INTEGER;
      COEF_WIDTH          : INTEGER;
      DATA_UNSIGN         : INTEGER;
      DATA_WIDTH          : INTEGER  );
    PORT (
      nGrst               : IN STD_LOGIC;
      rstn                : IN STD_LOGIC;
      clk                 : IN STD_LOGIC;
      datai_valid         : IN STD_LOGIC;
      datai_valid_minus_row : OUT STD_LOGIC;
      datai               : IN STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
      datai_dly           : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
      coefi               : IN STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
      coefi_dly           : OUT STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
      coef_sel            : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      coef_sel_dly        : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      coef_on             : IN STD_LOGIC;
      coef_on_minus_row   : OUT STD_LOGIC;
      coefi_valid         : IN STD_LOGIC;
      coefi_valid_minus_row : OUT STD_LOGIC );
  END COMPONENT;

  constant ODD_TAPS : INTEGER := TAPS MOD 2;
  constant BUILD_ADV_SYMM_DLY : INTEGER := intMux (0, 1, COEF_SYMM /= 0);

  TYPE type_dbg3 IS ARRAY (0 TO RC_MAX_MAC_ROWS) OF INTEGER;
  TYPE type_dbg5 IS ARRAY (0 TO RC_ROWS+1) OF STD_LOGIC_VECTOR(47 DOWNTO 0);
  TYPE type_xhdl4 IS ARRAY (1 TO RC_ROWS+1) OF STD_LOGIC_VECTOR(47 DOWNTO 0);
  TYPE type_xhdl8 IS ARRAY (0 TO RC_ROWS) OF STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
  TYPE type_xhdl7 IS ARRAY (0 TO RC_ROWS) OF STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
  TYPE type_xhdl6 IS ARRAY (1 TO RC_ROWS) OF STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);

  SIGNAL row_taps_array_dbg     : type_dbg3;
  SIGNAL cin_w_dbg              : type_dbg5;

  -- Connect end of a row accumulated output P to the next row cin
  SIGNAL p_w                    : type_xhdl4;
  SIGNAL ddly_forw              : type_xhdl6;
  SIGNAL ddly_symm              : type_xhdl7;
  SIGNAL ddly_forw_test         : type_xhdl6;
  SIGNAL ddly_symm_test         : type_xhdl7;
  SIGNAL diff_dly_symm          : type_xhdl6;
  SIGNAL coef                   : type_xhdl8;

  SIGNAL datai_valid_minus_row  : STD_LOGIC;
  SIGNAL coef_on_tick_minus     : STD_LOGIC;
  SIGNAL coefi_valid_tick_minus : STD_LOGIC;
  SIGNAL systola                : STD_LOGIC;
  SIGNAL coefi_dly              : STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
  SIGNAL coef_sel_dly           : STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL data_pad_out           : STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
  SIGNAL coef_on_minus_row      : STD_LOGIC;
  SIGNAL coefi_valid_minus_row  : STD_LOGIC;
  SIGNAL rstnn                  : STD_LOGIC;
  SIGNAL coef_oni               : STD_LOGIC;

BEGIN
  rstnn <= NOT(rstn);

  -- Generate 'systola'
  dvalid_pipe_3 : enum_kitDelay_bit_reg
    GENERIC MAP ( DELAY1  => NIBBLE_PIPE_STAGES+ROW_PIPE_STAGES )
    PORT MAP (
      nGrst  => nGrst,
      rst    => '0',
      clk    => clk,
      clkEn  => '1',
      inp    => datai_valid_minus_row,
      outp   => systola  );

   enum_pad_g5_0 : enum_pad_g5
    GENERIC MAP (
      NIBBLE_PIPE_STAGES  => NIBBLE_PIPE_STAGES,
      ROW_PIPE_STAGES     => ROW_PIPE_STAGES,
      PAD_PIPE_STAGES     => PAD_PIPE_STAGES,
      COEF_TYPE           => COEF_TYPE,
      COEF_SYMM           => COEF_SYMM,
      COEF_UNSIGN         => COEF_UNSIGN,
      COEF_WIDTH          => COEF_WIDTH,
      DATA_UNSIGN         => DATA_UNSIGN,
      DATA_WIDTH          => DATA_WIDTH  )
    PORT MAP (
      nGrst                  => nGrst,
      clk                    => clk,
      rstn                   => rstn,
      datai_valid            => datai_valid,
      datai_valid_minus_row  => datai_valid_minus_row,
      datai                  => datai,
      datai_dly              => data_pad_out,
      coefi                  => coefi,
      coefi_dly              => coef(0),
      coef_sel               => coef_sel,
      coef_sel_dly           => coef_sel_dly,
      coef_on                => coef_oni,
      coef_on_minus_row      => coef_on_minus_row,
      coefi_valid            => coefi_valid,
      coefi_valid_minus_row  => coefi_valid_minus_row  );


--                  +-+-+-+-+-+-+-+-+-+-+ +-+-+-+  +-+-+-+-+-+
--                  |F|I|R|S|T|-|L|A|S|T| |R|O|W|  |L|o|g|i|c|
--                  +-+-+-+-+-+-+-+-+-+-+ +-+-+-+  +-+-+-+-+-+
-- If basic INTER_STYLE, the logic is straightforward:
-- - On the First physical row  FIRST_ROW = 1, otherwise 0
-- - On the Last physical row   LAST_ROW  = 1, otherwise 0

-- If advanced INTER_STYLE:
-- - On the First Ranked row  FIRST_ROW = 1, otherwise 0
-- - On the Last Ranked row   LAST_ROW  = 1, otherwise 0

-- The 'generate begin: rows' instantiation loops through sorted rows.
-- Example:
-- Phy row  Number of Phy taps  RC_RANK[i]   -- comments
-- --------------------------------------------
--    1              8              3       -- phy row 3 <- first ranked row
--    2             11              4       -- phy row 4
--    3             21              5       -- phy row 5
--    4             15              2       -- phy row 2
--    5             15              1       -- phy row 1 <- last ranked row
-- Thus the signif_row_number input of the function below for the FIRST ROW = 3,
-- for the LAST_ROW = 1.
-- .FIRST_ROW  (significant_row(sort_row, RC_RANK[1]) )
-- .LAST_ROW  (significant_row(sort_row, RC_RANK[RC_ROWS]) )

--              i       vect2int(i, RC_RANK)
--  ----------------------------------------
--              1               2
--              2               3
--              3               1
--            RC_ROWS           4


  rows_higher : FOR sort_row IN 1 TO RC_ROWS GENERATE

   a_row_higher : enum_row_g5
    GENERIC MAP (
      PHY_TAPS           => PHY_TAPS,
      ODD_TAPS           => ODD_TAPS,
      RC_ROWS            => RC_ROWS ,
      ROW_TAPS           => vect2int(vect2int(sort_row, RC_MM_BITS, RC_RANK), RC_MM_BITS, RC_INFO),
      MAX_NIB_TAPS       => MAX_NIB_TAPS,
      COEF_TYPE          => COEF_TYPE,
      COEF_SETS          => COEF_SETS,
      COEF_SYMM          => COEF_SYMM,
      COEF_UNSIGN        => COEF_UNSIGN,
      COEF_WIDTH         => COEF_WIDTH,
      DATA_UNSIGN        => DATA_UNSIGN,
      DATA_WIDTH         => DATA_WIDTH,
      RESERVED1          => 0,
      WARNING_MSGS_ON    => WARNING_MSGS_ON,
      INIT               => INIT(sort_row-1), --(288*running_sum_adv(RC_INFO, RC_RANK, RC_MM_BITS, sort_row)-1 DOWNTO 288*running_sum_adv(RC_INFO, RC_RANK, RC_MM_BITS, sort_row-1) ),
      NIBBLE_PIPE_STAGES => NIBBLE_PIPE_STAGES,
      ROW_PIPE_STAGES    => ROW_PIPE_STAGES,
      NIBBLE_SYMM_STAGES => NIBBLE_SYMM_STAGES,
      ROW_SYMM_STAGES    => ROW_SYMM_STAGES,
      FIRST_ROW          => significant_row(sort_row, 1),
      LAST_ROW           => significant_row(sort_row, RC_ROWS),
	  HIGH_ROW_SIZE      => HIGH_ROW_SIZE,
      INTER_STYLE        => 1,
      BASIC_INTER_LAYER  => BASIC_INTER_LAYER,
      ADV_FBR_ENDDLY     => ADV_FBR_ENDDLY )
    PORT MAP (
      nGrst                  => nGrst,
      rstn                   => rstn,
      clk                    => clk,
      datai_valid_minus_row  => datai_valid_minus_row,
      datai                  => ddly_forw(sort_row),
      cin                    => p_w(sort_row),
      symm_data_minus_row    => ddly_symm(RC_ROWS+1-sort_row),
      pout                   => p_w(sort_row+1),
      row_datao              => open,     -- not used in adv option
      coefi                  => coef(sort_row-1),
      coefo                  => coef(sort_row),
      coef_sel               => coef_sel_dly,
      coef_on_minus_row      => coef_on_minus_row,
      coefi_valid_minus_row  => coefi_valid_minus_row );
  END GENERATE;

  pout <= p_w(RC_ROWS + 1);

  -- DELAY1 line implements differential DELAY1 network for advanced inter-row
  -- design. It is built only for advanced option.  See
  -- G5 FIR Filter Notes 2.vsd/Impl_algo and /Symm
  ddly_forw(1) <= data_pad_out;
  non_symm_bus: FOR i IN 1 TO RC_ROWS-1 GENERATE
    dly_link_22 : enum_dly_line_18x192
      GENERIC MAP (
        WIDTH     => DATA_WIDTH,
        DELAY1     => vect2int(i, RC_MM_BITS, RC_ADV_DDLY_D),
        BUILD     => 1,
        URAM_MAXDEPTH => URAM_MAXDEPTH  )
      PORT MAP (
        nGrst      => nGrst,
        rst        => rstnn,
        clk        => clk,
        din_valid  => systola,
        din        => ddly_forw(i),
        dout       => ddly_forw(i+1)  );
  END GENERATE;

--              i       vect2int(i, RC_RANK)
--              1               2
--              2               3
--              3               1
--            RC_ROWS           4
  dly_link_33 : enum_dly_line_18x192
    GENERIC MAP (
      WIDTH     => DATA_WIDTH,
      DELAY1     => vect2int(1, RC_MM_BITS, RC_ADV_DDLY_S),
      BUILD     => BUILD_ADV_SYMM_DLY,
      URAM_MAXDEPTH => URAM_MAXDEPTH  )
    PORT MAP (
      nGrst      => nGrst,
      rst        => rstnn,
      clk        => clk,
      din_valid  => systola,
      din        => ddly_forw(RC_ROWS),
      dout       => ddly_symm(1)  );

  diff_dly_symm(vect2int(RC_ROWS, RC_MM_BITS, RC_RANK)) <= ddly_symm(1);

  symm_bus: FOR i IN 1 TO RC_ROWS-1 GENERATE
    dly_link_44 : enum_dly_line_18x192
      GENERIC MAP (
        WIDTH     => DATA_WIDTH,
        DELAY1     => vect2int(i+1, RC_MM_BITS, RC_ADV_DDLY_S),
        BUILD     => BUILD_ADV_SYMM_DLY,
        URAM_MAXDEPTH => URAM_MAXDEPTH  )
      PORT MAP (
        nGrst      => nGrst,
        rst        => rstnn,
        clk        => clk,
        din_valid  => systola,
        din        => ddly_symm(i),
        dout       => ddly_symm(i+1)  );

    diff_dly_symm(vect2int(RC_ROWS-i, RC_MM_BITS, RC_RANK)) <= ddly_symm(i+1);
  END GENERATE;

  latency_0 : enum_g5_latency_adv
    GENERIC MAP ( PHY_TAPS            => PHY_TAPS,
                  RC_ROWS             => RC_ROWS,
                  NIBBLE_PIPE_STAGES  => NIBBLE_PIPE_STAGES,
                  ROW_PIPE_STAGES     => ROW_PIPE_STAGES,
                  PAD_PIPE_STAGES     => PAD_PIPE_STAGES,
                  ADV_FBR_ENDDLY      => ADV_FBR_ENDDLY,
                  FIRST_ROW_SIZE      => FIRST_ROW_SIZE  )
    PORT MAP (
      clk                => clk,
      rstn               => rstn,
      nGrst              => nGrst,
      systola            => systola,
      coef_on_inp        => coef_on,
      coef_on_outp       => coef_oni,
      datao_valid        => open,
      datao_valid_pulse  => firo_valid  );

END ARCHITECTURE rtl;



-- The total latency =
-- a) Pad DELAY1 = NIBBLE_PIPE_STAGES + ROW_PIPE_STAGES + PAD_PIPE_STAGES clk intervals
-- b) 1 period of systola to account for B reg
-- c) k periods of systola, where k = length of the first row (after sorting if
--    the sorting is done.  k gets calculated in SW as parameter FIRST_ROW_SIZE
-- c) (ADV_FBR_ENDDLY+2)*(RC_ROWS-1) periods of systola

LIBRARY ieee;
  USE ieee.std_logic_1164.all;
USE work.enum_rtl_pack.all;

ENTITY enum_g5_latency_adv IS
  GENERIC ( PHY_TAPS            : INTEGER := 5;
            RC_ROWS             : INTEGER := 1;
            NIBBLE_PIPE_STAGES  : INTEGER := 2;
            ROW_PIPE_STAGES     : INTEGER := 2;
            PAD_PIPE_STAGES     : INTEGER := 2;
            ADV_FBR_ENDDLY      : INTEGER := 2;
            FIRST_ROW_SIZE      : INTEGER := 10 );
  PORT (
    clk                 : IN STD_LOGIC;
    rstn                : IN STD_LOGIC;
    nGrst               : IN STD_LOGIC;
    systola             : IN STD_LOGIC;
    coef_on_inp         : IN STD_LOGIC;
    coef_on_outp        : OUT STD_LOGIC;
    datao_valid         : OUT STD_LOGIC;
    datao_valid_pulse   : OUT STD_LOGIC  );
END ENTITY enum_g5_latency_adv;

ARCHITECTURE rtl OF enum_g5_latency_adv IS
  CONSTANT LATENCY_CLK      : INTEGER:=NIBBLE_PIPE_STAGES+ROW_PIPE_STAGES+PAD_PIPE_STAGES;
--07/06/16  CONSTANT LATENCY_SYST     : INTEGER:=FIRST_ROW_SIZE+1+(RC_ROWS-1)*(ADV_FBR_ENDDLY+2);
  CONSTANT LATENCY_SYST     : INTEGER:=FIRST_ROW_SIZE+(RC_ROWS-1)*(ADV_FBR_ENDDLY+2);
  CONSTANT LOG_LATENCY_SYST : INTEGER:=ceil_log2(LATENCY_SYST);

  SIGNAL clk_lat_end            : STD_LOGIC;
  SIGNAL syst_lat_end           : STD_LOGIC;
  SIGNAL datao_validi           : STD_LOGIC;

  SIGNAL async_rstn, rst_syst_lat, rst_clk_lat : STD_LOGIC;
  SIGNAL init_rst, coefon_i, coef_on_outpi     : STD_LOGIC;

BEGIN
  datao_valid   <= datao_validi;
  coef_on_outp  <= coef_on_outpi;

  -- Sync rear edge of the nGrst with clk
  async2sync_0 : enum_kitDelay_bit_reg
    GENERIC MAP ( DELAY1  => 3 )
    PORT MAP (
      nGrst  => nGrst,
      rst    => '0',
      clk    => clk,
      clkEn  => '1',
      inp    => '1',
      outp   => async_rstn  );

  -- Generate a single pulse on the rear edge of nGrst to initially load ROM
  -- coefficient set 0 in regA
  end_of_ngrst_0 : enum_kitEdge
    GENERIC MAP ( EDGE => 1)
    PORT MAP (
      nGrst   => nGrst,
      rst     => '0',
      clk     => clk,
      clkEn   => '1',
      edge_in => async_rstn,
      pulse   => coefon_i  );

  coef_on_outpi <= coef_on_inp OR coefon_i;


  --  Hold both clk and systola interval counters in state 0 until coef_on
  PROCESS (nGrst, clk)
  BEGIN
    IF (nGrst = '0') THEN
      init_rst <= '1';
    ELSIF (clk'EVENT AND clk = '1') THEN
      IF (async_rstn = '0') THEN
        init_rst <= '1';
      ELSIF (coef_on_outpi = '1') THEN
        init_rst <= '0';
      END IF;
    END IF;
  END PROCESS;

  -- count clk intervals
  rst_clk_lat <= init_rst OR NOT(rstn) OR coef_on_outpi;
  shift_reg_1 : enum_kitDelay_bit_reg
    GENERIC MAP ( DELAY1  => LATENCY_CLK )
    PORT MAP (
      nGrst  => nGrst,
      rst    => rst_clk_lat,
      clk    => clk,
      clkEn  => '1',
      inp    => '1',
      outp   => clk_lat_end  );

  -- count 'systola' intervals
  rst_syst_lat <= init_rst OR NOT(rstn) OR NOT(clk_lat_end) OR coef_on_outpi;
  syst_counter_0 : enum_kitCountS
    GENERIC MAP ( WIDTH     => LOG_LATENCY_SYST+1,
                  DCVALUE   => LATENCY_SYST,
                  BUILD_DC  => 1  )
    PORT MAP (
      nGrst  => nGrst,
      rst    => rst_syst_lat,
      clk    => clk,
      clkEn  => '1',
      cntEn  => systola,
      q      => open,
      dc     => syst_lat_end );

  -- The datao_valid locks in state 1 after first valid datao until coef_on
  PROCESS (nGrst, clk)
  BEGIN
    IF (nGrst = '0') THEN
      datao_validi <= '0';
    ELSIF (clk'EVENT AND clk = '1') THEN
      IF (rstn = '0') OR (coef_on_outpi='1') THEN                     --7/1/2016
        datao_validi <= '0';
      ELSIF ((syst_lat_end = '1') AND (systola = '1')) THEN
        datao_validi <= '1';
      END IF;
    END IF;
  END PROCESS;

  datao_valid_pulse <= datao_validi AND systola;

END ARCHITECTURE rtl;


