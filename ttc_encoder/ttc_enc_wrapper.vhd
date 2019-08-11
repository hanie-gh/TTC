--==========================================================================================================--
--======================================== Module Information =============================================--
--==========================================================================================================--
--                                                                                         
-- Company:                IPM                                                         
-- Engineer:               Hanie Ghasemy (hanie.ghasemy@gmail.com)
--                                                                                                 
-- Project Name:           TTC                                                            
-- Module Name:            ttc_enc_wrapper                                         
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
--                         24/07/2018   1.0       hanie             - First             
--                         31/08/2018   1.1       hanie             - Second  add ready_out output signal, is activate by the internal delay after MMCM's lock is activated.            
--
--==========================================================================================================--

library ieee;
use ieee.std_logic_1164.all;

entity ttc_enc_wrapper is
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
end entity;

architecture behavioral of ttc_enc_wrapper is
    --== dont_touch: synthesis & placement routing
    attribute dont_touch : string;
    attribute dont_touch of  ins_ttcvx : label is "true";    
    ----------------------------------------------------------------------------------------------------
    --=================================== component declaration ===================================--  
    ---------------------------------------------------------------------------------------------------- 
        
    ------------------------------------------------------------------------------
    --  Output     Output      Phase    Duty Cycle   Pk-to-Pk     Phase
    --   Clock     Freq (MHz)  (degrees)    (%)     Jitter (ps)  Error (ps)
    ------------------------------------------------------------------------------
    -- clk_o_40_p____40.000______0.000______50.0______213.786____196.976
    -- clk_o_40_n____40.000____180.000______50.0______213.786____196.976
    -- clk_o_80_p____80.000______0.000______50.0______185.331____196.976
    -- clk_o_80_n____80.000____180.000______50.0______185.331____196.976
    -- clk_o_160_p___160.000______0.000______50.0______162.464____196.976
    -- clk_o_160_n___160.000____180.000______50.0______162.464____196.976
    ------------------------------------------------------------------------------
    -- Input Clock   Freq (MHz)    Input Jitter (UI)
    ------------------------------------------------------------------------------
    -- __primary_________200.000____________0.010
    ------------------------------------------------------------------------------
    component mmcm
        port (
        clk_out_40_p      			    : out std_logic;
        clk_out_40_n      			    : out std_logic;
        clk_out_80_p      			    : out std_logic;
        clk_out_80_n      			    : out std_logic;
        clk_out_160_p     			    : out std_logic;
        clk_out_160_n     			    : out std_logic;
        reset_in          			    : in std_logic;
        locked            			    : out std_logic;
        clk_in_200_p          	        : in std_logic;
        clk_in_200_n      			    : in std_logic);
    end component;

    component ttcvi_emulation  
        port( 
        --============================================ output ============================================--
        a_ch_out    					: out std_logic; 					
        b_ch_out    					: out std_logic; 
        strobe_out    					: out std_logic; 
        --== output enable to get data (a & b channel)
        ready_rd_a_ch_out               : out std_logic;                 
        ready_rd_b_ch_out               : out std_logic; 
        --============================================ input ============================================--
        clk_in 							: in std_logic;             --== 40  mhz ttc clk, same as clk_rd 
        reset_in				    	: in std_logic;             --== active high reset_in
        a_ch_data_in  					: in std_logic;	    
        valid_a_ch_data_in  			: in std_logic;
        brc_data_in  					: in std_logic_vector(7 downto 0);
        valid_brc_data_in  				: in std_logic;	
        addr_data_in  					: in std_logic_vector(30 downto 0);
        valid_addr_data_in  			: in std_logic);
    end component;

    component ttcvx_emulation  
        port( 
        --======================================== ttcvx outputs ========================================--
        data_out_p                      : out std_logic;                     
        data_out_n                      : out std_logic;                       
        --========================================= ttcvx inputs =========================================--
        clk_in_40_p                     : in std_logic;
        clk_in_80_p                     : in std_logic;
        clk_in_80_n                     : in std_logic;
        clk_in_160_n                    : in std_logic;
        reset_in                        : in std_logic;
        --== ttc encoder inputs     
        valid_in                        : in std_logic;                     
        a_ch_in                         : in std_logic;                     
        b_ch_in                         : in std_logic); 
    end component;
    
    component d_ff 
        port(
        clk_in                          : in std_logic;
        reset_in                        : in std_logic;                
        d_in                            : in std_logic;
        q_out                           : out std_logic;
        nq_out                          : out std_logic);
    end component;
    ----------------------------------------------------------------------------------------------------
    --============================ internal signal & constant declaration ============================--  
    ----------------------------------------------------------------------------------------------------     
    --== delay 
    constant delay                 		: integer := 50;
    signal ready_s                    	: std_logic; -- flag that shows when pll is locked (after the certial delay) 
    signal reset_internal            	: std_logic;  

    --== mmcm output
    signal clk_40_p_s                  	: std_logic;
    signal clk_40_n_s                  	: std_logic;
    signal clk_80_p_S                  	: std_logic;
    signal clk_80_n_s                  	: std_logic;
    signal clk_160_p_s              	: std_logic;
    signal clk_160_n_s              	: std_logic;
    signal locked_s                 	: std_logic;
    --== ttcvi to ttcvx
    signal a_ch_from_ttcvi        	    : std_logic;
    signal b_ch_from_ttcvi        	    : std_logic;
    signal data_strobe_from_ttcvi 	    : std_logic;
    --== ttcvx output
    signal data_out_p_ttcvx            	: std_logic;
    signal data_out_n_ttcvx            	: std_logic;
    --== buffer final output
    constant buf_length                	: integer := 0;
    signal data_out_p_buf            	: std_logic_vector(buf_length downto 0);
    signal data_out_n_buf            	: std_logic_vector(buf_length downto 0);     

