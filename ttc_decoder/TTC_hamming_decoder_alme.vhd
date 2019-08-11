-------------------------------------------------------------------------------
-- Title      : Serial B Communication Module
-- Project    : RCU Trigger Receiver
-------------------------------------------------------------------------------
-- File             : $RCSfile: serialb_com.vhd,v $
-- Last edited by   : $Author: alme $
-- Last update      : $Date: 2006/02/24 13:44:01 $
-- Current Revision : $Revision: 1.2 $
-------------------------------------------------------------------------------
-- Description: Deserializer and hamming decoder for the Serial B line.
-------------------------------------------------------------------------------
-- Revision History : 
-- http://www.ift.uib.no/kjekscgi-bin/viewcvs.cgi/vhdlcvs/trigger_receiver/
-------------------------------------------------------------------------------
--
-- This file is property of and copyright by the Instrumentation and 
-- Electronics Section, Dep. of Physics and Technology
-- University of Bergen, Norway, 2005
-- This file has been written by Johan Alme, Knut Ove Nyg�rd & Olav Torheim
-- Johan.Alme@ift.uib.no
--
-- Permission to use, copy, modify and distribute this firmware and its  
-- documentation strictly for non-commercial purposes is hereby granted  
-- without fee, provided that the above copyright notice appears in all  
-- copies and that both the copyright notice and this permission notice  
-- appear in the supporting documentation. The authors make no claims    
-- about the suitability of this firmware for any purpose. It is         
-- provided "as is" without express or implied warranty.                 
--
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE ieee.std_logic_unsigned.ALL;

entity serialb_com is
  generic (
    include_hamming : boolean
  );
  port(
    clk                 : in  std_logic;
    clken					: in  std_logic;
	 reset_n             : in  std_logic;
    serBchan            : in  std_logic;
    serB_en             : in  std_logic;
    testmode            : in  std_logic;
    single_bit_error    : out std_logic;
    double_bit_error    : out std_logic;
    communication_error : out std_logic;
    data_ready          : out std_logic_vector(1 downto 0);
    data_out            : out std_logic_vector(38 downto 0)
  );
end serialb_com;

architecture arc of serialb_com is

  type state is (s_idle, s_fmt, s_get_data, s_get_broadcast, s_stop, s_error);

  signal received_word        : std_logic_vector(38 downto 0);
  signal brc_rdy              : std_logic;
  signal dta_rdy              : std_logic;
  signal serBchanR            : std_logic;
  signal serBchanRR           : std_logic;

  signal test_init            : std_logic;               
  signal test_data            : std_logic_vector(41 downto 0);

begin


------------------------------------------------------------------------------------------------
-- include hamming
------------------------------------------------------------------------------------------------
hamming : if include_hamming generate
  signal d_adr                : std_logic_vector(31 downto 0);  
  signal d_br                 : std_logic_vector(7 downto 0);    
  signal hmg_br               : std_logic_vector(4 downto 0);
  signal hmg_adr              : std_logic_vector(6 downto 0);  
  signal s_br                 : std_logic_vector(4 downto 0);
  signal s_adr                : std_logic_vector(6 downto 0);  
  signal next_state           : state;    

  signal single_bit_error_i		: std_logic;
  signal double_bit_error_i		: std_logic;
  
begin
single_bit_error <= single_bit_error_i;
double_bit_error <= double_bit_error_i;

------------------------------------------------------------------------------------
d_br <=  received_word(12 downto 5) when testmode <= '0' 
									else (others => '0');
d_adr <= received_word(38 downto 7) when testmode <= '0' 
									else "00000000000000" & "11" & "0001" & "000" & '1' & "1010" & '1' & '0' & "11";
------------------------------------------------------------------------------------
-- Calculating the hamming bits for the broadcast word:
p_hammingbits8 : process(d_br, hmg_br)
begin
  hmg_br(0) <= d_br(0) xor d_br(1) xor d_br(2) xor d_br(3);
  hmg_br(1) <= d_br(0) xor d_br(4) xor d_br(5) xor d_br(6);
  hmg_br(2) <= d_br(1) xor d_br(2) xor d_br(4) xor d_br(5) xor d_br(7);
  hmg_br(3) <= d_br(1) xor d_br(3) xor d_br(4) xor d_br(6) xor d_br(7); 
  hmg_br(4) <= hmg_br(0) xor hmg_br(1) xor hmg_br(2) xor hmg_br(3) xor d_br(0) xor d_br(1) xor d_br(2) xor 
            d_br(3) xor d_br(4) xor d_br(5) xor d_br(6) xor d_br(7); 
