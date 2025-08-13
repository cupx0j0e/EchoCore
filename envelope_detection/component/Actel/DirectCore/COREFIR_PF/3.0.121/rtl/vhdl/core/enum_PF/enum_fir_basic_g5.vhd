-- ***************************************************************************
--Microsemi Corporation Proprietary and Confidential
--Copyright 2015 Microsemi Corporation. All rights reserved.
--
--ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
--ACCORDANCE WITH THE MICROSEMI LICENSE AGREEMENT AND MUST BE APPROVED
--IN ADVANCE IN WRITING.
--
--Description:  G5 CoreFIR RTL
--              G5 Fully Enumerated FIR Filter of the Basic Inter-row style
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

-- Enumerated FIR includes rows, connections btw rows, and necessary delays

--10/9/2015   Removed built-in syst_dly_out as a systolic DELAY1 line tap due to
--            complexity of finding out where to stick the tap. The tap may need
--            to come out not only from the last nibble and perhaps not only the
--            last row.  This happens due to BASIC_INTER_LAYER pipes added to
--            every full row when filter occupies multiple small rows.  Then
--            the extra DELAY1 of BASIC_INTER_LAYER becomes comparable to the
--            DELAY1 of the row itself                                   //rm_sdo

--10/14/2015  To provide correct FIRST/LAST_ROW values for advanced inter-row
--            option.  There sorted (ranked) FIRST/LAST_ROW must be present !!!

--10/20/2015 Separated into advanced and basic inter-row styles 
LIBRARY ieee;
  USE ieee.std_logic_1164.all;
--  USE IEEE.numeric_std.all;
USE work.enum_rtl_pack.all;

ENTITY enum_fir_basic_g5 IS
  GENERIC (
    TAPS                   : INTEGER := 45;		-- Overall number of taps
    PHY_TAPS               : INTEGER := 45;		-- Overall number of phy taps
    MAX_NIB_TAPS           : INTEGER := 8;		-- Make it local at the top level
    COEF_TYPE              : INTEGER := 0;		--0-Const, 1-reload
    COEF_SETS              : INTEGER := 0;		--1-Const const, >1-multiple sets
    COEF_SYMM              : INTEGER := 1;		--0-not symm, 1-symm, 2-antisymm. Shut D if non-symm
    COEF_UNSIGN            : INTEGER := 0;
    COEF_WIDTH             : INTEGER := 12;
    DATA_UNSIGN            : INTEGER := 0;
    DATA_WIDTH             : INTEGER := 12;
    RESERVED1              : INTEGER := 0;
    RESERVED2              : INTEGER := 2;
    WARNING_MSGS_ON        : INTEGER := 0;
--23/02/16    INIT                   : STD_LOGIC_VECTOR(288*PHY_TAPS-1 DOWNTO 0) := (others=>'0');
    INIT                   : STD_LOGIC_VECTOR;
    NIBBLE_PIPE_STAGES     : INTEGER := 2;
    ROW_PIPE_STAGES        : INTEGER := 2;
    PAD_PIPE_STAGES        : INTEGER := 2;
    NIBBLE_SYMM_STAGES     : INTEGER := 1;
    ROW_SYMM_STAGES        : INTEGER := 1;
    -- Const: bit count sufficient to present number of MAC's per physical row 
    -- on the largest family device. It's assumed the largest family device row
    -- carries not more than 256 MAC's 
    RC_MM_BITS             : INTEGER := 8;
    RC_MAX_MAC_ROWS        : INTEGER := 20;		-- const: max row count on a largest device
    
    -- Concatenated quantities of phy MAC's occupied on any row:
    -- {row_11, row_10, row_9, ..., row_1, row_0}
--23/02/16    RC_INFO                : STD_LOGIC_VECTOR(RC_MM_BITS*RC_MAX_MAC_ROWS-1 DOWNTO 0) := (others=>'0');
    RC_INFO                : STD_LOGIC_VECTOR;
    RC_ROWS                : INTEGER := 4;
    BASIC_INTER_LAYER      : INTEGER := 4;		-- Pipe layers between rows @ basic style
    ADV_FBR_ENDDLY         : INTEGER := 2 );	-- Pipes btw P row output & next row final adder inp
  PORT (    
    nGrst, rstn            : IN STD_LOGIC;  -- either one needs to be present
    clk                    : IN STD_LOGIC;
    datai_valid            : IN STD_LOGIC;
    -- Data needs to be sign-extended before it enters B cascade chain
    datai                  : IN STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
    pout                   : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
    -- A shift register section input/output
    coefi                  : IN STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
    coefo                  : OUT STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);

    coef_sel               : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    coef_on                : IN STD_LOGIC;  -- writes coef in A reg in all coef modes
    coefi_valid            : IN STD_LOGIC;
    firo_valid             : OUT STD_LOGIC  );
