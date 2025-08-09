-- ***************************************************************************/
--Microchip Corporation Proprietary and Confidential
--Copyright Microchip Corporation. All rights reserved.
--
--ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
--ACCORDANCE WITH THE Microchip LICENSE AGREEMENT AND MUST BE APPROVED
--IN ADVANCE IN WRITING.
--
--Description:  CoreFIR_PF RTL
--              RTL Package
--
--
-- *********************************************************************/


LIBRARY ieee;
  USE ieee.std_logic_1164.all;
USE work.corefir_rtl_pack.all;

ENTITY COREFIR_PF_C0_COREFIR_PF_C0_0_COREFIR_PF IS		            -- Enum Fold  PolyI PolyD
  GENERIC (
    CFG_ARCH            : INTEGER := 1;		    --  +
    TAPS                : INTEGER := 100;		  --  +
    COEF_TYPE           : INTEGER := 0;		    --  +
    COEF_SETS           : INTEGER := 1;		    --  +
    COEF_SYMM           : INTEGER := 0;		    --  +
    COEF_UNSIGN         : INTEGER := 0;		    --  +
    COEF_WIDTH          : INTEGER := 8;		    --  +
    DATA_UNSIGN         : INTEGER := 0;		    --  +
    DATA_WIDTH          : INTEGER := 8;		    --  +
    INTER_STYLE         : INTEGER := 0;		    --  +
    URAM_MAXDEPTH       : INTEGER := 1;

    -- Reserved for other filter types and possible modifications
    ROUND               : INTEGER := 0;		    --
    OUTP_WIDTH          : INTEGER := 16;		  --
    COEF_RAM            : INTEGER := 1;		    --
    DATA_RAM            : INTEGER := 0;		    --
    SAMPLEID            : INTEGER := 0;		    --
    ID_WIDTH            : INTEGER := 5;		    --
    L                   : INTEGER := 4;		    --
    M                   : INTEGER := 4;		    --
    FF                  : INTEGER := 4;		    -- 
	EXTRA_TAPS			: INTEGER := 0;
	NATIV_AXI4          : INTEGER := 0;		    -- 1=AXI4S, 0=Native
	DATA_WIDTH_REQ      : INTEGER := 24;        -- for AXI4S DATA byte boundaries
	COEF_WIDTH_REQ      : INTEGER := 24;        -- for AXI4S COEF byte boundaries
	DIE_SIZE            : INTEGER := 0;
    FPGA_FAMILY         : INTEGER :=12;
    PERFORMANCE         : INTEGER := 0  );	  --
  PORT (
    NGRST               : IN STD_LOGIC;
    RSTN                : IN STD_LOGIC;
    CLK                 : IN STD_LOGIC;
    DATAI               : IN STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
    DATAI_VALID         : IN STD_LOGIC;
    COEFI               : IN STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
    COEFI_VALID         : IN STD_LOGIC;
    --intMux(OUTP_WIDTH, 48, ROUND=0)
    FIRO                : OUT STD_LOGIC_VECTOR(intMux(48, 54, CFG_ARCH=5)-1 DOWNTO 0);
    FIRO_VALID          : OUT STD_LOGIC;
    COEF_ON             : IN STD_LOGIC;
    COEF_SEL            : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    COEF_REF            : IN STD_LOGIC;
    COEF_REF_DONE       : INOUT STD_LOGIC;
    READY         		: INOUT STD_LOGIC;
    RCLK                : IN STD_LOGIC;
    COEF_ON_SLOT        : OUT STD_LOGIC;
		   -- AXI4S DATA channels
	AXI4_S_DATAI_TVALID	  :  IN std_logic;
	AXI4_S_DATAI_TREADY   :  OUT std_logic;
	AXI4_S_TDATAI  		  :  IN std_logic_vector(DATA_WIDTH_REQ-1 downto 0);
	  
	AXI4_M_DATAO_TVALID   :  OUT std_logic;
	AXI4_M_DATAO_TREADY	  :  IN std_logic;  --expects always '1'
	AXI4_M_TDATAO 		  :  OUT std_logic_vector(intMux(48, 56, CFG_ARCH=5)-1 DOWNTO 0);
			   -- AXI4S COEF channels
	AXI4_S_COEFI_TVALID	  :  IN std_logic;
	AXI4_S_COEFI_TREADY   :  OUT std_logic;
	AXI4_S_COEFI  		  :  IN std_logic_vector(COEF_WIDTH_REQ-1 downto 0);
	  -- AXI4S Configuration channels
	AXI4_S_CONFIGI_TVALID  :  IN std_logic;
	AXI4_S_CONFIGI_TREADY  :  OUT std_logic;
	AXI4_S_CONFIGI		   :  IN std_logic_vector(7 downto 0);
	  
	AXI4_M_CONFIGO_TVALID  :  OUT std_logic;
	AXI4_M_CONFIGO_TREADY  :  IN std_logic; --expects always '1'
	AXI4_M_CONFIGO 		   :  OUT std_logic_vector(7 downto 0)	);
