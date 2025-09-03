-- ***************************************************************************/
--Microsemi Corporation Proprietary and Confidential
--Copyright 2015 Microsemi Corporation. All rights reserved.
--
--ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
--ACCORDANCE WITH THE MICROSEMI LICENSE AGREEMENT AND MUST BE APPROVED
--IN ADVANCE IN WRITING.
--
--Description:  G5 CoreFIR
--              Fully Enumerated filter test bench
--
--Revision Information:
--Date         Description
--16Jan2013    Initial Release
--
--SVN Revision Information:
--SVN $Revision: 14801 $
--SVN $Data: $
--
--Resolved SARs
--SAR     Date    Who         Description
--
--Notes:


-- Fully combinatorial FIR tap
LIBRARY ieee;
  USE ieee.std_logic_1164.all;
  USE IEEE.numeric_std.all;
  USE work.bhv_pack.all;

ENTITY bhv_mac IS
  PORT (
    A            : IN STD_LOGIC_VECTOR(17 DOWNTO 0);		-- 18-bit data
    B            : IN STD_LOGIC_VECTOR(17 DOWNTO 0);		-- 18-bit data
    cin          : IN STD_LOGIC_VECTOR(47 DOWNTO 0);		-- 48-bit data
    P            : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)  );		-- 48-bit data
END ENTITY bhv_mac;

ARCHITECTURE bhv OF bhv_mac IS
  SIGNAL product       : STD_LOGIC_VECTOR(35 DOWNTO 0);
  SIGNAL product48     : STD_LOGIC_VECTOR(47 DOWNTO 0);

BEGIN
  product <= std_logic_vector(signed(A)*signed(B));

  -- Sign extend product
  product48 <= sign_ext_bhv (product, 48, 0);

  P <= std_logic_vector(signed(product48) + signed(cin));

END ARCHITECTURE bhv;



--           ___  _____  __    ____  ____  _  _    ____  ____  ____
--          / __)(  _  )(  )  (  _ \( ___)( \( )  ( ___)(_  _)(  _ \
--         ( (_-. )(_)(  )(__  )(_) ))__)  )  (    )__)  _)(_  )   /
--          \___/(_____)(____)(____/(____)(_)\_)  (__)  (____)(_)\_)
--  Calculate FIR output

LIBRARY ieee;
  USE ieee.std_logic_1164.all;
  USE IEEE.numeric_std.all;
USE work.bhv_pack.all;

ENTITY bhv_gold_fir IS
  GENERIC (
    TAPS         : INTEGER := 20;
    PHY_TAPS     : INTEGER := 10;
    COEF_SYMM    : INTEGER := 0;
    COEF_TYPE    : INTEGER := 0;
    COEF_UNSIGN  : INTEGER := 0;
    DATA_WIDTH   : INTEGER := 12;
    DATA_UNSIGN  : INTEGER := 0;
    COEF_WIDTH   : INTEGER := 12;
    COEF_SETS    : INTEGER := 3;
    INIT         : STD_LOGIC_VECTOR );
  PORT (
    nGrst        : IN STD_LOGIC;
    rstn         : IN STD_LOGIC;
    clk          : IN STD_LOGIC;
    set_count    : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    datai_valid  : IN STD_LOGIC;
    datai        : IN STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
    firo         : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)  );
END ENTITY bhv_gold_fir;

ARCHITECTURE bhv OF bhv_gold_fir IS

  COMPONENT bhv_mac IS
    PORT (
      A            : IN STD_LOGIC_VECTOR(17 DOWNTO 0);		-- 18-bit data
      B            : IN STD_LOGIC_VECTOR(17 DOWNTO 0);		-- 18-bit data
      cin          : IN STD_LOGIC_VECTOR(47 DOWNTO 0);		-- 48-bit data
      P            : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)  );		-- 48-bit data
  END COMPONENT;

  constant CD_WIDTH : positive := DATA_WIDTH+COEF_WIDTH+bhv_ceil_log2(TAPS);
  constant ODD_TAPS : INTEGER  := intMux_bhv (0, 1, TAPS MOD 2 = 1);

  TYPE type_xhdl0 IS ARRAY (0 TO TAPS) OF STD_LOGIC_VECTOR(17 DOWNTO 0);
  TYPE type_xhdl1 IS ARRAY (0 TO TAPS-1) OF STD_LOGIC_VECTOR(17 DOWNTO 0);
  TYPE type_xhdl2 IS ARRAY (0 TO TAPS) OF STD_LOGIC_VECTOR(47 DOWNTO 0);

  SIGNAL coef_arr      : type_xhdl0;
  SIGNAL data_arr      : type_xhdl1;
  SIGNAL cin           : type_xhdl2;
  SIGNAL shift_loop    : INTEGER;
  SIGNAL convolve_loop : INTEGER;
  SIGNAL prod          : STD_LOGIC_VECTOR(CD_WIDTH-1 DOWNTO 0);
  SIGNAL mcandD        : STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
  SIGNAL mcandC        : STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
  signal SET_COUNT_INT : integer := 0;
  
  
BEGIN
  SET_COUNT_INT <= to_integer(unsigned(set_count) );

  --  ----------------  Store coefficients for a given set in the coef_arr  ----
  const_coef2array : IF (COEF_TYPE = 0) GENERATE
    PROCESS (SET_COUNT_INT)
    BEGIN
      FOR shift_loop IN 0 TO PHY_TAPS-1-ODD_TAPS LOOP
        coef_arr(shift_loop) <= parse_INIT_bhv(INIT, shift_loop, SET_COUNT_INT);
        IF (COEF_SYMM=1) THEN
          coef_arr(PHY_TAPS+shift_loop) <=
            parse_INIT_bhv(INIT, PHY_TAPS-1-ODD_TAPS-shift_loop, SET_COUNT_INT);
        END IF;
        IF (COEF_SYMM=2) THEN
          coef_arr(PHY_TAPS+shift_loop) <= std_logic_vector(
            -signed(parse_INIT_bhv(INIT, PHY_TAPS-1-ODD_TAPS-shift_loop, SET_COUNT_INT)) );
        END IF;
      END LOOP;
      -- Unique odd tap
      IF(ODD_TAPS/=0) THEN
        coef_arr(PHY_TAPS-1) <= parse_INIT_bhv(INIT, PHY_TAPS-1, SET_COUNT_INT);
      END IF;
    END PROCESS;
  END GENERATE;


  reload_coef2array : IF (COEF_TYPE = 1) GENERATE
    PROCESS (SET_COUNT_INT)
    BEGIN
      FOR shift_loop IN 0 TO PHY_TAPS-1-ODD_TAPS LOOP
        coef_arr(shift_loop) <= std_logic_vector(to_signed(-1, 18));
        IF (COEF_SYMM=1) THEN
          coef_arr(PHY_TAPS+shift_loop) <= std_logic_vector(to_signed(-1, 18));
        END IF;
        IF (COEF_SYMM=2) THEN
          coef_arr(PHY_TAPS+shift_loop) <= std_logic_vector(to_signed(1, 18));
        END IF;
      END LOOP;
      -- Unique odd tap
      IF(ODD_TAPS/=0) THEN
        coef_arr(PHY_TAPS-1) <= std_logic_vector(to_signed(1, 18));
      END IF;
    END PROCESS;
  END GENERATE;


  --  --------------  End storing coefficients  ---------------

  PROCESS (nGrst, clk)
  BEGIN
    -- Reset data multi-tap DELAY1 line
    IF (nGrst = '0') THEN
      FOR shift_loop IN 0 TO TAPS-1 LOOP
        data_arr(shift_loop) <= (OTHERS=>'0');
      END LOOP;

    ELSIF (clk'EVENT AND clk = '1') THEN
      IF (rstn = '0') THEN
        FOR shift_loop IN 0 TO TAPS-1 LOOP
          data_arr(shift_loop) <= (OTHERS=>'0');
        END LOOP;
      ELSE
        -- Shift in data in the multi-tap DELAY1 line
        IF (datai_valid = '1') THEN		-- shift the sample
          FOR shift_loop IN TAPS-1 DOWNTO 1 LOOP
            data_arr(shift_loop) <= data_arr(shift_loop-1);
          END LOOP;
          data_arr(0) <= sign_ext_bhv (datai, 18, DATA_UNSIGN);
        END IF;
      END IF;
    END IF;
  END PROCESS;

  cin(0) <= (OTHERS=>'0');
  firo <= cin(TAPS);

  bhv_taps : FOR i IN 0 TO TAPS-1 GENERATE
    a_bhv_mac : bhv_mac
      PORT MAP  (
        A   => coef_arr(i),
        B   => data_arr(i),
        cin => cin(i),
        P   => cin(i+1) );
  END GENERATE;
END ARCHITECTURE bhv;



LIBRARY ieee;
  USE ieee.std_logic_1164.all;
  USE IEEE.numeric_std.all;
USE work.bhv_pack.all;

ENTITY bhv_reload_coef_gen IS
  GENERIC ( PHY_TAPS     : INTEGER := 10;
            COEF_WIDTH   : INTEGER := 12;
            INIT         : STD_LOGIC_VECTOR  );
  PORT (
    coef_count   : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    coef_outp    : OUT STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0)  );
END ENTITY bhv_reload_coef_gen;

ARCHITECTURE bhv OF bhv_reload_coef_gen IS
  SIGNAL coef18        : STD_LOGIC_VECTOR(17 DOWNTO 0);
  signal coef_count_int : INTEGER := 1;
