--==========================================================================================================--
--======================================== Module Information =============================================--
--==========================================================================================================--
--                                                                                         
-- Company:                IPM                                                         
-- Engineer:               Hanie Ghasemy (hanie.ghasemy@gmail.com)
--                                                                                                 
-- Project Name:           TTC                                                            
-- Module Name:            ttcvi_encoder                                         
--                                                                                                 
-- Language:               VHDL'93                                                                  
--                                                                                                   
-- Target Device:          Kintex7 - KC705                                                         
-- Tool version:           VIVADO 2018.01                                                               
--                                                                                                   
-- Version:                0.1                                                                      
--
-- Description:			   hamming encoder & serializer for the channel b line.            
--
-- Versions history:       DATE         VERSION   AUTHOR            DESCRIPTION
--
--                         24/07/2018   1.0       hanie         	- First   encoder          
--                         08/09/2018   1.1       hanie         	- Second  add mechanism to control when getting new frame of input            
--
--==========================================================================================================--

--==========================================================================================================--
--========================================== Additional Comments ==========================================--
--==========================================================================================================-- 
	--
	-- TTC FRAME (TDM of channels A and B):
	-- A channel: 1 = trigger, 0 = no trigger. No encoding, minimum latency.
	-- B channel: short broadcast or individually addressed commands. Hamming check bits

	-- B Channel Content:
	--
	-- IDLE = 111111111111
	--
	-- Short Broadcast, 16 bits:
	-- 00TTDDDDEBHHHHH1: T=test command, 2 bits. D=Command/Data, 4 bits. E=Event Counter Reset, 1 bit. B=Bunch Counter Reset, 1 bit. H=Hamming Code, 5 bits.
	--
	-- individually addressed, 42 bits
	-- 01AAAAAAAAAAAAAAE1SSSSSSSSDDDDDDDDHHHHHHH1: A= TTCrx address, 14 bits. E= internal(0)/External(1), 1 bit. S=SubAddress, 8 bits. D=Data, 8 bits. H=Hamming Code, 7 bits.
	-- 

	-- ttc hamming encoding for short broadcast (d8/h5)
	-- /* build Hamming bits */
	-- hmg[0] = d[0]^d[1]^d[2]^d[3];
	-- hmg[1] = d[0]^d[4]^d[5]^d[6];
	-- hmg[2] = d[1]^d[2]^d[4]^d[5]^d[7];
	-- hmg[3] = d[1]^d[3]^d[4]^d[6]^d[7];
	-- hmg[4] =hmg[0]^hmg[1]^hmg[2]^hmg[3]^d[0]^d[1]^d[2]^d[3]^d[4]^d[5]^d[6]^d[7]; --eric: d[0]^d[2]^d[3]^d[5]^d[6]^d[7];--
	-- /* build Hamming word */
	-- hamming = hmg[0] | (hmg[1]<<1) |(hmg[2]<<2) |(hmg[3]<<3) |(hmg[4]<<4);

	-- ttc hamming encoding for individually addressed (d32/h7)
	-- /* build Hamming bits */
	-- hmg[0] = d[0]^d[1]^d[2]^d[3]^d[4]^d[5]; 
	-- hmg[1] = d[6]^d[7]^d[8]^d[9]^d[10]^d[11]^d[12]^d[13]^d[14]^d[15]^d[16]^d[17]^d[18]^d[19]^d[20];
	-- hmg[2] = d[6]^d[7]^d[8]^d[9]^d[10]^d[11]^d[12]^d[13]^d[21]^d[22]^d[23]^d[24]^d[25]^d[26]^d[27];
	-- hmg[3] = d[0]^d[1]^d[2]^d[6]^d[7]^d[8]^d[9]^d[14]^d[15]^d[16]^d[17]^d[21]^d[22]^d[23]^d[24]^d[28]^d[29]^d[30];
	-- hmg[4] = d[0]^d[3]^d[4]^d[6]^d[7]^d[10]^d[11]^d[14]^d[15]^d[18]^d[19]^d[21]^d[22]^d[25]^d[26]^d[28]^d[29]^d[31];
	-- hmg[5] = d[1]^d[3]^d[5]^d[6]^d[8]^d[10]^d[12]^d[14]^d[16]^d[18]^d[20]^d[21]^d[23]^d[25]^d[27]^d[28]^d[30]^d[31];
	-- hmg[6] = hmg[0]^hmg[1]^hmg[2]^hmg[3]^hmg[4]^hmg[5]^d[0]^d[1]^d[2]^d[3]^d[4]^d[5]^d[6]^d[7]^d[8]^d[9]^d[10]^d[11]^d[12]^d[13]^d[14]^d[15]^d[16]^d[17]^d[18]^d[19]^d[20]^d[21]^d[22]^d[23]^d[24]^d[25]^d[26]^d[27]^d[28]^d[29]^d[30]^d[31];
	-- /* build Hamming word */
	-- hamming = (hmg[0] | (hmg[1]<<1) | (hmg[2]<<2) | (hmg[3]<<3) | (hmg[4]<<4) | (hmg[5]<<5) | (hmg[6]<<6));	