END ENTITY COREFIR_PF_C0_COREFIR_PF_C0_0_COREFIR_PF;

ARCHITECTURE rtl OF COREFIR_PF_C0_COREFIR_PF_C0_0_COREFIR_PF IS

  COMPONENT COREFIR_PF_C0_COREFIR_PF_C0_0_enum_fir_g5 IS
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
      URAM_MAXDEPTH       : INTEGER;
      RESERVED2           : INTEGER;
      NIBBLE_PIPE_STAGES  : INTEGER;
      ROW_PIPE_STAGES     : INTEGER;
      PAD_PIPE_STAGES     : INTEGER;
      NIBBLE_SYMM_STAGES  : INTEGER;
      ROW_SYMM_STAGES     : INTEGER;
      INTER_STYLE         : INTEGER;
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

  constant FULL_WIDTH 		: positive := intMux(48, 54, CFG_ARCH=5);
  --constant FULL_WIDTH_AXI4S : positive := intMux(48, 56, CFG_ARCH=5);
  -- Make sure the values are the same as on backend SW side 
  constant NIBBLE_PIPE_STAGES  : INTEGER := 3;
  constant ROW_PIPE_STAGES     : INTEGER := 2;
  constant PAD_PIPE_STAGES     : INTEGER := 2;
  constant NIBBLE_SYMM_STAGES  : INTEGER := 1;
  constant ROW_SYMM_STAGES     : INTEGER := 1;
  constant BASIC_INTER_LAYER   : INTEGER := 4;
  constant ADV_FBR_ENDDLY      : INTEGER := 2;
  constant REQ_TAPS		       : INTEGER := TAPS+EXTRA_TAPS; -- REQ_TAPS= Actual taps + extra taps = TAPS+EXTRA_TAPS

  SIGNAL firo_full_width  : STD_LOGIC_VECTOR(FULL_WIDTH-1 DOWNTO 0);
  SIGNAL firo_validi      : STD_LOGIC;
  SIGNAL rst              : STD_LOGIC;
  SIGNAL READYI           : STD_LOGIC;
  
  
  SIGNAL DATAI_ACT        :  STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
  SIGNAL COEFI_ACT        :  STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
  SIGNAL COEF_SEL_ACT     :  STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL DATAI_VALID_ACT  : STD_LOGIC;
  SIGNAL COEFI_VALID_ACT,COEF_REF_ACT : STD_LOGIC;
  SIGNAL COEF_ON_ACT      : STD_LOGIC;
 
  
  
  COMPONENT COREFIR_PF_C0_COREFIR_PF_C0_0_COREINTRPFIR IS
  GENERIC (
    TAPS          : INTEGER :=100;
    FF            : INTEGER :=2;
    COEF_TYPE     : INTEGER :=0;
    COEF_SETS     : INTEGER :=1;
    COEF_WIDTH    : INTEGER :=12;
    COEF_UNSIGN   : INTEGER :=0;
    DATA_WIDTH    : INTEGER :=12;
    DATA_UNSIGN   : INTEGER :=0;
    INTRP_FACTOR  : INTEGER :=4;
    COEF_RAM      : INTEGER :=0;
	DATA_RAM      : INTEGER :=0;
    DIE_SIZE      : INTEGER :=0;
    FPGA_FAMILY   : INTEGER :=12;
    URAM_MAXDEPTH : INTEGER :=64    );
  PORT (
    NGRST         : IN STD_LOGIC;
    RSTN          : IN STD_LOGIC;
    CLK           : IN STD_LOGIC;
    DATAI         : IN STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
    DATAI_VALID   : IN STD_LOGIC;
    COEFI         : IN STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
    COEFI_VALID   : IN STD_LOGIC;
    FIRO          : OUT STD_LOGIC_VECTOR(47 downto 0);
    FIRO_VALID    : OUT STD_LOGIC;
    COEF_REF      : IN STD_LOGIC;
    COEF_REF_DONE : OUT STD_LOGIC;
    COEF_ON       : IN STD_LOGIC;
    COEF_SEL      : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    READY         : OUT STD_LOGIC;
    RCLK          : IN STD_LOGIC  );
