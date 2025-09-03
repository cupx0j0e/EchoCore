
-- ***************************************************************************
--Microsemi Corporation Proprietary and Confidential
--Copyright 2015 Microsemi Corporation. All rights reserved.
--
--ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
--ACCORDANCE WITH THE MICROSEMI LICENSE AGREEMENT AND MUST BE APPROVED
--IN ADVANCE IN WRITING.
--
--Description:  G5 CoreFIR RTL
--              G5 Fully Enumerated FIR Filter Tap
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

-- - clkEn for regs B, B2, P, and C is active on systola
-- - clkEn for reg A is active on coef_on
ENTITY enum_tap_g5 IS
  GENERIC (
    COEF_TYPE        : INTEGER := 0;		--0-Const, 1-reload
    COEF_SETS        : INTEGER := 0;		--1-Const const, >1-multiple sets
    COEF_SYMM        : INTEGER := 1;		--0-not symm, 1-symm, 2-antisymm. Shut D if non-symm
    COEF_UNSIGN      : INTEGER := 0;
    COEF_WIDTH       : INTEGER := 12;
    DATA_UNSIGN      : INTEGER := 0;
    DATA_WIDTH       : INTEGER := 12;
    RESERVED1        : INTEGER := 0;
    USE_BC           : INTEGER := 0;		-- Use BCIN, not B input
    SHUT_C           : INTEGER := 0;
    SHUT_CDIN        : INTEGER := 0;
    WARNING_MSGS_ON  : INTEGER := 1;
    INIT             : STD_LOGIC_VECTOR(287 DOWNTO 0) := (others=>'0')  );
  PORT (
    nGrst       : IN STD_LOGIC;
    rstn        : IN STD_LOGIC;
    clk         : IN STD_LOGIC;
    systola     : IN STD_LOGIC;    --datai_valid
    coefi_valid : IN STD_LOGIC;
    -- datai comes either from left member of the B chain, or from fabric
    datai       : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    symm_datai  : IN STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
    -- Reg A gets coef either from LUT (const coef) or a shift register (reload coefs)
    coefi       : IN STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0);  -- A shift register section input
    cin         : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
    cdin        : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
    coef_sel    : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    coef_on     : IN STD_LOGIC;
    coefo       : OUT STD_LOGIC_VECTOR(COEF_WIDTH-1 DOWNTO 0); -- A shift register section output
    bcout       : OUT STD_LOGIC_VECTOR(17 DOWNTO 0); -- B2 output to b chain output
    b2out       : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0); -- B2 output to fabric
    cdout       : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
    pout        : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)  );
END ENTITY enum_tap_g5;

ARCHITECTURE rtl OF enum_tap_g5 IS
  COMPONENT MACC_PA_BC_ROM_wrap IS
    GENERIC (
    USE_ROM         : INTEGER;
    INIT            : STD_LOGIC_VECTOR(287 DOWNTO 0);
    WARNING_MSGS_ON : INTEGER );
    PORT (
    clk         : IN STD_LOGIC;
    nGrst       : IN STD_LOGIC; -- Neg async reset for all regs except C and D
    A           : IN STD_LOGIC_VECTOR(17 DOWNTO 0); -- inp is available in reload mode only
    rstn_A      : IN STD_LOGIC;
    en_A        : IN STD_LOGIC;
    addr        : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    B           : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    rstn_B      : IN STD_LOGIC;
    en_B        : IN STD_LOGIC;
    B2          : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    bcout       : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    en_B2       : IN STD_LOGIC;
    rstn_B2     : IN STD_LOGIC;
    nGrst_B2    : IN STD_LOGIC;
    C           : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
    rstn_C      : IN STD_LOGIC;
    nGrst_C     : IN STD_LOGIC;
    en_C        : IN STD_LOGIC;
    D           : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    rstn_D      : IN STD_LOGIC;
    nGrst_D     : IN STD_LOGIC;
    en_D        : IN STD_LOGIC;
    P           : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
    cdout       : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
    rstn_P      : IN STD_LOGIC;
    en_P        : IN STD_LOGIC;
    cdin        : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
    PASUB       : IN STD_LOGIC;
    rstn_PASUB  : IN STD_LOGIC;
    en_PASUB    : IN STD_LOGIC;
    SEL         : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    rstn_SEL    : IN STD_LOGIC;
    en_SEL      : IN STD_LOGIC  );
  END COMPONENT;

  TYPE type_array IS ARRAY (0 TO 15) OF STD_LOGIC_VECTOR(17 DOWNTO 0);

  -- To SHUT_CDIN, bypass the SEL register and enforce 2'b00 on its data input
  constant Shut_pcin : STD_LOGIC_VECTOR(1 DOWNTO 0) := logiVectMux ("00", "11", SHUT_CDIN=0);
  -- Keep pre-adder in Sub mode if antisymmetric
  constant Antisymm  : STD_LOGIC := logicMux ('0', '1', COEF_SYMM=2);

  constant USE_ROM   : integer := 1-COEF_TYPE;
  -- Keep C register in 0 state if not used
  SIGNAL nGrst_C            : STD_LOGIC;
  -- Keep D register in 0 state if not symmetric filter
  SIGNAL nGrst_D            : STD_LOGIC;

  SIGNAL addr               : STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL mcandA             : STD_LOGIC_VECTOR(17 DOWNTO 0);
  SIGNAL coef18             : STD_LOGIC_VECTOR(17 DOWNTO 0);
  SIGNAL symm_data18        : STD_LOGIC_VECTOR(17 DOWNTO 0);
  SIGNAL b2_out18           : STD_LOGIC_VECTOR(17 DOWNTO 0);

  SIGNAL dbg_top_init_array : type_array;

  SIGNAL rstnn : STD_LOGIC;
  SIGNAL coefo_w        : STD_LOGIC_VECTOR(COEF_WIDTH - 1 DOWNTO 0);