--==========================================================================================================--

library ieee;
use ieee.std_logic_1164.all;

entity ttcvi_encoder is 
	generic (
	include_hamming 				: boolean);
	port( 
	--============================================ output ============================================--
	b_ch_out    					: out std_logic; 					
	b_ch_strobe_out    				: out std_logic; 					
	--============================================ input ============================================--
	clk_in							: in std_logic;
	reset_in						: in std_logic;
	--== ttc encoder inputs 
	b_ch_brc_valid_in				: in std_logic;
	b_ch_addr_valid_in				: in std_logic;		
	--== AAAAAAAAAAAAAAE1SSSSSSSSDDDDDDDD: channel b individually addressed cmd 
	addr_a14_in						: in std_logic_vector(13 downto 0);
	addr_e_in						: in std_logic;
	addr_s8_in						: in std_logic_vector(7 downto 0);
	addr_d8_in						: in std_logic_vector(7 downto 0);	
	--== TTDDDDDEB: channel b broadcast cmd
	brc_t2_in						: in std_logic_vector(1 downto 0);  
	brc_d4_in						: in std_logic_vector(3 downto 0);
	brc_e_in						: in std_logic; 
	brc_b_in						: in std_logic); 	
end entity;

architecture behavioral of ttcvi_encoder is
    ----------------------------------------------------------------------------------------------------
    --============================ internal signal & constant declaration ============================--  
	---------------------------------------------------------------------------------------------------- 
	signal data_addressed           : std_logic_vector(41 downto 0);    --== individually addressed cmd frame including data & header & ECC: 32 + 7 + 3 = 42 bit
	signal data_broadcast           : std_logic_vector(15 downto 0);    --== broadcast cmd frame including data & header & ECC: 8  + 5 + 3 = 16 bit
	signal d_addr                   : std_logic_vector(31 downto 0);    --== individually addressed cmd frame including data
	signal d_brc                    : std_logic_vector(7 downto 0);    	--== broadcast cmd frame including data   
    type   state_type is (init, brc, ind_addr);
	signal state                    : state_type; 
	signal counter_brc			    : integer range 0 to 15;    
	signal counter_addr		 	    : integer range 0 to 41; 	

