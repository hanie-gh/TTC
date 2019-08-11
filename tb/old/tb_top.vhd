--==========================================================================================================--
--======================================== Module Information =============================================--
--==========================================================================================================--
--                                                                                         
-- Company:                IPM                                                         
-- Engineer:               Hanie Ghasemy (hanie.ghasemy@gmail.com)
--                                                                                                 
-- Project Name:           TTC                                                            
-- Module Name:            tb_top                                         
--                                                                                                 
-- Language:               VHDL'93                                                                  
--                                                                                                   
-- Target Device:          Kintex7 - KC705                                                         
-- Tool version:           VIVADO 2018.01                                                               
--                                                                                                   
-- Version:                0.1                                                                      
--
-- Description:			   provide needed inputs for testing ttc encoder and decoder         
--
-- Versions history:       DATE         VERSION   AUTHOR            DESCRIPTION
--
--                         06/10/2018   1.0       hanie         	- First             
--
--==========================================================================================================--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--== uncomment the following library declaration if instantiating any xilinx leaf cells in this code ==--
--library unisim;
--use unisim.vcomponents.all;

entity tb_top is
--  Port ( );
end tb_top;

architecture behavioral of tb_top is
    component top is
        port( 
        --========================================= TTC encoder =========================================--            
        --== ttc input clock interface
        clk_in_200_p					: in std_logic;
        clk_in_200_n					: in std_logic;	
        reset							: in std_logic;   
        ttc_clk_encoder_out			    : out std_logic;        		
        --========================================= TTC decoder =========================================--
        clk_in_160						: in std_logic; 
        div_nrst_out					: out  std_logic;			
        --== ttc encoder outputs
        single_bit_error    			: out std_logic;
        double_bit_error    			: out std_logic;
        communication_error 			: out std_logic;        
        --== Channel A
        l1a_out							: out std_logic;
        brc_strobe_out					: out std_logic;
        addr_strobe_out					: out std_logic;        
        --== AAAAAAAAAAAAAAE1SSSSSSSSDDDDDDDD : Channel B outdividually addressed broadcast
        addr_a14_out					: out std_logic_vector(13 downto 0);
        addr_e_out						: out std_logic;
        addr_s8_out						: out std_logic_vector(7 downto 0);
        addr_d8_out						: out std_logic_vector(7 downto 0);	
        --== TTDDDDDEB :  channel B broadcast
        brc_t2_out						: out std_logic_vector(1 downto 0);  
        brc_d4_out						: out std_logic_vector(3 downto 0);
        brc_e_out			    		: out std_logic; 
        brc_b_out						: out std_logic;
        --== auxiliary outputs
        cdrclk_out						: out std_logic;				
        ready_from_ttc_enc_out			: out std_logic;				
        ready_from_ttc_dec_out			: out std_logic;				
        ttc_clk_gated_out				: out std_logic);  
    end component;

    --== get output from ttc decoder 
	signal clk_ttc_from_rx          : std_logic;
	signal brc_strobe_from_rx       : std_logic;
    signal addr_strobe_from_rx   	: std_logic;
	signal l1a_from_rx         		: std_logic;
	signal addr_a14_from_rx			: std_logic_vector(13 downto 0);
	signal addr_e_from_rx			: std_logic;
	signal addr_s8_from_rx		    : std_logic_vector(7 downto 0);
	signal addr_d8_from_rx			: std_logic_vector(7 downto 0);	
	signal brc_t2_from_rx			: std_logic_vector(1 downto 0);  
	signal brc_d4_from_rx			: std_logic_vector(3 downto 0);
	signal brc_e_from_rx			: std_logic; 
    signal brc_b_from_rx			: std_logic;
	signal b_ch_brc_from_rx         : std_logic_vector(7 downto 0); 
    signal b_ch_addr_from_rx        : std_logic_vector(30 downto 0); 
    signal ready_from_rx            : std_logic;
    --== get output from ttc encoder  
    signal ready_from_ttc_enc       : std_logic;
    signal ttc_clk_encoder          : std_logic;

    --== simulation control signal ==--
    signal clk_in_160      		    : std_logic := '0';
    signal clk_in_200_p        		: std_logic := '0';
    signal clk_in_200_n          	: std_logic := '1';   
    signal reset                   	: std_logic := '1';      
    signal stopSimulation		    : boolean   := false;
    signal startSimulation		    : boolean   := false;
    constant clk_ttc_period         : time      := 25000 ps;
    constant period_80              : time      := 12500 ps;
    constant clk_cdr_period         : time      := 6250  ps;               
    constant period_200             : time      := 5000  ps;               