END ENTITY enum_fir_basic_g5;

ARCHITECTURE rtl OF enum_fir_basic_g5 IS
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

  COMPONENT enum_pad_g5 IS
    GENERIC (
      NIBBLE_PIPE_STAGES     : INTEGER;
      ROW_PIPE_STAGES        : INTEGER;
      PAD_PIPE_STAGES        : INTEGER;
      COEF_TYPE              : INTEGER;
      COEF_SYMM              : INTEGER;
      COEF_UNSIGN            : INTEGER;
      COEF_WIDTH             : INTEGER;
      DATA_UNSIGN            : INTEGER;
      DATA_WIDTH             : INTEGER  );
    PORT (
      nGrst                  : IN STD_LOGIC;
      rstn                   : IN STD_LOGIC;
      clk                    : IN STD_LOGIC;
      datai_valid            : IN STD_LOGIC;
      datai_valid_minus_row  : OUT STD_LOGIC;
      datai                  : IN STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
      datai_dly              : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
      coefi                  : IN STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
      coefi_dly              : OUT STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
      coef_sel               : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      coef_sel_dly           : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      coef_on                : IN STD_LOGIC;
      coef_on_minus_row      : OUT STD_LOGIC;
      coefi_valid            : IN STD_LOGIC;
      coefi_valid_minus_row  : OUT STD_LOGIC  );
  END COMPONENT;
  
  COMPONENT enum_g5_latency_basic IS
    GENERIC (
      PHY_TAPS               : INTEGER;
      RC_ROWS                : INTEGER;
      BASIC_INTER_LAYER      : INTEGER;
      NIBBLE_PIPE_STAGES     : INTEGER;
      ROW_PIPE_STAGES        : INTEGER;
      PAD_PIPE_STAGES        : INTEGER );
    PORT (
      clk                    : IN STD_LOGIC;
      rstn                   : IN STD_LOGIC;
      nGrst                  : IN STD_LOGIC;
      systola                : IN STD_LOGIC;
      coef_on                : IN STD_LOGIC;    --08/03/16
      datao_valid            : OUT STD_LOGIC;
      datao_valid_pulse      : OUT STD_LOGIC  );
  END COMPONENT;

  constant ODD_TAPS : INTEGER := TAPS MOD 2;
  constant BUILD_BASIC_SHORT_DLY : INTEGER := intMux (0, 1, COEF_SYMM /= 0);
  constant SYST_DLY_EXTRN : INTEGER := TAPS-1-NIBBLE_SYMM_STAGES-ROW_SYMM_STAGES;
  
  TYPE type_xhdl4 IS ARRAY (0 TO RC_ROWS) OF STD_LOGIC_VECTOR(47 DOWNTO 0);
  TYPE type_xhdl6 IS ARRAY (0 TO RC_ROWS) OF STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
  TYPE type_xhdl3 IS ARRAY (0 TO RC_ROWS) OF STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
  TYPE type_xhdl2 IS ARRAY (1 TO RC_MAX_MAC_ROWS) OF INTEGER;
  TYPE type_xhdl5 IS ARRAY (1 TO RC_ROWS) OF STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
  TYPE type_dbg IS ARRAY (0 TO RC_ROWS) OF STD_LOGIC_VECTOR(17 DOWNTO 0);
  
  SIGNAL int_var_dbg            : type_xhdl2;		--mon_dbg
  SIGNAL tap_count_per_row      : type_xhdl2;		--mon_dbg
  SIGNAL rd_array_dbg           : type_xhdl2;		--mon_dbg
  signal dbg_top_init_array     : type_dbg;
  
  SIGNAL datai_valid_minus_row  : STD_LOGIC;
  SIGNAL coef_on_tick_minus     : STD_LOGIC;
  SIGNAL coefi_valid_tick_minus : STD_LOGIC;
  SIGNAL systola                : STD_LOGIC;
  SIGNAL coefi_dly              : STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
  SIGNAL cin_dly                : STD_LOGIC_VECTOR(47 DOWNTO 0);
  SIGNAL coef_sel_dly           : STD_LOGIC_VECTOR(3 DOWNTO 0);
  
  --                    +-+-+-+-+ +-+-+-+-+ +-+-+-+-+-+
  --                    |F|l|a|t| |C|o|e|f| |A|r|r|a|y|
  --                    +-+-+-+-+ +-+-+-+-+ +-+-+-+-+-+
  
  -- Connect end of a row syst DELAY1 to the next row dly input
  SIGNAL data_w                 : type_xhdl3;
  -- Connect end of a row accumulated output P to the next row cin
  SIGNAL p_w                    : type_xhdl4;
  -- Distribute the turnback signal btw rows with proper DELAY1
  SIGNAL turnback_2             : type_xhdl5;
  SIGNAL coef                   : type_xhdl6;
  SIGNAL coef_on_minus_row      : STD_LOGIC;
  SIGNAL coefi_valid_minus_row  : STD_LOGIC;
  SIGNAL rstnn                  : STD_LOGIC;
  
  -- Generate 'systola'
  --    .cin                    (cin  ),
  --    .cin_dly                (cin_dly              ),
  -- X-HDL generated signals