END COMPONENT;

COMPONENT COREFIR_PF_C0_COREFIR_PF_C0_0_COREDECMFIR IS
  GENERIC (
    TAPS          : INTEGER :=100;
    FF            : INTEGER :=2;
    COEF_TYPE     : INTEGER :=0;
    COEF_SETS     : INTEGER :=1;
    COEF_WIDTH    : INTEGER :=12;
    COEF_UNSIGN   : INTEGER :=0;
    DATA_WIDTH    : INTEGER :=12;
    DATA_UNSIGN   : INTEGER :=0;
    DECM_FACTOR   : INTEGER :=4;
    COEF_RAM      : INTEGER :=0;
	DATA_RAM      : INTEGER :=0;
    DIE_SIZE      : INTEGER :=0;
    FPGA_FAMILY   : INTEGER :=12;
    URAM_MAXDEPTH : INTEGER :=64    );
  PORT (
    NGRST         : IN STD_LOGIC;
    RSTN          : IN STD_LOGIC;
    CLK           : IN STD_LOGIC;
    DATAI         : IN STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
    DATAI_VALID   : IN STD_LOGIC;
    COEFI         : IN STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
    COEFI_VALID   : IN STD_LOGIC;
    FIRO          : OUT STD_LOGIC_VECTOR(47 downto 0);
    FIRO_VALID    : OUT STD_LOGIC;
    COEF_REF      : IN STD_LOGIC;
    COEF_REF_DONE : OUT STD_LOGIC;
    COEF_ON       : IN STD_LOGIC;
    COEF_SEL      : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    READY         : OUT STD_LOGIC;
    RCLK          : IN STD_LOGIC  );
END COMPONENT;

COMPONENT COREFIR_PF_C0_COREFIR_PF_C0_0_COREFOLDFIR IS
  GENERIC (
    TAPS          : INTEGER :=100;
    FF            : INTEGER :=2;
    COEF_TYPE     : INTEGER :=0;
    COEF_SETS     : INTEGER :=1;
    COEF_WIDTH    : INTEGER :=12;
    COEF_UNSIGN   : INTEGER :=0;
    DATA_WIDTH    : INTEGER :=12;
    DATA_UNSIGN   : INTEGER :=0;
    COEF_RAM      : INTEGER :=0;
	DATA_RAM      : INTEGER :=0;
    DIE_SIZE      : INTEGER :=0;
    FPGA_FAMILY   : INTEGER :=12;
    URAM_MAXDEPTH : INTEGER :=64    );
  PORT (
    NGRST         : IN STD_LOGIC;
    RSTN          : IN STD_LOGIC;
    CLK           : IN STD_LOGIC;
    DATAI         : IN STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
    DATAI_VALID   : IN STD_LOGIC;
    COEFI         : IN STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);
    COEFI_VALID   : IN STD_LOGIC;
    FIRO          : OUT STD_LOGIC_VECTOR(47 downto 0);
    FIRO_VALID    : OUT STD_LOGIC;
    COEF_REF      : IN STD_LOGIC;
    COEF_REF_DONE : OUT STD_LOGIC;
    COEF_ON       : IN STD_LOGIC;
    COEF_SEL      : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    READY         : OUT STD_LOGIC  );
 END COMPONENT;