begin
    ----------------------------------------------------------------------------------------------------
    --=============================== instantiation of the TTC module ===============================--
    ----------------------------------------------------------------------------------------------------    
    ins_top : top
        port map ( 
        clk_in_200_p				    => clk_in_200_p,
        clk_in_200_n   					=> clk_in_200_n,	
        reset							=> reset,
        ttc_clk_encoder_out             => ttc_clk_encoder,        
        clk_in_160                      => clk_in_160,
        div_nrst_out                    => open, 
        single_bit_error    		    => open, 
        double_bit_error    		    => open, 
        communication_error			    => open, 									
        l1a_out	                        => l1a_from_rx,							
        brc_strobe_out				    => brc_strobe_from_rx,		
        addr_strobe_out				    => addr_strobe_from_rx,		
        brc_t2_out					    => brc_t2_from_rx,		  
        brc_d4_out					    => brc_d4_from_rx,		
        brc_e_out					    => brc_e_from_rx,		 
        brc_b_out					    => brc_b_from_rx,		 
        addr_a14_out				    => addr_a14_from_rx,		
        addr_e_out					    => addr_e_from_rx,		
        addr_s8_out					    => addr_s8_from_rx,		
        addr_d8_out					    => addr_d8_from_rx,
        cdrclk_out					    => clk_ttc_from_rx,				
        ready_from_ttc_enc_out		    => ready_from_ttc_enc,
        ready_from_ttc_dec_out		    => ready_from_rx,
        ttc_clk_gated_out               => open); 

    --== TTDDDDDEB :  Channel B broadcast ==--
    --== AAAAAAAAAAAAAAE1SSSSSSSSDDDDDDDD : Channel B outdividually addressed broadcast ==--
    b_ch_brc_from_rx  <= brc_t2_from_rx & brc_d4_from_rx & brc_e_from_rx & brc_b_from_rx;
    b_ch_addr_from_rx  <= addr_a14_from_rx & addr_e_from_rx & addr_s8_from_rx & addr_d8_from_rx;
    ----------------------------------------------------------------------------------------------------
    --========================= simulation control & stimulus generation =========================--
    ----------------------------------------------------------------------------------------------------  
	--== simulation control 
	stopsimulation <= true after 5000 us;		-- duration of the simulation	
    assert not stopsimulation report "simulation finished" severity note;	

	startSimulation <= true after 100 ns;			
    assert not startSimulation report "simulation started" severity note;	

	--== 160 mhz clock generation process 
    -- clk_in_160 <= not clk_in_160 after clk_cdr_period/2;
    p_clk_in_160 : process	
	begin   
		if not stopsimulation then	
			clk_in_160	<= '1';			
			wait for clk_cdr_period/2;			
			clk_in_160	<= '0';			
			wait for clk_cdr_period/2;	
		end if;		
   end process;	
	
    --== 200 mhz clock generation process ==--
    -- clk_in_200_p <= not clk_in_200_p  after period_200/2;
    -- clk_in_200_n <= not clk_in_200_p;    	
    p_clk_in_200 : process	
    begin   
        if not stopsimulation then	
            clk_in_200_p	<= '1';			
            clk_in_200_n	<= '0';			
            wait for period_200/2;			
            clk_in_200_p	<= '0';			
            clk_in_200_n	<= '1';			
            wait for period_200/2;	
        end if;		
    end process;	

    p_reset : process	
	begin   
		if (not startSimulation) or stopsimulation then	
            reset	<= '1';
            wait for clk_ttc_period;
        elsif startSimulation and (not stopsimulation) then
            reset	<= '0';	
            wait for clk_ttc_period;
		end if;		
   end process;
end behavioral;
