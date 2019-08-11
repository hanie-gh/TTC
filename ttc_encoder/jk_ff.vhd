--==========================================================================================================--
--======================================== Module Information =============================================--
--==========================================================================================================--
--                                                                                         
-- Company:                IPM                                                         
-- Engineer:               Hanie Ghasemy (hanie.ghasemy@gmail.com)
--                                                                                                 
-- Project Name:           TTC                                                            
-- Module Name:            jk_ff                                         
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

entity jk_ff is
    port(
        clk_in          : in std_logic;
        reset_in        : in std_logic;                
        j_in            : in std_logic;
        k_in            : in std_logic;
        q_out           : out std_logic;
        nq_out          : out std_logic);
end entity;

architecture rtl of jk_ff is

    signal jk_internal : std_logic;

begin

    nq_out  <= not jk_internal;
    q_out   <=     jk_internal;

    p_jk: process(reset_in, clk_in)
    begin
        if reset_in = '1' then 
            jk_internal <= '0';
        elsif rising_edge(clk_in) then 
            if    j_in = '0' and k_in = '0' then 
                jk_internal <= jk_internal;  
            elsif j_in = '1' and k_in = '1' then 
                jk_internal <= not jk_internal;  
            elsif j_in = '0' and k_in = '1' then 
                jk_internal <= '0';                      
            else                                    --== if j_in = '1' and k_in = '0' then 
                jk_internal <= '1';                                                                         
            end if;
        end if;
    end process;

end architecture;