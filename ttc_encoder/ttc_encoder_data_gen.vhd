--==========================================================================================================--
--======================================== Module Information =============================================--
--==========================================================================================================--
--                                                                                         
-- Company:                IPM                                                         
-- Engineer:               Hanie Ghasemy (hanie.ghasemy@gmail.com)
--                                                                                                 
-- Project Name:           TTC                                                            
-- Module Name:            ttc_encoder_data_gen                                         
--                                                                                                 
-- Language:               VHDL'93                                                                  
--                                                                                                   
-- Target Device:          Kintex7 - KC705                                                         
-- Tool version:           VIVADO 2018.01                                                               
--                                                                                                   
-- Version:                0.1                                                                      
--
-- Description:                           
--
-- Versions history:       DATE         VERSION   AUTHOR            DESCRIPTION
--
--                         25/09/2018   1.0       hanie             - First             
--
--==========================================================================================================--

library ieee;
use ieee.std_logic_1164.all;

entity ttc_encoder_data_gen is
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
end entity;

architecture behavioral of ttc_encoder_data_gen is
--== dont_touch: synthesis & placement routing
    attribute dont_touch : string;
    attribute dont_touch of  ins_ttc_data_generation : label is "true";
--== keep_hierarchy: synthesis
--    attribute keep_hierarchy : string;
--    attribute keep_hierarchy of  ins_fifo_ch_b : label is "yes";
  
    ----------------------------------------------------------------------------------------------------
    --=================================== component declaration ===================================--  
    ----------------------------------------------------------------------------------------------------     
    component ttc_enc_wrapper 
        port( 
        --============================================ output ============================================--
        --== ttc encoder output
        data_out_p                      : out std_logic;                     
        data_out_n                      : out std_logic; 
        clk_out_40_p                    : out std_logic;                     
        clk_out_40_n                    : out std_logic;             
        --== output showing ready to start working (internal mmcm lock) 
        ready_out                       : out std_logic; 
        --== output enable to get data (a & b channel)
        ready_rd_a_ch_out               : out std_logic;                 
        ready_rd_b_ch_out               : out std_logic; 
        --============================================ input ============================================--
        clk_in_200_p                    : in std_logic;
        clk_in_200_n                    : in std_logic;    
        reset_in                        : in std_logic;
    --    a_ch_rd_en_in				    : in std_logic;
    --    b_ch_rd_en_in 				: in std_logic;    
        a_ch_data_in  					: in std_logic;	    
        valid_a_ch_data_in  			: in std_logic;
        brc_data_in  					: in std_logic_vector(7 downto 0);
        valid_brc_data_in  				: in std_logic;	
        addr_data_in  					: in std_logic_vector(30 downto 0);
        valid_addr_data_in  			: in std_logic);     
    end component;
    
    component ttc_data_generation is
        port( 
        --============================================ input =============================================--
        clk_in 									: in std_logic;
        reset_in								: in std_logic;
        ready_a_ch_in							: in std_logic;
        ready_b_ch_in							: in std_logic;
        --=========================================== output ============================================--
        a_ch_data_out							: out std_logic;	    
        valid_a_ch_data_out						: out std_logic;
        brc_data_out							: out std_logic_vector(7 downto 0);
        valid_brc_data_out						: out std_logic;	
        addr_data_out							: out std_logic_vector(30 downto 0);
        valid_addr_data_out						: out std_logic);		
    end component; 
    ----------------------------------------------------------------------------------------------------
    --============================ internal signal & constant declaration ============================--  
    ---------------------------------------------------------------------------------------------------- 
    --======================================= ttc_enc_wrapper =======================================--
    --== output from it
    signal clk_40_p                                 : std_logic; 
    signal clk_40_n                                 : std_logic;
    signal ready_from_enc                           : std_logic;      
    signal ready_rd_a_ch_from_enc                   : std_logic;      
    signal ready_rd_b_ch_from_enc                   : std_logic;      
    --== input to it
	signal a_ch_data_s								: std_logic;
	signal valid_a_ch_data_s						: std_logic;              
	signal brc_data_s								: std_logic_vector(7 downto 0);
	signal valid_brc_data_s						    : std_logic;              
	signal addr_data_s								: std_logic_vector(30 downto 0);
    signal valid_addr_data_s						: std_logic;     
    --======================================= data_generation =======================================--
    --== input
    signal ready_rd_a_ch_2data_gen                  : std_logic;      
    signal ready_rd_b_ch_2data_gen                  : std_logic;             
begin   
    ----------------------------------------------------------------------------------------------------
    --========================================== assignment ==========================================--
    ----------------------------------------------------------------------------------------------------
    --=========================== full alarm to stop sending data as input ===========================--
    ready_rd_a_ch_2data_gen                    	<= ready_rd_a_ch_from_enc and ready_from_enc;
    ready_rd_b_ch_2data_gen                    	<= ready_rd_b_ch_from_enc and ready_from_enc;
    
    ready_out                                   <= ready_from_enc;    
    clk_out_40_p                                <= clk_40_p;
    clk_out_40_n                                <= clk_40_n;

    ----------------------------------------------------------------------------------------------------
    --======================================== instantiation ========================================--
    ---------------------------------------------------------------------------------------------------- 
    --== instantiation of the asyn ttc_data_generation
    ins_ttc_data_generation : ttc_data_generation
        port map( 
        clk_in                      => clk_40_p,       									
        reset_in					=> reset_in,    			
        ready_a_ch_in				=> ready_rd_a_ch_2data_gen,			
        ready_b_ch_in				=> ready_rd_b_ch_2data_gen,			
        a_ch_data_out			    => a_ch_data_s,			
        valid_a_ch_data_out			=> valid_a_ch_data_s,	
        brc_data_out			    => brc_data_s,
        valid_brc_data_out			=> valid_brc_data_s,		
        addr_data_out			    => addr_data_s,
        valid_addr_data_out		    => valid_addr_data_s);

    --== instantiation of the ttcv_enc_wrapper
    ins_ttc : ttc_enc_wrapper
        port map( 
        data_out_p                  => data_out_p,                    
        data_out_n                  => data_out_n,
        clk_out_40_p                => clk_40_p,                    
        clk_out_40_n                => clk_40_n,            
        ready_out                   => ready_from_enc,
        ready_rd_a_ch_out           => ready_rd_a_ch_from_enc,                
        ready_rd_b_ch_out           => ready_rd_b_ch_from_enc,
        clk_in_200_p                => clk_in_200_p,
        clk_in_200_n                => clk_in_200_n, 
        reset_in                    => reset_in,
--        a_ch_rd_en_in			    => ready_rd_a_from_fifo,
--        b_ch_rd_en_in 			=> ready_rd_b_from_fifo, 
        a_ch_data_in			    => a_ch_data_s,			
        valid_a_ch_data_in			=> valid_a_ch_data_s,	
        brc_data_in			        => brc_data_s,
        valid_brc_data_in			=> valid_brc_data_s,		
        addr_data_in			    => addr_data_s,
        valid_addr_data_in		    => valid_addr_data_s);
end architecture;