end process p_hammingbits8;
------------------------------------------------------------------------------------
-- Calculating the hamming bits for the addressed word:
p_hammingbits32 : process(d_adr, hmg_adr)
begin
  hmg_adr(0) <= d_adr(0) xor d_adr(1) xor d_adr(2) xor d_adr(3) xor d_adr(4) xor d_adr(5);
  hmg_adr(1) <= d_adr(6) xor d_adr(7) xor d_adr(8) xor d_adr(9) xor d_adr(10) xor d_adr(11) xor d_adr(12) xor d_adr(13) xor d_adr(14) xor d_adr(15) xor d_adr(16) xor d_adr(17) xor d_adr(18) xor d_adr(19) xor d_adr(20);
  hmg_adr(2) <= d_adr(6) xor d_adr(7) xor d_adr(8) xor d_adr(9) xor d_adr(10) xor d_adr(11) xor d_adr(12) xor 
              d_adr(13) xor d_adr(21) xor d_adr(22) xor d_adr(23) xor d_adr(24) xor d_adr(25) xor d_adr(26) xor d_adr(27);
  hmg_adr(3) <= d_adr(0) xor d_adr(1) xor d_adr(2) xor d_adr(6) xor d_adr(7) xor d_adr(8) xor d_adr(9) xor 
              d_adr(14) xor d_adr(15) xor d_adr(16) xor d_adr(17) xor d_adr(21) xor d_adr(22) xor d_adr(23) xor 
              d_adr(24) xor d_adr(28) xor d_adr(29) xor d_adr(30);
  hmg_adr(4) <= d_adr(0) xor d_adr(3) xor d_adr(4) xor d_adr(6) xor d_adr(7) xor d_adr(10) xor d_adr(11) xor d_adr(14) xor 
              d_adr(15) xor d_adr(18) xor d_adr(19) xor d_adr(21) xor d_adr(22) xor d_adr(25) xor d_adr(26) xor d_adr(28) xor 
              d_adr(29) xor d_adr(31);
  hmg_adr(5) <= d_adr(1) xor d_adr(3) xor d_adr(5) xor d_adr(6) xor d_adr(8) xor d_adr(10) xor d_adr(12) xor d_adr(14) xor 
              d_adr(16) xor d_adr(18) xor d_adr(20) xor d_adr(21) xor d_adr(23) xor d_adr(25) xor d_adr(27) xor 
              d_adr(28) xor d_adr(30) xor d_adr(31);
  hmg_adr(6) <= hmg_adr(0) xor hmg_adr(1) xor hmg_adr(2) xor hmg_adr(3) xor hmg_adr(4) xor hmg_adr(5) xor 
              d_adr(0) xor d_adr(1) xor d_adr(2) xor d_adr(3) xor d_adr(4) xor d_adr(5) xor d_adr(6) xor d_adr(7) xor 
              d_adr(8) xor d_adr(9) xor d_adr(10) xor d_adr(11) xor d_adr(12) xor d_adr(13) xor d_adr(14) xor 
              d_adr(15) xor d_adr(16) xor d_adr(17) xor d_adr(18) xor d_adr(19) xor d_adr(20) xor d_adr(21) xor 
              d_adr(22) xor d_adr(23) xor d_adr(24) xor d_adr(25) xor d_adr(26) xor d_adr(27) xor d_adr(28) xor 
              d_adr(29) xor d_adr(30) xor d_adr(31);
