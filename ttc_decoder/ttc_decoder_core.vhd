--=================================================================================================--
--==================================== Module Information =========================================--
--=================================================================================================--
--                                                                                         
-- Company:                CERN (PH-ESE-BE)                                                         
-- Engineer:               Sophie Baron (sophie.baron@cern.ch)
--                                                                                                 
-- Project Name:           TTC                                                            
-- Module Name:            TTC_decoder_top                                         
--                                                                                                 
-- Language:               VHDL'93                                                                  
--                                                                                                   
-- Target Device:          Kintex7 - KC705                                                         
-- Tool version:           ISE 14.5                                                                
--                                                                                                   
-- Version:                0.1                                                                      
--
-- Description:            
--
-- Versions history:       DATE         VERSION   AUTHOR            DESCRIPTION
--
--                         19/07/2013   1.0       Sophie BARON    	- First .vhd module definition           
--
--=================================================================================================--
--=================================================================================================--

--=================================================================================================--
--==================================== Additional Comments ========================================--
--=================================================================================================-- 
	--
	-- TTC FRAME (TDM of channels A and B):
	-- A channel: 1=trigger, 0=no trigger. No encoding, minimum latency.
	-- B channel: short broadcast or long addressed commands. Hamming check bits

	-- B Channel Content:
	--
	-- IDLE=111111111111
	--
	-- Short Broadcast, 16 bits:
	-- 00TTDDDDDEBHHHHH1: T=test command, 2 bits. D=Command/Data, 4 bits. E=Event Counter Reset, 1 bit. B=Bunch Counter Reset, 1 bit. H=Hamming Code, 5 bits.
	--
	-- Long Addressed, 42 bits
	-- 01AAAAAAAAAAAAAAE1SSSSSSSSDDDDDDDDHHHHHHH1: A= TTCrx address, 14 bits. E= internal(0)/External(1), 1 bit. S=SubAddress, 8 bits. D=Data, 8 bits. H=Hamming Code, 7 bits.
	-- 

	-- ttc hamming encoding for broadcast (d8/h5)
	-- /* build Hamming bits */
	-- hmg[0] = d[0]^d[1]^d[2]^d[3];
	-- hmg[1] = d[0]^d[4]^d[5]^d[6];
	-- hmg[2] = d[1]^d[2]^d[4]^d[5]^d[7];
	-- hmg[3] = d[1]^d[3]^d[4]^d[6]^d[7];
	-- hmg[4] =hmg[0]^hmg[1]^hmg[2]^hmg[3]^d[0]^d[1]^d[2]^d[3]^d[4]^d[5]^d[6]^d[7]; --eric: d[0]^d[2]^d[3]^d[5]^d[6]^d[7];--
	-- /* build Hamming word */
	-- hamming = hmg[0] | (hmg[1]<<1) |(hmg[2]<<2) |(hmg[3]<<3) |(hmg[4]<<4);

	-- ttc hamming encoding for long addressed (d32/h7)
	-- /* build Hamming bits */
	-- hmg[0] = d[0]^d[1]^d[2]^d[3]^d[4]^d[5]; 
	-- hmg[1] = d[6]^d[7]^d[8]^d[9]^d[10]^d[11]^d[12]^d[13]^d[14]^d[15]^d[16]^d[17]^d[18]^d[19]^d[20];
	-- hmg[2] = d[6]^d[7]^d[8]^d[9]^d[10]^d[11]^d[12]^d[13]^d[21]^d[22]^d[23]^d[24]^d[25]^d[26]^d[27];
	-- hmg[3] = d[0]^d[1]^d[2]^d[6]^d[7]^d[8]^d[9]^d[14]^d[15]^d[16]^d[17]^d[21]^d[22]^d[23]^d[24]^d[28]^d[29]^d[30];
	-- hmg[4] = d[0]^d[3]^d[4]^d[6]^d[7]^d[10]^d[11]^d[14]^d[15]^d[18]^d[19]^d[21]^d[22]^d[25]^d[26]^d[28]^d[29]^d[31];
	-- hmg[5] = d[1]^d[3]^d[5]^d[6]^d[8]^d[10]^d[12]^d[14]^d[16]^d[18]^d[20]^d[21]^d[23]^d[25]^d[27]^d[28]^d[30]^d[31];
	-- hmg[6] = hmg[0]^hmg[1]^hmg[2]^hmg[3]^hmg[4]^hmg[5]^d[0]^d[1]^d[2]^d[3]^d[4]^d[5]^d[6]^d[7]^d[8]^d[9]^d[10]^d[11]^d[12]^d[13]^d[14]^d[15]^d[16]^d[17]^d[18]^d[19]^d[20]^d[21]^d[22]^d[23]^d[24]^d[25]^d[26]^d[27]^d[28]^d[29]^d[30]^d[31];
	-- /* build Hamming word */
	-- hamming = (hmg[0] | (hmg[1]<<1) | (hmg[2]<<2) | (hmg[3]<<3) | (hmg[4]<<4) | (hmg[5]<<5) | (hmg[6]<<6));
			   
	--
	-- TDM/BPM coding principle:
	-- 	<  24.9501 ns   >
	--	X---A---X---B---X
	-- 	X=======X=======X	A=0, B=0 (no trigger, B=0) 
	-- 	X=======X===X===X	A=0, B=1 (no trigger, B=1). unlimited string length when IDLE 
	-- 	X===X===X=======X	A=1, B=0 (trigger, B=0). max string length =11, then switch phase
	-- 	X===X===X===X===X	A=1, B=1 (trigger, B=1)
	--

