--========================================================================================================--
--====================================== Module Information =============================================--
--========================================================================================================--
--                                                                                         
-- Company:                IPM                                                         
-- Engineer:               Hanie Ghasemy (hanie.ghasemy@gmail.com)
--                                                                                                 
-- Project Name:           TTC                                                            
-- Module Name:            mmcm                                         
--                                                                                                 
-- Language:               VHDL'93                                                                  
--                                                                                                   
-- Target Device:          Kintex7 - KC705                                                         
-- Tool version:           VIVADO 2018.01                                                               
--                                                                                                   
-- Version:                0.1                                                                      
--
-- Description:			       create 40p 40n, 80p, 80n, 160p, 160n mhz clocks from 200 mhz kc705 system clock        
--
-- Versions history:       DATE         VERSION   AUTHOR            DESCRIPTION
--
--                         24/07/2018   1.0       hanie         	- First             
--
--========================================================================================================--

library ieee;
use ieee.std_logic_1164.all;
--== uncomment the following library declaration if using arithmetic functions with signed or unsigned values
-- use ieee.numeric_std.all;
library unisim;
use unisim.vcomponents.all;

entity mmcm is
  port (
    clk_out_40_p      : out std_logic;
    clk_out_40_n      : out std_logic;
    clk_out_80_p      : out std_logic;
    clk_out_80_n      : out std_logic;
    clk_out_160_p     : out std_logic;
    clk_out_160_n     : out std_logic;
    reset_in          : in std_logic;
    locked            : out std_logic;
    clk_in_200_p      : in std_logic;
    clk_in_200_n      : in std_logic);
end mmcm;

architecture structure of mmcm is

  signal clk_in_mmcm        : std_logic;
  signal clk_out_160_n_mmcm : std_logic;
  signal clk_out_160_p_mmcm : std_logic;
  signal clk_out_40_n_mmcm  : std_logic;
  signal clk_out_40_p_mmcm  : std_logic;
  signal clk_out_80_n_mmcm  : std_logic;
  signal clk_out_80_p_mmcm  : std_logic;
  signal clkfbout_buf_mmcm  : std_logic;
  signal clkfbout_mmcm      : std_logic;

