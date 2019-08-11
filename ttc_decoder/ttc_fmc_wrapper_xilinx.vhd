library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

use work.all;



--=================================================================================================--
--======================================= Module Body =============================================-- 
--=================================================================================================--
entity ttc_fmc_wrapper is
port (
    --== ttc fmc interface ==--
    cdrclk_in						: in   std_logic;			-- ADN2812 CDR 160MHz clock output
	cdrdata_in 						: in   std_logic;			-- ADN2812 CDR Serial Data output
	ttc_los 							: in   std_logic;			-- ADN2812 CDR Loss Of Sync flag. Active high.
	ttc_lol 							: in   std_logic;			-- ADN2812 CDR Loss Of Sync flag. Active high.
	div_nrst 						: out  std_logic;			-- clock divider sy89872 async reset control, used to align the phase of 40mhz clock divider output relative to the input stream
	
	--== ttc decoder output ==--
	single_bit_error    			: out std_logic;
	double_bit_error    			: out std_logic;
	communication_error 			: out std_logic;
	l1a								: out std_logic;
	brc_strobe						: out std_logic;
	add_strobe						: out std_logic;
	--TTDDDDDEB
	brc_t2							: out std_logic_vector(1 downto 0);  
	brc_d4							: out std_logic_vector(3 downto 0);
	brc_e								: out std_logic; 
	brc_b								: out std_logic; 
	--AAAAAAAAAAAAAAE1SSSSSSSSDDDDDDDD
	add_a14							: out std_logic_vector(13 downto 0);
	add_e								: out std_logic;
	add_s8							: out std_logic_vector(7 downto 0);
	add_d8							: out std_logic_vector(7 downto 0);
	
	--== auxiliary outputs ===--
	cdrclk_out						: out std_logic;				
	ready								: out std_logic;				
	ttc_clk_gated					: out std_logic		-- gated 40MHz clock, for comparison only
);
	
end ttc_fmc_wrapper;



architecture top of ttc_fmc_wrapper is

	--========================= Signal Declarations ==========================--

	
	signal cdrbad			: std_logic; 
	signal pll_clk 		: std_logic;
	signal pll_locked		: std_logic; 
	
--===========================================================================--
-----     --===================================================--
begin   --================== Architecture Body ==================-- 
-----     --===================================================--
--===========================================================================--



cdrbad 					<= ttc_lol or ttc_los;
cdrclk_out 				<= pll_clk;	

	
--=====================================--
pll: entity work.pll_160MHz
--=====================================--
port map 
(
	reset	 							=> cdrbad, 
	clk_in1 							=> cdrclk_in, 
	clk_out1   						=> pll_clk,		-- clkin x1 
	locked 							=> pll_locked
);
--=====================================--

	
	
--=====================================--
ttc_dec: entity work.ttc_decoder_core
--=====================================--
port map
(

	--== cdr interface ==--
	cdrclk_in_locked				=> pll_locked,
	cdrclk_in						=> pll_clk,		
	cdrdata_in 						=> cdrdata_in,	
	--== ttc decoder output ==--
	single_bit_error    			=> single_bit_error,
	double_bit_error    			=> double_bit_error,
	communication_error 			=> communication_error,
	l1a								=> l1a,
	brc_strobe						=> brc_strobe,
	add_strobe						=> add_strobe,
	--TTDDDDDEB
	brc_t2							=> brc_t2,
	brc_d4							=> brc_d4,
	brc_e								=> brc_e,
	brc_b								=> brc_b,
	--AAAAAAAAAAAAAAE1SSSSSSSSDDDDDDDD
	add_a14							=> add_a14,
	add_e								=> add_e,
	add_s8							=> add_s8,
	add_d8							=> add_d8,
	--== ttc decoder aux flags ==--
	ready								=> ready,
	div_nrst 						=> div_nrst, 							
	ttc_clk_gated					=> ttc_clk_gated
);
end top;