BEGIN
  coef_count_int <= to_integer(unsigned(coef_count))+1 WHEN
                            to_integer(unsigned(coef_count))<PHY_TAPS ELSE 1;
--rld  coef18 <= INIT(288*coef_count_int-1 downto 288*coef_count_int-18);

--rld  coef_outp <= coef18(COEF_WIDTH-1 downto 0);
  coef_outp <= std_logic_vector(to_signed(-1, COEF_WIDTH));     --WHEN coef_count_int=0 
          --ELSE std_logic_vector(to_signed(1, COEF_WIDTH));
END ARCHITECTURE bhv;



LIBRARY ieee;
  USE ieee.std_logic_1164.all;
  USE IEEE.numeric_std.all;
   use ieee.math_real.all; -- for UNIFORM, TRUNC
LIBRARY STD;
  USE IEEE.STD_LOGIC_TEXTIO.ALL;
  USE STD.textio.all;
USE work.bhv_pack.all;
USE work.decm_rtl_pack.all;
USE work.coreparameters_tgi.all;
USE work.fir_hilbert_fir_hilbert_0_enumFIR_coefs.all;

ENTITY testbench IS
END ENTITY testbench;

ARCHITECTURE bhv OF testbench IS
  COMPONENT bhv_gold_fir IS
    GENERIC (
      TAPS         : INTEGER ;
      PHY_TAPS     : INTEGER ;
      COEF_SYMM    : INTEGER ;
      COEF_TYPE    : INTEGER ;
      COEF_UNSIGN  : INTEGER ;
      DATA_WIDTH   : INTEGER ;
      DATA_UNSIGN  : INTEGER ;
      COEF_WIDTH   : INTEGER ;
      COEF_SETS    : INTEGER ;
      INIT         : STD_LOGIC_VECTOR  );
    PORT (
      nGrst        : IN STD_LOGIC;
      rstn         : IN STD_LOGIC;
      clk          : IN STD_LOGIC;
      set_count    : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      datai_valid  : IN STD_LOGIC;
      datai        : IN STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
      firo         : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)  );
  END COMPONENT;

  COMPONENT fir_hilbert_fir_hilbert_0_COREFIR_PF IS
    GENERIC (
      CFG_ARCH            : INTEGER;
      TAPS                : INTEGER;
      COEF_TYPE           : INTEGER;
      COEF_SETS           : INTEGER;
      COEF_SYMM           : INTEGER;
      COEF_UNSIGN         : INTEGER;
      COEF_WIDTH          : INTEGER;
      DATA_UNSIGN         : INTEGER;
      DATA_WIDTH          : INTEGER;
      INTER_STYLE         : INTEGER;
      URAM_MAXDEPTH       : INTEGER;
      ROUND               : INTEGER;
      OUTP_WIDTH          : INTEGER;
      COEF_RAM            : INTEGER;
      DATA_RAM            : INTEGER;
      SAMPLEID            : INTEGER;
      ID_WIDTH            : INTEGER;
      L                   : INTEGER;
      M                   : INTEGER;
      FF		          : INTEGER;
	  NATIV_AXI4          : INTEGER := 0;		    -- 1=AXI4S, 0=Native
	  DATA_WIDTH_REQ      : INTEGER := 24;        -- for AXI4S DATA byte boundaries
	  COEF_WIDTH_REQ      : INTEGER := 24;        -- for AXI4S COEF byte boundaries
	  DIE_SIZE            : INTEGER ;
      FPGA_FAMILY         : INTEGER ;
      PERFORMANCE         : INTEGER );
    PORT (
      NGRST               : IN STD_LOGIC;
      RSTN                : IN STD_LOGIC;
      CLK                 : IN STD_LOGIC;
      DATAI               : IN STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
      DATAI_VALID         : IN STD_LOGIC;
      COEFI               : IN STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
      COEFI_VALID         : IN STD_LOGIC;
      FIRO                : OUT STD_LOGIC_VECTOR(47 downto 0);
      FIRO_VALID          : OUT STD_LOGIC;
      COEF_ON             : IN STD_LOGIC;
      COEF_SEL            : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      COEF_REF            : IN STD_LOGIC;
      COEF_REF_DONE       : OUT STD_LOGIC;
      READY                 : OUT STD_LOGIC;
      RCLK                : IN STD_LOGIC;
      COEF_ON_SLOT        : OUT STD_LOGIC;
		-- AXI4S DATA channels
	  AXI4_S_DATAI_TVALID	:  IN std_logic;
	  AXI4_S_DATAI_TREADY   :  OUT std_logic;
	  AXI4_S_TDATAI  		:  IN std_logic_vector(DATA_WIDTH_REQ-1 downto 0);
	  
	  AXI4_M_DATAO_TVALID   :  OUT std_logic;
	  AXI4_M_DATAO_TREADY	:  IN std_logic;  --expects always '1'
	  AXI4_M_TDATAO 		:  OUT std_logic_vector(47 DOWNTO 0);
	  -- AXI4S COEF channels
	  AXI4_S_COEFI_TVALID	:  IN std_logic;
	  AXI4_S_COEFI_TREADY   :  OUT std_logic;
	  AXI4_S_COEFI  		:  IN std_logic_vector(COEF_WIDTH_REQ-1 downto 0);
	  -- AXI4S Configuration channels
	  AXI4_S_CONFIGI_TVALID  :  IN std_logic;
	  AXI4_S_CONFIGI_TREADY  :  OUT std_logic;
	  AXI4_S_CONFIGI		 :  IN std_logic_vector(7 downto 0);
	  
	  AXI4_M_CONFIGO_TVALID  :  OUT std_logic;
	  AXI4_M_CONFIGO_TREADY  :  IN std_logic; --expects always '1'
	  AXI4_M_CONFIGO 		 :  OUT std_logic_vector(7 downto 0) );
    END COMPONENT;

  COMPONENT bhv_reload_coef_gen IS
    GENERIC ( PHY_TAPS     : INTEGER;
              COEF_WIDTH   : INTEGER;
              INIT         : STD_LOGIC_VECTOR  );
    PORT (
      coef_count   : IN STD_LOGIC_VECTOR;
      coef_outp    : OUT STD_LOGIC_VECTOR  );
  END COMPONENT;

  COMPONENT inpTestVect IS
    PORT (
      inp_count : IN STD_LOGIC_VECTOR;
      outp      : OUT STD_LOGIC_VECTOR  );
  END COMPONENT;

  constant PHY_TAPS         : POSITIVE := intMux_bhv (
    intMux_bhv(TAPS/2+1, TAPS/2, TAPS MOD 2 = 0), TAPS, COEF_SYMM=0);
  constant DATAS : INTEGER := TAPS+PHY_TAPS+1+(RC_ROWS-1)*BASIC_INTER_LAYER+
                        NIBBLE_PIPE_STAGES + ROW_PIPE_STAGES + PAD_PIPE_STAGES;
  constant VALIDITY_DUTY_CYCLE  : INTEGER := 1;
  -- datai_valid starts:
  --   0 - after nGrst (start_datai_valid1);
  --   1 - after ctrl_leading_zeros, simultaneously with data (start_datai_valid2)
  constant CTRL_DATAI_VALID : INTEGER := 1;                             --07/06/16
  constant LOG2_DATAS : INTEGER := bhv_ceil_log2(DATAS);
  constant EVEN_TAPS  : INTEGER := intMux_bhv(0, 1, TAPS MOD 2=0);
 -- constant CD_WIDTH   : INTEGER := DATA_WIDTH+COEF_WIDTH+bhv_ceil_log2(TAPS);
  constant INIT_WR    : INTEGER := -1;

  TYPE type_xhdl6 IS ARRAY (-2 TO DATAS + 2*TAPS + 100) OF STD_LOGIC_VECTOR(47 DOWNTO 0);

  SIGNAL coef_set           : INTEGER := 0;
  SIGNAL clk                : STD_LOGIC;
  SIGNAL nGrst              : STD_LOGIC;
  SIGNAL inp_data_over      : STD_LOGIC;
  SIGNAL datai_valid        : STD_LOGIC;
  SIGNAL spike              : STD_LOGIC;
  SIGNAL systola            : STD_LOGIC;
  SIGNAL ctrl_leading_zeros : STD_LOGIC;
  SIGNAL coef_on            : STD_LOGIC;
  SIGNAL increment_coef_set : STD_LOGIC;
  SIGNAL reset_coef_count   : STD_LOGIC;
  SIGNAL shift_in_coefs     : STD_LOGIC;
  SIGNAL coef_set_count     : STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS=>'0') ;
  SIGNAL set_count          : STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS=>'0') ;
  SIGNAL firo_xbit          : STD_LOGIC := '0';
  SIGNAL coef_set_over      : STD_LOGIC;
  SIGNAL reload_coef_over   : STD_LOGIC;
  SIGNAL coefi_valid        : STD_LOGIC;
  SIGNAL firo_valid         : STD_LOGIC;
  SIGNAL reload_coef_count  : STD_LOGIC_VECTOR(10 DOWNTO 0) := (OTHERS=>'0');
  SIGNAL inp_count    	 	: STD_LOGIC_VECTOR(LOG2_DATAS - 1 DOWNTO 0) := (OTHERS=>'0');
  SIGNAL inpVector    		: STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0):= (OTHERS=>'0');
  SIGNAL test_data_w  		: STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0):= (OTHERS=>'0');
  SIGNAL coefi        		: STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0):= (OTHERS=>'0');
  SIGNAL coefii       		: STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0):= (OTHERS=>'0');
  SIGNAL firo               : STD_LOGIC_VECTOR(47 DOWNTO 0);
  SIGNAL gold_firo          : STD_LOGIC_VECTOR(47 DOWNTO 0);
  SIGNAL gold_fifo_out      : STD_LOGIC_VECTOR(47 DOWNTO 0);
  SIGNAL fifo               : type_xhdl6;
  SIGNAL wr                 : INTEGER := INIT_WR;
  SIGNAL rd                 : INTEGER := 0;
  SIGNAL error_count        : INTEGER;
  SIGNAL firo_count         : INTEGER;
  SIGNAL rstnn              : STD_LOGIC;
  SIGNAL halt               : STD_LOGIC := '0';

  SIGNAL start_datai_valid1 : STD_LOGIC := '0';
  SIGNAL start_datai_valid2 : STD_LOGIC := '0';      --07/06/16
  SIGNAL start_datai_valid, datai_valid_freq : STD_LOGIC;         --07/06/16
  CONSTANT TAPS_PHY 		: INTEGER := TAPS/(INTRP_FACTOR);
  CONSTANT CD_WIDTH 		: INTEGER := 48;
  CONSTANT COEF_FLT_RANGE 	: REAL := 1.0*(2**COEF_WIDTH);
  CONSTANT DATA_FLT_RANGE 	: REAL := 1.0*(2**DATA_WIDTH);
  
  -- Test & test vector parameters
  CONSTANT RCLK_FACTOR          	: INTEGER := 1;	 -- 1: rclk=clk
  CONSTANT DATA_VALID_INTERVAL  	: INTEGER := 31; -- 0: no interval; measured in rclk intervals
  CONSTANT DATA_VALID_INTERVAL_TB 	: INTEGER := 21; -- 0: no interval; measured in rclk intervals
  CONSTANT DATA_PATTERN         	: INTEGER := 0;--3;
  CONSTANT TEST_LENGTH          	: INTEGER := 2;	-- Measured in TAPS, i.e. 2*TAPS