BEGIN
  rstnn <= NOT(rstn);
  p_w(0) <= "000000000000000000000000000000000000000000000000";
  
  dvalid_pipe_3 : enum_kitDelay_bit_reg
    GENERIC MAP ( DELAY1  => NIBBLE_PIPE_STAGES+ROW_PIPE_STAGES  )
    PORT MAP (
      nGrst  => nGrst,
      rst    => '0',
      clk    => clk,
      clken  => '1',
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
      datai_dly              => data_w(0),
      coefi                  => coefi,
      coefi_dly              => coef(0),
      coef_sel               => coef_sel,
      coef_sel_dly           => coef_sel_dly,
      coef_on                => coef_on,
      coef_on_minus_row      => coef_on_minus_row,
      coefi_valid            => coefi_valid,
      coefi_valid_minus_row  => coefi_valid_minus_row );
  
  --                  +-+-+-+-+-+-+-+-+-+-+ +-+-+-+  +-+-+-+-+-+
  --                  |F|I|R|S|T|-|L|A|S|T| |R|O|W|  |L|o|g|i|c|
  --                  +-+-+-+-+-+-+-+-+-+-+ +-+-+-+  +-+-+-+-+-+
  -- If basic INTER_STYLE, the logic is straightforward:
  -- - On the First physical row  FIRST_ROW = 1, otherwise 0
  -- - On the Last physical row   LAST_ROW  = 1, otherwise 0

  --  function significant_row (cur_row, signif_row_number: integer) return integer;
  --  function vect2int ( index, RC_MM_BITS, RC_MAX_MAC_ROWS: integer; 
  --                      param: std_logic_vector ) return integer; 
  --  function row_tap_count (RC_INFO: std_logic_vector; RC_MM_BITS, i: integer) return integer;
  --  function running_sum_basic (RC_INFO: std_logic_vector; RC_MM_BITS, i: integer) return integer;  


  rows: FOR silic_row IN 1 TO RC_ROWS GENERATE
    tap_count_per_row(silic_row) <= row_tap_count_basic(RC_INFO, RC_MM_BITS, silic_row);     --mon_dbg
    int_var_dbg(silic_row) <= running_sum_basic(RC_INFO, RC_MM_BITS, silic_row);   --mon_dbg 