begin   
    ----------------------------------------------------------------------------------------------------
    --======================================== assignment ========================================--
    ----------------------------------------------------------------------------------------------------
    --============================================ output ============================================--
    --== ready to start sending data to this module
    ready_out                         	<= ready_s;
    --== output clock from mmcm    
    clk_out_40_p                    	<= clk_160_p_s;
    clk_out_40_n                    	<= clk_40_n_s;
    --== output data
    data_out_p                         	<= data_out_p_buf(buf_length);
    data_out_n                         	<= data_out_n_buf(buf_length);      
    --======================================= internal signal =======================================--
    reset_internal                     	<= reset_in or (not(ready_s));
    data_out_p_buf(0)                	<= data_out_p_ttcvx;
    data_out_n_buf(0)                 	<= data_out_n_ttcvx;

    ----------------------------------------------------------------------------------------------------
    --======================================= synchronization =======================================--
    ----------------------------------------------------------------------------------------------------
    --==== synchronization of the output stream with rising edge of ttc clock ====--
    --== channel a should be aligned with the high level of the clock (when clock is '1'  
    --== channel b should be aligned with the low  level of the clock (when clock is '0')
    forgen_synch: for ind in 1 to buf_length generate
        ins_dff_out_p : d_ff
            port map (
            clk_in    => clk_160_n_s,
            reset_in  => reset_internal,             
            d_in      => data_out_p_buf(ind-1),
            q_out     => data_out_p_buf(ind),
            nq_out    => open);
        
        ins_dff_out_n : d_ff
            port map (
            clk_in    => clk_160_n_s,
            reset_in  => reset_internal,             
            d_in      => data_out_n_buf(ind-1),
            q_out     => data_out_n_buf(ind),
            nq_out    => open);  
    end generate forgen_synch;

    ----------------------------------------------------------------------------------------------------
    --============================  ready to recieving data from output  ============================--
    ----------------------------------------------------------------------------------------------------
    --== after reset_in is set to 0 (deactive), MMCM module starts working, after the internal signals 
    --== are became stable, lock is set by MMCM to active state. It means that it is able to recieving data.
    --== and encoding them then transmitting them to the output.
    --== ready signal (as output) is activated that shows encoder module is ready for recieving data.
    --== ready signal active by certain dalay after MMCM's lock signal is activated.
    delay_before_enable: process(locked_s, clk_40_p_s) 
    variable timer: integer := delay;
    begin
        if locked_s = '0' then
            timer                    	:= delay;
            ready_s                  	<= '0';
        elsif rising_edge(clk_40_p_s) then
            if timer = 0 then
                ready_s             	<= '1';
            else
                timer                	:= timer - 1;
            end if;    
        end if;    
    end process;
    ----------------------------------------------------------------------------------------------------
    --====================================== instantiation ======================================--
    ----------------------------------------------------------------------------------------------------             
    --== instantiation of the mmcm
    ins_clk_wizard : mmcm
        port map ( 
        clk_out_40_p         		=> clk_40_p_s,
        clk_out_40_n        	 	=> clk_40_n_s,
        clk_out_80_p         		=> clk_80_p_s,
        clk_out_80_n         		=> clk_80_n_s,
        clk_out_160_p         		=> clk_160_p_s,
        clk_out_160_n         		=> clk_160_n_s,
        reset_in              		=> reset_in,
        locked                 		=> locked_s,
        clk_in_200_p                => clk_in_200_p ,
        clk_in_200_n           		=> clk_in_200_n);
    --== instantiation of the ttcvi
    ins_ttcvi : ttcvi_emulation
        port map( 
        a_ch_out            		=> a_ch_from_ttcvi,                
        b_ch_out            		=> b_ch_from_ttcvi,
        strobe_out             		=> data_strobe_from_ttcvi,
        ready_rd_a_ch_out     		=> ready_rd_a_ch_out,
        ready_rd_b_ch_out       	=> ready_rd_b_ch_out,
        clk_in                 		=> clk_40_p_s,
        reset_in                    => reset_internal,
        a_ch_data_in         		=> a_ch_data_in,
        valid_a_ch_data_in     		=> valid_a_ch_data_in,
        brc_data_in         		=> brc_data_in,
        valid_brc_data_in           => valid_brc_data_in,
        addr_data_in         		=> addr_data_in,
        valid_addr_data_in          => valid_addr_data_in);

    --== instantiation of the ttcvx
    ins_ttcvx : ttcvx_emulation
        port map( 
        data_out_p            		=> data_out_p_ttcvx,                
        data_out_n            		=> data_out_n_ttcvx,
        clk_in_40_p            		=> clk_40_p_s,
        clk_in_80_p            		=> clk_80_p_s,
        clk_in_80_n           		=> clk_80_n_s,
        clk_in_160_n        		=> clk_160_n_s,
        reset_in                    => reset_internal,
        valid_in             		=> data_strobe_from_ttcvi,
        a_ch_in                 	=> a_ch_from_ttcvi,
        b_ch_in                   	=> b_ch_from_ttcvi);
            
end architecture;