--sar55532  Depth of the golden test array
  CONSTANT GOLD_ARR_LENGTH      : INTEGER := TEST_LENGTH*(TAPS+EXTRA_TAPS)*INTRP_FACTOR;	
  CONSTANT WRAP_LAYERS  : INTEGER := 3;	--must match the one of interpl_COREFIR
  -- 3-dimensional array
  TYPE type_coef_arr IS ARRAY (0 TO COEF_SETS-1, 0 TO  TAPS+EXTRA_TAPS-1) OF
                                        STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
  -- depth should be equal to power of 2. eg. 2,4,8,16,....,1024 etc
--sar55532  TYPE type_firo_arr_fifo IS ARRAY (0 TO 4095) OF 
  TYPE type_firo_arr_fifo IS ARRAY (0 TO GOLD_ARR_LENGTH) OF 
                                          STD_LOGIC_VECTOR(CD_WIDTH-1 DOWNTO 0);
  TYPE type_data_arr IS ARRAY (0 TO TAPS+EXTRA_TAPS-1) OF
                                        STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
  TYPE type_coef_flat IS ARRAY (0 TO COEF_SETS-1) OF
                                   STD_LOGIC_VECTOR((TAPS+EXTRA_TAPS)*COEF_WIDTH-1 DOWNTO 0);
  
  SIGNAL data_valid       : STD_LOGIC;
  SIGNAL data_valid_tb    : STD_LOGIC;  
  SIGNAL datai            : STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
  SIGNAL datai_tb         : STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0); 
  SIGNAL datai_local      : STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
  SIGNAL swap_page        : STD_LOGIC;
  SIGNAL ready_tb         : STD_LOGIC;
  SIGNAL refresh_done     : STD_LOGIC;
  SIGNAL coef_ref         : STD_LOGIC;
  SIGNAL coef_sel         : STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL coef_sel_int     : INTEGER;
  SIGNAL Z                : INTEGER;
  SIGNAL coefi_count      : NATURAL := 0;
  SIGNAL start_samples    : STD_LOGIC;
  SIGNAL start_samples_tb : STD_LOGIC; 
  SIGNAL stop_samples     : STD_LOGIC;
  SIGNAL stop_samples_tb  : STD_LOGIC; 
  SIGNAL start_coefi      : STD_LOGIC;
  SIGNAL stop_coefi       : STD_LOGIC;
  SIGNAL coef_arr         : type_coef_arr;
  SIGNAL coef_arr_act     : type_coef_arr;
  SIGNAL data_arr         : type_data_arr;
  SIGNAL coef_flat_arr    : type_coef_flat;

  SIGNAL firo_arr_fifo    : type_firo_arr_fifo;
  SIGNAL sample_count     : INTEGER;
  SIGNAL sample_count_tb  : INTEGER;  
  SIGNAL data_valid_timer : INTEGER;
  SIGNAL data_valid_timer_tb 		: INTEGER; 
  SIGNAL good_datai_valid_slim 		: STD_LOGIC;
  SIGNAL good_datai_valid_slim_tb 	: STD_LOGIC;
  SIGNAL datai_valid_slim      		: STD_LOGIC;
  SIGNAL datai_valid_slim_tb   		: STD_LOGIC;  
  SIGNAL rstn             	  : STD_LOGIC;
  constant FF                 : integer := 10; 
  constant REQ_TAPS		      : INTEGER := TAPS+EXTRA_TAPS; -- REQ_TAPS= Actual taps + extra taps = TAPS+EXTRA_TAPS
  SIGNAL  rsti,ready          : STD_LOGIC;
  SIGNAL  intrp_cycle_end_w   : STD_LOGIC;
  SIGNAL  intrp_cycle         : STD_LOGIC;
  signal  rclk				  : std_logic;
  
  COMPONENT fir_hilbert_fir_hilbert_0_const_arr IS
    GENERIC ( COEF_WIDTH  : INTEGER;
              TAPS        : INTEGER;
			  TB_R_ACT    : INTEGER;
              COEF_SETS   : INTEGER  );
    PORT (
      set       :  IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      coef_flat : OUT STD_LOGIC_VECTOR(TAPS*COEF_WIDTH-1 DOWNTO 0)  );
  END COMPONENT;
  
BEGIN