--    rd_array_dbg(silic_row) <= vect2int(silic_row, RC_MM_BITS, RC_MAX_MAC_ROWS, RC_INFO);
    rd_array_dbg(silic_row) <= vect2int(silic_row, RC_MM_BITS, RC_INFO);  --mon_dbg
    dbg_top_init_array(silic_row) <= INIT(18*(silic_row+1)-1 DOWNTO 18*silic_row);

--( index, RC_MM_BITS, RC_MAX_MAC_ROWS: integer; param: std_logic_vector )    
--    row INIT: STD_LOGIC_VECTOR(288*ROW_TAPS-1 DOWNTO 0)
--    row_INIT <= INIT(288*running_sum_basic(RC_INFO, RC_MM_BITS, silic_row)-1 
--              DOWNTO 288*running_sum_basic(RC_INFO, RC_MM_BITS, silic_row-1) );
    
    a_row : enum_row_g5
    GENERIC MAP (
      PHY_TAPS           => PHY_TAPS,
      ODD_TAPS           => ODD_TAPS,
      RC_ROWS            => RC_ROWS ,
--      ROW_TAPS           => vect2int(silic_row, RC_MM_BITS, RC_MAX_MAC_ROWS, RC_INFO),
      ROW_TAPS           => vect2int(silic_row, RC_MM_BITS, RC_INFO),
      MAX_NIB_TAPS       => MAX_NIB_TAPS,   
      COEF_TYPE          => COEF_TYPE,      
      COEF_SETS          => COEF_SETS,      
      COEF_SYMM          => COEF_SYMM,      
      COEF_UNSIGN        => COEF_UNSIGN,    
      COEF_WIDTH         => COEF_WIDTH,     
      DATA_UNSIGN        => DATA_UNSIGN,    
      DATA_WIDTH         => DATA_WIDTH,     
      RESERVED1          => RESERVED1,      
      WARNING_MSGS_ON    => WARNING_MSGS_ON,
      INIT               => INIT(288*running_sum_basic(RC_INFO, RC_MM_BITS, silic_row)-1 DOWNTO 288*running_sum_basic(RC_INFO, RC_MM_BITS, silic_row-1) ),
      NIBBLE_PIPE_STAGES => NIBBLE_PIPE_STAGES,
      ROW_PIPE_STAGES    => ROW_PIPE_STAGES,   
      NIBBLE_SYMM_STAGES => NIBBLE_SYMM_STAGES,
      ROW_SYMM_STAGES    => ROW_SYMM_STAGES,   
      FIRST_ROW          => significant_row(silic_row, 1),
      LAST_ROW           => significant_row(silic_row, RC_ROWS),
      INTER_STYLE        => 0,
      BASIC_INTER_LAYER  => BASIC_INTER_LAYER,
      ADV_FBR_ENDDLY     => ADV_FBR_ENDDLY )  
    PORT MAP (
      nGrst                  => nGrst,                 
      rstn                   => rstn,                 
      clk                    => clk,                  
      datai_valid_minus_row  => datai_valid_minus_row,
      datai                  => data_w(silic_row-1),                
      cin                    => p_w(silic_row-1),                  
      symm_data_minus_row    => turnback_2(silic_row),  
      pout                   => p_w(silic_row),
      row_datao              => data_w(silic_row),            
      coefi                  => coef(silic_row-1),                
      coefo                  => coef(silic_row),                
      coef_sel               => coef_sel_dly,             
      coef_on_minus_row      => coef_on_minus_row,    
      coefi_valid_minus_row  => coefi_valid_minus_row );
  END GENERATE;
  
  pout <= p_w(RC_ROWS);
  
  gen_turn : IF (COEF_SYMM /= 0) GENERATE
    -- Generate external turnback signal
    turnback_0 : enum_kitDelay_reg
      GENERIC MAP ( BITWIDTH  => DATA_WIDTH,
                    DELAY1     => SYST_DLY_EXTRN )
      PORT MAP (
        nGrst  => nGrst,
        rst    => rstnn,
        clk    => clk,
        clken  => systola,
        inp    => data_w(0),
        outp   => turnback_2(1)  );
  END GENERATE;
  
  -- Short DELAY1 line to distribute turnback_2 to rows. It is built only for 
  -- basic inter-row option and when a symmetry filter is implemented
  -- The turnback_2 bus goes to the symm bus input of the first row.  DELAY1 of
  -- BASIC_INTER_LAYER gets inferred in the bus when it goes to every next row

  --tr  generate begin: symm_bus_basic
  --tr    genvar i;
  --tr    for(i=2; i<=RC_ROWS; i=i+1)
  --tr      begin
  --tr        enum_kitDelay_reg_cond # (
  --tr            .BITWIDTH (DATA_WIDTH),
  --tr            .DELAY1    (BASIC_INTER_LAYER),
  --tr            .BUILD    (BUILD_BASIC_SHORT_DLY) ) dly_link (
  --tr          .nGrst(nGrst), .rst(~rstn), .clk(clk), .clkEn(systola),
  --tr          .inp(turnback_2[i-1]), .outp(turnback_2[i])   );
  --tr      end
  --tr    end
  --tr  endgenerate
  symm_bus_basic : FOR i IN 2 TO RC_ROWS GENERATE
    dly_link : enum_kitDelay_reg_cond
      GENERIC MAP ( BITWIDTH  => DATA_WIDTH,
                    DELAY1     => BASIC_INTER_LAYER,
                    BUILD     => BUILD_BASIC_SHORT_DLY )
      PORT MAP (
        nGrst  => nGrst,
        rst    => rstnn,
        clk    => clk,
        clkEn  => systola,
        inp    => turnback_2(i-1),
        outp   => turnback_2(i)  );
  END GENERATE;
  
  latency_0 : enum_g5_latency_basic
    GENERIC MAP ( PHY_TAPS            => PHY_TAPS,
                  RC_ROWS             => RC_ROWS,
                  NIBBLE_PIPE_STAGES  => NIBBLE_PIPE_STAGES,
                  ROW_PIPE_STAGES     => ROW_PIPE_STAGES,
                  PAD_PIPE_STAGES     => PAD_PIPE_STAGES,
                  BASIC_INTER_LAYER   => BASIC_INTER_LAYER  )
    PORT MAP (
      clk                => clk,
      rstn               => rstn,
      nGrst              => nGrst,
      systola            => systola,
      coef_on            => coef_on,        --08/03/16
      datao_valid        => open,
      datao_valid_pulse  => firo_valid  );
  
