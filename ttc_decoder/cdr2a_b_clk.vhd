--=================================================================================================--
--==================================== Module Information =========================================--
--=================================================================================================--
--                                                                                         
-- Company:                CERN (PH-ESE-BE)                                                         
-- Engineer:               Sophie Baron (sophie.baron@cern.ch)
--                                                                                                 
-- Project Name:           TTC                                                            
-- Module Name:            long_frame_maker                                         
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
-- Versions history:       	DATE         VERSION   		AUTHOR            									DESCRIPTION
--
--							30/06/2011		0.01	  	Eric Hazen et al,EDF Boston University				initial vhdl module: cdr2ttc - behavioral 
--                         	18/07/2013   	1.0       	Sophie BARON, CERN    									extraction of part of the cdr2ttc to have only Trigger, Bchannel and Clock as outputs           
--
--=================================================================================================--
--=================================================================================================--

--=================================================================================================--
--==================================== Additional Comments ========================================--
--=================================================================================================-- 
	--
	--  extracts from the 160MHz and the Datastream of the TTC CDR (ADN2812) the following signals:
	-- A channel (L1A) 
	-- B channel serial stream
	-- TTCclock (gated clock for phase comparison)
	-- CDRlock (to check if the CDR clock is 160MHz as expected)
	-- divider reset command to ensure a good 40MHz phase out of the div4 chip (see for example TTC_FMC ref design from Paschalis Vichoudis)
	
	-- this design does not decode broadcast and individually addressed commands/data frame

	-- sy89872 outputs a low jitter and in phase ttc clock. if not required in phase, do not use div_nrst(if used, must keep
	-- the trace as short as possible to avoid reflection. this signal is very timing critical)
	-- fpga ttcclk output jitter is not measured.
	-- all input/output should have vccio = 2.5v, vccaux is recommended to use 3.3v to have more accurate internal differential input termination

--=================================================================================================--
--=================================================================================================--

-- IEEE VHDL standard library:
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_misc.all;

-- Xilinx devices library:
library unisim;
use unisim.vcomponents.all;

-- Custom libraries and packages:
use work.all;


--=================================================================================================--
--======================================= Module Body =============================================-- 
--=================================================================================================--


entity cdr2a_b_clk is
generic (pll_locked_delay: integer:= 200);
port 
(
	--=======================--
    -- adn2814 cdr interface --
    --=======================--      
	cdrclk_in						: in   std_logic;				-- ADN2812 CDR 160MHz clock output (from MMCM)
	cdrdata_in 						: in   std_logic;				-- ADN2812 CDR Serial Data output
	cdrlock_in						: in   std_logic;				-- from MMCM
	cdrlock_out						: out  std_logic;				-- MMCM locked delayed
	--==========================--
    -- sy8972 divider interface --
    --==========================--  
	div_nrst 						: out  std_logic;				-- clock divider sy89872 async reset control, used to align the phase of 40mhz clock divider output relative to the input stream
	
	--==========================--
    -- sy8972 divider interface --
    --==========================--  
	ttc_clock 						: out  std_logic;				-- gated reconstructed 40MHz TTC clock from the data, to cross-check the phase alignment of the TTC clock out of the sy8972
	Achannel							: out  std_logic;				-- A channel = Trigger
	Bchannel							: out  std_logic;				-- B serial stream
	ttc_frame_reset				: out  std_logic;				-- to reset B channel if sy89872 is reset		
	ttc_strobe						: out  std_logic				-- selects B channel	
);
end cdr2a_b_clk;


architecture behavioral of cdr2a_b_clk is
--============================= Attributes ===============================--   
   
   -- Comment: The "keep" constant is used to avoid that ISE changes the name of 
   --          the signals to be analysed with Chipscope.
   
   attribute keep                         : string;   

   --========================================================================--       
   
   --========================= Signal Declarations ==========================--

   
   --=======================--
   -- Internal signals --
   --=======================--  

   

	signal cdrclk : std_logic := '0';
	signal cdr_lock : std_logic := '0';
	signal cdrdata_q : std_logic_vector(1 downto 0) := (others =>'0');
	signal div8 : std_logic_vector(2 downto 0) := (others =>'0');
	signal toggle_cnt : std_logic_vector(1 downto 0) := (others =>'0');
	signal toggle_channel : std_logic := '1';
	signal a_channel_time_domain : std_logic := '1';
	signal l1a : std_logic := '0';
	signal strng_length : std_logic_vector(3 downto 0) := (others =>'0');
	signal div_rst_cnt : std_logic_vector(4 downto 0) := (others =>'0');
	signal ttc_str, ttcclk : std_logic := '0';
	signal sr : std_logic_vector(12 downto 0) := (others => '0');
	signal rec_cntr : std_logic_vector(5 downto 0) := (others => '0');
	signal rec_frame : std_logic := '0';
	signal fmt : std_logic := '0';




begin



Achannel <= l1a;
	 
cdrclk <= cdrclk_in ;