BEGIN
  coefo <= coefo_w;

  nGrst_C <= nGrst WHEN (SHUT_C = 0) ELSE '0';
  nGrst_D <= '0' WHEN (COEF_SYMM = 0) ELSE nGrst;
  addr <= "0000" WHEN (COEF_SETS = 1) ELSE coef_sel;

  --tr  generate begin: dbg_top_init
  --tr    genvar i;
  --tr    for(i=0; i<16; i=i+1)
  --tr      begin
  --tr        assign dbg_top_init_array[i] = INIT[(i+1)*18-1:i*18];
  --tr      end
  --tr    end
  --tr  endgenerate
  debug_init_0 : debug_INIT
    GENERIC MAP (NUM_OF_COEFS => 16)
    PORT MAP    (flat         => INIT );


  b2out <= b2_out18(DATA_WIDTH-1 DOWNTO 0);
  -- Sign extend reloadable coefficients
  coef18 <= sign_ext (coefo_w, 18, COEF_UNSIGN);

  -- Symmetry data coming to D input can be sign extended locally to save on
  -- turnback bus width, that is the turnback can have DATA_WIDTH
--7/8/2016  symmetric : IF (COEF_SYMM = 1) GENERATE		-- sign extend D input to 18 bits if symmetric
  symmetric : IF (COEF_SYMM/=0) GENERATE		-- sign extend D input to 18 bits if symmetric
    symm_data18 <= sign_ext (symm_datai, 18, DATA_UNSIGN);
  END GENERATE;

  reload_shift_reg : IF (COEF_TYPE=1) GENERATE  -- Create shift reg section for traditional reload
    rstnn <= NOT(rstn);
    shiftreg_section_0 : enum_kitDelay_reg
      GENERIC MAP ( BITWIDTH  => COEF_WIDTH,
                    DELAY1     => 1  )
      PORT MAP (  nGrst  => nGrst,
        rst    => rstnn,
        clk    => clk,
        clkEn  => coefi_valid,
        inp    => coefi,
        outp   => coefo_w );
  END GENERATE;


  MACC_PA_BC_ROM_wrap_0 : MACC_PA_BC_ROM_wrap
    GENERIC MAP (
      USE_ROM          => USE_ROM,
      WARNING_MSGS_ON  => WARNING_MSGS_ON,
      INIT             => INIT  )
    PORT MAP (
      clk         => clk,
      nGrst       => nGrst,
      -- A inputs are for coefficients
      A           => coef18,  -- the input is available in reload mode only
      rstn_A      => rstn,
      en_A        => coef_on,
      -- LUT address
      addr        => addr,

      -- B inputs
      B           => datai,
      rstn_B      => rstn,
      en_B        => systola,
      -- B cascade chain
      B2          => b2_out18,	-- B2 output to fabric
      bcout       => bcout,		  -- B2 output to cascade
      en_B2       => systola,
      rstn_B2     => rstn,
      nGrst_B2    => nGrst,
      -- C and CarryIn inputs generate 0 if C isn't used
      C           => cin,
      rstn_C      => rstn,
      nGrst_C     => nGrst_C,		-- generate 0 if C isn't used
      en_C        => systola,
      -- D input generates 0 if non-symmetric
      D           => symm_data18,
      rstn_D      => rstn,
      nGrst_D     => nGrst_D,		-- generate 0 if D isn't used
      en_D        => systola,
      -- P and OVFL_EXT outputs
      P           => pout,
      cdout       => cdout,
      rstn_P      => rstn,		-- Negative sync reset
      en_P        => systola,		-- Clk enable

      cdin        => cdin,		-- 48-bit P cascade input

      -- Control pre-adder Sub mode statically by COEF_SYMM==2
      PASUB       => Antisymm,
      rstn_PASUB  => '1',
      en_PASUB    => '1',

      -- SEL register on FIR is controlled statically by SHUT_CDIN. It is
      -- either in state 00 to provide 0 on E adder input, or
      -- 11 to let CDIN in, that is connect CDIN to the E adder input
      SEL         => Shut_pcin,
      rstn_SEL    => '1',
      en_SEL      => '1'  );
END ARCHITECTURE rtl;