COMPONENT COREFIR_PF_C0_COREFIR_PF_C0_0_HIGHERWIDTH is
  GENERIC(TAPS            : integer := 16;
          COEF_TYPE       : integer := 0;
          COEF_SETS       : integer := 1;
          COEF_SYMM       : integer := 0;
          COEF_WIDTH      : integer := 12;
          COEF_SIGN       : integer := 0;
          DATA_WIDTH      : integer := 12;
          DATA_SIGN       : integer := 0;
          SYSTOLIC        : integer := 0;
          VALID_O         : integer := 1;
          INP_REG         : integer := 1;
          DIE_SIZE        : integer := 20;
          FPGA_FAMILY     : integer := 19 );
  PORT (NGRST, RSTN, CLK  : in std_logic;
        DATAI : in std_logic_vector(DATA_WIDTH-1 downto 0);
        COEFI : in std_logic_vector(COEF_WIDTH-1 downto 0);
        COEF_ON, COEFI_VALID, DATAI_VALID, COEF_REF : in std_logic;
        FIRO : out std_logic_vector(53 downto 0);
        FIRO_VALID : out std_logic;
        COEF_SEL : in std_logic_vector(3 downto 0)    );
END COMPONENT;

signal FIRO1             :  STD_LOGIC_VECTOR(intMux(48, 54, CFG_ARCH=5)-1 DOWNTO 0);

