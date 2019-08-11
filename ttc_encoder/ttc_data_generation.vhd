--==========================================================================================================--
--======================================== Module Information =============================================--
--==========================================================================================================--
--                                                                                         
-- Company:                IPM                                                         
-- Engineer:               Hanie Ghasemy (hanie.ghasemy@gmail.com)
--                                                                                                 
-- Project Name:           TTC                                                            
-- Module Name:            ttc_data_generation                                         
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

--== uncomment the following library declaration if instantiating any xilinx leaf cells in this code ==--
--library unisim;
--use unisim.vcomponents.all;

entity ttc_data_generation is
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
end entity;

architecture behavioral of ttc_data_generation is 
    --== setting value for l1a from channel a for transmitting to ttctx, we have 3 repeated scenarios
    --== 0: l1a = a_ch_sequence              		-- single ** define your sequence in the a_ch_sequence  
    --== 1: l1a = a_ch_sequence              		-- burst  ** define your sequence in the a_ch_sequence  
    constant a_ch_test_type         		: integer   := 1;          
           
    --== setting value for brc or add cmd from channel b for transmitting to ttctx, we have 2 repeated scenarios
    --== 0: brc cmd(7:0) = b_ch_brc_cons 			-- single --** don't use this **--       
    --== 1: brc cmd(7:0) = b_ch_brc_cons            -- burst
    --== 2: brc cmd(7:0) = 8 bit counter            -- counter
    constant b_ch_brc_test_type     		: integer   := 2;
    --== setting value for brc or add cmd from channel b for transmitting to ttctx, we have 2 repeated scenarios
    --== 0: add cmd(31:0) = b_ch_addr_cons          -- single --** don't use this **--  
    --== 1: add cmd(31:0) = b_ch_addr_cons 		    -- burst      
    --== 2: add cmd(31:0) = 31 bit counter          -- counter
    constant b_ch_addr_test_type    		: integer   := 2;

    --== setting which brc or add cmd from channel b, will be transmit to ttctx, we have 3 repeated scenarios
    --== 0: only brc cmd are sent 
    --== 1: only add cmd are sent 
    --== 2: brc & add cmd are sent one after the another 
    constant b_ch_sel_test_type     		: integer   := 0; 

    constant single_frame_start             : integer   := 2**9; -- used when (a_ch_test_type or b_ch_brc_test_type or b_ch_addr_test_type) = 0 

    --== if you select 0 for a_ch_test_type, uncomment only one value for the a_ch_sequence constant  
