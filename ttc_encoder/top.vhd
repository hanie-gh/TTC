--==========================================================================================================--
--======================================== Module Information =============================================--
--==========================================================================================================--
--                                                                                         
-- Company:                IPM                                                         
-- Engineer:               Hanie Ghasemy (hanie.ghasemy@gmail.com)
--                                                                                                 
-- Project Name:           TTC                                                            
-- Module Name:            top                                         
--                                                                                                 
-- Language:               VHDL'93                                                                  
--                                                                                                   
-- Target Device:          Kintex7 - KC705                                                         
-- Tool version:           VIVADO 2018.01                                                               
--                                                                                                   
-- Version:                0.1                                                                      
--
-- Description:			   connect ttc encoder to ttc decoder.
--                         the goal of this work is checking proper encoding and decoding procedure.           
--
-- Versions history:       DATE         VERSION   AUTHOR            DESCRIPTION
--
--                         16/08/2018   1.0       hanie         	- First             
--
--==========================================================================================================--

library ieee;
use ieee.std_logic_1164.all;
--== uncomment the following library declaration if using arithmetic functions with signed or unsigned values ==--
--use ieee.numeric_std.all;

--== uncomment the following library declaration if instantiating any xilinx leaf cells in this code ==--
library unisim;
use unisim.vcomponents.all;

entity top is
    port( 
    --========================================= TTC encoder =========================================--            
    --== ttc input clock interface
    clk_in_200_p					: in std_logic;
    clk_in_200_n					: in std_logic;	
    reset							: in std_logic;
    data_p			   				: out std_logic; 
    data_n						    : out std_logic;
    ttc_ready_encoder_out			: out std_logic); 
end top;

architecture Behavioral of top is

    component ttc_encoder_data_gen is
        port(   
        --============================================ output ============================================--
        --== ttc encoder output
        data_out_p                      : out std_logic;                     
        data_out_n                      : out std_logic; 
        clk_out_40_p                    : out std_logic;                     
        clk_out_40_n                    : out std_logic;             
        --== output showing ready to start working (internal mmcm lock) 
        ready_out                       : out std_logic;                                  
        --============================================ input ============================================--
        clk_in_200_p                    : in std_logic;
        clk_in_200_n                    : in std_logic;    
        reset_in                        : in std_logic); 	
    end component;
    
signal data_out :   std_logic;
                        
begin
    ----------------------------------------------------------------------------------------------------
    --======================= instantiation of the TTC Decoder =======================--
    ----------------------------------------------------------------------------------------------------     
        
    ins_ttc_encoder :  ttc_encoder_data_gen 
        port map ( 
        data_out_p						=> data_out, 					
        data_out_n						=> open, 
        clk_out_40_p					=> open, 					
        clk_out_40_n					=> open,
        ready_out                       => ttc_ready_encoder_out,			
        clk_in_200_p    				=> clk_in_200_p,
        clk_in_200_n					=> clk_in_200_n,	
        reset_in						=> reset); 	


OBUFDS_inst : OBUFDS
generic map (
IOSTANDARD => "DEFAULT", -- Specify the output I/O standard
SLEW => "SLOW") -- Specify the output slew rate
port map (
O => data_p, -- Diff_p output (connect directly to top-level port)
OB => data_n, -- Diff_n output (connect directly to top-level port)
I => data_out -- Buffer input
);

         
end Behavioral;