BEGIN
  rst <= NOT(RSTN);
  
  out_en: IF (NATIV_AXI4=0) GENERATE
  
  FIRO   <= FIRO1 ;
  
  END GENERATE;

  enum_g5 : IF (CFG_ARCH = 1)and(NATIV_AXI4=0) GENERATE
    enum_fir_g5 : COREFIR_PF_C0_COREFIR_PF_C0_0_enum_fir_g5
      GENERIC MAP (
        CFG_ARCH            => 1,
        TAPS                => TAPS,
        COEF_TYPE           => COEF_TYPE,
        COEF_SETS           => COEF_SETS,
        COEF_SYMM           => COEF_SYMM,
        COEF_WIDTH          => COEF_WIDTH,
        COEF_UNSIGN         => COEF_UNSIGN,
        DATA_WIDTH          => DATA_WIDTH,
        DATA_UNSIGN         => DATA_UNSIGN,
        URAM_MAXDEPTH       => URAM_MAXDEPTH,
        RESERVED2           => 0,
        BASIC_INTER_LAYER   => BASIC_INTER_LAYER,
        ADV_FBR_ENDDLY      => ADV_FBR_ENDDLY,
        NIBBLE_PIPE_STAGES  => NIBBLE_PIPE_STAGES,
        ROW_PIPE_STAGES     => ROW_PIPE_STAGES,
        PAD_PIPE_STAGES     => PAD_PIPE_STAGES,
        NIBBLE_SYMM_STAGES  => NIBBLE_SYMM_STAGES,
        ROW_SYMM_STAGES     => ROW_SYMM_STAGES,
        INTER_STYLE         => 1  )
      PORT MAP (
        nGrst        => NGRST,
        rstn         => RSTN,
        clk          => CLK,
        datai        => DATAI,
        datai_valid  => DATAI_VALID,
        coefi        => COEFI,
        coefi_valid  => COEFI_VALID,
        pout         => firo_full_width,
        firo_valid   => firo_validi,
        coef_on      => COEF_ON,
        coef_sel     => COEF_SEL );

    COEF_REF_DONE <= '0';
    READY <= '1';
    COEF_ON_SLOT <= '0';
  END GENERATE;

 interp_folded_g5: IF (CFG_ARCH = 2)and(NATIV_AXI4=0) GENERATE
	
    interpol_fir : COREFIR_PF_C0_COREFIR_PF_C0_0_COREINTRPFIR
      GENERIC MAP (
        TAPS          => REQ_TAPS,
        FF            => FF,
        INTRP_FACTOR  => L,
        COEF_TYPE     => COEF_TYPE,
        COEF_SETS     => COEF_SETS,
        COEF_UNSIGN   => COEF_UNSIGN,
        COEF_WIDTH    => COEF_WIDTH,
        DATA_UNSIGN   => DATA_UNSIGN,
        DATA_WIDTH    => DATA_WIDTH,
        COEF_RAM      => COEF_RAM,
        DATA_RAM      => DATA_RAM,
        DIE_SIZE      => DIE_SIZE,
        FPGA_FAMILY   => FPGA_FAMILY,
        URAM_MAXDEPTH => URAM_MAXDEPTH  )
      PORT MAP (
        NGRST          => NGRST,
        RSTN           => RSTN,
        CLK            => CLK,
        DATAI          => DATAI,
        DATAI_VALID    => DATAI_VALID,
        COEFI          => COEFI,
        COEFI_VALID    => COEFI_VALID,
        COEF_SEL       => COEF_SEL,
        COEF_REF       => COEF_REF,
        COEF_REF_DONE  => COEF_REF_DONE,
        FIRO           => firo_full_width,
        FIRO_VALID     => firo_validi,
        COEF_ON        => COEF_ON,
        RCLK           => RCLK,
        READY          => READY);

	COEF_ON_SLOT <= '0';
		
 END GENERATE;
 
  decm_folded_g5: IF (CFG_ARCH = 3)and(NATIV_AXI4=0) GENERATE
	
    decm_fir : COREFIR_PF_C0_COREFIR_PF_C0_0_COREDECMFIR
      GENERIC MAP (
        TAPS          => REQ_TAPS,
        FF            => FF,
        DECM_FACTOR   => M,
        COEF_TYPE     => COEF_TYPE,
        COEF_SETS     => COEF_SETS,
        COEF_UNSIGN   => COEF_UNSIGN,
        COEF_WIDTH    => COEF_WIDTH,
        DATA_UNSIGN   => DATA_UNSIGN,
        DATA_WIDTH    => DATA_WIDTH,
        COEF_RAM      => COEF_RAM,
        DATA_RAM      => DATA_RAM,
        DIE_SIZE      => DIE_SIZE,
        FPGA_FAMILY   => FPGA_FAMILY,
        URAM_MAXDEPTH => URAM_MAXDEPTH  )
      PORT MAP (
        NGRST          => NGRST,
        RSTN           => RSTN,
        CLK            => CLK,
        DATAI          => DATAI,
        DATAI_VALID    => DATAI_VALID,
        COEFI          => COEFI,
        COEFI_VALID    => COEFI_VALID,
        COEF_SEL       => COEF_SEL,
        COEF_REF       => COEF_REF,
        COEF_REF_DONE  => COEF_REF_DONE,
        FIRO           => firo_full_width,
        FIRO_VALID     => firo_validi,
        COEF_ON        => COEF_ON,
        RCLK           => RCLK,
        READY          => READY);

	COEF_ON_SLOT <= '0';
		
 END GENERATE;
 
   fold_g5: IF (CFG_ARCH = 4) and(NATIV_AXI4=0) GENERATE
	
    fold_fir : COREFIR_PF_C0_COREFIR_PF_C0_0_COREFOLDFIR
      GENERIC MAP (
        TAPS          => REQ_TAPS,
        FF            => FF,
        COEF_TYPE     => COEF_TYPE,
        COEF_SETS     => COEF_SETS,
        COEF_UNSIGN   => COEF_UNSIGN,
        COEF_WIDTH    => COEF_WIDTH,
        DATA_UNSIGN   => DATA_UNSIGN,
        DATA_WIDTH    => DATA_WIDTH,
        COEF_RAM      => COEF_RAM,
        DATA_RAM      => DATA_RAM,
        DIE_SIZE      => DIE_SIZE,
        FPGA_FAMILY   => FPGA_FAMILY,
        URAM_MAXDEPTH => URAM_MAXDEPTH  )
      PORT MAP (
        NGRST          => NGRST,
        RSTN           => RSTN,
        CLK            => CLK,
        DATAI          => DATAI,
        DATAI_VALID    => DATAI_VALID,
        COEFI          => COEFI,
        COEFI_VALID    => COEFI_VALID,
        COEF_SEL       => COEF_SEL,
        COEF_REF       => COEF_REF,
        COEF_REF_DONE  => COEF_REF_DONE,
        FIRO           => firo_full_width,
        FIRO_VALID     => firo_validi,
        COEF_ON        => COEF_ON,
        READY          => READY);

	COEF_ON_SLOT <= '0';
		
 END GENERATE;
 
 Higher_width_g5: IF (CFG_ARCH = 5)and(NATIV_AXI4=0) GENERATE
	
    higher_width_fir : COREFIR_PF_C0_COREFIR_PF_C0_0_HIGHERWIDTH
        GENERIC MAP(
		  TAPS            => TAPS,
          COEF_TYPE       => COEF_TYPE,
          COEF_SETS       => COEF_SETS,
          COEF_SYMM       => COEF_SYMM,
          COEF_WIDTH      => COEF_WIDTH,
          COEF_SIGN       =>  COEF_UNSIGN,
          DATA_WIDTH      => DATA_WIDTH,
          DATA_SIGN       =>  DATA_UNSIGN,
          SYSTOLIC        => 1 ,
          VALID_O         => 0 ,
          INP_REG         => 0 , 
          DIE_SIZE        => DIE_SIZE,
          FPGA_FAMILY      => FPGA_FAMILY )
        PORT MAP (NGRST		=> NGRST, 
			RSTN		=> RSTN, 
			CLK  		=> CLK,
			DATAI 		=> DATAI,
			COEFI 		=> COEFI,
			COEF_ON		=> COEF_ON, 
			COEF_REF	=> COEF_REF, 
			COEFI_VALID	=> COEFI_VALID, 
			DATAI_VALID => DATAI_VALID,
			FIRO 		=> firo_full_width,
			firo_valid  => firo_validi,
			COEF_SEL    => COEF_SEL );

	COEF_REF_DONE <= '0';
    READY <= '1';
    COEF_ON_SLOT <= '0';	
		
 END GENERATE;

