--==========================================================================================================--
--======================================== Module Information =============================================--
--==========================================================================================================--
--                                                                                         
-- Company:                IPM                                                         
-- Engineer:               Hanie Ghasemy (hanie.ghasemy@gmail.com)
--                                                                                                 
-- Project Name:           TTC                                                            
-- Module Name:            ttcvi_emulation                                         
--                                                                                                 
-- Language:               VHDL'93                                                                  
--                                                                                                   
-- Target Device:          Kintex7 - KC705                                                         
-- Tool version:           VIVADO 2018.01                                                               
--                                                                                                   
-- Version:                0.1                                                                      
--
-- Description:			   generate two stream signal: channel a & channel b 						   
--
-- Versions history:       DATE         VERSION   AUTHOR            DESCRIPTION
--
--                         24/07/2018   1.0       hanie         	- First             
--
--==========================================================================================================--

--==========================================================================================================--
--========================================== additional Comments ==========================================--
--==========================================================================================================--
	--== add output signal ready_out: depends on the addr cmd or brc cmd, it shows ready for getting new input data
	--== if the current input packet is brc cmd after 16 clock, the new frame can be processed, so ready_out is set to 1
	--== if the current input packet is addr cmd after 42 clock, the new frame can be processed, so ready_out is set to 1
--==========================================================================================================--

library ieee;
use ieee.std_logic_1164.all;

entity ttcvi_emulation is 
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
end entity;

architecture behavioral of ttcvi_emulation is
    ----------------------------------------------------------------------------------------------------
    --==================================== component declaration ====================================--  
	---------------------------------------------------------------------------------------------------- 	
    component ttcvi_encoder
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
    end component;

    ----------------------------------------------------------------------------------------------------
    --============================ internal signal & constant declaration ============================--  
	---------------------------------------------------------------------------------------------------- 	
	--== individually addressed cmd or broadcast cmd
	signal b_ch_brc_valid_s			: std_logic; 
	signal b_ch_addr_valid_s		: std_logic;	
	--== internal signal showing ready to receive new packet of the data
	signal ready_rd_b_ch_s			: std_logic; 
	signal a_ch_strobe_s			: std_logic; 
	signal b_ch_strobe_s			: std_logic; 
	--== input for ttcvi encoder
	signal b_ch_brc_s				: std_logic_vector(7 downto 0);
	signal b_ch_addr_s				: std_logic_vector(30 downto 0);
	signal addr_a14_s				: std_logic_vector(13 downto 0);
	signal addr_e_s					: std_logic;
	signal addr_s8_s				: std_logic_vector(7 downto 0);
	signal addr_d8_s				: std_logic_vector(7 downto 0);	
	signal brc_t2_s					: std_logic_vector(1 downto 0);  
	signal brc_d4_s					: std_logic_vector(3 downto 0);
	signal brc_e_s					: std_logic; 
	signal brc_b_s					: std_logic; 
	--== fram ctr counters 
	signal counter_b_ch		        : integer range 0 to 41; 
    type   state_type is (s0_ready_rd, s1_wait, s2_start_data, s3_brc, s3_addr);
	signal state                    : state_type;		 