end process p_hammingbits32;
------------------------------------------------------------------------------------
-- Calculating syndroms              
s_adr <= hmg_adr xor received_word(6 downto 0); 
s_br  <= hmg_br  xor received_word(4 downto 0);                  
------------------------------------------------------------------------------------
-- purpose: receiving serial B messages by shifting them into a shift register.    
--          checking the hamming bits.      
p_driver: process(clk)
begin
  if rising_edge(clk) then
	if (reset_n = '0') then
      next_state                 <= s_idle;

      received_word(0)           <= '1';
      received_word(38 downto 1) <= (others => '0');
      data_ready                 <= "00";
      brc_rdy                    <= '0';
      dta_rdy                    <= '0';
      communication_error        <= '0';
      single_bit_error_i           <= '0';
      double_bit_error_i           <= '0';
      data_out                   <= received_word;
  	elsif clken = '1' then
	    -- assign default values
	    next_state                 <= s_idle;
	    received_word(0)           <= '1';
	    received_word(38 downto 1) <= (others => '0');
	    data_ready                 <= "00";
	    brc_rdy                    <= '0';
	    dta_rdy                    <= '0';
	    communication_error        <= '0';
	    single_bit_error_i           <= '0';
	    double_bit_error_i           <= '0';
	    data_out                   <= received_word;
	
	    case next_state is
	      when s_idle =>
	    	if (serBchanRR = '0') then --start bit
	          next_state <= s_fmt;
	        else
	          next_state <= s_idle;
	        end if;
	      
	      when s_fmt =>
	        if (serBchanRR = '1') then  -- fmt bit is 1 for ttcrx addr receive.
	          next_state <= s_get_data;
	        else                        -- fmt bit is 0 for ttcrx broadcast
	          next_state <= s_get_broadcast;
	        end if;
	      
	      when s_get_data => -- shiftregister for serialB input
	        received_word(38 downto 1) <= received_word(37 downto 0);
	        received_word(0)           <= serBchanRR;
	      
	        if (received_word(38) = '1') then
	          dta_rdy          <= '1';
	          next_state       <= s_stop;
	        else
	          next_state       <= s_get_data;
	        end if;
	      
	      when s_get_broadcast => -- shiftregister for serialB input
	        received_word(38 downto 1) <= received_word(37 downto 0);
	        received_word(0)           <= serBchanRR;
	  
	        if (received_word(12) = '1') then
	          brc_rdy          <= '1';
	          next_state       <= s_stop;
	        else
	          next_state       <= s_get_broadcast;
	        end if;
	      
	      when s_stop =>
	        if (serBchanRR = '0') then
	          next_state <= s_error;
	        else
	          data_ready <= dta_rdy & brc_rdy;        
	          if (brc_rdy='1') then
	            if (s_br(4) = '0' and (s_br(3 downto 0) /= "0000")) then
	              double_bit_error_i <= '1';
	              single_bit_error_i <= '0';				
	              next_state <= s_error;
	            else			
	              next_state <= s_idle;		
		      case s_br(3 downto 0) is
	                when "0000" => -- no errors
	                  single_bit_error_i <= '0';		
	         	        double_bit_error_i <= '0';
	                when "0011" => -- Bit 0 wrong
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';
	                  data_out(5)      <= not received_word(5); 
	                when "1101" => -- Bit 1 wrong
		          single_bit_error_i <= '1';		
		          double_bit_error_i <= '0';
		          data_out(6)      <= not received_word(6); 
		        when "0101" =>	-- Bit 2 wrong                 
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';
	                  data_out(7)      <= not received_word(7);
	                when "1001" =>	-- Bit 3 wrong      
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';
	                  data_out(8)      <= not received_word(8);
	                when "1110" => -- Bit 4 wrong
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';
	                  data_out(9)      <= not received_word(9);
	                when "0110" =>
	          	        single_bit_error_i <= '1';		
		          double_bit_error_i <= '0';
		          data_out(10)     <= not received_word(10);
	                when "1010" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';
	                  data_out(11)     <= not received_word(11);
	                when "1100" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';
	                  data_out(12)     <= not received_word(12);
	                when others =>
	                  single_bit_error_i <= '1';
	                  double_bit_error_i <= '1';
	                  next_state <= s_error;				                 
	              end case;		                 	
		    end if;
		  elsif (dta_rdy='1') then
		    if (s_adr(6)='0' and (s_adr(5 downto 0) /= "000000")) then
	              single_bit_error_i <= '0';
	              double_bit_error_i <= '1';
	              next_state <= s_error;			
	            else
	              next_state <= s_idle;					
	              case s_adr(5 downto 0) is
	                when "000000" =>
	                  single_bit_error_i <= '0';		
	                  double_bit_error_i <= '0';
	                when "011001" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(7)      <= not received_word(7);		        		
	                when "101001" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(8)      <= not received_word(8);		        	
	                when "001001" =>
		                single_bit_error_i <= '1';		
		                double_bit_error_i <= '0';		        	
	                  data_out(9)      <= not received_word(9);		        	
	                when "110001" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(10)     <= not received_word(10);		        	
	                when "010001" =>
		                single_bit_error_i <= '1';		
		                double_bit_error_i <= '0';		        	
	                  data_out(11)     <= not received_word(11);		        			        			        			        			        			        	
	                when "100001" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(12) <= not received_word(12);		        	
	                when "111110" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(13)     <= not received_word(13);		     
	                when "011110" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(14)     <= not received_word(14);		        	
	                when "101110" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(15)     <= not received_word(15);		        	
	                when "001110" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(16)     <= not received_word(16);		        	
	                when "110110" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(17)     <= not received_word(17);
	                when "010110" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(18)     <= not received_word(18);		        	
	                when "100110" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(19)     <= not received_word(19);		        			        			        			        			        			        			        			        	
	                when "000110" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(20)     <= not received_word(20);		        	
	                when "111010" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(21)     <= not received_word(21);		        	
	                when "011010" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(22)     <= not received_word(22);		        	
	                when "101010" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(23)     <= not received_word(23);		        	
	                when "001010" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(24)     <= not received_word(24);		        	
	                when "110010" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(25)     <= not received_word(25);		        	
	                when "010010" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(26)     <= not received_word(26);		        	
	                when "100010" =>		        	
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(27)     <= not received_word(27);		        	
	                when "111100" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(28)     <= not received_word(28);		        	
	                when "011100" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(29)     <= not received_word(29);		        	
	                when "101100" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(30)     <= not received_word(30);		        	
	                when "001100" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(31)     <= not received_word(31);		        	
	                when "110100" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(32)     <= not received_word(32);		        	
	                when "010100" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(33)     <= not received_word(33);
	                when "100100" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(34)     <= not received_word(34);		        	
	                when "111000" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(35)     <= not received_word(35);		        	
	                when "011000" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(36)     <= not received_word(36);		        	
	                when "101000" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(37)     <= not received_word(37);
	                when "110000" =>
	                  single_bit_error_i <= '1';		
	                  double_bit_error_i <= '0';		        	
	                  data_out(38)     <= not received_word(38);		        	
	                when others =>
	                  single_bit_error_i <= '1';
	                  double_bit_error_i <= '1';
	                  next_state       <= s_error;			
	              end case;
	            end if;	             
	          end if;	        
	        end if;         	
	 
	      when s_error =>
	        communication_error <= '1';
			single_bit_error_i	<= single_bit_error_i;
			double_bit_error_i	<= double_bit_error_i;
	        next_state          <= s_idle;
	      when others =>
	    	communication_error <= '0';
	    	single_bit_error_i    <= '0';
	    	double_bit_error_i    <= '0';
	        
	        next_state          <= s_error;
	    end case;
	  end if; -- reset_n
	end if; -- rising_egde(clk)