stream_AXI4S : IF (NATIV_AXI4=1) GENERATE

 --  #DATAI in AXI4S to Native
      DATAI_ACT      		<=  AXI4_S_TDATAI(DATA_WIDTH-1 DOWNTO 0);
      DATAI_VALID_ACT  		<=  AXI4_S_DATAI_TVALID;
	  AXI4_S_DATAI_TREADY	<= '1';  
	  
 --  #FIRO out Native to AXI4S	  
	  AXI4_M_DATAO_TVALID	<= firo_validi; --FIRO_VALID;
  --  AXI4_M_DATAO_TREADY	expecting always '1'
	  AXI4_M_TDATAO			<= ("00"&FIRO1) when (CFG_ARCH = 5) else FIRO1;
	  	
 -- #COEF in AXI4S to Native
	COEFI_VALID_ACT      <= AXI4_S_COEFI_TVALID;
	AXI4_S_COEFI_TREADY  <= '1' ;
	COEFI_ACT   		 <= AXI4_S_COEFI(COEF_WIDTH-1 downto 0);
	
 -- #CONFIG in AXI4S to Native	  
	AXI4_S_CONFIGI_TREADY <= '1';
--	AXI4_S_CONFIGI_TVALID
	COEF_SEL_ACT  <= AXI4_S_CONFIGI(3 downto 0) ;
	COEF_REF_ACT  <= AXI4_S_CONFIGI(4) when (AXI4_S_CONFIGI_TVALID='1') else '0';
    COEF_ON_ACT   <= AXI4_S_CONFIGI(5) when (AXI4_S_CONFIGI_TVALID='1') else '0'; 
	 
 -- #CONFIG out Native to AXI4S
	AXI4_M_CONFIGO_TVALID <= COEF_REF_DONE or READY;
 -- AXI4_M_CONFIGO _TREADY expecting always '1'
	AXI4_M_CONFIGO(0)  		   <= COEF_REF_DONE ;
	AXI4_M_CONFIGO(1)  		   <= READY ;
	AXI4_M_CONFIGO(7 downto 2) <= (others => '0');
		 
	  	  
 END GENERATE;	  
 
AXI4S_enum_g5 : IF (CFG_ARCH = 1)and(NATIV_AXI4=1) GENERATE
enum_fir_g5_AXI4S : COREFIR_PF_C0_COREFIR_PF_C0_0_enum_fir_g5
      GENERIC MAP (
        CFG_ARCH            => 1,
        TAPS                => TAPS,
        COEF_TYPE           => COEF_TYPE,
        COEF_SETS           => COEF_SETS,
        COEF_SYMM           => COEF_SYMM,
        COEF_WIDTH          => COEF_WIDTH,
        COEF_UNSIGN         => COEF_UNSIGN,
        DATA_WIDTH          => DATA_WIDTH,
        DATA_UNSIGN         => DATA_UNSIGN,
        URAM_MAXDEPTH       => URAM_MAXDEPTH,
        RESERVED2           => 0,
        BASIC_INTER_LAYER   => BASIC_INTER_LAYER,
        ADV_FBR_ENDDLY      => ADV_FBR_ENDDLY,
        NIBBLE_PIPE_STAGES  => NIBBLE_PIPE_STAGES,
        ROW_PIPE_STAGES     => ROW_PIPE_STAGES,
        PAD_PIPE_STAGES     => PAD_PIPE_STAGES,
        NIBBLE_SYMM_STAGES  => NIBBLE_SYMM_STAGES,
        ROW_SYMM_STAGES     => ROW_SYMM_STAGES,
        INTER_STYLE         => 1   )
      PORT MAP (
        nGrst        => NGRST,
        rstn         => RSTN,
        clk          => CLK,
        datai        => DATAI_ACT,
        datai_valid  => DATAI_VALID_ACT,
        coefi        => COEFI_ACT,
        coefi_valid  => COEFI_VALID_ACT,
        pout         => firo_full_width,
        firo_valid   => firo_validi,
        coef_on      => COEF_ON_ACT,
        coef_sel     => COEF_SEL_ACT);

	 COEF_REF_DONE <= '0';
     READY <= '1';
     COEF_ON_SLOT <= '0';
  END GENERATE; 