--=================================================================================================--


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

use work.all;



--=================================================================================================--
--======================================= Module Body =============================================-- 
--=================================================================================================--
entity ttc_decoder_core is
port 
(

	--== cdr interface ==--
	cdrclk_in_locked					: in   std_logic;				
	cdrclk_in							: in   std_logic;				
	cdrdata_in 							: in   std_logic;				
	--== ttc decoder output ==--
	single_bit_error    				: out std_logic;
	double_bit_error    				: out std_logic;
	communication_error 				: out std_logic;
	l1a									: out std_logic;
	brc_strobe							: out std_logic;	--broadcast frame strobe
	add_strobe							: out std_logic;	--addressed frame strobe
	--Broadcast frame
	--TTDDDDDEB (see desciption above)
	brc_t2								: out std_logic_vector(1 downto 0);  
	brc_d4								: out std_logic_vector(3 downto 0);
	brc_e									: out std_logic; 
	brc_b									: out std_logic; 
	--Individually addressed frame
	--AAAAAAAAAAAAAAE1SSSSSSSSDDDDDDDD (see desciption above)
	add_a14								: out std_logic_vector(13 downto 0);
	add_e									: out std_logic;
	add_s8								: out std_logic_vector(7 downto 0);
	add_d8								: out std_logic_vector(7 downto 0);
	--== ttc decoder aux flags ==--
	ready									: out  std_logic;		-- ready flag waits a bit after plls are locked		
	div_nrst 							: out  std_logic;		-- flag to align 40MHz clk phase that can be used for clock dividers
	ttc_clk_gated						: out std_logic		-- gated 40MHz clock, for comparison only
);
	
end ttc_decoder_core;

architecture core of ttc_decoder_core is



	--========================= Signal Declarations ==========================--

	signal channelB_on				: std_logic;
	signal testmode_on				: std_logic;
	
	signal chB_data					: std_logic_vector(38 downto 0);
	signal chB_data_rdy				: std_logic_vector(1 downto 0);
	signal single_bit_error_i		: std_logic;
	signal double_bit_error_i		: std_logic;
	signal channelB_comm_error_i	: std_logic;
	signal l1a_i						: std_logic;
	signal channelB					: std_logic;
	signal ttc_frame_reset			: std_logic;
	signal ttc_strobe					: std_logic;
	
	