END ARCHITECTURE rtl;




-- The total latency =
-- a) NIBBLE_PIPE_STAGES + ROW_PIPE_STAGES + PAD_PIPE_STAGES clk intervals
-- b) 2 periods of systola to account for B reg and P reg
-- c) TAPS-1 periods of systola
-- If BASIC
-- d) Number of full rows prior to the last one times BASIC_INTER_LAYER of
--    systola intervals

LIBRARY ieee;
  USE ieee.std_logic_1164.all;
--  USE IEEE.numeric_std.all;
USE work.enum_rtl_pack.all;

ENTITY enum_g5_latency_basic IS
  GENERIC ( PHY_TAPS               : INTEGER := 5;
            RC_ROWS                : INTEGER := 1;
            BASIC_INTER_LAYER      : INTEGER := 4;
            NIBBLE_PIPE_STAGES     : INTEGER := 2;
            ROW_PIPE_STAGES        : INTEGER := 2;
            PAD_PIPE_STAGES        : INTEGER := 2  );
  PORT (    
    clk                    : IN STD_LOGIC;
    rstn                   : IN STD_LOGIC;
    nGrst                  : IN STD_LOGIC;
    systola                : IN STD_LOGIC;
    coef_on                : IN STD_LOGIC;                    --08/03/16
    datao_valid            : OUT STD_LOGIC;
    datao_valid_pulse      : OUT STD_LOGIC  );
