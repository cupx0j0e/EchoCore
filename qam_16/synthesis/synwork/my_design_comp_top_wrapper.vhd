--
-- Synopsys
-- Vhdl wrapper for top level design, written on Sun Aug 17 16:17:34 2025
--
library ieee;
use ieee.std_logic_1164.all;

entity wrapper_for_COREFIR_PF_C0 is
   port (
      CLK : in std_logic;
      DATAI : in std_logic_vector(3 downto 0);
      DATAI_VALID : in std_logic;
      NGRST : in std_logic;
      RSTN : in std_logic;
      FIRO : out std_logic_vector(47 downto 0);
      FIRO_VALID : out std_logic
   );
end wrapper_for_COREFIR_PF_C0;

architecture rtl of wrapper_for_COREFIR_PF_C0 is

component COREFIR_PF_C0
 port (
   CLK : in std_logic;
   DATAI : in std_logic_vector (3 downto 0);
   DATAI_VALID : in std_logic;
   NGRST : in std_logic;
   RSTN : in std_logic;
   FIRO : out std_logic_vector (47 downto 0);
   FIRO_VALID : out std_logic
 );
end component;

signal tmp_CLK : std_logic;
signal tmp_DATAI : std_logic_vector (3 downto 0);
signal tmp_DATAI_VALID : std_logic;
signal tmp_NGRST : std_logic;
signal tmp_RSTN : std_logic;
signal tmp_FIRO : std_logic_vector (47 downto 0);
signal tmp_FIRO_VALID : std_logic;

begin

tmp_CLK <= CLK;

tmp_DATAI <= DATAI;

tmp_DATAI_VALID <= DATAI_VALID;

tmp_NGRST <= NGRST;

tmp_RSTN <= RSTN;

FIRO <= tmp_FIRO;

FIRO_VALID <= tmp_FIRO_VALID;



u1:   COREFIR_PF_C0 port map (
		CLK => tmp_CLK,
		DATAI => tmp_DATAI,
		DATAI_VALID => tmp_DATAI_VALID,
		NGRST => tmp_NGRST,
		RSTN => tmp_RSTN,
		FIRO => tmp_FIRO,
		FIRO_VALID => tmp_FIRO_VALID
       );
end rtl;