--===================================================--	
delay_after_lock: process(cdrclk, cdrlock_in) --cdr_pll_lock)
--delay before starting the A and B channel extraction
--===================================================--
variable timer: integer :=200;
begin
--	if cdr_pll_lock='0' then
	if cdrlock_in='0' then
		timer		:= pll_locked_delay;--pll_locked_delay;
		cdr_lock <= '0';
	elsif cdrclk'event and cdrclk='1' then
		if timer=0 then
			cdr_lock <= '1';
		else
			timer:=timer-1;
		end if;	
	end if;	
end process;
--===================================================--

cdrlock_out <= cdr_lock;
	



--===================================================--	
process(cdrclk, cdr_lock )
--Frame alignment (A and B channel detection)
--ensured by the fact that B(idle)=1 and A is not able to have more than 11 consecutive '1's
--===================================================--

												-----B-------�------A-------�-----B-------�------A-------�-----B-------�------A-------�-----B-------�------A-------�
-- A_channel_time_domain				_____________�--------------�_____________�--------------�_____________�--------------�_____________�--------------
-- toggle_channel							______�------�_______�------�______�------�_______�------�______�------�_______�------�______�------�_______�------�

--===================================================--
begin

if cdr_lock = '0' then
	div8 							<= (others => '0');
	toggle_cnt 					<= (others => '0');
	cdrdata_q					<= (others => '0');
	toggle_channel 			<= '1';
	a_channel_time_domain 	<= '1';
	l1a							<= '0';
	strng_length 				<= (others => '0');
elsif(cdrclk'event and cdrclk = '1')then
		
		cdrdata_q <= cdrdata_q(0) & cdrdata_in;
		
		--
		if(toggle_channel = '0')then
			div8 <= div8 + 1;
		end if;
		
		-- ttc signal should always toggle at a/b channel crossing, otherwise toggle_channel is at wrong position. toggle_cnt counts these errors.
		if(div8 = "111" or toggle_cnt = "11")then
			toggle_cnt <= (others => '0');				
		elsif(cdrdata_q(1) = cdrdata_q(0) and toggle_channel = '0')then
			toggle_cnt <= toggle_cnt + 1;
		end if;
		
		--toggle channel is '1' during the second part of each time domain (A or B channel), ie before the next toggling of the ttc signal
		if(toggle_cnt /= "11")then
			toggle_channel <= not toggle_channel;
		end if;
		
		--  if illegal l1a='1'/data = '0' sequence reaches 11, resync the phase
		if(toggle_channel = '1' and (a_channel_time_domain = '1' or strng_length /= x"b"))then
			a_channel_time_domain <= not a_channel_time_domain;
		end if;
		
		-- l1a generation: if the data toggles during the Achannel time domain, L1A=1, else L1A=0
		if(a_channel_time_domain = '1' and toggle_channel = '1')then
			if(cdrdata_q(1) /= cdrdata_q(0))then
				l1a <= '1';
			else
				l1a <= '0';
			end if;
		end if;
		
		--	l1a = '1' and b_channel data = '0' can not repeat 11 times. strng_length counts the repeat length of this data pattern
		if(a_channel_time_domain = '0' and toggle_channel = '1')then
			if(l1a = '0' or (cdrdata_q(1) /= cdrdata_q(0)) or strng_length = x"b")then
				strng_length <= (others => '0');
			else
				strng_length <= strng_length + 1;
			end if;
		end if;
	end if;
end process;

--===================================================--	
process(cdrclk,cdr_lock)
-- clock divider sy89872 async reset control, used to align the phase of 40mhz clock divider output relative to the input stream
--===================================================--	
begin
	if(cdr_lock = '0')then
		div_nrst 	<= '0';
		div_rst_cnt <= (others => '0');
		
	-- whenever phase adjustment occurs, reset ttc clock divider	
	elsif(cdrclk'event and cdrclk = '1')then

		if(toggle_cnt = "11" or strng_length = x"b")then
			div_nrst 	<= '0';
			div_rst_cnt <= (others => '0');
		-- release the ttc clock divider reset if no more phase error for at least 16 ttc clock cycles
		elsif(ttc_str = '1')then
			if div_rst_cnt ="10000" then
				div_nrst	<= '1';
			else
				div_rst_cnt <= div_rst_cnt + 1;
			end if;
		end if;

--		elsif(ttc_str = '1')then
--			div_nrst <= div_rst_cnt(4);
--			if(div_rst_cnt(4) = '0')then
--				div_rst_cnt <= div_rst_cnt + 1;
--			end if;
--		end if;

	end if;
end process;

	ttc_frame_reset <= div_rst_cnt(4);
--===================================================--		
	
--===================================================--	
process(cdrclk)
-- clock divider sy89872 async reset control, used to align the phase of 40mhz clock divider output relative to the input stream
--===================================================--	
begin
	if(cdrclk'event and cdrclk = '1')then
		if(toggle_channel = '1')then
			ttcclk <= not a_channel_time_domain; 
		end if;
		if(toggle_channel = '1' and a_channel_time_domain = '0')then
-- b channel data, command frames
			Bchannel <= cdrdata_q(1) xor cdrdata_q(0);
		end if;
		-- ttc_str selects b-channel data
		ttc_str <= not toggle_channel and a_channel_time_domain; 
	end if;	
end process;

	ttc_strobe <=ttc_str;
	ttc_clock <= ttcclk;

end behavioral;