END ENTITY enum_g5_latency_basic;

ARCHITECTURE rtl OF enum_g5_latency_basic IS
  CONSTANT LATENCY_SYST         : INTEGER := PHY_TAPS+1+(RC_ROWS-1)*BASIC_INTER_LAYER;
  CONSTANT LATENCY_CLK          : INTEGER := NIBBLE_PIPE_STAGES+ROW_PIPE_STAGES+PAD_PIPE_STAGES;
  CONSTANT LOG_LATENCY_SYST     : INTEGER := ceil_log2(LATENCY_SYST);
  
  SIGNAL clk_lat_end            : STD_LOGIC;
  SIGNAL syst_lat_end           : STD_LOGIC;
--08/03/16  SIGNAL rstnn, rst_syst_count  : STD_LOGIC;
  SIGNAL datao_validi           : STD_LOGIC;

  SIGNAL async_rstn, rst_syst_lat, rst_clk_lat  : STD_LOGIC;  --08/03/16
  SIGNAL init_rst           : STD_LOGIC;                      --08/03/16
  
BEGIN
  datao_valid <= datao_validi;
  
  -- Sync rear edge of the nGrst with clk                     --08/03/16
  async2sync_0 : enum_kitDelay_bit_reg
    GENERIC MAP ( DELAY1  => 3 )
    PORT MAP (
      nGrst  => nGrst,
      rst    => '0',
      clk    => clk,
      clkEn  => '1',
      inp    => '1',
      outp   => async_rstn );

  --  Hold both clk and systola interval counters in state 0 until coef_on            
  PROCESS (nGrst, clk)
  BEGIN
    IF (nGrst = '0') THEN
      init_rst <= '1';
    ELSIF (clk'EVENT AND clk = '1') THEN
      IF (async_rstn = '0') THEN
        init_rst <= '1';
      ELSIF (coef_on = '1') THEN
        init_rst <= '0';
      END IF;
    END IF;
  END PROCESS;

  -- count clk intervals
  rst_clk_lat <= init_rst OR NOT(rstn);                       --08/03/16
  shift_reg_1 : enum_kitDelay_bit_reg
    GENERIC MAP ( DELAY1  => LATENCY_CLK )
    PORT MAP (
      nGrst  => nGrst,
--08/03/16      rst    => rstnn,
      rst    => rst_clk_lat,                                  --08/03/16
      clk    => clk,
      clkEn  => '1',
      inp    => '1',
      outp   => clk_lat_end  );
  
  -- count 'systola' intervals
--08/03/16  rst_syst_count <= rstnn OR NOT(clk_lat_end);
  rst_syst_lat <= init_rst OR NOT(clk_lat_end) OR NOT(rstn);  --08/03/16
  syst_counter_0 : enum_kitCountS
    GENERIC MAP ( WIDTH     => LOG_LATENCY_SYST,
                  DCVALUE   => LATENCY_SYST-1,
                  BUILD_DC  => 1    )
    PORT MAP (
      nGrst  => nGrst,
      rst    => rst_syst_lat,                                 --08/03/16
      clk    => clk,
      clkEn  => '1',
      cntEn  => systola,
      q      => open,
      dc     => syst_lat_end );
  
  -- The datao_valid locks in state 1 after first valid datao
  PROCESS (nGrst, clk)
  BEGIN
    IF (nGrst = '0') THEN
      datao_validi <= '0';
    ELSIF (clk'EVENT AND clk = '1') THEN
      IF (rstn = '0') THEN
        datao_validi <= '0';
      ELSIF ((syst_lat_end = '1') AND (systola = '1')) THEN
        datao_validi <= '1';
      END IF;
    END IF;
  END PROCESS;
  
  datao_valid_pulse <= datao_validi AND systola;
END ARCHITECTURE rtl;