begin	
    ----------------------------------------------------------------------------------------------------
    --===================================== a_channel generation =====================================--  
	---------------------------------------------------------------------------------------------------- 
	--== process, enable to getting a channel data
 	ready_rd_a_ch_out 							<= (not reset_in);
	-- p_enable_a_ch: process(reset_in, clk_in) 
	-- begin
    --     if reset_in = '1' then 	
	-- 		ready_rd_a_ch_out								<= '0';	
	-- 	elsif rising_edge(clk_in) then		
	-- 		--== get a channel
	-- 		if ready_rd_a_ch_in = '1' then
	-- 			ready_rd_a_ch_out 							<= '1';
	-- 		else
	-- 			ready_rd_a_ch_out 							<= '0';
	-- 		end if;	
	-- 	end if;
	-- end process;	

	--== process, generate a channel data out
	p_a_channel: process(reset_in, clk_in) 
    begin	
        if reset_in = '1' then 
            a_ch_out     	 		<= '0'; 
		elsif rising_edge(clk_in) then 
			if valid_a_ch_data_in = '1' then
				a_ch_out			<= a_ch_data_in;
				a_ch_strobe_s		<= '1';
			else
				a_ch_out			<= '0';	
				a_ch_strobe_s		<= '0';						
			end if;				
		end if;
	end process;

    ----------------------------------------------------------------------------------------------------
    --===================================== b_channel generation =====================================--  
	----------------------------------------------------------------------------------------------------
	strobe_out 						<= a_ch_strobe_s or b_ch_strobe_s;
	ready_rd_b_ch_out				<= ready_rd_b_ch_s;
	--== combinational part, decomposition of b channel data
	--== TTDDDDDEB : channel b broadcast cmd	
	brc_t2_s						<= b_ch_brc_s (7 downto 6);
	brc_d4_s						<= b_ch_brc_s (5 downto 2);
	brc_e_s							<= b_ch_brc_s (1);
	brc_b_s							<= b_ch_brc_s (0);
	--== AAAAAAAAAAAAAAE1SSSSSSSSDDDDDDDD : channel b individually addressed cmd 
	addr_a14_s						<= b_ch_addr_s (30 downto 17);
	addr_e_s						<= b_ch_addr_s (16);
	addr_s8_s						<= b_ch_addr_s (15 downto 8);
	addr_d8_s						<= b_ch_addr_s (7 downto 0);	
	process(reset_in, clk_in, state, valid_a_ch_data_in, valid_brc_data_in, valid_addr_data_in) 
    begin	
		if reset_in = '1' then 
			ready_rd_b_ch_s								<= '0';						
			b_ch_brc_valid_s							<= '0';	
			b_ch_addr_valid_s							<= '0';	
			b_ch_brc_s									<= (others => '0');
			b_ch_addr_s									<= (others => '0');
            counter_b_ch     	 						<= 0; 
			state 										<= s0_ready_rd;
		elsif rising_edge(clk_in) then
			case state is 	
				when s0_ready_rd 	=>
					ready_rd_b_ch_s						<= '1';		
					b_ch_brc_valid_s					<= '0';	
					b_ch_addr_valid_s					<= '0';	
					b_ch_brc_s							<= (others => '0');
					b_ch_addr_s							<= (others => '0');
					counter_b_ch     	 				<= 0; 
					state 								<= s1_wait;

				when s1_wait 	=>
					ready_rd_b_ch_s						<= '0';		
					b_ch_brc_valid_s					<= '0';	
					b_ch_addr_valid_s					<= '0';	
					b_ch_brc_s							<= (others => '0');
					b_ch_addr_s							<= (others => '0');
					counter_b_ch     	 				<= 0; 
					state 								<= s2_start_data;

				when s2_start_data 		=>
					if (valid_brc_data_in = '1') then 	 --== broadcast cmd
						ready_rd_b_ch_s					<= '0';	
						b_ch_brc_valid_s				<= '1';
						b_ch_addr_valid_s				<= '0';
						b_ch_brc_s						<= brc_data_in;
						b_ch_addr_s						<= (others => '0');												
						counter_b_ch     	 			<= 0;							
						state 							<= s3_brc;											
					elsif (valid_addr_data_in = '1') then	--== individually addressed cmd
						ready_rd_b_ch_s					<= '0';	
						b_ch_brc_valid_s				<= '0';
						b_ch_addr_valid_s				<= '1';
						b_ch_brc_s						<= (others => '0');
						b_ch_addr_s						<= addr_data_in;											
						counter_b_ch     	 			<= 0;							
						state 							<= s3_addr;	
					else
						ready_rd_b_ch_s					<= '0';		
						b_ch_brc_valid_s				<= '0';	
						b_ch_addr_valid_s				<= '0';	
						b_ch_brc_s						<= (others => '0');
						b_ch_addr_s						<= (others => '0');
						counter_b_ch     	 			<= 0; 
						state 							<= s0_ready_rd;											
					end if;

				when s3_brc  	=>
					if 	counter_b_ch < 13  then						--== broadcast cmd - length = 16 bit. 16-3=13
						ready_rd_b_ch_s					<= '0';
						b_ch_brc_valid_s				<= '1';
						b_ch_addr_valid_s				<= '0';
						b_ch_brc_s						<= b_ch_brc_s;
						b_ch_addr_s						<= (others => '0');
						counter_b_ch     	 			<= counter_b_ch + 1;																			
						state 							<= s3_brc;
					elsif counter_b_ch = 13 then
						ready_rd_b_ch_s					<= '1';							
						b_ch_brc_valid_s				<= '1';
						b_ch_addr_valid_s				<= '0';
						b_ch_brc_s						<= b_ch_brc_s;
						b_ch_addr_s						<= (others => '0');
						counter_b_ch     	 			<= counter_b_ch + 1;
						state 							<= s3_brc;											
					elsif counter_b_ch = 14 then
						ready_rd_b_ch_s					<= '0';								
						b_ch_brc_valid_s				<= '1';
						b_ch_addr_valid_s				<= '0';
						b_ch_brc_s						<= b_ch_brc_s;
						b_ch_addr_s						<= (others => '0');
						counter_b_ch     	 			<= counter_b_ch + 1;
						state 							<= s2_start_data;
					else
						ready_rd_b_ch_s					<= '0';						
						b_ch_brc_valid_s				<= '0';	
						b_ch_addr_valid_s				<= '0';	
						b_ch_brc_s						<= (others => '0');
						b_ch_addr_s						<= (others => '0');
						counter_b_ch     	 			<= 0; 
						state 							<= s0_ready_rd;					
					end if;														

				when s3_addr	=>				
					if 	counter_b_ch < 39  then						--== individually addressed cmd - length = 42 bit. 42-3=39
						ready_rd_b_ch_s					<= '0';
						b_ch_brc_valid_s				<= '0';
						b_ch_addr_valid_s				<= '1';
						b_ch_brc_s						<= (others => '0');
						b_ch_addr_s						<= b_ch_addr_s;
						counter_b_ch     	 			<= counter_b_ch + 1;
						state 							<= s3_addr;												
					elsif counter_b_ch = 39 then
						ready_rd_b_ch_s					<= '1';
						b_ch_brc_valid_s				<= '0';
						b_ch_addr_valid_s				<= '1';
						b_ch_brc_s						<= (others => '0');
						b_ch_addr_s						<= b_ch_addr_s;
						counter_b_ch     	 			<= counter_b_ch + 1;
						state 							<= s3_addr;					
					elsif counter_b_ch = 40 then
						ready_rd_b_ch_s					<= '0';						
						b_ch_brc_valid_s				<= '0';
						b_ch_addr_valid_s				<= '1';
						b_ch_brc_s						<= (others => '0');
						b_ch_addr_s						<= b_ch_addr_s;
						counter_b_ch     	 			<= counter_b_ch + 1;
						state 							<= s2_start_data;	
					else
						ready_rd_b_ch_s					<= '0';						
						b_ch_brc_valid_s				<= '0';	
						b_ch_addr_valid_s				<= '0';	
						b_ch_brc_s						<= (others => '0');
						b_ch_addr_s						<= (others => '0');
						counter_b_ch     	 			<= 0; 
						state 							<= s0_ready_rd;						
					end if;	

				when others		=>
					ready_rd_b_ch_s						<= '0';						
					b_ch_brc_valid_s					<= '0';	
					b_ch_addr_valid_s					<= '0';	
					b_ch_brc_s							<= (others => '0');
					b_ch_addr_s							<= (others => '0');
					counter_b_ch     	 				<= 0; 
					state 								<= s0_ready_rd;
			end case;						
		end if;
	end process;

    ----------------------------------------------------------------------------------------------------
    --============================ instantioation : b_channel generation ============================--  
	---------------------------------------------------------------------------------------------------- 
    ins_chb_data: ttcvi_encoder
        generic map (
        include_hamming     		=> true)
        port map( 
        b_ch_out            		=> b_ch_out,				
        b_ch_strobe_out     		=> b_ch_strobe_s,				
        clk_in             			=> clk_in,
        reset_in               		=> reset_in,
        b_ch_brc_valid_in   		=> b_ch_brc_valid_s,	
        b_ch_addr_valid_in  		=> b_ch_addr_valid_s,
        addr_a14_in	        		=> addr_a14_s, 	
        addr_e_in		    		=> addr_e_s,
        addr_s8_in		    		=> addr_s8_s,
        addr_d8_in		    		=> addr_d8_s,
        brc_t2_in		    		=> brc_t2_s, 
        brc_d4_in		    		=> brc_d4_s,
        brc_e_in		    		=> brc_e_s,
        brc_b_in		    		=> brc_b_s); 
   
end architecture;