end process p_driver;

------------------------------------------------------------------------------------
-- purpose: synchronizing the serial B data line, and offering possibilities for 
--          testmode and turning off the serial B data line.
p_synch: process(clk)
begin
  if rising_edge(clk) then
  	if (reset_n='0') then
    	serBchanR   <= '1';
    	serBchanRR	 <= '1';
    	test_init   <= '0';
  	elsif clken = '1' then
    	test_init   <= '0';

    	if (serB_en = '1') then
    	  serBchanR     <= serBchan;
    	  serBchanRR    <= serBchanR;

    	elsif (testmode = '1') then
    	  if (test_init = '0') then
    	    serBchanRR  <= '1';
    	    test_init   <= '1';
    	    test_data   <= "01" & d_adr & hmg_adr & '1';
    	  else
    	    serBchanRR  <= test_data(41);
    	    test_data   <= test_data(40 downto 0) & '1';
    	    test_init   <= '1';
    	  end if; 

    	else
    	  serBchanR     <= '1';
    	  serBchanRR    <= '1';
    	end if;
	end if;
  end if;  
end process p_synch;


end generate hamming;
------------------------------------------------------------------------------------------------
-- END include hamming
------------------------------------------------------------------------------------------------


------------------------------------------------------------------------------------------------
-- NOT include hamming
------------------------------------------------------------------------------------------------
Nothamming : if include_hamming = false generate
  signal d_adr                : std_logic_vector(31 downto 0);  
  signal d_br                 : std_logic_vector(7 downto 0);   
  signal next_state           : state;
begin