--===========================================================================--
-----     --===================================================--
begin   --================== Architecture Body ==================-- 
-----     --===================================================--
--===========================================================================--



	channelB_on 			<= '1';
	testmode_on				<= '0';



--=====================================--
from_cdr_to_AandB: entity work.cdr2a_b_clk
--=====================================--
generic map (pll_locked_delay				=> 200)
port map
(
   --== cdr interface ==--
	cdrclk_in						=> cdrclk_in,				   
	cdrdata_in 						=> cdrdata_in,				
	cdrlock_in						=> cdrclk_in_locked,					
   
   cdrlock_out						=> ready,		
   div_nrst 						=> div_nrst,			
   --== A/B channel decoding ==--
	ttc_clock 						=> ttc_clk_gated,		
	Achannel							=> l1a_i,			
	Bchannel							=> channelB,			
	ttc_frame_reset				=> ttc_frame_reset,		
	ttc_strobe						=> ttc_strobe			
);
--=====================================--



--=====================================--
serialb_com0: entity work.serialb_com
--=====================================--
generic map ( include_hamming => true)  
port map
(
	--== inputs ==--
	clk                 			=> cdrclk_in, 
	clken					  			=> ttc_strobe,
	reset_n             			=> ttc_frame_reset,
	serBchan            			=> channelB,
	serB_en             			=> channelB_on,
	testmode            			=> testmode_on,
	--== outputs ==--			
	single_bit_error    			=> single_bit_error_i,
	double_bit_error    			=> double_bit_error_i,
	communication_error 			=> channelB_comm_error_i,
	data_ready          			=> chB_data_rdy,
	data_out            			=> chB_data
);
--=====================================--

		

--=====================================--
-- output mapping (data updated every 25ns)
--=====================================--
process(cdrclk_in)
	variable brc, add : std_logic;
begin
if rising_edge(cdrclk_in) then
	if ttc_strobe = '1' then
		brc_strobe <= chB_data_rdy(0);
		add_strobe <= chB_data_rdy(1);
		
		brc := chB_data_rdy(0); 	brc_strobe <= brc;
		add := chB_data_rdy(1);		add_strobe <= add;
		
		--TTDDDDDEB
		if brc = '1' then
		brc_t2	 <= chB_data(12 downto 11);  
		brc_d4	 <= chB_data(10 downto 7); 
		brc_e		 <= chB_data(6); 
		brc_b		 <= chB_data(5); 
		else
		brc_t2	 <= (others =>'0');  
		brc_d4	 <= (others =>'0'); 
		brc_e		 <= '0'; 
		brc_b		 <= '0'; 
		end if;
		
		--AAAAAAAAAAAAAAE1SSSSSSSSDDDDDDDD
		if add = '1' then
		add_a14	 <= chB_data(38 downto 25);
		add_e		 <= chB_data(24);
		add_s8	 <= chB_data(22 downto 15);
		add_d8	 <= chB_data(14 downto 7);
		else
		add_a14	 <= (others =>'0');
		add_e		 <= '0';
		add_s8	 <= (others =>'0');
		add_d8	 <= (others =>'0');
		end if;


		single_bit_error    	<= single_bit_error_i;
		double_bit_error    	<= double_bit_error_i;
--      communication_error 	<= channelB_comm_error_i; -- [PV 2015.12.07]
		l1a						<= l1a_i;

        if channelB_comm_error_i = '1' then      -- [PV 2015.12.07]
            communication_error <= '1';          -- [PV 2015.12.07]
        elsif add='1' and chB_data(23) ='0' then -- [PV 2015.12.07] -- if long address and the bit between add_e and add_s is not 1
            communication_error <= '1';          -- [PV 2015.12.07]
        else                                     -- [PV 2015.12.07] 
            communication_error <= '0';          -- [PV 2015.12.07]
        end if;                                  -- [PV 2015.12.07]
	end if;
end if;
end process;
--=====================================--
	


end core;