begin
  --== mmcm has output clock feedback that needs to connect to it's input feedback 
  --== bufg use for clock signal 
  clkf_buf: unisim.vcomponents.bufg
      port map (
        i => clkfbout_mmcm,
        o => clkfbout_buf_mmcm);

  --==  differntial input clock goes to ibufds, ibufds's output is single ended signal
  clkin_ibufds: unisim.vcomponents.ibufds
      generic map(
        iostandard => "default"
      )
        port map (
        i => clk_in_200_p,
        ib => clk_in_200_n,
        o => clk_in_mmcm);

  --== output clock from mmcm
  clkout1_buf: unisim.vcomponents.bufg
      port map (
        i => clk_out_40_p_mmcm,
        o => clk_out_40_p);

  --== output clock from mmcm
  clkout2_buf: unisim.vcomponents.bufg
      port map (
        i => clk_out_40_n_mmcm,
        o => clk_out_40_n);
        
  --== output clock from mmcm
  clkout3_buf: unisim.vcomponents.bufg
      port map (
        i => clk_out_80_p_mmcm,
        o => clk_out_80_p);
        
  --== output clock from mmcm
  clkout4_buf: unisim.vcomponents.bufg
      port map (
        i => clk_out_80_n_mmcm,
        o => clk_out_80_n);
        
  --== output clock from mmcm
  clkout5_buf: unisim.vcomponents.bufg
      port map (
        i => clk_out_160_p_mmcm,
        o => clk_out_160_p);
        
  --== output clock from mmcm
  clkout6_buf: unisim.vcomponents.bufg
      port map (
        i => clk_out_160_n_mmcm,
        o => clk_out_160_n);

  ----------------------------------------------------------------------------------------------------
  --== instantiation of the mmcm to create 40, 80, 160 mhz clocks from 200 mhz kc705 system clock ==--
  ----------------------------------------------------------------------------------------------------  
  mmcm_adv_inst: unisim.vcomponents.mmcme2_adv
    generic map (
      bandwidth             => "optimized",       --== jitter programming (optimized, high, low)
      clkfbout_mult_f       => 4.0,               --== multiply value for all clkout (2.000-64.000)
      clkfbout_phase        => 0.0,               --== phase offset in degrees of clkfb (-360.000-360.000)
      --== clkin_period: input clock period in ns to ps resolution (i.e. 33.333 is 30 mhz) 
      clkin1_period         => 5.0,
      clkin2_period         => 0.0,
      --== clkout0_divide - clkout6_divide: divide amount for clkout (1-128) 
      clkout1_divide        => 10,
      clkout2_divide        => 5,
      clkout3_divide        => 1,
      clkout4_divide        => 1,
      clkout5_divide        => 1,
      clkout6_divide        => 1,
      clkout0_divide_f      => 20.0,              --== divide amount for clkout0 (1.000-128.000)
      --== clkout0_duty_cycle - clkout6_duty_cycle: duty cycle for clkout outputs (0.01-0.99) 
      clkout0_duty_cycle    => 0.5,
      clkout1_duty_cycle    => 0.5,
      clkout2_duty_cycle    => 0.5,
      clkout3_duty_cycle    => 0.5,
      clkout4_duty_cycle    => 0.5,
      clkout5_duty_cycle    => 0.5,
      clkout6_duty_cycle    => 0.5,
      --== clkout0_phase - clkout6_phase: phase offset for clkout outputs (-360.000-360.000) 
      clkout0_phase         => 0.0,
      clkout1_phase         => 0.0,
      clkout2_phase         => 0.0,
      clkout3_phase         => 0.0,
      clkout4_phase         => 0.0,
      clkout5_phase         => 0.0,
      clkout6_phase         => 0.0,
      clkout4_cascade       => false,             --== cascade clkout4 counter with clkout6 (false, true)
      compensation          => "zhold",           --== zhold, buf_in, external, internal
      divclk_divide         => 1,                 --== master division value (1-106)
      --== ref_jitter: reference input jitter in ui (0.000-0.999) 
      ref_jitter1           => 0.0,
      ref_jitter2           => 0.0,
      startup_wait          => false,             --== delays done until mmcm is locked (false, true)
      --== spread spectrum: spread spectrum attributes 
      ss_en                 => "false",           --== enables spread spectrum (false, true)
      ss_mode               => "center_high",     --== center_high, center_low, down_high, down_low
      ss_mod_period         => 10000,             --== spread spectrum modulation period (ns) (values)
      --== use_fine_ps: fine phase shift enable (true/false) 
      clkfbout_use_fine_ps  => false,
      clkout0_use_fine_ps   => false,
      clkout1_use_fine_ps   => false,
      clkout2_use_fine_ps   => false,
      clkout3_use_fine_ps   => false,
      clkout4_use_fine_ps   => false,
      clkout5_use_fine_ps   => false,
      clkout6_use_fine_ps   => false
    )
    port map (
      --== clock outputs: 1-bit (each) output: user configurable clock outputs
      clkout0         => clk_out_40_p_mmcm,           --== 1-bit output: clkout0
      clkout0b        => clk_out_40_n_mmcm,           --== 1-bit output: inverted clkout0
      clkout1         => clk_out_80_p_mmcm,           --== 1-bit output: clkout1
      clkout1b        => clk_out_80_n_mmcm,           --== 1-bit output: inverted clkout1
      clkout2         => clk_out_160_p_mmcm,          --== 1-bit output: clkout2
      clkout2b        => clk_out_160_n_mmcm,          --== 1-bit output: inverted clkout2
      clkout3         => open,                        --== 1-bit output: clkout3
      clkout3b        => open,                        --== 1-bit output: inverted clkout3
      clkout4         => open,                        --== 1-bit output: clkout4
      clkout5         => open,                        --== 1-bit output: clkout5
      clkout6         => open,                        --== 1-bit output: clkout6
      --== drp ports: 16-bit (each) output: dynamic reconfiguration ports 
      do              => open,                        --== 16-bit output: drp data
      drdy            => open,                        --== 1-bit output: drp ready
      --== dynamic phase shift ports: 1-bit (each) output: ports used for dynamic phase shifting of the outputs 
      psdone          => open,                        --== 1-bit output: phase shift done
      --== feedback clocks: 1-bit (each) output: clock feedback ports 
      clkfbout        => clkfbout_mmcm,               --== 1-bit output: feedback clock
      clkfboutb       => open,                        --== 1-bit output: inverted clkfbout
      --== status ports: 1-bit (each) output: mmcm status ports 
      clkfbstopped    => open,                        --== 1-bit output: feedback clock stopped
      clkinstopped    => open,                        --== 1-bit output: input clock stopped
      locked          => locked,                      --== 1-bit output: lock
      --== clock inputs: 1-bit (each) input: clock inputs 
      clkin1          => clk_in_mmcm,                --== 1-bit input: primary clock
      clkin2          => '0',                        --== 1-bit input: secondary clock
      --== control ports: 1-bit (each) input: mmcm control ports 
      clkinsel        => '1',                        --== 1-bit input: clock select, high=clkin1 low=clkin2
      pwrdwn          => '0',                        --== 1-bit input: power-down
      rst             => reset_in,                      --== 1-bit input: reset_in
      --== drp ports: 7-bit (each) input: dynamic reconfiguration ports 
      daddr           => (others=>'0'),              --== 7-bit input: drp address
      dclk            => '0',                        --== 1-bit input: drp clock
      den             => '0',                        --== 1-bit input: drp enable
      di              => (others=>'0'),              --== 16-bit input: drp data
      dwe             => '0',                        --== 1-bit input: drp write enable
      --== dynamic phase shift ports: 1-bit (each) input: ports used for dynamic phase shifting of the outputs 
      psclk           => '0',                        --== 1-bit input: phase shift clock
      psen            => '0',                        --== 1-bit input: phase shift enable
      psincdec        => '0',                        --== 1-bit input: phase shift increment/decrement
      --== feedback clocks: 1-bit (each) input: clock feedback ports 
      clkfbin         => clkfbout_buf_mmcm           --== 1-bit input: feedback clock
    );

end structure;