--                          _   _   _   _     _   _
--                         / \ / \ / \ / \   / \ / \
--                        ( M | a | i | n ) ( S | M )
--                         \_/ \_/ \_/ \_/   \_/ \_/
 tb_enum: if (CFG_ARCH=1) generate
  print("In CFG_ARCH=1\n"); 
  
  coefi <= (others=>'0') WHEN (COEF_TYPE=0) ELSE  coefii;
	
  PROCESS         
    VARIABLE var_line : line;
    VARIABLE data : INTEGER;
  BEGIN

    rstn <= '1';
    ctrl_leading_zeros <= '1';
    coef_on <= '0';
    increment_coef_set <= '0';
    reset_coef_count <= '1';
    shift_in_coefs <= '0';

    WAIT UNTIL nGrst = '1';     -- wait for nGrst to deassert
    --             +-+-+-+-+-+ +-+-+-+-+
    --             |C|o|n|s|t| |C|o|e|f|
    --             +-+-+-+-+-+ +-+-+-+-+
    IF (COEF_TYPE = 0) THEN
      FOR coef_set IN 0 TO COEF_SETS-1 LOOP
        -- set initial conditions for each coef set
        rstn <= '1';
        ctrl_leading_zeros <= '1';
        coef_on <= '0';
        print("");
        print("Running Constant Coefficient Test");
        data := coef_set + 1;
        IF (COEF_SETS > 1) THEN
          write(var_line, string'("Coefficient Set "));
          write(var_line, data);
          writeline (output, var_line);
        END IF;
        print("");

        --  Pulse coef_on to write coefficients in the A register
        FOR I IN 1 TO 10 LOOP
          WAIT UNTIL clk='1';
        END LOOP;

        coef_on <= '1';
        WAIT UNTIL clk = '1';
        coef_on <= '0';

        -- Generate a thick testbench rstn
        -- Wait for at least indicated number of clks to let MAC A_reg settle
        -- before rstn comes into play
        FOR I IN 1 TO NIBBLE_PIPE_STAGES + ROW_PIPE_STAGES + PAD_PIPE_STAGES LOOP
          WAIT UNTIL clk = '1';
        END LOOP;

        IF (VALIDITY_DUTY_CYCLE < 2) THEN
          WAIT UNTIL clk = '1';
        ELSE
          WAIT UNTIL datai_valid_freq = '0';
        END IF;

        rstn <= '0';
        -- Stretch rstn to cover at least 4 periods of datai_valid (and systola).
        -- At least one period is required, as rst will only work on MAC regs when
        -- clkEn (systola) is active.  Rstn width of >= datai_valid period guaratees
        -- that.
        -- 4 periods are set not to worry about performance of the rstn line.
        -- Alternatively the rstn line shoud have been routed to taps similarly to
        -- the datai_valid, coef_on, etc.
        IF (VALIDITY_DUTY_CYCLE < 2) THEN
          FOR I IN 1 TO 4 LOOP
            WAIT UNTIL clk = '0';
          END LOOP;
        ELSE
          FOR I IN 1 TO 4 LOOP
            WAIT UNTIL datai_valid_freq = '0'; 
          END LOOP;
        END IF;
        rstn <= '1';

        IF (VALIDITY_DUTY_CYCLE < 2) THEN
          FOR I IN 1 TO 2*TAPS + 20 LOOP
            WAIT UNTIL clk = '0';
          END LOOP;
        ELSE
          FOR I IN 1 TO 2*TAPS + 20 LOOP
            WAIT UNTIL datai_valid_freq = '1';
          END LOOP;
        END IF;
        ctrl_leading_zeros <= '0';
        start_datai_valid2 <= '1';

        -- Read datai_vector
        -- Wait for inp_data_over to pulse
        WAIT UNTIL inp_data_over = '1';
        WAIT UNTIL inp_data_over = '0';
        ctrl_leading_zeros <= '1';

        FOR I IN 1 TO NIBBLE_PIPE_STAGES + ROW_PIPE_STAGES + PAD_PIPE_STAGES LOOP
          WAIT UNTIL clk = '0';
        END LOOP;

        WAIT UNTIL clk='1';
        increment_coef_set <= '1';
        WAIT UNTIL clk='1';
        increment_coef_set <= '0';
      END LOOP;

--        +-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+
--        |R|e|l|o|a|d|a|b|l|e| |C|o|e|f|
--        +-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+
    ELSE
      rstn <= '1';
      ctrl_leading_zeros <= '1';
      coef_on <= '0';
      print("");
      print("Running Reloadable Coefficient Test");
      print("");
      -- load coefficients
      FOR I IN 1 TO 2 LOOP
        WAIT UNTIL clk = '1';
      END LOOP;
      reset_coef_count <= '0';

      -- Enable shifting in the coefficients
      shift_in_coefs <= '1';
      -- wait for all reload coefs to be generated
      WAIT UNTIL reload_coef_over = '1';
      WAIT UNTIL reload_coef_over = '0';
      -- Stop shifting in the coefficients
      shift_in_coefs <= '0';

      -- Generate coef_on
      FOR I IN 1 TO 2 LOOP
        WAIT UNTIL clk = '1';
      END LOOP;
      coef_on <= '1';

      WAIT UNTIL clk = '1';
      coef_on <= '0';

      -- Generate a thick testbench rstn
      -- Wait for at least indicated number of clks to let MAC A_reg settle
      -- before rstn comes into play
      FOR I IN 1 TO NIBBLE_PIPE_STAGES + ROW_PIPE_STAGES + PAD_PIPE_STAGES + 1 LOOP
        WAIT UNTIL clk = '1';
      END LOOP;

      IF (VALIDITY_DUTY_CYCLE < 2) THEN
        WAIT UNTIL clk = '1';
      ELSE
        WAIT UNTIL datai_valid_freq = '0';
      END IF;

      rstn <= '0';
      -- Stretch rstn to cover at least 4 periods of datai_valid (and systola).
      -- At least one period is required, as rst will only work on MAC regs when
      -- clkEn (systola) is active.  Rstn width of >= datai_valid period guaratees
      -- that.
      -- 4 periods are set not to worry about performance of the rstn line.
      -- Alternatively the rstn line should have been routed to taps similarly to
      -- the datai_valid, coef_on, etc.
      IF (VALIDITY_DUTY_CYCLE < 2) THEN
        FOR I IN 1 TO 4 LOOP           
          WAIT UNTIL clk = '0';        
        END LOOP;                      
      ELSE
        FOR I IN 1 TO 4 LOOP
          WAIT UNTIL datai_valid_freq = '0';
        END LOOP;
      END IF;

      rstn <= '1';

      IF (VALIDITY_DUTY_CYCLE < 2) THEN
        FOR I IN 1 TO 2*TAPS + 20 LOOP
          WAIT UNTIL clk = '1';
        END LOOP;
      ELSE
        FOR I IN 1 TO 2*TAPS + 20 LOOP
          WAIT UNTIL datai_valid_freq = '1';
        END LOOP;
      END IF;
      ctrl_leading_zeros <= '0';
      start_datai_valid2 <= '1';

      -- Read datai_vector
      -- Wait DATAS datai_valid intervals for inp_data_over to pulse
      WAIT UNTIL inp_data_over = '1';
      WAIT UNTIL inp_data_over = '0';
      ctrl_leading_zeros <= '1';

      FOR I IN 1 TO NIBBLE_PIPE_STAGES + ROW_PIPE_STAGES + PAD_PIPE_STAGES LOOP
        WAIT UNTIL clk = '0';
      END LOOP;
    END IF;

    IF (error_count > 0) THEN
      print("TEST FAILED");
    ELSIF (firo_count = 0) THEN
      print("TEST FAILED: CoreFIR has not generated any valid samples");
    ELSE
      print("TEST PASSED");
    END IF;

    halt <= '1';
    WAIT;
  END PROCESS;

  uut_0 : fir_hilbert_fir_hilbert_0_COREFIR_PF
    GENERIC MAP (
      CFG_ARCH            => 1,
      TAPS                => TAPS,
      COEF_TYPE           => COEF_TYPE,
      COEF_SETS           => COEF_SETS,
      COEF_SYMM           => COEF_SYMM,
      COEF_UNSIGN         => COEF_UNSIGN,
      COEF_WIDTH          => COEF_WIDTH,
      DATA_UNSIGN         => DATA_UNSIGN,
      DATA_WIDTH          => DATA_WIDTH,
      INTER_STYLE         => INTER_STYLE,
      URAM_MAXDEPTH       => URAM_MAXDEPTH,
      -- Reserved for other filter types and possible modifications
      ROUND               => 0,
      OUTP_WIDTH          => 48,
      COEF_RAM            => COEF_RAM,
      DATA_RAM            => DATA_RAM,
      SAMPLEID            => 0,
      ID_WIDTH            => 5,
      L                   => 1,
      M                   => 1,
	  FF				  => 1,
	  NATIV_AXI4		  => NATIV_AXI4,
	  DATA_WIDTH_REQ      => DATA_WIDTH_REQ,
	  COEF_WIDTH_REQ      => COEF_WIDTH_REQ,
	  DIE_SIZE            => DIE_SIZE,
      FPGA_FAMILY         => FPGA_FAMILY,
      PERFORMANCE         => 0  )
    PORT MAP (
      NGRST          => nGrst,
      RSTN           => rstn,
      CLK            => clk,
      DATAI_VALID    => datai_valid,
      DATAI          => test_data_w,
      FIRO           => firo,
      COEFI          => coefi,
      COEF_SEL       => coef_set_count,
      COEF_ON        => coef_on,
      COEFI_VALID    => coefi_valid,
      FIRO_VALID     => firo_valid,
      COEF_REF       => '0',
      COEF_REF_DONE  => open,
      READY          => open,
      RCLK           => '0',
      COEF_ON_SLOT   => open,
	  -- AXI4S DATA channels
	  AXI4_S_DATAI_TVALID	=>   '0',	
	  AXI4_S_DATAI_TREADY   =>   open,   
	  AXI4_S_TDATAI  		=>   (others => '0'),  		
							    
	  AXI4_M_DATAO_TVALID   =>   open,   
	  AXI4_M_DATAO_TREADY	=>   '0',	
	  AXI4_M_TDATAO 		=>   open,		
			   -- AXI4S COEF channels
	  AXI4_S_COEFI_TVALID	=>  '0',	
	  AXI4_S_COEFI_TREADY   =>  open,   
	  AXI4_S_COEFI  		=>  (others => '0'),  		
	  -- AXI4S Configuration channels
	  AXI4_S_CONFIGI_TVALID  =>  '0', 
	  AXI4_S_CONFIGI_TREADY  =>  open, 
	  AXI4_S_CONFIGI		 =>  (others => '0'),		
	  
	  AXI4_M_CONFIGO_TVALID  =>   open, 
	  AXI4_M_CONFIGO_TREADY  =>   '0', 
	  AXI4_M_CONFIGO 		 =>   open		  );

  -- Clock generator
  clock_0 : bhvClockGen
    GENERIC MAP ( CLKPERIOD   => 10 ns,
                  NGRSTLASTS  => 24 ns  )
    PORT MAP (  clk    => clk,
                nGrst  => nGrst,
                halt   => halt );

--        +-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+
--        |D|A|T|A|I|_|V|A|L|I|D| |g|e|n|e|r|a|t|o|r|
--        +-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+
  -- Permanently valid after nGrst
  PROCESS (clk, nGrst)
  BEGIN
    IF (nGrst = '0') THEN
      start_datai_valid1 <= '0';                          --07/06/16
    ELSIF (clk'EVENT AND clk = '1') THEN
      start_datai_valid1 <= '1';                          --07/06/16
    END IF;
  END PROCESS;

  start_datai_valid <= start_datai_valid1 WHEN CTRL_DATAI_VALID=0 ELSE start_datai_valid2;    --07/06/16

  xhdl7 : IF (VALIDITY_DUTY_CYCLE < 2) GENERATE
    datai_valid <= start_datai_valid1;
    datai_valid_freq <= '1';          --only to get rid of red waveform
  END GENERATE;

  -- Valid once per number of clocks
  xhdl8 : IF (VALIDITY_DUTY_CYCLE > 1) GENERATE
    clk_count : bhv_kitCountS
      GENERIC MAP (
        WIDTH    => bhv_ceil_log2(VALIDITY_DUTY_CYCLE),
        DCVALUE  => VALIDITY_DUTY_CYCLE-1  )
      PORT MAP (
        nGrst  => nGrst,
        rst    => datai_valid_freq,
        clk    => clk,
        clkEn  => '1',
        cntEn  => '1',
        q      => open,
        dc     => datai_valid_freq  );

    datai_valid <= datai_valid_freq AND start_datai_valid;
  END GENERATE;
  -- DATAI_VALID GENERATOR ends


  systola_gen_0 : bhvDelay_bit_reg
    GENERIC MAP (
      DELAY1  => NIBBLE_PIPE_STAGES + ROW_PIPE_STAGES + PAD_PIPE_STAGES)
    PORT MAP (
      nGrst  => nGrst,
      rst    => '0',
      clk    => clk,
      clkEn  => '1',
      inp    => datai_valid,
      outp   => systola );

  --  --------------------------  Input data generator  -----------------------
  -- Generate a 10-high spike right after filter reset to check latency
  rstnn <= NOT(rstn);
  spike_gen_0 : bhvEdge_ce
    GENERIC MAP ( REDGE  => 0 )
    PORT MAP (
      nGrst  => nGrst,
      rst    => '0',
      clk    => clk,
      clkEn  => systola,
      inp    => rstnn,
      outp   => spike );

  count_datai_valid_0 : bhv_kitCountS
    GENERIC MAP (
      WIDTH    => LOG2_DATAS,
      DCVALUE  => DATAS-1  )
    PORT MAP (
      nGrst  => nGrst,
      rst    => ctrl_leading_zeros,
      clk    => clk,
      clkEn  => '1',
      cntEn  => datai_valid,
      q      => inp_count,
      dc     => inp_data_over );

  inpTestVect_0 : inpTestVect
    PORT MAP (  inp_count  => inp_count,
                outp       => inpVector );

  test_data_w <= std_logic_vector(to_signed(-10, DATA_WIDTH)) WHEN spike='1' ELSE
                 inpVector WHEN (ctrl_leading_zeros = '0') ELSE (others=>'0');

  -- Increment coefficient sets
  count_coef_set_0 : bhv_kitCountS
    GENERIC MAP ( WIDTH    => 4,
                  DCVALUE  => 15 )
    PORT MAP (
      nGrst  => nGrst,
      rst    => '0',
      clk    => clk,
      clkEn  => '1',
      cntEn  => increment_coef_set,
      q      => coef_set_count,
      dc     => coef_set_over  );

  -- ---------  Reloadable coef generator  -----------
  -- Set coefi_valid the same as datai_valid
  coefi_valid <= datai_valid_freq AND shift_in_coefs;
  -- Coefficient count
  count_reload_coef_0 : bhv_kitCountS

    GENERIC MAP (
      WIDTH    => 11,
      DCVALUE  => PHY_TAPS-1  )
    PORT MAP (
      nGrst  => nGrst,
      rst    => reset_coef_count,
      clk    => clk,
      clkEn  => '1',
      cntEn  => coefi_valid,
      q      => reload_coef_count,
      dc     => reload_coef_over );

  reload_gen_0 : bhv_reload_coef_gen
    GENERIC MAP ( PHY_TAPS    => PHY_TAPS,
                  COEF_WIDTH  => COEF_WIDTH,
                  INIT        => INIT(0) )
    PORT MAP (
      coef_count  => reload_coef_count,
      coef_outp   => coefii );

--           ___  _____  __    ____  ____  _  _    ____  ____  ____
--          / __)(  _  )(  )  (  _ \( ___)( \( )  ( ___)(_  _)(  _ \
--         ( (_-. )(_)(  )(__  )(_) ))__)  )  (    )__)  _)(_  )   /
--          \___/(_____)(____)(____/(____)(_)\_)  (__)  (____)(_)\_)

  bhv_gold_fir_0 : bhv_gold_fir
    GENERIC MAP (
      TAPS        => TAPS,
      PHY_TAPS    => PHY_TAPS,
      COEF_SYMM   => COEF_SYMM,
      COEF_TYPE   => COEF_TYPE,
      COEF_UNSIGN => COEF_UNSIGN,
      DATA_WIDTH  => DATA_WIDTH,
      DATA_UNSIGN => DATA_UNSIGN,
      COEF_WIDTH  => COEF_WIDTH,
      COEF_SETS   => COEF_SETS,
      INIT        => INIT(0)  )
    PORT MAP (
      nGrst        => nGrst,
      rstn         => rstn,
      clk          => clk,
      set_count    => coef_set_count,
      datai_valid  => datai_valid,
      datai        => test_data_w,
      firo         => gold_firo );

  -- Store the golden samples in a FIFO
  PROCESS (clk)
  BEGIN
    IF (clk'EVENT AND clk = '1') THEN
      IF (rstn = '0') THEN
        wr <= INIT_WR;
        rd <= 0;
      ELSE
        IF (datai_valid = '1') THEN
          fifo(wr) <= gold_firo;
          wr <= wr + 1;
        END IF;
        IF (firo_valid = '1') THEN
          rd <= rd + 1;
        END IF;
      END IF;
    END IF;
  END PROCESS;

  gold_fifo_out <= fifo(rd);


--    ___  _   _  ____  ___  _  _    ____  ____  ___  __  __  __   ____  ___
--   / __)( )_( )( ___)/ __)( )/ )  (  _ \( ___)/ __)(  )(  )(  ) (_  _)/ __)
--  ( (__  ) _ (  )__)( (__  )  (    )   / )__) \__ \ )(__)(  )(__  )(  \__ \
--   \___)(_) (_)(____)\___)(_)\_)  (_)\_)(____)(___/(______)(____)(__) (___/

  firo_xbit <= reductionXor_bhv(firo);

  -- print("Running Coefficient Set %d", coef_set_count);
  PROCESS (nGrst, clk)
    VARIABLE var_line : line;
  BEGIN
    IF (nGrst = '0') THEN
      error_count <= 0;
      firo_count  <= 0;

    ELSIF (clk'EVENT AND clk = '1') THEN
      IF (firo_valid = '1') THEN
        IF (firo_xbit = 'X') THEN       -- detect x state
          write(var_line, string'("ERROR: Filter output is undefined (x) at time "));
          write(var_line, NOW);
          writeline (output, var_line);
          error_count <= error_count + 1;
        ELSE
          IF (firo /= gold_fifo_out ) THEN
            -- $display("ERROR: expected filter output = %d, Actual = %d",
            --                                      gold_fifo_out), firo);
            write(var_line, string'("ERROR: expected filter output = "));
            -- firo and firo_arr_fifo() can be larger than INTEGER. Leaving as they are
            write(var_line, gold_fifo_out );
            write(var_line, string'(", Actual = "));
            write(var_line, firo);
            writeline (output, var_line);

            error_count <= error_count + 1;
          ELSE
            -- $display("time:%t Match: Filter output=%d, Golden model=%d",
            --                        NOW, $signed(firo), firo_arr_fifo(rd));
            write(var_line, string'("time: "));
            write(var_line, NOW );
            write(var_line, string'(" Match: Filter and golden model output = "));
            write(var_line, firo);
            writeline (output, var_line);
          END IF;
          firo_count <= firo_count + 1;
        END IF;
      END IF;
    END IF;
  END PROCESS;
end generate;

tb_intrp: if (CFG_ARCH=2) generate
 rclk_count_0 : decm_bhvCountS
    GENERIC MAP ( WIDTH     => 5,
                  DCVALUE   => RCLK_FACTOR-1,
                  BUILD_DC  => 1    )
    PORT MAP (
      nGrst  => nGrst,
      rst    => rclk,
      clk    => clk,
      clkEn  => '1',
      cntEn  => '1',
      Q      => open ,
      dc     => rclk  );
  
  uut_1 : fir_hilbert_fir_hilbert_0_COREFIR_PF
    GENERIC MAP (
      CFG_ARCH            => 2,
      TAPS                => REQ_TAPS,
      COEF_TYPE           => COEF_TYPE,
      COEF_SETS           => COEF_SETS,
      COEF_SYMM           => COEF_SYMM,
      COEF_UNSIGN         => COEF_UNSIGN,
      COEF_WIDTH          => COEF_WIDTH,
      DATA_UNSIGN         => DATA_UNSIGN,
      DATA_WIDTH          => DATA_WIDTH,
      INTER_STYLE         => INTER_STYLE,
      URAM_MAXDEPTH       => URAM_MAXDEPTH,
      -- Reserved for other filter types and possible modifications
      ROUND               => 0,
      OUTP_WIDTH          => 48,
      COEF_RAM            => COEF_RAM,
      DATA_RAM            => DATA_RAM,
      SAMPLEID            => 0,
      ID_WIDTH            => 5,
      L                   => INTRP_FACTOR,
      M                   => 1,
	  FF				  => FOLD_FACTOR,
	  DIE_SIZE            => DIE_SIZE,
      FPGA_FAMILY         => FPGA_FAMILY,
      PERFORMANCE         => 0  )
    PORT MAP (
      NGRST          => nGrst,
      RSTN           => rstn,
      CLK            => clk,
      DATAI_VALID    => data_valid,
      DATAI          => datai,
      FIRO           => firo,
      COEFI          => coefi,
      COEF_SEL       => coef_sel,
      COEF_ON        => swap_page,
      COEFI_VALID    => coefi_valid,
      FIRO_VALID     => firo_valid,
      COEF_REF       => coef_ref,
      COEF_REF_DONE  => refresh_done,
      READY          => ready,
      RCLK           => rclk,
      COEF_ON_SLOT   => open,
		-- AXI4S DATA channels
	  AXI4_S_DATAI_TVALID	=>   '0',	
	  AXI4_S_DATAI_TREADY   =>   open,   
	  AXI4_S_TDATAI  		=>   (others => '0'),  		
							    
	  AXI4_M_DATAO_TVALID   =>   open,   
	  AXI4_M_DATAO_TREADY	=>   '0',	
	  AXI4_M_TDATAO 		=>   open,		
			   -- AXI4S COEF channels
	  AXI4_S_COEFI_TVALID	=>  '0',	
	  AXI4_S_COEFI_TREADY   =>  open,   
	  AXI4_S_COEFI  		=>  (others => '0'),  		
	  -- AXI4S Configuration channels
	  AXI4_S_CONFIGI_TVALID  =>  '0', 
	  AXI4_S_CONFIGI_TREADY  =>  open, 
	  AXI4_S_CONFIGI		 =>  (others => '0'),		
	  
	  AXI4_M_CONFIGO_TVALID  =>   open, 
	  AXI4_M_CONFIGO_TREADY  =>   '0', 
	  AXI4_M_CONFIGO 		 =>   open		);
 
  
  clock_0 : decm_bhvClock
    GENERIC MAP (
      CLKPERIOD   => 10 ns,
      NGRSTLASTS  => 24 ns   )
    PORT MAP (
      halt   => halt,
      clk    => clk,
      nGrst  => nGrst,
      rst    => open,
      rstn   => rstn    );
  
  -- OUTPUT CHECK
  firo_xbit <= reductionOr_bhv (firo);
  
  PROCESS (nGrst, clk)
    VARIABLE rd       : INTEGER := 0;
    VARIABLE var_line : line;
  BEGIN
    IF (nGrst = '0') THEN
      rd := REQ_TAPS;
      error_count <= 0;
      firo_count  <= 0;
    ELSIF (clk'EVENT AND clk = '1') THEN
      IF (swap_page = '1') THEN
        rd := REQ_TAPS;
      ELSE
        IF (refresh_done = '1') THEN
          print("");
          IF ((COEF_TYPE = 0) AND (COEF_SETS > 1)) THEN
            -- $display("Running Coefficient Set %d", coef_sel + 1);
            write(var_line, string'("Running Coefficient Set "));
            write(var_line, coef_sel_int+1);
            writeline (output, var_line);
          END IF;
          IF (COEF_TYPE = 1) THEN
            print("Running Reloadable Coefficient Test");
          END IF;
        END IF;

        IF ((firo_valid = '1') AND (start_samples = '1')) THEN

          IF (firo_xbit = 'X') THEN		-- detect x state
            write(var_line, string'("ERROR: Filter output is undefined (x) at time "));
            write(var_line, NOW);
            writeline (output, var_line);
            error_count <= error_count + 1;
          ELSE
            IF (firo /= firo_arr_fifo(rd) ) THEN
              -- $display("ERROR: expected filter output = %d, Actual = %d", 
              --                                      firo_arr_fifo(rd)), firo);
              write(var_line, string'("ERROR: expected filter output = "));
              write(var_line, firo_arr_fifo(rd) );
			  write(var_line, string'("rd = "));
              write(var_line, rd );
              write(var_line, string'(", Actual = "));
              write(var_line, firo);
              writeline (output, var_line);

              error_count <= error_count + 1;
            ELSE
              -- $display("time:%t Match: Filter output=%d, Golden model=%d", 
              --                        NOW, $signed(firo), firo_arr_fifo(rd));
              write(var_line, string'("time: "));
              write(var_line, NOW );
              write(var_line, string'(" Match: Filter and golden model output = "));
              write(var_line, firo);
              writeline (output, var_line);
            END IF;
            firo_count <= firo_count + 1;
          END IF;
          rd := rd + 1;          
        END IF;
      END IF;
    END IF;
  END PROCESS;
--------------------------------------------------------------------------------  

  -- -------------------------------------------- COEFI GENERATOR -------------
  -- If constant coef, copy external fir_fold_top_COREFIR_0_coef.vhd in
  -- the 3-dim internal coef_arr[][]
  fill_const_coef: IF (COEF_TYPE=0) GENERATE
    fill_flat_array: FOR coef_sel_loop IN 0 TO COEF_SETS-1 GENERATE
      -- Read the flattened constant coefficient
      const_arr_0 : fir_hilbert_fir_hilbert_0_const_arr
        GENERIC MAP ( TAPS        => REQ_TAPS,
                      COEF_WIDTH  => COEF_WIDTH,
                      TB_R_ACT    => 1,
                      COEF_SETS   => COEF_SETS  )
        PORT MAP (  set       => std_logic_vector(to_unsigned(coef_sel_loop, 4)),
                    coef_flat => coef_flat_arr(coef_sel_loop) );
    END GENERATE;

    --Initialize internal coef_arr with const coef copied from fir_fold_top_COREFIR_0_coef.vhd
    flat2array: PROCESS
    BEGIN
        -- Convert flattened array back to normal
        FOR coef_sel_loop IN 0 TO COEF_SETS-1 LOOP
          WAIT FOR 1 ns;

          FOR coefi_loop IN 0 TO REQ_TAPS-1 LOOP
            coef_arr(coef_sel_loop, REQ_TAPS-1-coefi_loop) <=
              coef_flat_arr(coef_sel_loop)(COEF_WIDTH*(coefi_loop+1)-1 downto COEF_WIDTH*coefi_loop);
          END LOOP;

        END LOOP;
      WAIT;
    END PROCESS;
  END GENERATE;                     

  -- Generate reloadable coefs  
  fill_reload_coef: IF (COEF_TYPE/=0) GENERATE

  PROCESS (nGrst, clk)
    variable seed1, seed2: positive := 71;
      -- Random real-number value in range 0 to 1.0
      variable rand: real;
      -- Random integer value
      variable int_rand: integer;
      -- Random stimulus
      variable vect_rand: std_logic_vector(COEF_WIDTH-1 downto 0);
    BEGIN
      IF (nGrst = '0') THEN
        coefi <= (others=>'0');
        coefi_valid <= '0';
        coefi_count <= REQ_TAPS;
        stop_coefi <= '0';
  
      ELSIF (clk'EVENT AND clk = '1') THEN
        -- If reloadable coef, on start_coefi fill in coefficient_set_0 with
        -- 'random' values and output these one per clock to the coefi reg.
        -- start_coefi goes active in reload mode only
        IF (start_coefi = '1' AND coefi_count > 0) THEN
          UNIFORM(seed1, seed2, rand);
          IF(COEF_UNSIGN=0) THEN                                  --10/29/2012
            int_rand  := INTEGER(TRUNC(rand*COEF_FLT_RANGE));     --10/29/2012
          ELSE                                                    --10/29/2012
            int_rand  := INTEGER(TRUNC(rand*COEF_FLT_RANGE/2.0)); --10/29/2012
          END IF;                                                 --10/29/2012

          vect_rand := STD_LOGIC_VECTOR( to_signed (int_rand, COEF_WIDTH) );
         -- coefi_count_rev <= (TAPS-coefi_count-1);
          coef_arr_act(0, coefi_count-1) <= vect_rand;
          coefi       <= vect_rand;
          coefi_count <= coefi_count - 1;
          
          coefi_valid <= '1';
          stop_coefi  <= '0';
        ELSIF (coefi_count-1 = 0) THEN
          coefi <= (others=>'0');
          coefi_count <= coefi_count;
          coefi_valid <= '0';
          stop_coefi <= '1';
        END IF;
      END IF;
    END PROCESS;
	
	PROCESS
    BEGIN
      Z <= 0;
      WAIT UNTIL refresh_done = '1';
      WAIT UNTIL refresh_done = '0';
	  WAIT FOR 10 ns;
	-- scrambling of coefficients for reloadable coefficient inputs
	 FOR U IN 1 TO ( REQ_TAPS/(INTRP_FACTOR*FOLD_FACTOR)) LOOP
      WAIT FOR 1 ns;
        FOR V IN 0 TO INTRP_FACTOR-1 LOOP
        WAIT FOR 1 ns;
            FOR W IN 0 TO FOLD_FACTOR-1 LOOP
            WAIT FOR 1 ns;
                coef_arr(0,Z) <= coef_arr_act(0,(((INTRP_FACTOR * FOLD_FACTOR * U)-(INTRP_FACTOR - 1))-(INTRP_FACTOR * W)) + V-1);  
                Z   <= Z+1;
            END LOOP;
         END LOOP;   
      END LOOP;
    END PROCESS;
	
  END GENERATE;

  --      _   _   _   _     _   _   _   _   _     _   _   _
  --     / \ / \ / \ / \   / \ / \ / \ / \ / \   / \ / \ / \
  --    ( D | A | T | A ) ( V | A | L | I | D ) ( G | E | N )
  --     \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/ \_/   \_/ \_/ \_/
  
  -- generate data_valid
  PROCESS (nGrst, clk)
  BEGIN
    IF nGrst='0' THEN
      data_valid <= '0';
      data_valid_timer <= 0;
    ELSIF (clk'EVENT AND clk = '1') THEN
      IF (start_samples = '1') THEN
        IF (rclk = '1') THEN
          IF (data_valid_timer = DATA_VALID_INTERVAL) THEN
            data_valid_timer <= 0;
            data_valid <= '1';
          ELSE
            data_valid_timer <= data_valid_timer+1;
            data_valid <= '0';
          END IF;
        END IF;
      
      ELSE 
        data_valid <= '0';
      END IF;
    END IF;
  END PROCESS;
  
  -- Create local copies of the datai & data_valid similar to the one used by
  -- UUT (those delayed by wrap pipes) to replicate UUT timing

  rsti      <= NOT(RSTN);

 
  -- generate data_valid
  PROCESS (nGrst, clk)
  BEGIN
    IF nGrst='0' THEN
      data_valid_tb <= '0';
      data_valid_timer_tb <= 0;
    ELSIF (clk'EVENT AND clk = '1') THEN
      IF (start_samples_tb = '1') THEN
        IF (rclk = '1') THEN
          IF (data_valid_timer_tb = DATA_VALID_INTERVAL_TB) THEN
            data_valid_timer_tb <= 0;
            data_valid_tb <= '1';
          ELSE
            data_valid_timer_tb <= data_valid_timer_tb+1;
            data_valid_tb <= '0';
          END IF;
        END IF;
      
      ELSE 
        data_valid_tb <= '0';
      END IF;
    END IF;
  END PROCESS;


  good_datai_valid_slim_tb <= data_valid_tb AND ready_tb;

  datai_valid_local_tb : decm_bhvDelay_bit_reg
    GENERIC MAP ( DELAY1  => WRAP_LAYERS+1)
    PORT MAP (
      nGrst  => nGrst,
      rst    => '0',
      clk    => clk,
      clkEn  => '1',
      inp    => good_datai_valid_slim_tb,
      outp   => datai_valid_slim_tb    );



  one_hot_intrp_cycle_tb : decm_kitDelay_bit_reg
    GENERIC MAP ( DELAY1  => (INTRP_FACTOR)-1 )
    PORT MAP (
      nGrst  => NGRST,
      rst    => rsti,
      clk    => CLK,
      clkEn  => RCLK,
      inp    => good_datai_valid_slim_tb,
      outp   => intrp_cycle_end_w   );
  
  -- create READY and intrp_cycle
  PROCESS (clk, nGrst)
  BEGIN
    IF (nGrst = '0') THEN
 	    ready_tb <= '1';
 	    intrp_cycle <= '0';
    ELSIF (clk'EVENT AND clk = '1') THEN
      IF (RSTN = '0') THEN
   	    ready_tb <= '1';
 	      intrp_cycle <= '0';
      ELSIF (RCLK = '1') THEN
        IF(good_datai_valid_slim_tb = '1') THEN
     	    ready_tb <= '0';
 	        intrp_cycle <= '1';
        ELSIF(intrp_cycle_end_w = '1') THEN
     	    ready_tb <= '1';
 	        intrp_cycle <= '0';
        END IF;
      END IF;
    END IF;
  END PROCESS;

  -- Data generator golden data generation
  PROCESS (nGrst, clk)
    -- Variables necessary to run UNIFORM 
    variable seed1, seed2: positive := 23;
    -- Random real-number value in range 0 to 1.0
    variable rand: real;
    -- Random integer value
    variable int_rand: integer;
    -- Random stimulus
    variable vect_rand: std_logic_vector(DATA_WIDTH-1 downto 0);
  BEGIN
    IF ((nGrst = '0') OR (swap_page = '1')) THEN
      IF (DATA_PATTERN = 0) THEN
        datai_tb <= std_logic_vector(to_unsigned(1, DATA_WIDTH));
      END IF;
      IF (DATA_PATTERN = 1) THEN
        datai_tb <= std_logic_vector(to_unsigned(2**(DATA_WIDTH-1)-1, DATA_WIDTH));
      END IF;
      IF (DATA_PATTERN = 2) THEN
        datai_tb <= std_logic_vector(to_unsigned(2**(DATA_WIDTH-1)-1, DATA_WIDTH));
      END IF;
      IF (DATA_PATTERN = 3) THEN
        datai_tb <= (others=>'0');
      END IF;

      sample_count_tb <= 0;
      stop_samples_tb <= '0';

    ELSIF (clk'EVENT AND clk = '1') THEN
      IF (start_samples_tb = '1') THEN
        -- generate samples going to the UUT
        IF (good_datai_valid_slim_tb = '1') AND (rclk = '1') THEN
          IF (DATA_PATTERN = 0) THEN		-- positive ascending from 1 up
            IF ( to_integer(unsigned(datai_tb)) < 2**(DATA_WIDTH-1)-1 ) THEN
              datai_tb <= std_logic_vector( unsigned(datai_tb) + 1);
            ELSE
              datai_tb <= std_logic_vector(to_unsigned(1, DATA_WIDTH));
            END IF;
          END IF;

          IF (DATA_PATTERN = 1) THEN		-- descending from max positive
            IF (to_integer(unsigned(datai_tb)) > 0) THEN
              datai_tb <= std_logic_vector( unsigned(datai_tb) - 1);
            ELSE
              datai_tb <= (others=>'0');
            END IF;
          END IF;

          IF (DATA_PATTERN = 2) THEN		-- const max
            datai_tb <= std_logic_vector(to_unsigned(2**(DATA_WIDTH-1)-1, DATA_WIDTH));
          END IF;

          IF (DATA_PATTERN = 3) THEN		-- random
            UNIFORM(seed1, seed2, rand);
            IF(DATA_UNSIGN=0) THEN                               
              int_rand  := INTEGER(TRUNC(rand*DATA_FLT_RANGE));   
            ELSE                                                   
              int_rand  := INTEGER(TRUNC(rand*DATA_FLT_RANGE/2.0)); 
            END IF;                                                 
            vect_rand := STD_LOGIC_VECTOR( to_signed (int_rand, DATA_WIDTH) );
          
            datai_tb <= vect_rand;
          END IF;
        END IF;

        IF (rclk='1') AND (datai_valid_slim_tb='1') THEN
          sample_count_tb <= sample_count_tb + 1;
          IF (sample_count_tb = TEST_LENGTH*REQ_TAPS) THEN
            stop_samples_tb <= '1';
          END IF;
        END IF;

      ELSE
        datai_tb <= datai_tb;
      END IF;
    END IF;
  END PROCESS;

good_datai_valid_slim <= data_valid AND ready;
  
  datai_valid_local_0 : decm_bhvDelay_bit_reg
    GENERIC MAP ( DELAY1  => WRAP_LAYERS+1)
    PORT MAP (
      nGrst  => nGrst,
      rst    => '0',
      clk    => clk,
      clkEn  => '1',
      inp    => good_datai_valid_slim,
      outp   => datai_valid_slim    );
  
  datai_local_0 : decm_bhvDelay_reg
    GENERIC MAP ( DELAY1  => WRAP_LAYERS+1,
                  WIDTH  => DATA_WIDTH    )
    PORT MAP (
      nGrst  => nGrst,
      rst    => '0',
      clk    => clk,
      clkEn  => '1',
      inp    => datai,
      outp   => datai_local   );
  
  -- Data generator
  PROCESS (nGrst, clk)
    -- Variables necessary to run UNIFORM 
    variable seed1, seed2: positive := 23;
    -- Random real-number value in range 0 to 1.0
    variable rand: real;
    -- Random integer value
    variable int_rand: integer;
    -- Random stimulus
    variable vect_rand: std_logic_vector(DATA_WIDTH-1 downto 0);
  BEGIN
    IF ((nGrst = '0') OR (swap_page = '1')) THEN
      IF (DATA_PATTERN = 0) THEN
        datai <= std_logic_vector(to_unsigned(1, DATA_WIDTH));
      END IF;
      IF (DATA_PATTERN = 1) THEN
        datai <= std_logic_vector(to_unsigned(2**(DATA_WIDTH-1)-1, DATA_WIDTH));
      END IF;
      IF (DATA_PATTERN = 2) THEN
        datai <= std_logic_vector(to_unsigned(2**(DATA_WIDTH-1)-1, DATA_WIDTH));
      END IF;
      IF (DATA_PATTERN = 3) THEN
        datai <= (others=>'0');
      END IF;

      sample_count <= 0;
      stop_samples <= '0';

    ELSIF (clk'EVENT AND clk = '1') THEN
      IF (start_samples = '1') THEN
        -- generate samples going to the UUT
        IF (good_datai_valid_slim = '1') AND (rclk = '1') THEN
          IF (DATA_PATTERN = 0) THEN		-- positive ascending from 1 up
            IF ( to_integer(unsigned(datai)) < 2**(DATA_WIDTH-1)-1 ) THEN
              datai <= std_logic_vector( unsigned(datai) + 1);
            ELSE
              datai <= std_logic_vector(to_unsigned(1, DATA_WIDTH));
            END IF;
          END IF;

          IF (DATA_PATTERN = 1) THEN		-- descending from max positive
            IF (to_integer(unsigned(datai)) > 0) THEN
              datai <= std_logic_vector( unsigned(datai) - 1);
            ELSE
              datai <= (others=>'0');
            END IF;
          END IF;

          IF (DATA_PATTERN = 2) THEN		-- const max
            datai <= std_logic_vector(to_unsigned(2**(DATA_WIDTH-1)-1, DATA_WIDTH));
          END IF;

          IF (DATA_PATTERN = 3) THEN		-- random
            UNIFORM(seed1, seed2, rand);
            IF(DATA_UNSIGN=0) THEN                                
              int_rand  := INTEGER(TRUNC(rand*DATA_FLT_RANGE));     
            ELSE                                                    
              int_rand  := INTEGER(TRUNC(rand*DATA_FLT_RANGE/2.0)); 
            END IF;                                                
            vect_rand := STD_LOGIC_VECTOR( to_signed (int_rand, DATA_WIDTH) );
          
            datai <= vect_rand;
          END IF;
        END IF;

        IF (rclk='1') AND (datai_valid_slim='1') THEN
          sample_count <= sample_count + 1;
          IF (sample_count = TEST_LENGTH*REQ_TAPS) THEN
            stop_samples <= '1';
          END IF;
        END IF;

      ELSE
        datai <= datai;
      END IF;
    END IF;
  END PROCESS;
  
  --                        +-+-+-+-+-+-+ +-+-+-+-+-+
  --                        |G|O|L|D|E|N| |M|O|D|E|L|
  --                        +-+-+-+-+-+-+ +-+-+-+-+-+

  coef_sel_int  <=  to_integer(unsigned(coef_sel));

  -- Shift in datai samples and stuff L-1 zeros 
  PROCESS (nGrst, clk)
  BEGIN
    IF (nGrst = '0') OR (swap_page = '1') THEN
      FOR shift_loop IN REQ_TAPS-1 DOWNTO 0 LOOP
        data_arr(shift_loop) <= (others=>'0');
      END LOOP;
    ELSIF (clk'EVENT AND clk = '1') THEN
      IF (start_samples_tb = '1') AND (rclk = '1') THEN
        -- Shift in a sample in a classical filter DELAY1 line (data_arr)
        IF (good_datai_valid_slim_tb = '1') THEN
          FOR shift_loop IN REQ_TAPS-1 DOWNTO 1 LOOP
            data_arr(shift_loop) <= data_arr(shift_loop-1);
          END LOOP;
          data_arr(0) <= datai_tb;
        
        -- fill in INTRP_FACTOR-1 zero's 
        ELSIF (ready_tb = '0') THEN  -- for the rest L-1 rclk periods
          FOR shift_loop IN REQ_TAPS-1 DOWNTO 1 LOOP
            data_arr(shift_loop) <= data_arr(shift_loop-1);
          END LOOP;
          data_arr(0) <= (others => '0');
        END IF;
      END IF;
    END IF;
  END PROCESS;
  
  
  PROCESS (nGrst, clk)
    variable firo_var : SIGNED (CD_WIDTH-1 DOWNTO 0):=to_signed(0,CD_WIDTH);
    variable wr       : INTEGER := 0;

    VARIABLE var_line : line;     --dbg
    variable dbg_coef, dbg_data, dbg_firo_arr, dbg_firo_int : INTEGER;

  BEGIN
    IF ((nGrst = '0') OR (swap_page = '1')) THEN
      wr := 0;

    ELSIF (clk'EVENT AND clk = '1') THEN  
      IF ((start_samples_tb = '1') AND (rclk = '1')) THEN
        IF (good_datai_valid_slim_tb = '1') OR (ready_tb = '0') THEN	
          firo_var := to_signed(0, CD_WIDTH);
          FOR convolve_loop IN 0 TO REQ_TAPS-1 LOOP
            firo_var := firo_var +
                      signed(coef_arr(coef_sel_int, convolve_loop)) *
                      signed(data_arr(convolve_loop)) ;
          END LOOP;
         
          firo_arr_fifo(wr) <= std_logic_vector(firo_var);
--sar55532          wr := wr + 1;
          IF (wr > GOLD_ARR_LENGTH-1)  THEN wr := 0;
          ELSE                              wr := wr+1;
          END IF;
--sar55532 ends
        END IF;   -- if(datai_valid)
      END IF;     -- start_samples
    END IF;
  END PROCESS;


--------------------------------    INITIAL     -------------------------------

--initialization for TB
PROCESS       -- initial
  BEGIN
    start_samples <= '0';
    start_samples_tb <= '0';
    swap_page <= '0';
    coef_sel <= "0000";
    coef_ref <= '0';
    start_coefi <= '0';
    WAIT UNTIL nGrst = '1';		-- wait for nGrst to deassert
  
    IF (COEF_TYPE = 0 AND COEF_SETS = 1) THEN		-- single coef set
      -- wait for the refresh_done to pulse
      WAIT UNTIL refresh_done = '1';
      WAIT UNTIL refresh_done = '0';

      -- wait three clk cycles
      FOR I IN 1 TO 3 LOOP
        WAIT UNTIL clk='0';
      END LOOP;

      -- Run the data test sequence            
      start_samples <= '1';
      start_samples_tb <= '1';
      IF(DATA_VALID_INTERVAL_TB< DATA_VALID_INTERVAL) THEN
          WAIT UNTIL stop_samples_tb = '1';
          start_samples_tb <= '0';
          WAIT UNTIL stop_samples = '1';
          start_samples <= '0';
     ELSIF(DATA_VALID_INTERVAL_TB >= DATA_VALID_INTERVAL) THEN
           WAIT UNTIL stop_samples_tb = '1';
           start_samples_tb <= '0';
           start_samples    <= '0';          
     END IF;

      FOR I IN 1 TO TEST_LENGTH*REQ_TAPS LOOP
        WAIT UNTIL clk='1';
      END LOOP;
  
    ELSIF (COEF_TYPE = 0 AND COEF_SETS > 1) THEN		-- multiple coef sets
      -- wait three clk cycles
      FOR I IN 1 TO 3 LOOP
        WAIT UNTIL clk='0';
      END LOOP;
      coef_sel    <= "0000";

      FOR I IN 1 TO COEF_SETS LOOP    -- Multiple coef sets
        -- pulse coef_ref
          WAIT UNTIL clk'EVENT AND clk = '0';
        coef_ref <= '1';
          WAIT UNTIL clk'EVENT AND clk = '0';
        coef_ref <= '0';

        -- Pause for two clks
        FOR I IN 1 TO 2 LOOP
          WAIT UNTIL clk'EVENT AND clk = '0';
        END LOOP;

        -- wait for the refresh_done to pulse
        WAIT UNTIL refresh_done = '1';
        WAIT UNTIL refresh_done = '0';

        -- After refreshing, pulse swap_page to go to the just refreshed page
        FOR I IN 1 TO 1 LOOP
          WAIT UNTIL clk'EVENT AND clk = '0';
        END LOOP;
        swap_page <= '1';
        FOR I IN 1 TO 1 LOOP
          WAIT UNTIL clk'EVENT AND clk = '0';
        END LOOP;
        swap_page <= '0';

        -- wait three clk cycles
        FOR I IN 1 TO 3 LOOP
          WAIT UNTIL clk='0';
        END LOOP;

        -- Run the data test sequence
      start_samples <= '1';
      start_samples_tb <= '1';
      IF(DATA_VALID_INTERVAL_TB< DATA_VALID_INTERVAL) THEN
          WAIT UNTIL stop_samples_tb = '1';
          start_samples_tb <= '0';
          WAIT UNTIL stop_samples = '1';
          start_samples <= '0';
     ELSIF(DATA_VALID_INTERVAL_TB >= DATA_VALID_INTERVAL) THEN
           WAIT UNTIL stop_samples_tb = '1';
           start_samples_tb <= '0';
           start_samples    <= '0';          
     END IF;

        FOR I IN 1 TO TEST_LENGTH*REQ_TAPS LOOP
          WAIT UNTIL clk='1';
        END LOOP;

        coef_sel <= std_logic_vector(to_unsigned(coef_sel_int+1, 4) );

      END LOOP;   -- Multiple coef sets

    ELSIF (COEF_TYPE = 1) THEN
      -- wait three clk cycles
      FOR I IN 1 TO 3 LOOP
        WAIT UNTIL clk='0';
      END LOOP;

      -- pulse coef_ref
      WAIT UNTIL clk'EVENT AND clk = '0';
      coef_ref <= '1';
      WAIT UNTIL clk'EVENT AND clk = '0';
      coef_ref <= '0';

      -- Pause for two clks
      FOR I IN 1 TO 2 LOOP
        WAIT UNTIL clk'EVENT AND clk = '0';
      END LOOP;

      start_coefi <= '1';

      -- wait for the refresh_done to pulse
      WAIT UNTIL refresh_done = '1';
      WAIT UNTIL refresh_done = '0';
	  
      -- After refreshing, pulse swap_page to go to the just refreshed page
      FOR I IN 1 TO 1 LOOP
        WAIT UNTIL clk'EVENT AND clk = '0';
      END LOOP;
      swap_page <= '1';
      FOR I IN 1 TO 1 LOOP
        WAIT UNTIL clk'EVENT AND clk = '0';
      END LOOP;
      swap_page <= '0';

      -- wait three clk cycles
      FOR I IN 1 TO 3 LOOP
        WAIT UNTIL clk='0';
      END LOOP;

 -- Run the data test sequence
      start_samples <= '1';
      start_samples_tb <= '1';
      IF(DATA_VALID_INTERVAL_TB< DATA_VALID_INTERVAL) THEN
          WAIT UNTIL stop_samples_tb = '1';
          start_samples_tb <= '0';
          WAIT UNTIL stop_samples = '1';
          start_samples <= '0';
     ELSIF(DATA_VALID_INTERVAL_TB >= DATA_VALID_INTERVAL) THEN
           WAIT UNTIL stop_samples_tb = '1';
           start_samples_tb <= '0';
           start_samples    <= '0';          
     END IF;

      FOR I IN 1 TO TEST_LENGTH*REQ_TAPS LOOP
        WAIT UNTIL clk='1';
      END LOOP;
    END IF;

    halt <= '1';

    IF (error_count > 0) THEN
      print("TEST FAILED");
    ELSIF (firo_count = 0) THEN
      print("TEST FAILED: CoreFIR has not generated any valid samples");
    ELSE
      print("TEST PASSED");
    END IF;

    WAIT;
  END PROCESS;
  end generate;
  
  
END ARCHITECTURE bhv;
