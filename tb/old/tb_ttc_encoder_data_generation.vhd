--==========================================================================================================--
--======================================== Module Information =============================================--
--==========================================================================================================--
--                                                                                         
-- Company:                IPM                                                         
-- Engineer:               Hanie Ghasemy (hanie.ghasemy@gmail.com)
--                                                                                                 
-- Project Name:           TTC                                                            
-- Module Name:            tb_ttc_encoder_data_generation                                         
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
use ieee.numeric_std.all;

--== uncomment the following library declaration if instantiating any xilinx leaf cells in this code
--library unisim;
--use unisim.vcomponents.all;

entity tb_ttc_encoder_data_generation is     
end entity;

architecture behavioral of tb_ttc_encoder_data_generation is
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
        clk_in_p                        : in std_logic;
        clk_in_n                        : in std_logic;    
        reset_in                        : in std_logic);  
    end component;
    ----------------------------------------------------------------------------------------------------
    --====================================== signal definition ======================================--
    ----------------------------------------------------------------------------------------------------       	
    --== clock & reset & controller signal
    signal stopSimulation		        : boolean   := false;
    signal startSimulation		        : boolean   := false;
    signal clk_in_200_p        		    : std_logic := '0';
    signal clk_in_200_n          	    : std_logic := '1';   
    signal reset                   	    : std_logic := '1';
    constant clk_ttc_period             : time      := 25000 ps;
    constant period_80                  : time      := 12500 ps;
    constant clk_cdr_period             : time      := 6250  ps;               
    constant period_200                 : time      := 5000  ps;     
begin
    ----------------------------------------------------------------------------------------------------
    --================================ instantiation of the ttc_fifo ================================--
    ---------------------------------------------------------------------------------------------------- 
    ins_ttc_data_generation: ttc_encoder_data_gen 
        port map(          
        data_out_p 								=> open,
        data_out_n 								=> open,
        clk_out_40_p 							=> open,
        clk_out_40_n							=> open,
        ready_out 								=> open,
        clk_in_p 								=> clk_in_200_p,
        clk_in_n 								=> clk_in_200_n,
        reset_in								=> reset);	    
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

end architecture;