AXI4S_interp_folded_g5 : IF (CFG_ARCH = 2)and(NATIV_AXI4=1) GENERATE
interpol_fir_AXI4S : COREFIR_PF_C0_COREFIR_PF_C0_0_COREINTRPFIR
      GENERIC MAP (
        TAPS          => REQ_TAPS,
        FF            => FF,
        INTRP_FACTOR  => L,
        COEF_TYPE     => COEF_TYPE,
        COEF_SETS     => COEF_SETS,
        COEF_UNSIGN   => COEF_UNSIGN,
        COEF_WIDTH    => COEF_WIDTH,
        DATA_UNSIGN   => DATA_UNSIGN,
        DATA_WIDTH    => DATA_WIDTH,
        COEF_RAM      => COEF_RAM,
        DATA_RAM      => DATA_RAM,
        DIE_SIZE      => DIE_SIZE,
        FPGA_FAMILY   => FPGA_FAMILY,
        URAM_MAXDEPTH => URAM_MAXDEPTH  )
      PORT MAP (
        NGRST          => NGRST,
        RSTN           => RSTN,
        CLK            => CLK,
        DATAI          => DATAI_ACT,
        DATAI_VALID    => DATAI_VALID_ACT,
        COEFI          => COEFI_ACT,
        COEFI_VALID    => COEFI_VALID_ACT,
        COEF_SEL       => COEF_SEL_ACT,
        COEF_REF       => COEF_REF_ACT,
        COEF_REF_DONE  => COEF_REF_DONE,
        FIRO           => firo_full_width,
        FIRO_VALID     => firo_validi,
        COEF_ON        => COEF_ON_ACT,
        RCLK           => RCLK,
        READY          => READY);

	COEF_ON_SLOT <= '0';
  END GENERATE;
  
AXI4S_decm_folded_g5 : IF (CFG_ARCH = 3)and(NATIV_AXI4=1) GENERATE
decm_fir_AXI4S : COREFIR_PF_C0_COREFIR_PF_C0_0_COREDECMFIR
      GENERIC MAP (
        TAPS          => REQ_TAPS,
        FF            => FF,
        DECM_FACTOR   => M,
        COEF_TYPE     => COEF_TYPE,
        COEF_SETS     => COEF_SETS,
        COEF_UNSIGN   => COEF_UNSIGN,
        COEF_WIDTH    => COEF_WIDTH,
        DATA_UNSIGN   => DATA_UNSIGN,
        DATA_WIDTH    => DATA_WIDTH,
        COEF_RAM      => COEF_RAM,
        DATA_RAM      => DATA_RAM,
        DIE_SIZE      => DIE_SIZE,
        FPGA_FAMILY   => FPGA_FAMILY,
        URAM_MAXDEPTH => URAM_MAXDEPTH  )
      PORT MAP (
        NGRST          => NGRST,
        RSTN           => RSTN,
        CLK            => CLK,
        DATAI          => DATAI_ACT,
        DATAI_VALID    => DATAI_VALID_ACT,
        COEFI          => COEFI_ACT,
        COEFI_VALID    => COEFI_VALID_ACT,
        COEF_SEL       => COEF_SEL_ACT,
        COEF_REF       => COEF_REF_ACT,
        COEF_REF_DONE  => COEF_REF_DONE,
        FIRO           => firo_full_width,
        FIRO_VALID     => firo_validi,
        COEF_ON        => COEF_ON_ACT,
        RCLK           => RCLK,
        READY          => READY);

	COEF_ON_SLOT <= '0';
  END GENERATE;

  