--     constant a_ch_sequence : std_logic_vector(63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
--     constant a_ch_sequence : std_logic_vector(63 downto 0) := "1000000000000000000000000000000000000000000000000000000000000000";       
    constant a_ch_sequence : std_logic_vector(63 downto 0) := "1111110011001100110011001100110011001100110011001100110011000000";          
--    constant a_ch_sequence : std_logic_vector(63 downto 0) := "1010101010101010101010101010101010101010101010101010101010101010";          
--     constant a_ch_sequence : std_logic_vector(63 downto 0) := "0000111111110000111111110000111111110000111111110000111111110000";     
    -- constant a_ch_sequence : std_logic_vector(63 downto 0) := "1110001000001000101011111111111111111111111110001010111100001010";      -- ** invalid ** sequence with more than 11 consecutive '1'
    -- constant a_ch_sequence : std_logic_vector(63 downto 0) := "0111111111111111111111111111111111111111111111111111111111111111";      -- ** invalid ** sequence with more than 11 consecutive '1'
    -- constant a_ch_sequence : std_logic_vector(63 downto 0) := "1111111111111111111111111111111111111111111111111111111111111111";      -- ** invalid ** sequence with more than 11 consecutive '1'                
	
	--=========================================== Short Broadcast, 16 bits ==============================================--
    --== 00TTDDDDEBHHHHH1: T=test command, 2 bits. D=Command/Data, 4 bits. E=Event Counter Reset, 1 bit. B=Bunch Counter Reset, 1 bit. H=Hamming Code, 5 bits.
    --== if you select 0 for b_ch_brc_test_type, uncomment only one value for the b_ch_brc_cons constant  
--     constant b_ch_brc_cons : std_logic_vector(7 downto 0) := "00000000";
    -- constant b_ch_brc_cons : std_logic_vector(7 downto 0) := "10101010";
    constant b_ch_brc_cons : std_logic_vector(7 downto 0) := "00011000";
--    constant b_ch_brc_cons : std_logic_vector(7 downto 0) := "11111111";
    -- constant b_ch_brc_cons : std_logic_vector(7 downto 0) := "11111111"; -- ** invalid ** sequence with more than 11 consecutive '1' 
    
    --======================================== individually addressed, 42 bits ===========================================--
    --== 01AAAAAAAAAAAAAAE1SSSSSSSSDDDDDDDDHHHHHHH1: A= TTCrx address, 14 bits. E= internal(0)/External(1), 1 bit. S=SubAddress, 8 bits. D=Data, 8 bits. H=Hamming Code, 7 bits.
    --== if you select 0 for b_ch_addr_test_type, uncomment only one value for the b_ch_addr_cons constant  
--     constant b_ch_addr_cons : std_logic_vector(30 downto 0) := "0000000000000000000000000000000";
     constant b_ch_addr_cons : std_logic_vector(30 downto 0) := "1010101010101010101010101010101"; 
--    constant b_ch_addr_cons : std_logic_vector(30 downto 0) := "1111110011001100110011001100000"; 
    -- constant b_ch_addr_cons : std_logic_vector(30 downto 0) := "1111111111111111111111111111111"; -- ** invalid ** sequence with more than 11 consecutive '1'  
    --======================== a channel & b brc, addr channel test scenarios ========================--
    signal a_ch_counter                             : integer range 0 to 63 := 0; 
    signal a_flag_counter                           : integer range 0 to (2**10)    := 0; 
    signal b_flag_counter                           : integer range 0 to (2*single_frame_start)    := 0; 
    signal b_ch_brc_counter_data                    : integer range 0 to (2**8)     := 0; 
    signal b_ch_addr_counter_data                   : integer range 0 to (2**30)    := 0; 
    signal a_ch_flag                                : boolean := false;
    signal b_ch_flag                                : boolean := false;
    signal b_sel_flag                               : boolean := false;
	--======================================= internal signal =======================================-- 
	signal a_ch_data_s								: std_logic;
	signal valid_a_ch_data_s						: std_logic;              
	signal brc_data_s								: std_logic_vector(7 downto 0);
	signal valid_brc_data_s						    : std_logic;              
	signal addr_data_s								: std_logic_vector(30 downto 0);
	signal valid_addr_data_s						: std_logic;              

begin  
 	----------------------------------------------------------------------------------------------------
	--====================================== combinational part ======================================--
    ----------------------------------------------------------------------------------------------------
    a_ch_data_out            <= a_ch_data_s;
    valid_a_ch_data_out      <= valid_a_ch_data_s;
    brc_data_out             <= brc_data_s;
    valid_brc_data_out       <= valid_brc_data_s;
    addr_data_out            <= addr_data_s;
    valid_addr_data_out      <= valid_addr_data_s;
 	----------------------------------------------------------------------------------------------------
	--======================================= sequential part =======================================--
	----------------------------------------------------------------------------------------------------    
    p_generate_a_ch : process(reset_in, clk_in, ready_a_ch_in)
    begin 
        if reset_in = '1'  then
            a_ch_data_s			    	                <= '0';
            valid_a_ch_data_s 			                <= '0';	
            a_ch_counter                                <= 0;
            a_flag_counter                              <= 0;
            a_ch_flag                                   <= false;        	
        elsif rising_edge(clk_in) then
            if (ready_a_ch_in = '1') then                                
				if (a_ch_test_type = 0) then			-- single 
                    if (a_ch_flag = true) then 
                        a_ch_data_s		  	            <= a_ch_sequence(63 - a_ch_counter);
                        valid_a_ch_data_s 			    <= '1';	 
                    else
                        a_ch_data_s		  	            <= '0';
                        valid_a_ch_data_s 			    <= '0'; 
                    end if; 

                    if (a_flag_counter < single_frame_start) then
                        a_flag_counter                  <= a_flag_counter + 1;
                        a_ch_flag                       <= false;                     
                    elsif (a_flag_counter >= single_frame_start) and (a_flag_counter < (single_frame_start+64)) then
                        a_flag_counter                  <= a_flag_counter + 1;
                        a_ch_flag                       <= true;                     
                    else
                        a_flag_counter                  <= a_flag_counter;
                        a_ch_flag                       <= false;                     
                    end if;                  		
                    if (a_ch_flag = false) then
                        a_ch_counter                    <= 0;
                    else
                        a_ch_counter                    <= a_ch_counter + 1;
                    end if;

                elsif (a_ch_test_type = 1) then         -- burst      
                    a_ch_data_s		                    <= a_ch_sequence(63 - a_ch_counter); 
                    valid_a_ch_data_s 			        <= '1';	
                    if a_ch_counter = 63 then
                        a_ch_counter     <= 0;
                    else
                        a_ch_counter     <= a_ch_counter + 1;
                    end if;                                               
                end if; -- a_ch_test_type             
            else
                a_ch_data_s			    	                <= '0';
                valid_a_ch_data_s 			                <= '0';	
--                a_ch_counter                                <= 0;
--                a_flag_counter                              <= 0;
--                a_ch_flag                                   <= false;                
            end if; -- ready      
        end if; -- reset_in & rising_edge_clk if
    end process;

   --======================================= write data cha b =======================================-- 
   p_generate_b_ch : process(reset_in, clk_in, ready_b_ch_in)
   begin
       if reset_in = '1' then
           brc_data_s			                            <= (others => '0');
           addr_data_s         			                    <= (others => '0');
           valid_brc_data_s                             	<= '0';
           valid_addr_data_s                            	<= '0';
           b_ch_flag                                        <= false;
           b_sel_flag                                       <= false;
           b_ch_brc_counter_data                            <= 0;
           b_ch_addr_counter_data                           <= 0;
           b_flag_counter                                   <= 0;
       elsif rising_edge(clk_in) then 
            if (ready_b_ch_in = '1') then

                if (b_ch_sel_test_type = 0) then          -- just send broadcast command                    
                    addr_data_s			                    <= (others => '0');
                    valid_addr_data_s                   	<= '0';                    
					if    b_ch_brc_test_type = 0 then		-- single
						if b_ch_flag = true then 
							brc_data_s			            <= b_ch_brc_cons; 
							valid_brc_data_s                <= '1';
						else
							brc_data_s			            <= (others => '0'); 
							valid_brc_data_s                <= '0';						  						
                        end if; 
                        if (b_flag_counter < single_frame_start) then
                            b_flag_counter                  <= b_flag_counter + 1;
                            b_ch_flag                       <= false;                     
                        elsif (b_flag_counter = single_frame_start) then
                            b_flag_counter                  <= b_flag_counter + 1;
                            b_ch_flag                       <= true;                     
                        else
                            b_flag_counter                  <= b_flag_counter;
                            b_ch_flag                       <= false;                     
                        end if;                  		                                                                                

                    elsif b_ch_brc_test_type = 1 then		-- burst
                        brc_data_s			                <= b_ch_brc_cons; 
                        valid_brc_data_s                	<= '1';                                     
                    elsif b_ch_brc_test_type = 2 then       -- counter
                        brc_data_s			                <= std_logic_vector(to_unsigned(b_ch_brc_counter_data, brc_data_s'length));
                        valid_brc_data_s                	<= '1';  
                        if b_ch_brc_counter_data = (2**8-1) then
                            b_ch_brc_counter_data           <= 0;
                        else
                            b_ch_brc_counter_data           <= b_ch_brc_counter_data + 1;
                        end if;                                     
                    end if;

                elsif (b_ch_sel_test_type = 1) then   -- just send indivisual addressed command                    
                    brc_data_s			                    <= (others => '0');
                    valid_brc_data_s                    	<= '0';                    
                    if    b_ch_addr_test_type = 0 then 		-- single
						if b_ch_flag = true then 
							addr_data_s			            <= b_ch_addr_cons; 
							valid_addr_data_s               <= '1';
						else
							addr_data_s			            <= (others => '0'); 
							valid_addr_data_s               <= '0';						  						
                        end if;  
                        if (b_flag_counter < single_frame_start) then
                            b_flag_counter                  <= b_flag_counter + 1;
                            b_ch_flag                       <= false;                     
                        elsif (b_flag_counter = single_frame_start) then
                            b_flag_counter                  <= b_flag_counter + 1;
                            b_ch_flag                       <= true;                     
                        else
                            b_flag_counter                  <= b_flag_counter;
                            b_ch_flag                       <= false;                     
                        end if;                                      
                    elsif b_ch_addr_test_type = 1 then		-- burst 
                        addr_data_s			                <= b_ch_addr_cons;               
                        valid_addr_data_s               	<= '1';               
                    elsif b_ch_addr_test_type = 2 then      -- counter
                        addr_data_s			                <= std_logic_vector(to_unsigned(b_ch_addr_counter_data, addr_data_s'length));
                        valid_addr_data_s               	<= '1';
                        if b_ch_addr_counter_data = (2**30-1) then
                            b_ch_addr_counter_data          <= 0;
                        else
                            b_ch_addr_counter_data          <= b_ch_addr_counter_data + 1;
                        end if;                          
                    end if;

                elsif (b_ch_sel_test_type = 2) then       -- both brc and ind_addr cmd are sent
					if b_sel_flag = false then  -- send brc cmd  																	
						addr_data_s			                    <= (others => '0');
						valid_addr_data_s                   	<= '0';                    
						if    b_ch_brc_test_type = 0 then		-- single
							if b_ch_flag = true then 
								brc_data_s			            <= b_ch_brc_cons; 
								valid_brc_data_s                <= '1';
							else
								brc_data_s			            <= (others => '0'); 
								valid_brc_data_s                <= '0';						  						
                            end if;  
                            if (b_flag_counter < single_frame_start) then
                                b_flag_counter                  <= b_flag_counter + 1;
                                b_ch_flag                       <= false; 
                                b_sel_flag                     	<= false;                    
                            elsif (b_flag_counter = single_frame_start) then
                                b_flag_counter                  <= b_flag_counter + 1;
                                b_ch_flag                       <= true;
                                b_sel_flag                     	<= false;                     
                            elsif (b_flag_counter > single_frame_start) and (b_flag_counter < 2*single_frame_start) then
                                b_flag_counter                  <= b_flag_counter + 1;
                                b_ch_flag                       <= false; 
                                b_sel_flag                     	<= false;                                                     
                            elsif (b_flag_counter = 2*single_frame_start) then
                                b_flag_counter                  <= 0;
                                b_ch_flag                       <= false; 
                                b_sel_flag                     	<= true;                                                     
                            else                            	                            
                                b_flag_counter                  <= 0;
                                b_ch_flag                       <= false;                     
                                b_sel_flag                      <= false;                     
                            end if;                                                              
						elsif b_ch_brc_test_type = 1 then		-- burst
							brc_data_s			                <= b_ch_brc_cons; 
                            valid_brc_data_s                	<= '1'; 
                            b_sel_flag                     	    <= true;
                            b_ch_flag                           <= false;
                            b_flag_counter                      <= 0;                                                                
						elsif b_ch_brc_test_type = 2 then       -- counter
							brc_data_s			                <= std_logic_vector(to_unsigned(b_ch_brc_counter_data, brc_data_s'length));
							valid_brc_data_s                	<= '1';  
							if b_ch_brc_counter_data = (2**8-1) then
								b_ch_brc_counter_data           <= 0;
							else
								b_ch_brc_counter_data           <= b_ch_brc_counter_data + 1;
                            end if;
                            b_sel_flag                     	    <= true;
                            b_ch_flag                           <= false;                            
                            b_flag_counter                      <= 0;                                     
						end if;                   

					else -- send addr cmd									
						brc_data_s			                    <= (others => '0');
						valid_brc_data_s                    	<= '0';                    
						if    b_ch_addr_test_type = 0 then 		-- single
							if b_ch_flag = true then 
								addr_data_s			            <= b_ch_addr_cons; 
								valid_addr_data_s               <= '1';
							else
								addr_data_s			            <= (others => '0'); 
								valid_addr_data_s               <= '0';						  						
                            end if;    
                            if (b_flag_counter < single_frame_start) then
                                b_flag_counter                  <= b_flag_counter + 1;
                                b_ch_flag                       <= false;  
                                b_sel_flag                     	<= true;                                                   
                            elsif (b_flag_counter = single_frame_start) then
                                b_flag_counter                  <= b_flag_counter + 1;
                                b_ch_flag                       <= true;
                                b_sel_flag                     	<= true;                                                      
                            elsif (b_flag_counter > single_frame_start) and (b_flag_counter < 2*single_frame_start) then
                                b_flag_counter                  <= b_flag_counter + 1;
                                b_ch_flag                       <= false;
                                b_sel_flag                     	<= true;		                                                     
                            elsif (b_flag_counter = 2*single_frame_start) then
                                b_flag_counter                  <= 0;
                                b_ch_flag                       <= false;
                                b_sel_flag                     	<= false;		                                                     
                            else
                                b_flag_counter                  <= 0;
                                b_ch_flag                       <= false;
                                b_sel_flag                      <= true;                     
                            end if;                                        
						elsif b_ch_addr_test_type = 1 then		-- burst 
							addr_data_s			                <= b_ch_addr_cons;               
                            valid_addr_data_s               	<= '1';
                            b_sel_flag                     	    <= false;
                            b_ch_flag                           <= false;                            
                            b_flag_counter                      <= 0;               
						elsif b_ch_addr_test_type = 2 then      -- counter
							addr_data_s			                <= std_logic_vector(to_unsigned(b_ch_addr_counter_data, addr_data_s'length));
							valid_addr_data_s               	<= '1';
							if b_ch_addr_counter_data = (2**30-1) then
								b_ch_addr_counter_data          <= 0;
							else
								b_ch_addr_counter_data          <= b_ch_addr_counter_data + 1;
                            end if;
                            b_sel_flag                     	    <= false;
                            b_ch_flag                           <= false;                            
                            b_flag_counter                      <= 0;                                                      
						end if;					

                    end if; --both brc and ind_addr cmd are sent                            
                end if; -- b_ch_sel_test_type 
                
            else
                brc_data_s			                            <= (others => '0');
                addr_data_s         			                <= (others => '0');
                valid_brc_data_s                             	<= '0';
                valid_addr_data_s                            	<= '0';
--                b_ch_flag                                       <= false;
--                b_sel_flag                                      <= false;
--                b_ch_brc_counter_data                           <= 0;
--                b_ch_addr_counter_data                          <= 0;
--                b_flag_counter                                  <= 0;                                   
            end if; -- ready               
        end if; -- reset_in & rising_edge_clk if
   end process;     

end architecture;