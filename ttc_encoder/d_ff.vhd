--==========================================================================================================--
--======================================== Module Information =============================================--
--==========================================================================================================--
--                                                                                         
-- Company:                IPM                                                         
-- Engineer:               Hanie Ghasemy (hanie.ghasemy@gmail.com)
--                                                                                                 
-- Project Name:           TTC                                                            
-- Module Name:            d_ff                                         
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
--                         24/07/2018   1.0       hanie         	- First             
--
--==========================================================================================================--

library ieee;
use ieee.std_logic_1164.all;
--== uncomment the following library declaration if using arithmetic functions with signed or unsigned values
-- use ieee.numeric_std.all;

--== uncomment the following library declaration if instantiating any xilinx leaf cells in this code
-- library unisim;
-- use unisim.vcomponents.all;

entity d_ff is
    port(
        clk_in      : in std_logic;
        reset_in    : in std_logic;                
        d_in        : in std_logic;
        q_out       : out std_logic;
        nq_out      : out std_logic);
end entity;

architecture rtl of d_ff is

    signal d_internal : std_logic;

begin
    nq_out <= not d_internal;
    q_out  <=     d_internal;

    p_dff : process(reset_in, clk_in)
    begin
        if reset_in = '1' then 
            d_internal  <= '0';
        elsif rising_edge(clk_in) then 
            d_internal  <= d_in;
        else
            d_internal  <= d_internal;  
        end if;
    end process;

end architecture;