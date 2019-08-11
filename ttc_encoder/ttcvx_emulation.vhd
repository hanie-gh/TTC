--==========================================================================================================--
--======================================== Module Information =============================================--
--==========================================================================================================--                                                                                         
-- Company:                IPM                                                         
-- Engineer:               Hanie Ghasemy (hanie.ghasemy@gmail.com)
--                                                                                                 
-- Project Name:           TTC                                                            
-- Module Name:            ttcvx_emulation                                         
--                                                                                                 
-- Language:               VHDL'93                                                                  
--                                                                                                   
-- Target Device:          Kintex7 - KC705                                                         
-- Tool version:           VIVADO 2018.01                                                               
--                                                                                                   
-- Version:                0.1                                                                      
--
-- Description:			   two inputs, a & b channels are time division multiplexed (TDM) & bi-phase mark encoded  with 40 mhz ttc clock             
--
-- Versions history:       DATE         VERSION   AUTHOR            DESCRIPTION
--
--                         24/07/2018   1.0       hanie         	- First             
--
--==========================================================================================================--

--==========================================================================================================--
--========================================== additional Comments ==========================================--
--==========================================================================================================-- 
	--== output of the TTCvx should show the following waveforms in relation to the TTCvx Clock out.
	--== The oscilloscope should be set to trigger on the rising edge of the clock signal.
--==========================================================================================================--

library ieee;
use ieee.std_logic_1164.all;

entity ttcvx_emulation is 
	port( 
	--=========================================== output ===========================================--
	data_out_p						: out std_logic; 					
	data_out_n						: out std_logic; 					  
	--============================================ input ============================================--
	clk_in_40_p		    			: in std_logic;
	clk_in_80_p					    : in std_logic;
	clk_in_80_n					    : in std_logic;
	clk_in_160_n				    : in std_logic;
	reset_in						: in std_logic;
	--== ttc encoder inputs 	
	valid_in  						: in std_logic; 					
	a_ch_in    						: in std_logic; 					
	b_ch_in    						: in std_logic); 
end entity;

architecture behavioral of ttcvx_emulation is
    ----------------------------------------------------------------------------------------------------
    --==================================== component declaration ====================================--  
	---------------------------------------------------------------------------------------------------- 	
	component jk_ff 
		port(
		clk_in  					: in std_logic;
		reset_in   					: in std_logic;                
		j_in    					: in std_logic;
		k_in    					: in std_logic;
		q_out   					: out std_logic;
		nq_out  					: out std_logic);
	end component;

	component d_ff 
		port(
		clk_in  					: in std_logic;
		reset_in   					: in std_logic;                
		d_in    					: in std_logic;
		q_out   					: out std_logic;
		nq_out  	 				: out std_logic);
	end component;
    ----------------------------------------------------------------------------------------------------
    --============================ internal signal & constant declaration ============================--  
	---------------------------------------------------------------------------------------------------- 
 	signal internal_reset			: std_logic;
	signal sel_cha_chb				: std_logic;
	signal sel_cha_chb_buf			: std_logic;
	signal sel_cha_chb_buf_nand		: std_logic;    	

begin	
	----------------------------------------------------------------------------------------------------
	--====================================== combinational part ======================================--
	----------------------------------------------------------------------------------------------------
--    internal_reset 	<= reset_in and valid_in; 
    internal_reset 	<= reset_in;
	sel_cha_chb		<= ((a_ch_in) and (not clk_in_40_p)) or ((b_ch_in) and (clk_in_40_p)) when valid_in = '1' else
					   '0';
    ----------------------------------------------------------------------------------------------------
    --=================================== component instantiation ===================================--
	---------------------------------------------------------------------------------------------------- 
	--== d ff 
	ins_dff : d_ff
		port map (
		clk_in		=> clk_in_80_n,
		reset_in   	=> internal_reset,             
		d_in    	=> sel_cha_chb,
		q_out   	=> open,
		nq_out  	=> sel_cha_chb_buf);

	sel_cha_chb_buf_nand <= sel_cha_chb_buf nand clk_in_80_p;
	--== jk ff 
	ins_jk: jk_ff
		port map (
		clk_in		=> clk_in_160_n,
		reset_in   	=> internal_reset,             
		j_in    	=> sel_cha_chb_buf_nand, 
		k_in    	=> sel_cha_chb_buf_nand,
		q_out   	=> data_out_p,
		nq_out  	=> data_out_n);
   
end architecture;