--==========================================================================================================--
--======================================== Module Information =============================================--
--==========================================================================================================--
--                                                                                         
-- Company:                IPM                                                         
-- Engineer:               Hanie Ghasemy (hanie.ghasemy@gmail.com)
--                                                                                                 
-- Project Name:           TTC                                                            
-- Module Name:            tb_ttc_data_generation                                         
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
--                         04/10/2018   1.0       hanie         	- First             
--
--==========================================================================================================--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--== uncomment the following library declaration if instantiating any xilinx leaf cells in this code
--library unisim;
--use unisim.vcomponents.all;

entity tb_ttc_data_generation is
--  Port ( );
end tb_ttc_data_generation;

architecture Behavioral of tb_ttc_data_generation is 
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
    --====================================== signal definition ======================================--
    ----------------------------------------------------------------------------------------------------       
    --== input to ttc_fifo
	signal valid_a_ch_data_s		    : std_logic;	
	signal a_ch_data_s 			        : std_logic;
    signal brc_data_s        		    : std_logic_vector(7 downto 0);
	signal valid_brc_data_s    	        : std_logic;	
    signal addr_data_s           		: std_logic_vector(30 downto 0);
    signal valid_addr_data_s            : std_logic;	
    --== output from ttc_fifo
	signal ready_a_ch_s	                : std_logic;	
	signal ready_b_ch_s	                : std_logic;	

    --== clock & reset & controller signal
    signal stopSimulation		        : boolean   := false;
    signal startSimulation		        : boolean   := false;
    signal reset                   	    : std_logic;    
	signal clk_s				        : std_logic;
    constant clk_ttc_period             : time      := 25000 ps;
    constant period_80                  : time      := 12500 ps;
    constant clk_cdr_period             : time      := 6250  ps;               
    constant period_200                 : time      := 5000  ps; 

begin     
    ----------------------------------------------------------------------------------------------------
    --=========================== instantiation of the ttc_data_generation ==========================--
    ---------------------------------------------------------------------------------------------------- 
    ins_ttc_data_generation: ttc_data_generation 
    port map(  
        clk_in 									=> clk_s,
        reset_in								=> reset,
        ready_a_ch_in							=> ready_a_ch_s,
        ready_b_ch_in							=> ready_b_ch_s,
        a_ch_data_out							=> a_ch_data_s,
        valid_a_ch_data_out						=> valid_a_ch_data_s,	
        brc_data_out							=> brc_data_s,
        valid_brc_data_out						=> valid_brc_data_s,	
        addr_data_out							=> addr_data_s,
        valid_addr_data_out						=> valid_addr_data_s);	
    ----------------------------------------------------------------------------------------------------
    --=========================== simulation control & stimulus generation ===========================--
    ----------------------------------------------------------------------------------------------------
    --======================================== clock & reset ========================================--  
	--== simulation control 
	stopsimulation <= true after 5000 us;		-- duration of the simulation	
    assert not stopsimulation report "simulation finished" severity note;	

	startSimulation <= true after 100 ns;			
    assert not startSimulation report "simulation started" severity note;	

    -- assert not startData report "simulation started" severity note;        
    --== 40 mhz clock generation process 
    p_clk_s : process	
    begin   
        if not stopsimulation then	
            clk_s 	    <= '1';			
            wait for clk_ttc_period/2;			
            clk_s  	    <= '0';			
            wait for clk_ttc_period/2;	
        end if;		
    end process; 
    --== reset 
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
   --== ready a_ch
   p_a_ch : process(clk_s, reset, valid_a_ch_data_s)	
   begin
        if(reset = '1') then 
            ready_a_ch_s           <= '0';
        elsif (rising_edge(clk_s)) then
            ready_a_ch_s           <= not ready_a_ch_s;
            -- ready_a_ch_s           <= '1';
        end if;            		
  end process;        
   --== ready b_ch
   p_b_ch : process(clk_s, reset)	
   begin
        if(reset = '1') then 
            ready_b_ch_s           <= '0';
        elsif (rising_edge(clk_s)) then
            ready_b_ch_s           <= not ready_b_ch_s;
            -- ready_b_ch_s           <= '1';
        end if;            		
  end process;        
end Behavioral;