------------------------------------------------------------------------------------
d_br <=  received_word(12 downto 5) when testmode <= '0' else (others => '0');
d_adr <= received_word(38 downto 7) when testmode <= '0' else "00000000000000" & "11" & "0001" & "000" & '1' & "1010" & '1' & '0' & "11";
------------------------------------------------------------------------------------
-- purpose: receiving serial B messages by shifting them into a shift register.    
--          checking the hamming bits.      
p_driver: process(clk)
begin
  if rising_edge(clk) then
  	if (reset_n = '0') then
      next_state                 <= s_idle;

      received_word(0)           <= '1';
      received_word(38 downto 1) <= (others => '0');
      data_ready                 <= "00";
      brc_rdy                    <= '0';
      dta_rdy                    <= '0';
      communication_error        <= '0';
      data_out                   <= received_word;
  	elsif clken = '1' then
    	-- assign default values
    	next_state                 <= s_idle;
    	
    	received_word(0)           <= '1';
    	received_word(38 downto 1) <= (others => '0');
    	data_ready                 <= "00";
    	brc_rdy                    <= '0';
    	dta_rdy                    <= '0';
    	communication_error        <= '0';
    	data_out                   <= received_word;

    	case next_state is
    	  when s_idle =>
    		if (serBchanRR = '0') then --start bit
    	      next_state <= s_fmt;
    	    else
    	      next_state <= s_idle;
    	    end if;
    	  
    	  when s_fmt =>
    	    if (serBchanRR = '1') then  -- fmt bit is 1 for ttcrx addr receive.
    	      next_state <= s_get_data;
    	    else                        -- fmt bit is 0 for ttcrx broadcast
    	      next_state <= s_get_broadcast;
    	    end if;
    	  
    	  when s_get_data => -- shiftregister for serialB input
    	    received_word(38 downto 1) <= received_word(37 downto 0);
    	    received_word(0)           <= serBchanRR;
    	  
    	    if (received_word(38) = '1') then
    	      dta_rdy          <= '1';
    	      next_state       <= s_stop;
    	    else
    	      next_state       <= s_get_data;
    	    end if;
    	  
    	  when s_get_broadcast => -- shiftregister for serialB input
    	    received_word(38 downto 1) <= received_word(37 downto 0);
    	    received_word(0)           <= serBchanRR;
  
    	    if (received_word(12) = '1') then
    	      brc_rdy          <= '1';
    	      next_state       <= s_stop;
    	    else
    	      next_state       <= s_get_broadcast;
    	    end if;
    	  
    	  when s_stop =>
    	    if (serBchanRR = '0') then
    	      next_state <= s_error;
    	    else
    	      data_ready <= dta_rdy & brc_rdy;        
    	      next_state <= s_idle;		                	
    	    end if;         	
 
    	  when s_error =>
    	    communication_error <= '1';
    	    next_state          <= s_idle;
    	  when others =>
    		communication_error <= '0';
    		single_bit_error    <= '0';
    		double_bit_error    <= '0';
    	    
    	    next_state          <= s_error;
    	end case;
	end if; -- reset_n
  end if; -- rising_edge(clk)
end process p_driver;
------------------------------------------------------------------------------------
-- purpose: synchronizing the serial B data line, and offering possibilities for 
--          testmode and turning off the serial B data line.
p_synch: process(clk)
begin
  if rising_edge(clk) then
	if (reset_n = '0') then
    	serBchanR   <= '1';
    	serBchanRR	<= '1';
    	test_init   <= '0';
  	elsif clken = '1' then
    	test_init   <= '0';
    	if (serB_en = '1') then
    	  serBchanR    <= serBchan;
    	  serBchanRR	  <= serBchanR;
    	elsif (testmode = '1') then
    	  if (test_init = '0') then
    	    serBchanRR <= '1';
    	    test_init  <= '1';
    	    test_data <= "01" & d_adr & "0000000" & '1';
    	  else
    	    serBchanRR <= test_data(41);
    	    test_data  <= test_data(40 downto 0) & '1';
    	    test_init  <= '1';
    	  end if; 
    	else
    	  serBchanR    <= '1';
    	  serBchanRR	  <= '1';
    	end if;
  	end if;  
  end if;
end process p_synch;


end generate Nothamming;
------------------------------------------------------------------------------------------------
-- NOT include hamming
------------------------------------------------------------------------------------------------
end arc;