AXI4S_fold_g5 : IF (CFG_ARCH = 4)and(NATIV_AXI4=1) GENERATE
fold_fir_AXI4S : COREFIR_PF_C0_COREFIR_PF_C0_0_COREFOLDFIR
      GENERIC MAP (
        TAPS          => REQ_TAPS,
        FF            => FF,
        COEF_TYPE     => COEF_TYPE,
        COEF_SETS     => COEF_SETS,
        COEF_UNSIGN   => COEF_UNSIGN,
        COEF_WIDTH    => COEF_WIDTH,
        DATA_UNSIGN   => DATA_UNSIGN,
        DATA_WIDTH    => DATA_WIDTH,
        COEF_RAM      => COEF_RAM,
        DATA_RAM      => DATA_RAM,
        DIE_SIZE      => DIE_SIZE,
        FPGA_FAMILY   => FPGA_FAMILY,
        URAM_MAXDEPTH => URAM_MAXDEPTH  )
      PORT MAP (
        NGRST          => NGRST,
        RSTN           => RSTN,
        CLK            => CLK,
        DATAI          => DATAI_ACT,
        DATAI_VALID    => DATAI_VALID_ACT,
        COEFI          => COEFI_ACT,
        COEFI_VALID    => COEFI_VALID_ACT,
        COEF_SEL       => COEF_SEL_ACT,
        COEF_REF       => COEF_REF_ACT,
        COEF_REF_DONE  => COEF_REF_DONE,
        FIRO           => firo_full_width,
        FIRO_VALID     => firo_validi,
        COEF_ON        => COEF_ON_ACT,
        READY          => READY);

	COEF_ON_SLOT <= '0';
  END GENERATE;

 AXI4S_Higher_width_g5: IF (CFG_ARCH = 5)and(NATIV_AXI4=1) GENERATE
    higher_width_fir_AXI4S : COREFIR_PF_C0_COREFIR_PF_C0_0_HIGHERWIDTH
        GENERIC MAP(
		  TAPS            => TAPS,
          COEF_TYPE       => COEF_TYPE,
          COEF_SETS       => COEF_SETS,
          COEF_SYMM       => COEF_SYMM,
          COEF_WIDTH      => COEF_WIDTH,
          COEF_SIGN       =>  COEF_UNSIGN,
          DATA_WIDTH      => DATA_WIDTH,
          DATA_SIGN       =>  DATA_UNSIGN,
          SYSTOLIC        => 1 ,
          VALID_O         => 0 ,
          INP_REG         => 0 , 
          DIE_SIZE        => DIE_SIZE,
          FPGA_FAMILY      => FPGA_FAMILY )
		 PORT MAP (
			NGRST          => NGRST,
			RSTN           => RSTN,
			CLK            => CLK,
			DATAI          => DATAI_ACT,
			DATAI_VALID    => DATAI_VALID_ACT,
			COEFI          => COEFI_ACT,
			COEFI_VALID    => COEFI_VALID_ACT,
			COEF_SEL       => COEF_SEL_ACT,
			FIRO           => firo_full_width,
			FIRO_VALID     => firo_validi,
			COEF_REF       => COEF_REF_ACT,
			COEF_ON        => COEF_ON_ACT);
	
	READY <= '1';
    COEF_ON_SLOT <= '0';	
 END GENERATE;
  -- -----------  Output full precision data  -------------
  output48 : IF (ROUND = 0) GENERATE
    FIRO1 <= firo_full_width;
    FIRO_VALID <= firo_validi;
  END GENERATE;

  -- --- Truncate/round firo_full_width. This introduces 2-clk latency
  roundit : IF (ROUND /= 0) GENERATE
    roundit_0 : corefir_kitRoundTop
      GENERIC MAP ( INWIDTH       => FULL_WIDTH,
                    OUTWIDTH      => OUTP_WIDTH,
                    QUANTIZATION  => ROUND  )
      PORT MAP (
        nGrst   => nGrst,
        rst     => rst,
        clk     => clk,
        inp     => firo_full_width,
        datai_valid => '1',
        outp    => FIRO1,
        --just bit that travels side by side with data.  No interaction with rounding
        validi  => firo_validi,
        valido  => FIRO_VALID );
  END GENERATE;

END ARCHITECTURE rtl;


