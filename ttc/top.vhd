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
--library unisim;
--use unisim.vcomponents.all;

entity top is
    port(   
    --============================================ output ============================================--
    --== ttc encoder output
    data_out_p                      : out std_logic;                     
    data_out_n                      : out std_logic; 
    --== ttc decoder output
	div_nrst 						: out  std_logic;			        
	single_bit_error    			: out std_logic;
	double_bit_error    			: out std_logic;
	communication_error 			: out std_logic;
	l1a_out							: out std_logic;
	brc_strobe_out					: out std_logic;
	addr_strobe_out					: out std_logic;
	--== TTDDDDDEB
	brc_t2_out						: out std_logic_vector(1 downto 0);  
	brc_d4_out						: out std_logic_vector(3 downto 0);
	brc_e_out						: out std_logic; 
	brc_b_out						: out std_logic; 
	--== AAAAAAAAAAAAAAE1SSSSSSSSDDDDDDDD
	addr_a14_out					: out std_logic_vector(13 downto 0);
	addr_e_out						: out std_logic;
	addr_s8_out						: out std_logic_vector(7 downto 0);
	addr_d8_out						: out std_logic_vector(7 downto 0);        
	--== auxiliary outputs ===--
	cdrclk_out						: out std_logic;				
	ready							: out std_logic;				
	ttc_clk_gated_out				: out std_logic;	                             
    --============================================ input ============================================--
    clk_in_200_p                    : in std_logic;
    clk_in_200_n                    : in std_logic;    
    reset_in                        : in std_logic);  
end top;

architecture Behavioral of top is

    component ttc_fmc_wrapper is
        port (
        --== ttc fmc interface
        cdrclk_in						: in   std_logic;			
        cdrdata_in 						: in   std_logic;			
        ttc_los 						: in   std_logic;			
        ttc_lol 						: in   std_logic;			
        div_nrst 						: out  std_logic;			        
        --== ttc decoder output
        single_bit_error    			: out std_logic;
        double_bit_error    			: out std_logic;
        communication_error 			: out std_logic;
        l1a								: out std_logic;
        brc_strobe						: out std_logic;
        add_strobe						: out std_logic;
        --== TTDDDDDEB
        brc_t2							: out std_logic_vector(1 downto 0);  
        brc_d4							: out std_logic_vector(3 downto 0);
        brc_e							: out std_logic; 
        brc_b							: out std_logic; 
        --== AAAAAAAAAAAAAAE1SSSSSSSSDDDDDDDD
        add_a14						: out std_logic_vector(13 downto 0);
        add_e							: out std_logic;
        add_s8							: out std_logic_vector(7 downto 0);
        add_d8							: out std_logic_vector(7 downto 0);        
        --== auxiliary outputs ===--
        cdrclk_out						: out std_logic;				
        ready							: out std_logic;				
        ttc_clk_gated					: out std_logic);
    end component;

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

	signal data_out_p_temp : std_logic;
	signal data_out_n_temp : std_logic;
	signal clk_160_p_s 	   : std_logic;
   
                        
begin
    data_out_p <= data_out_p_temp;
    data_out_n <= data_out_n_temp;
    ----------------------------------------------------------------------------------------------------
    --======================= instantiation of the TTC Encoder and TTC Decoder =======================--
    ----------------------------------------------------------------------------------------------------     
    ins_ttcrx:  ttc_fmc_wrapper
        port map ( 
        cdrclk_in               => clk_160_p_s, 									
        cdrdata_in	            => data_out_p_temp,				
        ttc_los                 => reset_in,	
        ttc_lol                 => reset_in,
        div_nrst                => div_nrst,
        single_bit_error        => single_bit_error,    			
        double_bit_error        => double_bit_error,   			
        communication_error     => communication_error,			
        l1a	                    => l1a_out,							
        brc_strobe				=> brc_strobe_out,		
        add_strobe				=> addr_strobe_out,		
        brc_t2					=> brc_t2_out,		  
        brc_d4					=> brc_d4_out,		
        brc_e					=> brc_e_out,		 
        brc_b					=> brc_b_out,		 
        add_a14				=> addr_a14_out,		
        add_e					=> addr_e_out,		
        add_s8					=> addr_s8_out,		
        add_d8					=> addr_d8_out,		
        cdrclk_out	        	=> cdrclk_out,						
        ready					=> ready,    					
        ttc_clk_gated			=> ttc_clk_gated_out); 
        
       
    ins_ttc_encoder :  ttc_encoder_data_gen 
        port map ( 
        data_out_p						=> data_out_p_temp, 					
        data_out_n						=> data_out_n_temp, 
        clk_out_40_p					=> clk_160_p_s, 					
        clk_out_40_n					=> open,
        ready_out                       => open,			
        clk_in_200_p    				=> clk_in_200_p,
        clk_in_200_n					=> clk_in_200_n,	
        reset_in						=> reset_in);
         
end Behavioral;
