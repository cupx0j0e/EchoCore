
-- This is an automatically generated file

-- G5 CoreFIR parameters
PACKAGE coreparameters_tgi IS
  constant CFG_ARCH    : integer := 1;
  constant FPGA_FAMILY : integer := 27;
  constant DIE_SIZE    : integer := 5;
  constant TAPS        : integer := 11;
  constant EXTRA_TAPS  : integer := 0;
  constant NATIV_AXI4  : integer := 0;
  constant DATA_WIDTH_REQ  : integer := 8;
  constant COEF_WIDTH_REQ  : integer := 16;
  constant FIRO_WIDTH      : integer := 48;
  constant COEF_SYMM   : integer := 0;
  constant COEF_UNSIGN : integer := 0;
  constant COEF_WIDTH  : integer := 12;
  constant COEF_TYPE   : integer := 0;
  constant DATA_UNSIGN : integer := 0;
  constant DATA_WIDTH  : integer := 4;
  constant COEF_SETS   : integer := 1;
  constant INTRP_FACTOR : integer:= 2;
  constant DECM_FACTOR : integer:= 2;
  constant FOLD_FACTOR : integer:= 2;
  constant COEF_RAM : integer:= 0;
  constant DATA_RAM : integer:= 0;
  constant URAM_MAXDEPTH : integer:= 0;

  -- Resource center Parameters
  constant RC_ROWS     : integer := 2;
  constant INTER_STYLE : integer := 1;

  -- HW Setting Parameters
  constant BASIC_INTER_LAYER  : integer := 4;
  constant NIBBLE_PIPE_STAGES : integer := 3;
  constant ROW_PIPE_STAGES    : integer := 2;
  constant PAD_PIPE_STAGES    : integer := 2;
  constant NIBBLE_SYMM_STAGES : integer := 1;
  constant ROW_SYMM_STAGES    : integer := 1;
  constant ADV_FBR_ENDDLY     : integer := 2;
END coreparameters_tgi;