begin
	----------------------------------------------------------------------------------------------------
	--========================================== assignment ==========================================--
	----------------------------------------------------------------------------------------------------
	--== internal signal 
	--== TTDDDDDEB: broadcast cmd
	d_brc           <= brc_t2_in & brc_d4_in & brc_e_in & brc_b_in;
	--== AAAAAAAAAAAAAAE1SSSSSSSSDDDDDDDD: individually addressed cmd 
	d_addr          <= addr_a14_in & addr_e_in & '1' & addr_s8_in & addr_d8_in;				   
		
	----------------------------------------------------------------------------------------------------
	--======================================= include hamming =======================================--
	----------------------------------------------------------------------------------------------------
	--== there are 2 options for sending data. one, including hamming in sending frame
	hamming : if include_hamming = true generate	
		signal hmg_d_brc                : std_logic_vector(4 downto 0);
		signal hmg_d_addr               : std_logic_vector(6 downto 0);
	begin
		--== input mapping and creating fram (data updated every 16*25ns or 42*25ns)
		data_broadcast  <= '0' & '0' &  d_brc  & hmg_d_brc & '1';
		data_addressed  <= '0' & '1' &  d_addr & hmg_d_addr & '1';

		--== calculate the hamming bits for the broadcast word
		p_hmg_broadcast : process(d_brc, hmg_d_brc)
		begin
		hmg_d_brc(0)    <= d_brc(0) xor d_brc(1) xor d_brc(2) xor d_brc(3);
		hmg_d_brc(1)    <= d_brc(0) xor d_brc(4) xor d_brc(5) xor d_brc(6);
		hmg_d_brc(2)    <= d_brc(1) xor d_brc(2) xor d_brc(4) xor d_brc(5) xor d_brc(7);
		hmg_d_brc(3)    <= d_brc(1) xor d_brc(3) xor d_brc(4) xor d_brc(6) xor d_brc(7); 
		hmg_d_brc(4)    <= hmg_d_brc(0) xor hmg_d_brc(1) xor hmg_d_brc(2) xor hmg_d_brc(3) xor d_brc(0) xor d_brc(1) xor d_brc(2) xor 
								d_brc(3) xor d_brc(4) xor d_brc(5) xor d_brc(6) xor d_brc(7); 
		end process p_hmg_broadcast;

		--== claculate the hamming bits for the addressed word
		p_hmg_addressed : process(d_addr, hmg_d_addr)
		begin
		hmg_d_addr(0)   <= d_addr(0) xor d_addr(1) xor d_addr(2) xor d_addr(3) xor d_addr(4) xor d_addr(5);
		hmg_d_addr(1)   <= d_addr(6) xor d_addr(7) xor d_addr(8) xor d_addr(9) xor d_addr(10) xor d_addr(11) xor d_addr(12) xor 
								d_addr(13) xor d_addr(14) xor d_addr(15) xor d_addr(16) xor d_addr(17) xor d_addr(18) xor d_addr(19) xor d_addr(20);
		hmg_d_addr(2)   <= d_addr(6) xor d_addr(7) xor d_addr(8) xor d_addr(9) xor d_addr(10) xor d_addr(11) xor d_addr(12) xor 
								d_addr(13) xor d_addr(21) xor d_addr(22) xor d_addr(23) xor d_addr(24) xor d_addr(25) xor d_addr(26) xor d_addr(27);
		hmg_d_addr(3)   <= d_addr(0) xor d_addr(1) xor d_addr(2) xor d_addr(6) xor d_addr(7) xor d_addr(8) xor d_addr(9) xor 
								d_addr(14) xor d_addr(15) xor d_addr(16) xor d_addr(17) xor d_addr(21) xor d_addr(22) xor d_addr(23) xor 
								d_addr(24) xor d_addr(28) xor d_addr(29) xor d_addr(30);
		hmg_d_addr(4)   <= d_addr(0) xor d_addr(3) xor d_addr(4) xor d_addr(6) xor d_addr(7) xor d_addr(10) xor d_addr(11) xor d_addr(14) xor 
								d_addr(15) xor d_addr(18) xor d_addr(19) xor d_addr(21) xor d_addr(22) xor d_addr(25) xor d_addr(26) xor d_addr(28) xor 
								d_addr(29) xor d_addr(31);
		hmg_d_addr(5)   <= d_addr(1) xor d_addr(3) xor d_addr(5) xor d_addr(6) xor d_addr(8) xor d_addr(10) xor d_addr(12) xor d_addr(14) xor 
								d_addr(16) xor d_addr(18) xor d_addr(20) xor d_addr(21) xor d_addr(23) xor d_addr(25) xor d_addr(27) xor 
								d_addr(28) xor d_addr(30) xor d_addr(31);
		hmg_d_addr(6)   <= hmg_d_addr(0) xor hmg_d_addr(1) xor hmg_d_addr(2) xor hmg_d_addr(3) xor hmg_d_addr(4) xor hmg_d_addr(5) xor 
								d_addr(0) xor d_addr(1) xor d_addr(2) xor d_addr(3) xor d_addr(4) xor d_addr(5) xor d_addr(6) xor d_addr(7) xor 
								d_addr(8) xor d_addr(9) xor d_addr(10) xor d_addr(11) xor d_addr(12) xor d_addr(13) xor d_addr(14) xor 
								d_addr(15) xor d_addr(16) xor d_addr(17) xor d_addr(18) xor d_addr(19) xor d_addr(20) xor d_addr(21) xor 
								d_addr(22) xor d_addr(23) xor d_addr(24) xor d_addr(25) xor d_addr(26) xor d_addr(27) xor d_addr(28) xor 
								d_addr(29) xor d_addr(30) xor d_addr(31);
		end process p_hmg_addressed;
		
	end generate;

	----------------------------------------------------------------------------------------------------
	--====================================== no include hamming ======================================--
	----------------------------------------------------------------------------------------------------
	--== if include_hamming flag set to false, it means that instead of hamming bits of the input data,
	--== some zero bits are send in the frame.  

	notHamming : if include_hamming = false generate
	begin
		--== input mapping and creating fram (data updated every 16*25ns or 42*25ns)-
		data_broadcast  <= '0' & '0' &  d_brc  & "00000"   & '1';
		data_addressed  <= '0' & '1' &  d_addr & "0000000" & '1';
	end generate;

	----------------------------------------------------------------------------------------------------
	--========================================  serialization ========================================--
	----------------------------------------------------------------------------------------------------
	--== in every rising_edge of the input clock one bit of frame are send ti hte output. (every 25ns)
	p_serialization : process(clk_in, reset_in, b_ch_brc_valid_in, b_ch_addr_valid_in, state)
	begin
		if reset_in = '1' then 
			b_ch_out						<= '0';	
			b_ch_strobe_out					<= '0';
			counter_brc 					<= 0;
			counter_addr 					<= 0;
			state 							<= init;	
		elsif rising_edge(clk_in) then
			case state is 				
				when init 	=>
					if b_ch_brc_valid_in = '1' then 
						b_ch_out 			<= data_broadcast(15 - counter_brc);
						b_ch_strobe_out		<= '1';
						counter_brc 		<= counter_brc + 1;
						state 				<= brc;
					elsif b_ch_addr_valid_in = '1' then
						b_ch_out 			<= data_addressed(41 - counter_addr);
						b_ch_strobe_out		<= '1';
						counter_addr 		<= counter_addr + 1;
						state 				<= ind_addr;
					--== waiting for new packet
					else 
						b_ch_out			<= '0';
						b_ch_strobe_out		<= '0';
						counter_brc 		<= 0;
						counter_addr 		<= 0;
						state 				<= init;	
					end if;	

				when brc  	=>
					if 	counter_brc < 16  then						--== broadcast cmd - length = 16 bit	
						b_ch_out 			<= data_broadcast(15 - counter_brc);
						b_ch_strobe_out		<= '1';	
						counter_brc 		<= counter_brc + 1;
						counter_addr 		<= 0;
					else
						counter_brc 		<= 0;
						counter_addr 		<= 0;					
						b_ch_out			<= '0';	
						b_ch_strobe_out		<= '0';
					end if;
					if counter_brc < 16 and b_ch_brc_valid_in = '1' then
						state 				<= brc; 	--== one 16 bit frame finished, start immediately another frame if it is in the input
					else
						state 				<= init;	--== one 16 bit frame finished, if the new input doesn't exist, go to init state & wait to get new frame to send	
						counter_brc 		<= 0;
						counter_addr 		<= 0;					
					end if;

				when ind_addr 	=>				
					if 	counter_addr < 42  then						--== individually addressed cmd - length = 42 bit	
						b_ch_out 			<= data_addressed(41 - counter_addr);
						b_ch_strobe_out		<= '1';
						counter_brc 		<= 0;						
						counter_addr 		<= counter_addr + 1;						
					else
						counter_brc 		<= 0;
						counter_addr 		<= 0;
						b_ch_out			<= '0';
						b_ch_strobe_out		<= '0';	
					end if;
					if counter_addr < 42 and b_ch_addr_valid_in = '1' then
						state 				<= ind_addr; 	--== one 42 bit frame finished, if the new input exist, start immediately another frame 
					else
						state 				<= init;		--== one 42 bit frame finished, if the new input doesn't exist, go to init state & wait to get new frame to send
						counter_brc 		<= 0;
						counter_addr 		<= 0;					
					end if;	

				when others		=>
					counter_brc 			<= 0;
				    counter_addr 		    <= 0;
					state 					<= init;
					b_ch_out				<= '0';
					b_ch_strobe_out			<= '0';
			end case;
						
		end if;
	end process;

end architecture;