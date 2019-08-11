// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sat Oct  6 15:01:25 2018
// Host        : DESKTOP-BBM9U27 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/hanie/Documents/project/2018_10_03_ttctx2ttcrx/vivado/encoder/encoder.sim/sim_1/impl/timing/xsim/tb_ttc_encoder_data_generation_time_impl.v
// Design      : ttc_encoder_data_gen
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module d_ff
   (d_internal_reg_0,
    data_out_n_ttcvx,
    clk_out_160_n,
    ready_s_reg);
  output d_internal_reg_0;
  input data_out_n_ttcvx;
  input clk_out_160_n;
  input ready_s_reg;

  wire clk_out_160_n;
  wire d_internal_reg_0;
  wire data_out_n_ttcvx;
  wire ready_s_reg;

  FDCE #(
    .INIT(1'b0)) 
    d_internal_reg
       (.C(clk_out_160_n),
        .CE(1'b1),
        .CLR(ready_s_reg),
        .D(data_out_n_ttcvx),
        .Q(d_internal_reg_0));
endmodule

(* ORIG_REF_NAME = "d_ff" *) 
module d_ff_0
   (d_internal_reg_0,
    jk_internal,
    clk_out_160_n,
    ready_s_reg);
  output d_internal_reg_0;
  input jk_internal;
  input clk_out_160_n;
  input ready_s_reg;

  wire clk_out_160_n;
  wire d_internal_reg_0;
  wire jk_internal;
  wire ready_s_reg;

  FDCE #(
    .INIT(1'b0)) 
    d_internal_reg
       (.C(clk_out_160_n),
        .CE(1'b1),
        .CLR(ready_s_reg),
        .D(jk_internal),
        .Q(d_internal_reg_0));
endmodule

(* ORIG_REF_NAME = "d_ff" *) 
module d_ff_1
   (data_out_n_OBUF,
    d_internal_reg_0,
    clk_out_160_n,
    ready_s_reg);
  output data_out_n_OBUF;
  input d_internal_reg_0;
  input clk_out_160_n;
  input ready_s_reg;

  wire clk_out_160_n;
  wire d_internal_reg_0;
  wire data_out_n_OBUF;
  wire ready_s_reg;

  FDCE #(
    .INIT(1'b0)) 
    d_internal_reg
       (.C(clk_out_160_n),
        .CE(1'b1),
        .CLR(ready_s_reg),
        .D(d_internal_reg_0),
        .Q(data_out_n_OBUF));
endmodule

(* ORIG_REF_NAME = "d_ff" *) 
module d_ff_2
   (data_out_p_OBUF,
    d_internal_reg_0,
    clk_out_160_n,
    ready_s_reg);
  output data_out_p_OBUF;
  input d_internal_reg_0;
  input clk_out_160_n;
  input ready_s_reg;

  wire clk_out_160_n;
  wire d_internal_reg_0;
  wire data_out_p_OBUF;
  wire ready_s_reg;

  FDCE #(
    .INIT(1'b0)) 
    d_internal_reg
       (.C(clk_out_160_n),
        .CE(1'b1),
        .CLR(ready_s_reg),
        .D(d_internal_reg_0),
        .Q(data_out_p_OBUF));
endmodule

(* ORIG_REF_NAME = "d_ff" *) 
module d_ff_3
   (jk_internal_reg,
    sel_cha_chb,
    clk_out_80_n,
    ready_s_reg,
    clk_out_80_p,
    jk_internal);
  output jk_internal_reg;
  input sel_cha_chb;
  input clk_out_80_n;
  input ready_s_reg;
  input clk_out_80_p;
  input jk_internal;

  wire clk_out_80_n;
  wire clk_out_80_p;
  wire d_internal;
  wire jk_internal;
  wire jk_internal_reg;
  wire ready_s_reg;
  wire sel_cha_chb;

  FDCE #(
    .INIT(1'b0)) 
    d_internal_reg
       (.C(clk_out_80_n),
        .CE(1'b1),
        .CLR(ready_s_reg),
        .D(sel_cha_chb),
        .Q(d_internal));
  LUT3 #(
    .INIT(8'h4B)) 
    jk_internal_i_1
       (.I0(d_internal),
        .I1(clk_out_80_p),
        .I2(jk_internal),
        .O(jk_internal_reg));
endmodule

module jk_ff
   (jk_internal,
    data_out_n_ttcvx,
    d_internal_reg,
    clk_out_160_n,
    ready_s_reg);
  output jk_internal;
  output data_out_n_ttcvx;
  input d_internal_reg;
  input clk_out_160_n;
  input ready_s_reg;

  wire clk_out_160_n;
  wire d_internal_reg;
  wire data_out_n_ttcvx;
  wire jk_internal;
  wire ready_s_reg;

  LUT1 #(
    .INIT(2'h1)) 
    d_internal_i_1__0
       (.I0(jk_internal),
        .O(data_out_n_ttcvx));
  FDCE #(
    .INIT(1'b0)) 
    jk_internal_reg
       (.C(clk_out_160_n),
        .CE(1'b1),
        .CLR(ready_s_reg),
        .D(d_internal_reg),
        .Q(jk_internal));
endmodule

module mmcm
   (clk_out_40_p,
    clk_out_40_n,
    clk_out_80_p,
    clk_out_80_n,
    clk_out_160_n,
    locked,
    clk_in_p,
    clk_in_n,
    reset_in_IBUF);
  output clk_out_40_p;
  output clk_out_40_n;
  output clk_out_80_p;
  output clk_out_80_n;
  output clk_out_160_n;
  output locked;
  input clk_in_p;
  input clk_in_n;
  input reset_in_IBUF;

  wire clk_in_mmcm;
  wire clk_in_n;
  wire clk_in_p;
  wire clk_out_160_n;
  wire clk_out_160_n_mmcm;
  wire clk_out_40_n;
  wire clk_out_40_n_mmcm;
  wire clk_out_40_p;
  wire clk_out_40_p_mmcm;
  wire clk_out_80_n;
  wire clk_out_80_n_mmcm;
  wire clk_out_80_p;
  wire clk_out_80_p_mmcm;
  wire clkfbout_buf_mmcm;
  wire clkfbout_mmcm;
  wire locked;
  wire reset_in_IBUF;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_mmcm),
        .O(clkfbout_buf_mmcm));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUFDS #(
    .IOSTANDARD("default")) 
    clkin_ibufds
       (.I(clk_in_p),
        .IB(clk_in_n),
        .O(clk_in_mmcm));
  (* box_type = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out_40_p_mmcm),
        .O(clk_out_40_p));
  (* box_type = "PRIMITIVE" *) 
  BUFG clkout2_buf
       (.I(clk_out_40_n_mmcm),
        .O(clk_out_40_n));
  (* box_type = "PRIMITIVE" *) 
  BUFG clkout3_buf
       (.I(clk_out_80_p_mmcm),
        .O(clk_out_80_p));
  (* box_type = "PRIMITIVE" *) 
  BUFG clkout4_buf
       (.I(clk_out_80_n_mmcm),
        .O(clk_out_80_n));
  (* box_type = "PRIMITIVE" *) 
  BUFG clkout6_buf
       (.I(clk_out_160_n_mmcm),
        .O(clk_out_160_n));
  (* box_type = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(4.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(5.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(20.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(10),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(5),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.000000),
    .REF_JITTER2(0.000000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_mmcm),
        .CLKFBOUT(clkfbout_mmcm),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in_mmcm),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out_40_p_mmcm),
        .CLKOUT0B(clk_out_40_n_mmcm),
        .CLKOUT1(clk_out_80_p_mmcm),
        .CLKOUT1B(clk_out_80_n_mmcm),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(clk_out_160_n_mmcm),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset_in_IBUF));
endmodule

module ttc_data_generation
   (clk_in,
    reset_in,
    ready_a_ch_in,
    ready_b_ch_in,
    a_ch_data_out,
    valid_a_ch_data_out,
    brc_data_out,
    valid_brc_data_out,
    addr_data_out,
    valid_addr_data_out);
  input clk_in;
  input reset_in;
  input ready_a_ch_in;
  input ready_b_ch_in;
  output a_ch_data_out;
  output valid_a_ch_data_out;
  output [7:0]brc_data_out;
  output valid_brc_data_out;
  output [30:0]addr_data_out;
  output valid_addr_data_out;

  wire \<const0> ;
  wire \a_ch_counter[0]_i_1_n_0 ;
  wire \a_ch_counter[5]_i_2_n_0 ;
  wire [5:1]a_ch_counter_reg__0;
  wire \a_ch_counter_reg_n_0_[0] ;
  wire a_ch_data_out;
  wire a_ch_data_s;
  wire a_ch_flag;
  wire a_ch_flag11_out;
  wire a_flag_counter;
  wire \a_flag_counter[10]_i_3_n_0 ;
  wire [10:6]a_flag_counter_reg__0;
  wire \a_flag_counter_reg_n_0_[0] ;
  wire \a_flag_counter_reg_n_0_[1] ;
  wire \a_flag_counter_reg_n_0_[2] ;
  wire \a_flag_counter_reg_n_0_[3] ;
  wire \a_flag_counter_reg_n_0_[4] ;
  wire \a_flag_counter_reg_n_0_[5] ;
  wire [30:30]addr_data_s;
  wire b_ch_flag8_out;
  wire b_ch_flag_i_2_n_0;
  wire b_ch_flag_i_3_n_0;
  wire b_ch_flag_reg_n_0;
  wire \b_flag_counter[0]_i_1_n_0 ;
  wire \b_flag_counter[10]_i_1_n_0 ;
  wire \b_flag_counter[10]_i_2_n_0 ;
  wire \b_flag_counter[1]_i_1_n_0 ;
  wire \b_flag_counter[2]_i_1_n_0 ;
  wire \b_flag_counter[3]_i_1_n_0 ;
  wire \b_flag_counter[4]_i_1_n_0 ;
  wire \b_flag_counter[5]_i_1_n_0 ;
  wire \b_flag_counter[5]_i_2_n_0 ;
  wire \b_flag_counter[6]_i_1_n_0 ;
  wire \b_flag_counter[7]_i_1_n_0 ;
  wire \b_flag_counter[8]_i_1_n_0 ;
  wire \b_flag_counter[9]_i_1_n_0 ;
  wire [10:0]b_flag_counter_reg__0;
  wire b_sel_flag_i_1_n_0;
  wire b_sel_flag_reg_n_0;
  wire [4:4]brc_data_s;
  wire clk_in;
  wire [10:0]p_0_in;
  wire [5:1]p_0_in__0;
  wire ready_a_ch_in;
  wire ready_b_ch_in;
  wire reset_in;
  wire valid_a_ch_data_out;
  wire valid_a_ch_data_s_i_1_n_0;
  wire valid_addr_data_out;
  wire valid_brc_data_out;

  assign addr_data_out[30] = valid_addr_data_out;
  assign addr_data_out[29] = valid_addr_data_out;
  assign addr_data_out[28] = valid_addr_data_out;
  assign addr_data_out[27] = valid_addr_data_out;
  assign addr_data_out[26] = valid_addr_data_out;
  assign addr_data_out[25] = valid_addr_data_out;
  assign addr_data_out[24] = \<const0> ;
  assign addr_data_out[23] = \<const0> ;
  assign addr_data_out[22] = valid_addr_data_out;
  assign addr_data_out[21] = valid_addr_data_out;
  assign addr_data_out[20] = \<const0> ;
  assign addr_data_out[19] = \<const0> ;
  assign addr_data_out[18] = valid_addr_data_out;
  assign addr_data_out[17] = valid_addr_data_out;
  assign addr_data_out[16] = \<const0> ;
  assign addr_data_out[15] = \<const0> ;
  assign addr_data_out[14] = valid_addr_data_out;
  assign addr_data_out[13] = valid_addr_data_out;
  assign addr_data_out[12] = \<const0> ;
  assign addr_data_out[11] = \<const0> ;
  assign addr_data_out[10] = valid_addr_data_out;
  assign addr_data_out[9] = valid_addr_data_out;
  assign addr_data_out[8] = \<const0> ;
  assign addr_data_out[7] = \<const0> ;
  assign addr_data_out[6] = valid_addr_data_out;
  assign addr_data_out[5] = valid_addr_data_out;
  assign addr_data_out[4] = \<const0> ;
  assign addr_data_out[3] = \<const0> ;
  assign addr_data_out[2] = \<const0> ;
  assign addr_data_out[1] = \<const0> ;
  assign addr_data_out[0] = \<const0> ;
  assign brc_data_out[7] = \<const0> ;
  assign brc_data_out[6] = \<const0> ;
  assign brc_data_out[5] = \<const0> ;
  assign brc_data_out[4] = valid_brc_data_out;
  assign brc_data_out[3] = valid_brc_data_out;
  assign brc_data_out[2] = \<const0> ;
  assign brc_data_out[1] = \<const0> ;
  assign brc_data_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \a_ch_counter[0]_i_1 
       (.I0(a_ch_flag),
        .I1(\a_ch_counter_reg_n_0_[0] ),
        .O(\a_ch_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \a_ch_counter[1]_i_1 
       (.I0(a_ch_counter_reg__0[1]),
        .I1(\a_ch_counter_reg_n_0_[0] ),
        .I2(a_ch_flag),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \a_ch_counter[2]_i_1 
       (.I0(a_ch_counter_reg__0[2]),
        .I1(\a_ch_counter_reg_n_0_[0] ),
        .I2(a_ch_counter_reg__0[1]),
        .I3(a_ch_flag),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \a_ch_counter[3]_i_1 
       (.I0(a_ch_counter_reg__0[3]),
        .I1(a_ch_counter_reg__0[1]),
        .I2(\a_ch_counter_reg_n_0_[0] ),
        .I3(a_ch_counter_reg__0[2]),
        .I4(a_ch_flag),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \a_ch_counter[4]_i_1 
       (.I0(a_ch_counter_reg__0[4]),
        .I1(a_ch_counter_reg__0[1]),
        .I2(\a_ch_counter_reg_n_0_[0] ),
        .I3(a_ch_counter_reg__0[3]),
        .I4(a_ch_counter_reg__0[2]),
        .I5(a_ch_flag),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \a_ch_counter[5]_i_1 
       (.I0(a_ch_counter_reg__0[5]),
        .I1(\a_ch_counter[5]_i_2_n_0 ),
        .I2(a_ch_counter_reg__0[4]),
        .I3(a_ch_counter_reg__0[2]),
        .I4(a_ch_counter_reg__0[3]),
        .I5(a_ch_flag),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a_ch_counter[5]_i_2 
       (.I0(\a_ch_counter_reg_n_0_[0] ),
        .I1(a_ch_counter_reg__0[1]),
        .O(\a_ch_counter[5]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \a_ch_counter_reg[0] 
       (.C(clk_in),
        .CE(ready_a_ch_in),
        .CLR(reset_in),
        .D(\a_ch_counter[0]_i_1_n_0 ),
        .Q(\a_ch_counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_ch_counter_reg[1] 
       (.C(clk_in),
        .CE(ready_a_ch_in),
        .CLR(reset_in),
        .D(p_0_in__0[1]),
        .Q(a_ch_counter_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \a_ch_counter_reg[2] 
       (.C(clk_in),
        .CE(ready_a_ch_in),
        .CLR(reset_in),
        .D(p_0_in__0[2]),
        .Q(a_ch_counter_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \a_ch_counter_reg[3] 
       (.C(clk_in),
        .CE(ready_a_ch_in),
        .CLR(reset_in),
        .D(p_0_in__0[3]),
        .Q(a_ch_counter_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \a_ch_counter_reg[4] 
       (.C(clk_in),
        .CE(ready_a_ch_in),
        .CLR(reset_in),
        .D(p_0_in__0[4]),
        .Q(a_ch_counter_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \a_ch_counter_reg[5] 
       (.C(clk_in),
        .CE(ready_a_ch_in),
        .CLR(reset_in),
        .D(p_0_in__0[5]),
        .Q(a_ch_counter_reg__0[5]));
  LUT6 #(
    .INIT(64'h022222222222222A)) 
    a_ch_data_s_i_1
       (.I0(valid_a_ch_data_s_i_1_n_0),
        .I1(a_ch_counter_reg__0[1]),
        .I2(a_ch_counter_reg__0[4]),
        .I3(a_ch_counter_reg__0[3]),
        .I4(a_ch_counter_reg__0[2]),
        .I5(a_ch_counter_reg__0[5]),
        .O(a_ch_data_s));
  FDCE #(
    .INIT(1'b0)) 
    a_ch_data_s_reg
       (.C(clk_in),
        .CE(1'b1),
        .CLR(reset_in),
        .D(a_ch_data_s),
        .Q(a_ch_data_out));
  LUT5 #(
    .INIT(32'h00010000)) 
    a_ch_flag_i_1
       (.I0(a_flag_counter_reg__0[6]),
        .I1(a_flag_counter_reg__0[7]),
        .I2(a_flag_counter_reg__0[8]),
        .I3(a_flag_counter_reg__0[10]),
        .I4(a_flag_counter_reg__0[9]),
        .O(a_ch_flag11_out));
  FDCE #(
    .INIT(1'b0)) 
    a_ch_flag_reg
       (.C(clk_in),
        .CE(ready_a_ch_in),
        .CLR(reset_in),
        .D(a_ch_flag11_out),
        .Q(a_ch_flag));
  LUT1 #(
    .INIT(2'h1)) 
    \a_flag_counter[0]_i_1 
       (.I0(\a_flag_counter_reg_n_0_[0] ),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h0404040404040444)) 
    \a_flag_counter[10]_i_1 
       (.I0(a_flag_counter_reg__0[10]),
        .I1(ready_a_ch_in),
        .I2(a_flag_counter_reg__0[9]),
        .I3(a_flag_counter_reg__0[8]),
        .I4(a_flag_counter_reg__0[7]),
        .I5(a_flag_counter_reg__0[6]),
        .O(a_flag_counter));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \a_flag_counter[10]_i_2 
       (.I0(\a_flag_counter[10]_i_3_n_0 ),
        .I1(a_flag_counter_reg__0[6]),
        .I2(a_flag_counter_reg__0[9]),
        .I3(a_flag_counter_reg__0[8]),
        .I4(a_flag_counter_reg__0[7]),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \a_flag_counter[10]_i_3 
       (.I0(\a_flag_counter_reg_n_0_[4] ),
        .I1(\a_flag_counter_reg_n_0_[2] ),
        .I2(\a_flag_counter_reg_n_0_[0] ),
        .I3(\a_flag_counter_reg_n_0_[1] ),
        .I4(\a_flag_counter_reg_n_0_[3] ),
        .I5(\a_flag_counter_reg_n_0_[5] ),
        .O(\a_flag_counter[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_flag_counter[1]_i_1 
       (.I0(\a_flag_counter_reg_n_0_[0] ),
        .I1(\a_flag_counter_reg_n_0_[1] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \a_flag_counter[2]_i_1 
       (.I0(\a_flag_counter_reg_n_0_[1] ),
        .I1(\a_flag_counter_reg_n_0_[0] ),
        .I2(\a_flag_counter_reg_n_0_[2] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \a_flag_counter[3]_i_1 
       (.I0(\a_flag_counter_reg_n_0_[2] ),
        .I1(\a_flag_counter_reg_n_0_[0] ),
        .I2(\a_flag_counter_reg_n_0_[1] ),
        .I3(\a_flag_counter_reg_n_0_[3] ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \a_flag_counter[4]_i_1 
       (.I0(\a_flag_counter_reg_n_0_[3] ),
        .I1(\a_flag_counter_reg_n_0_[1] ),
        .I2(\a_flag_counter_reg_n_0_[0] ),
        .I3(\a_flag_counter_reg_n_0_[2] ),
        .I4(\a_flag_counter_reg_n_0_[4] ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \a_flag_counter[5]_i_1 
       (.I0(\a_flag_counter_reg_n_0_[4] ),
        .I1(\a_flag_counter_reg_n_0_[2] ),
        .I2(\a_flag_counter_reg_n_0_[0] ),
        .I3(\a_flag_counter_reg_n_0_[1] ),
        .I4(\a_flag_counter_reg_n_0_[3] ),
        .I5(\a_flag_counter_reg_n_0_[5] ),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \a_flag_counter[6]_i_1 
       (.I0(\a_flag_counter[10]_i_3_n_0 ),
        .I1(a_flag_counter_reg__0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \a_flag_counter[7]_i_1 
       (.I0(a_flag_counter_reg__0[6]),
        .I1(\a_flag_counter[10]_i_3_n_0 ),
        .I2(a_flag_counter_reg__0[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \a_flag_counter[8]_i_1 
       (.I0(a_flag_counter_reg__0[7]),
        .I1(\a_flag_counter[10]_i_3_n_0 ),
        .I2(a_flag_counter_reg__0[6]),
        .I3(a_flag_counter_reg__0[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \a_flag_counter[9]_i_1 
       (.I0(\a_flag_counter[10]_i_3_n_0 ),
        .I1(a_flag_counter_reg__0[6]),
        .I2(a_flag_counter_reg__0[7]),
        .I3(a_flag_counter_reg__0[8]),
        .I4(a_flag_counter_reg__0[9]),
        .O(p_0_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \a_flag_counter_reg[0] 
       (.C(clk_in),
        .CE(a_flag_counter),
        .CLR(reset_in),
        .D(p_0_in[0]),
        .Q(\a_flag_counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_flag_counter_reg[10] 
       (.C(clk_in),
        .CE(a_flag_counter),
        .CLR(reset_in),
        .D(p_0_in[10]),
        .Q(a_flag_counter_reg__0[10]));
  FDCE #(
    .INIT(1'b0)) 
    \a_flag_counter_reg[1] 
       (.C(clk_in),
        .CE(a_flag_counter),
        .CLR(reset_in),
        .D(p_0_in[1]),
        .Q(\a_flag_counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_flag_counter_reg[2] 
       (.C(clk_in),
        .CE(a_flag_counter),
        .CLR(reset_in),
        .D(p_0_in[2]),
        .Q(\a_flag_counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_flag_counter_reg[3] 
       (.C(clk_in),
        .CE(a_flag_counter),
        .CLR(reset_in),
        .D(p_0_in[3]),
        .Q(\a_flag_counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_flag_counter_reg[4] 
       (.C(clk_in),
        .CE(a_flag_counter),
        .CLR(reset_in),
        .D(p_0_in[4]),
        .Q(\a_flag_counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_flag_counter_reg[5] 
       (.C(clk_in),
        .CE(a_flag_counter),
        .CLR(reset_in),
        .D(p_0_in[5]),
        .Q(\a_flag_counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_flag_counter_reg[6] 
       (.C(clk_in),
        .CE(a_flag_counter),
        .CLR(reset_in),
        .D(p_0_in[6]),
        .Q(a_flag_counter_reg__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \a_flag_counter_reg[7] 
       (.C(clk_in),
        .CE(a_flag_counter),
        .CLR(reset_in),
        .D(p_0_in[7]),
        .Q(a_flag_counter_reg__0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \a_flag_counter_reg[8] 
       (.C(clk_in),
        .CE(a_flag_counter),
        .CLR(reset_in),
        .D(p_0_in[8]),
        .Q(a_flag_counter_reg__0[8]));
  FDCE #(
    .INIT(1'b0)) 
    \a_flag_counter_reg[9] 
       (.C(clk_in),
        .CE(a_flag_counter),
        .CLR(reset_in),
        .D(p_0_in[9]),
        .Q(a_flag_counter_reg__0[9]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \addr_data_s[30]_i_1 
       (.I0(ready_b_ch_in),
        .I1(b_ch_flag_reg_n_0),
        .I2(b_sel_flag_reg_n_0),
        .O(addr_data_s));
  FDCE #(
    .INIT(1'b0)) 
    \addr_data_s_reg[30] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(reset_in),
        .D(addr_data_s),
        .Q(valid_addr_data_out));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    b_ch_flag_i_1
       (.I0(b_flag_counter_reg__0[10]),
        .I1(b_flag_counter_reg__0[9]),
        .I2(b_ch_flag_i_2_n_0),
        .I3(b_ch_flag_i_3_n_0),
        .O(b_ch_flag8_out));
  LUT4 #(
    .INIT(16'hFFFE)) 
    b_ch_flag_i_2
       (.I0(b_flag_counter_reg__0[4]),
        .I1(b_flag_counter_reg__0[3]),
        .I2(b_flag_counter_reg__0[6]),
        .I3(b_flag_counter_reg__0[5]),
        .O(b_ch_flag_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    b_ch_flag_i_3
       (.I0(b_flag_counter_reg__0[0]),
        .I1(b_flag_counter_reg__0[7]),
        .I2(b_flag_counter_reg__0[8]),
        .I3(b_flag_counter_reg__0[2]),
        .I4(b_flag_counter_reg__0[1]),
        .O(b_ch_flag_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    b_ch_flag_reg
       (.C(clk_in),
        .CE(ready_b_ch_in),
        .CLR(reset_in),
        .D(b_ch_flag8_out),
        .Q(b_ch_flag_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \b_flag_counter[0]_i_1 
       (.I0(b_flag_counter_reg__0[0]),
        .I1(b_flag_counter_reg__0[10]),
        .O(\b_flag_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \b_flag_counter[10]_i_1 
       (.I0(b_flag_counter_reg__0[7]),
        .I1(b_flag_counter_reg__0[8]),
        .I2(b_flag_counter_reg__0[9]),
        .I3(b_flag_counter_reg__0[6]),
        .I4(\b_flag_counter[10]_i_2_n_0 ),
        .I5(b_flag_counter_reg__0[10]),
        .O(\b_flag_counter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \b_flag_counter[10]_i_2 
       (.I0(b_flag_counter_reg__0[4]),
        .I1(b_flag_counter_reg__0[2]),
        .I2(b_flag_counter_reg__0[0]),
        .I3(b_flag_counter_reg__0[1]),
        .I4(b_flag_counter_reg__0[3]),
        .I5(b_flag_counter_reg__0[5]),
        .O(\b_flag_counter[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \b_flag_counter[1]_i_1 
       (.I0(b_flag_counter_reg__0[1]),
        .I1(b_flag_counter_reg__0[0]),
        .I2(b_flag_counter_reg__0[10]),
        .O(\b_flag_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \b_flag_counter[2]_i_1 
       (.I0(b_flag_counter_reg__0[2]),
        .I1(b_flag_counter_reg__0[0]),
        .I2(b_flag_counter_reg__0[1]),
        .I3(b_flag_counter_reg__0[10]),
        .O(\b_flag_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \b_flag_counter[3]_i_1 
       (.I0(b_flag_counter_reg__0[3]),
        .I1(b_flag_counter_reg__0[1]),
        .I2(b_flag_counter_reg__0[0]),
        .I3(b_flag_counter_reg__0[2]),
        .I4(b_flag_counter_reg__0[10]),
        .O(\b_flag_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \b_flag_counter[4]_i_1 
       (.I0(b_flag_counter_reg__0[4]),
        .I1(b_flag_counter_reg__0[2]),
        .I2(b_flag_counter_reg__0[0]),
        .I3(b_flag_counter_reg__0[1]),
        .I4(b_flag_counter_reg__0[3]),
        .I5(b_flag_counter_reg__0[10]),
        .O(\b_flag_counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \b_flag_counter[5]_i_1 
       (.I0(b_flag_counter_reg__0[5]),
        .I1(\b_flag_counter[5]_i_2_n_0 ),
        .I2(b_flag_counter_reg__0[10]),
        .O(\b_flag_counter[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \b_flag_counter[5]_i_2 
       (.I0(b_flag_counter_reg__0[3]),
        .I1(b_flag_counter_reg__0[1]),
        .I2(b_flag_counter_reg__0[0]),
        .I3(b_flag_counter_reg__0[2]),
        .I4(b_flag_counter_reg__0[4]),
        .O(\b_flag_counter[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \b_flag_counter[6]_i_1 
       (.I0(b_flag_counter_reg__0[6]),
        .I1(\b_flag_counter[10]_i_2_n_0 ),
        .I2(b_flag_counter_reg__0[10]),
        .O(\b_flag_counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \b_flag_counter[7]_i_1 
       (.I0(b_flag_counter_reg__0[7]),
        .I1(\b_flag_counter[10]_i_2_n_0 ),
        .I2(b_flag_counter_reg__0[6]),
        .I3(b_flag_counter_reg__0[10]),
        .O(\b_flag_counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \b_flag_counter[8]_i_1 
       (.I0(b_flag_counter_reg__0[8]),
        .I1(b_flag_counter_reg__0[6]),
        .I2(\b_flag_counter[10]_i_2_n_0 ),
        .I3(b_flag_counter_reg__0[7]),
        .I4(b_flag_counter_reg__0[10]),
        .O(\b_flag_counter[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \b_flag_counter[9]_i_1 
       (.I0(b_flag_counter_reg__0[9]),
        .I1(b_flag_counter_reg__0[8]),
        .I2(b_flag_counter_reg__0[7]),
        .I3(b_flag_counter_reg__0[6]),
        .I4(\b_flag_counter[10]_i_2_n_0 ),
        .I5(b_flag_counter_reg__0[10]),
        .O(\b_flag_counter[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \b_flag_counter_reg[0] 
       (.C(clk_in),
        .CE(ready_b_ch_in),
        .CLR(reset_in),
        .D(\b_flag_counter[0]_i_1_n_0 ),
        .Q(b_flag_counter_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_flag_counter_reg[10] 
       (.C(clk_in),
        .CE(ready_b_ch_in),
        .CLR(reset_in),
        .D(\b_flag_counter[10]_i_1_n_0 ),
        .Q(b_flag_counter_reg__0[10]));
  FDCE #(
    .INIT(1'b0)) 
    \b_flag_counter_reg[1] 
       (.C(clk_in),
        .CE(ready_b_ch_in),
        .CLR(reset_in),
        .D(\b_flag_counter[1]_i_1_n_0 ),
        .Q(b_flag_counter_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \b_flag_counter_reg[2] 
       (.C(clk_in),
        .CE(ready_b_ch_in),
        .CLR(reset_in),
        .D(\b_flag_counter[2]_i_1_n_0 ),
        .Q(b_flag_counter_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \b_flag_counter_reg[3] 
       (.C(clk_in),
        .CE(ready_b_ch_in),
        .CLR(reset_in),
        .D(\b_flag_counter[3]_i_1_n_0 ),
        .Q(b_flag_counter_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \b_flag_counter_reg[4] 
       (.C(clk_in),
        .CE(ready_b_ch_in),
        .CLR(reset_in),
        .D(\b_flag_counter[4]_i_1_n_0 ),
        .Q(b_flag_counter_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \b_flag_counter_reg[5] 
       (.C(clk_in),
        .CE(ready_b_ch_in),
        .CLR(reset_in),
        .D(\b_flag_counter[5]_i_1_n_0 ),
        .Q(b_flag_counter_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \b_flag_counter_reg[6] 
       (.C(clk_in),
        .CE(ready_b_ch_in),
        .CLR(reset_in),
        .D(\b_flag_counter[6]_i_1_n_0 ),
        .Q(b_flag_counter_reg__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \b_flag_counter_reg[7] 
       (.C(clk_in),
        .CE(ready_b_ch_in),
        .CLR(reset_in),
        .D(\b_flag_counter[7]_i_1_n_0 ),
        .Q(b_flag_counter_reg__0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \b_flag_counter_reg[8] 
       (.C(clk_in),
        .CE(ready_b_ch_in),
        .CLR(reset_in),
        .D(\b_flag_counter[8]_i_1_n_0 ),
        .Q(b_flag_counter_reg__0[8]));
  FDCE #(
    .INIT(1'b0)) 
    \b_flag_counter_reg[9] 
       (.C(clk_in),
        .CE(ready_b_ch_in),
        .CLR(reset_in),
        .D(\b_flag_counter[9]_i_1_n_0 ),
        .Q(b_flag_counter_reg__0[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFEFF0100)) 
    b_sel_flag_i_1
       (.I0(b_ch_flag_i_3_n_0),
        .I1(b_ch_flag_i_2_n_0),
        .I2(b_flag_counter_reg__0[9]),
        .I3(b_flag_counter_reg__0[10]),
        .I4(b_sel_flag_reg_n_0),
        .O(b_sel_flag_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    b_sel_flag_reg
       (.C(clk_in),
        .CE(ready_b_ch_in),
        .CLR(reset_in),
        .D(b_sel_flag_i_1_n_0),
        .Q(b_sel_flag_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \brc_data_s[4]_i_1 
       (.I0(ready_b_ch_in),
        .I1(b_ch_flag_reg_n_0),
        .I2(b_sel_flag_reg_n_0),
        .O(brc_data_s));
  FDCE #(
    .INIT(1'b0)) 
    \brc_data_s_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(reset_in),
        .D(brc_data_s),
        .Q(valid_brc_data_out));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    valid_a_ch_data_s_i_1
       (.I0(a_ch_flag),
        .I1(ready_a_ch_in),
        .O(valid_a_ch_data_s_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    valid_a_ch_data_s_reg
       (.C(clk_in),
        .CE(1'b1),
        .CLR(reset_in),
        .D(valid_a_ch_data_s_i_1_n_0),
        .Q(valid_a_ch_data_out));
endmodule

module ttc_enc_wrapper
   (clk_out_40_p,
    data_out_p_OBUF,
    data_out_n_OBUF,
    ready_out_OBUF,
    ready_a_ch_in,
    clk_out_40_n,
    ready_b_ch_in,
    valid_a_ch_data_out,
    a_ch_data_out,
    reset_in_IBUF,
    clk_in_p,
    clk_in_n,
    valid_brc_data_out,
    brc_data_out,
    valid_addr_data_out,
    addr_data_out);
  output clk_out_40_p;
  output data_out_p_OBUF;
  output data_out_n_OBUF;
  output ready_out_OBUF;
  output ready_a_ch_in;
  output clk_out_40_n;
  output ready_b_ch_in;
  input valid_a_ch_data_out;
  input a_ch_data_out;
  input reset_in_IBUF;
  input clk_in_p;
  input clk_in_n;
  input valid_brc_data_out;
  input [7:0]brc_data_out;
  input valid_addr_data_out;
  input [30:0]addr_data_out;

  wire a_ch_data_out;
  wire [30:0]addr_data_out;
  wire [7:0]brc_data_out;
  wire clk_160_n_s;
  wire clk_80_n_s;
  wire clk_80_p_S;
  wire clk_in_n;
  wire clk_in_p;
  wire clk_out_40_n;
  wire clk_out_40_p;
  wire data_out_n_OBUF;
  wire data_out_n_ttcvx;
  wire data_out_p_OBUF;
  wire \forgen_synch[1].ins_dff_out_n_n_0 ;
  wire \forgen_synch[1].ins_dff_out_p_n_0 ;
  wire ins_ttcvi_n_0;
  wire jk_internal;
  wire locked_s;
  wire ready_a_ch_in;
  wire ready_b_ch_in;
  wire ready_out_OBUF;
  wire ready_s_i_1_n_0;
  wire ready_s_i_2_n_0;
  wire ready_s_i_3_n_0;
  wire ready_s_i_4_n_0;
  wire ready_s_i_5_n_0;
  wire ready_s_i_6_n_0;
  wire ready_s_i_7_n_0;
  wire ready_s_i_8_n_0;
  wire reset_in_IBUF;
  wire sel_cha_chb;
  wire \timer[0]_i_10_n_0 ;
  wire \timer[0]_i_11_n_0 ;
  wire \timer[0]_i_12_n_0 ;
  wire \timer[0]_i_1_n_0 ;
  wire \timer[0]_i_3_n_0 ;
  wire \timer[0]_i_4_n_0 ;
  wire \timer[0]_i_5_n_0 ;
  wire \timer[0]_i_6_n_0 ;
  wire \timer[0]_i_7_n_0 ;
  wire \timer[0]_i_8_n_0 ;
  wire \timer[0]_i_9_n_0 ;
  wire \timer[12]_i_2_n_0 ;
  wire \timer[12]_i_3_n_0 ;
  wire \timer[12]_i_4_n_0 ;
  wire \timer[12]_i_5_n_0 ;
  wire \timer[16]_i_2_n_0 ;
  wire \timer[16]_i_3_n_0 ;
  wire \timer[16]_i_4_n_0 ;
  wire \timer[16]_i_5_n_0 ;
  wire \timer[20]_i_2_n_0 ;
  wire \timer[20]_i_3_n_0 ;
  wire \timer[20]_i_4_n_0 ;
  wire \timer[20]_i_5_n_0 ;
  wire \timer[24]_i_2_n_0 ;
  wire \timer[24]_i_3_n_0 ;
  wire \timer[24]_i_4_n_0 ;
  wire \timer[24]_i_5_n_0 ;
  wire \timer[28]_i_2_n_0 ;
  wire \timer[28]_i_3_n_0 ;
  wire \timer[28]_i_4_n_0 ;
  wire \timer[28]_i_5_n_0 ;
  wire \timer[4]_i_2_n_0 ;
  wire \timer[4]_i_3_n_0 ;
  wire \timer[4]_i_4_n_0 ;
  wire \timer[4]_i_5_n_0 ;
  wire \timer[8]_i_2_n_0 ;
  wire \timer[8]_i_3_n_0 ;
  wire \timer[8]_i_4_n_0 ;
  wire \timer[8]_i_5_n_0 ;
  wire [31:0]timer_reg;
  wire \timer_reg[0]_i_2_n_0 ;
  wire \timer_reg[0]_i_2_n_4 ;
  wire \timer_reg[0]_i_2_n_5 ;
  wire \timer_reg[0]_i_2_n_6 ;
  wire \timer_reg[0]_i_2_n_7 ;
  wire \timer_reg[12]_i_1_n_0 ;
  wire \timer_reg[12]_i_1_n_4 ;
  wire \timer_reg[12]_i_1_n_5 ;
  wire \timer_reg[12]_i_1_n_6 ;
  wire \timer_reg[12]_i_1_n_7 ;
  wire \timer_reg[16]_i_1_n_0 ;
  wire \timer_reg[16]_i_1_n_4 ;
  wire \timer_reg[16]_i_1_n_5 ;
  wire \timer_reg[16]_i_1_n_6 ;
  wire \timer_reg[16]_i_1_n_7 ;
  wire \timer_reg[20]_i_1_n_0 ;
  wire \timer_reg[20]_i_1_n_4 ;
  wire \timer_reg[20]_i_1_n_5 ;
  wire \timer_reg[20]_i_1_n_6 ;
  wire \timer_reg[20]_i_1_n_7 ;
  wire \timer_reg[24]_i_1_n_0 ;
  wire \timer_reg[24]_i_1_n_4 ;
  wire \timer_reg[24]_i_1_n_5 ;
  wire \timer_reg[24]_i_1_n_6 ;
  wire \timer_reg[24]_i_1_n_7 ;
  wire \timer_reg[28]_i_1_n_4 ;
  wire \timer_reg[28]_i_1_n_5 ;
  wire \timer_reg[28]_i_1_n_6 ;
  wire \timer_reg[28]_i_1_n_7 ;
  wire \timer_reg[4]_i_1_n_0 ;
  wire \timer_reg[4]_i_1_n_4 ;
  wire \timer_reg[4]_i_1_n_5 ;
  wire \timer_reg[4]_i_1_n_6 ;
  wire \timer_reg[4]_i_1_n_7 ;
  wire \timer_reg[8]_i_1_n_0 ;
  wire \timer_reg[8]_i_1_n_4 ;
  wire \timer_reg[8]_i_1_n_5 ;
  wire \timer_reg[8]_i_1_n_6 ;
  wire \timer_reg[8]_i_1_n_7 ;
  wire valid_a_ch_data_out;
  wire valid_addr_data_out;
  wire valid_brc_data_out;
  wire [2:0]\NLW_timer_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_timer_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_reg[8]_i_1_CO_UNCONNECTED ;

  d_ff \forgen_synch[1].ins_dff_out_n 
       (.clk_out_160_n(clk_160_n_s),
        .d_internal_reg_0(\forgen_synch[1].ins_dff_out_n_n_0 ),
        .data_out_n_ttcvx(data_out_n_ttcvx),
        .ready_s_reg(ins_ttcvi_n_0));
  d_ff_0 \forgen_synch[1].ins_dff_out_p 
       (.clk_out_160_n(clk_160_n_s),
        .d_internal_reg_0(\forgen_synch[1].ins_dff_out_p_n_0 ),
        .jk_internal(jk_internal),
        .ready_s_reg(ins_ttcvi_n_0));
  d_ff_1 \forgen_synch[2].ins_dff_out_n 
       (.clk_out_160_n(clk_160_n_s),
        .d_internal_reg_0(\forgen_synch[1].ins_dff_out_n_n_0 ),
        .data_out_n_OBUF(data_out_n_OBUF),
        .ready_s_reg(ins_ttcvi_n_0));
  d_ff_2 \forgen_synch[2].ins_dff_out_p 
       (.clk_out_160_n(clk_160_n_s),
        .d_internal_reg_0(\forgen_synch[1].ins_dff_out_p_n_0 ),
        .data_out_p_OBUF(data_out_p_OBUF),
        .ready_s_reg(ins_ttcvi_n_0));
  mmcm ins_clk_wizard
       (.clk_in_n(clk_in_n),
        .clk_in_p(clk_in_p),
        .clk_out_160_n(clk_160_n_s),
        .clk_out_40_n(clk_out_40_n),
        .clk_out_40_p(clk_out_40_p),
        .clk_out_80_n(clk_80_n_s),
        .clk_out_80_p(clk_80_p_S),
        .locked(locked_s),
        .reset_in_IBUF(reset_in_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ins_ttc_data_generation_i_1
       (.I0(ready_out_OBUF),
        .I1(reset_in_IBUF),
        .O(ready_a_ch_in));
  ttcvi_emulation ins_ttcvi
       (.a_ch_data_out(a_ch_data_out),
        .addr_data_out(addr_data_out),
        .b_ch_out_reg(ins_ttcvi_n_0),
        .brc_data_out(brc_data_out),
        .clk_out_40_p(clk_out_40_p),
        .ready_b_ch_in(ready_b_ch_in),
        .ready_s_reg(ready_out_OBUF),
        .reset_in_IBUF(reset_in_IBUF),
        .sel_cha_chb(sel_cha_chb),
        .valid_a_ch_data_out(valid_a_ch_data_out),
        .valid_addr_data_out(valid_addr_data_out),
        .valid_brc_data_out(valid_brc_data_out));
  ttcvx_emulation ins_ttcvx
       (.clk_out_160_n(clk_160_n_s),
        .clk_out_80_n(clk_80_n_s),
        .clk_out_80_p(clk_80_p_S),
        .data_out_n_ttcvx(data_out_n_ttcvx),
        .jk_internal(jk_internal),
        .ready_s_reg(ins_ttcvi_n_0),
        .sel_cha_chb(sel_cha_chb));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    ready_s_i_1
       (.I0(ready_s_i_3_n_0),
        .I1(ready_s_i_4_n_0),
        .I2(ready_out_OBUF),
        .O(ready_s_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ready_s_i_2
       (.I0(locked_s),
        .O(ready_s_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    ready_s_i_3
       (.I0(timer_reg[28]),
        .I1(timer_reg[29]),
        .I2(timer_reg[26]),
        .I3(timer_reg[27]),
        .I4(timer_reg[31]),
        .I5(timer_reg[30]),
        .O(ready_s_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    ready_s_i_4
       (.I0(ready_s_i_5_n_0),
        .I1(ready_s_i_6_n_0),
        .I2(ready_s_i_7_n_0),
        .I3(ready_s_i_8_n_0),
        .I4(timer_reg[0]),
        .I5(timer_reg[1]),
        .O(ready_s_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    ready_s_i_5
       (.I0(timer_reg[22]),
        .I1(timer_reg[23]),
        .I2(timer_reg[20]),
        .I3(timer_reg[21]),
        .I4(timer_reg[25]),
        .I5(timer_reg[24]),
        .O(ready_s_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    ready_s_i_6
       (.I0(timer_reg[16]),
        .I1(timer_reg[17]),
        .I2(timer_reg[14]),
        .I3(timer_reg[15]),
        .I4(timer_reg[19]),
        .I5(timer_reg[18]),
        .O(ready_s_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    ready_s_i_7
       (.I0(timer_reg[10]),
        .I1(timer_reg[11]),
        .I2(timer_reg[8]),
        .I3(timer_reg[9]),
        .I4(timer_reg[13]),
        .I5(timer_reg[12]),
        .O(ready_s_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    ready_s_i_8
       (.I0(timer_reg[4]),
        .I1(timer_reg[5]),
        .I2(timer_reg[2]),
        .I3(timer_reg[3]),
        .I4(timer_reg[7]),
        .I5(timer_reg[6]),
        .O(ready_s_i_8_n_0));
  FDCE #(
    .INIT(1'b0)) 
    ready_s_reg
       (.C(clk_out_40_p),
        .CE(1'b1),
        .CLR(ready_s_i_2_n_0),
        .D(ready_s_i_1_n_0),
        .Q(ready_out_OBUF));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \timer[0]_i_1 
       (.I0(\timer[0]_i_3_n_0 ),
        .I1(\timer[0]_i_4_n_0 ),
        .I2(\timer[0]_i_5_n_0 ),
        .I3(\timer[0]_i_6_n_0 ),
        .I4(\timer[0]_i_7_n_0 ),
        .I5(\timer[0]_i_8_n_0 ),
        .O(\timer[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[0]_i_10 
       (.I0(timer_reg[2]),
        .O(\timer[0]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[0]_i_11 
       (.I0(timer_reg[1]),
        .O(\timer[0]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[0]_i_12 
       (.I0(timer_reg[0]),
        .O(\timer[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timer[0]_i_3 
       (.I0(timer_reg[12]),
        .I1(timer_reg[13]),
        .I2(timer_reg[10]),
        .I3(timer_reg[11]),
        .I4(timer_reg[9]),
        .I5(timer_reg[8]),
        .O(\timer[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timer[0]_i_4 
       (.I0(timer_reg[18]),
        .I1(timer_reg[19]),
        .I2(timer_reg[16]),
        .I3(timer_reg[17]),
        .I4(timer_reg[15]),
        .I5(timer_reg[14]),
        .O(\timer[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timer[0]_i_5 
       (.I0(timer_reg[30]),
        .I1(timer_reg[31]),
        .I2(timer_reg[28]),
        .I3(timer_reg[29]),
        .I4(timer_reg[27]),
        .I5(timer_reg[26]),
        .O(\timer[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timer[0]_i_6 
       (.I0(timer_reg[24]),
        .I1(timer_reg[25]),
        .I2(timer_reg[22]),
        .I3(timer_reg[23]),
        .I4(timer_reg[21]),
        .I5(timer_reg[20]),
        .O(\timer[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \timer[0]_i_7 
       (.I0(timer_reg[0]),
        .I1(timer_reg[1]),
        .O(\timer[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timer[0]_i_8 
       (.I0(timer_reg[6]),
        .I1(timer_reg[7]),
        .I2(timer_reg[4]),
        .I3(timer_reg[5]),
        .I4(timer_reg[3]),
        .I5(timer_reg[2]),
        .O(\timer[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[0]_i_9 
       (.I0(timer_reg[3]),
        .O(\timer[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[12]_i_2 
       (.I0(timer_reg[15]),
        .O(\timer[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[12]_i_3 
       (.I0(timer_reg[14]),
        .O(\timer[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[12]_i_4 
       (.I0(timer_reg[13]),
        .O(\timer[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[12]_i_5 
       (.I0(timer_reg[12]),
        .O(\timer[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[16]_i_2 
       (.I0(timer_reg[19]),
        .O(\timer[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[16]_i_3 
       (.I0(timer_reg[18]),
        .O(\timer[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[16]_i_4 
       (.I0(timer_reg[17]),
        .O(\timer[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[16]_i_5 
       (.I0(timer_reg[16]),
        .O(\timer[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[20]_i_2 
       (.I0(timer_reg[23]),
        .O(\timer[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[20]_i_3 
       (.I0(timer_reg[22]),
        .O(\timer[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[20]_i_4 
       (.I0(timer_reg[21]),
        .O(\timer[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[20]_i_5 
       (.I0(timer_reg[20]),
        .O(\timer[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[24]_i_2 
       (.I0(timer_reg[27]),
        .O(\timer[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[24]_i_3 
       (.I0(timer_reg[26]),
        .O(\timer[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[24]_i_4 
       (.I0(timer_reg[25]),
        .O(\timer[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[24]_i_5 
       (.I0(timer_reg[24]),
        .O(\timer[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[28]_i_2 
       (.I0(timer_reg[31]),
        .O(\timer[28]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[28]_i_3 
       (.I0(timer_reg[30]),
        .O(\timer[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[28]_i_4 
       (.I0(timer_reg[29]),
        .O(\timer[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[28]_i_5 
       (.I0(timer_reg[28]),
        .O(\timer[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[4]_i_2 
       (.I0(timer_reg[7]),
        .O(\timer[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[4]_i_3 
       (.I0(timer_reg[6]),
        .O(\timer[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[4]_i_4 
       (.I0(timer_reg[5]),
        .O(\timer[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[4]_i_5 
       (.I0(timer_reg[4]),
        .O(\timer[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[8]_i_2 
       (.I0(timer_reg[11]),
        .O(\timer[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[8]_i_3 
       (.I0(timer_reg[10]),
        .O(\timer[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[8]_i_4 
       (.I0(timer_reg[9]),
        .O(\timer[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[8]_i_5 
       (.I0(timer_reg[8]),
        .O(\timer[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[0] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[0]_i_2_n_7 ),
        .Q(timer_reg[0]));
  CARRY4 \timer_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\timer_reg[0]_i_2_n_0 ,\NLW_timer_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\timer_reg[0]_i_2_n_4 ,\timer_reg[0]_i_2_n_5 ,\timer_reg[0]_i_2_n_6 ,\timer_reg[0]_i_2_n_7 }),
        .S({\timer[0]_i_9_n_0 ,\timer[0]_i_10_n_0 ,\timer[0]_i_11_n_0 ,\timer[0]_i_12_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[10] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[8]_i_1_n_5 ),
        .Q(timer_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[11] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[8]_i_1_n_4 ),
        .Q(timer_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[12] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[12]_i_1_n_7 ),
        .Q(timer_reg[12]));
  CARRY4 \timer_reg[12]_i_1 
       (.CI(\timer_reg[8]_i_1_n_0 ),
        .CO({\timer_reg[12]_i_1_n_0 ,\NLW_timer_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\timer_reg[12]_i_1_n_4 ,\timer_reg[12]_i_1_n_5 ,\timer_reg[12]_i_1_n_6 ,\timer_reg[12]_i_1_n_7 }),
        .S({\timer[12]_i_2_n_0 ,\timer[12]_i_3_n_0 ,\timer[12]_i_4_n_0 ,\timer[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[13] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[12]_i_1_n_6 ),
        .Q(timer_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[14] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[12]_i_1_n_5 ),
        .Q(timer_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[15] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[12]_i_1_n_4 ),
        .Q(timer_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[16] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[16]_i_1_n_7 ),
        .Q(timer_reg[16]));
  CARRY4 \timer_reg[16]_i_1 
       (.CI(\timer_reg[12]_i_1_n_0 ),
        .CO({\timer_reg[16]_i_1_n_0 ,\NLW_timer_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\timer_reg[16]_i_1_n_4 ,\timer_reg[16]_i_1_n_5 ,\timer_reg[16]_i_1_n_6 ,\timer_reg[16]_i_1_n_7 }),
        .S({\timer[16]_i_2_n_0 ,\timer[16]_i_3_n_0 ,\timer[16]_i_4_n_0 ,\timer[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[17] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[16]_i_1_n_6 ),
        .Q(timer_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[18] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[16]_i_1_n_5 ),
        .Q(timer_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[19] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[16]_i_1_n_4 ),
        .Q(timer_reg[19]));
  FDPE #(
    .INIT(1'b1)) 
    \timer_reg[1] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[0]_i_2_n_6 ),
        .PRE(ready_s_i_2_n_0),
        .Q(timer_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[20] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[20]_i_1_n_7 ),
        .Q(timer_reg[20]));
  CARRY4 \timer_reg[20]_i_1 
       (.CI(\timer_reg[16]_i_1_n_0 ),
        .CO({\timer_reg[20]_i_1_n_0 ,\NLW_timer_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\timer_reg[20]_i_1_n_4 ,\timer_reg[20]_i_1_n_5 ,\timer_reg[20]_i_1_n_6 ,\timer_reg[20]_i_1_n_7 }),
        .S({\timer[20]_i_2_n_0 ,\timer[20]_i_3_n_0 ,\timer[20]_i_4_n_0 ,\timer[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[21] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[20]_i_1_n_6 ),
        .Q(timer_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[22] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[20]_i_1_n_5 ),
        .Q(timer_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[23] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[20]_i_1_n_4 ),
        .Q(timer_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[24] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[24]_i_1_n_7 ),
        .Q(timer_reg[24]));
  CARRY4 \timer_reg[24]_i_1 
       (.CI(\timer_reg[20]_i_1_n_0 ),
        .CO({\timer_reg[24]_i_1_n_0 ,\NLW_timer_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\timer_reg[24]_i_1_n_4 ,\timer_reg[24]_i_1_n_5 ,\timer_reg[24]_i_1_n_6 ,\timer_reg[24]_i_1_n_7 }),
        .S({\timer[24]_i_2_n_0 ,\timer[24]_i_3_n_0 ,\timer[24]_i_4_n_0 ,\timer[24]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[25] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[24]_i_1_n_6 ),
        .Q(timer_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[26] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[24]_i_1_n_5 ),
        .Q(timer_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[27] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[24]_i_1_n_4 ),
        .Q(timer_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[28] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[28]_i_1_n_7 ),
        .Q(timer_reg[28]));
  CARRY4 \timer_reg[28]_i_1 
       (.CI(\timer_reg[24]_i_1_n_0 ),
        .CO(\NLW_timer_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\timer_reg[28]_i_1_n_4 ,\timer_reg[28]_i_1_n_5 ,\timer_reg[28]_i_1_n_6 ,\timer_reg[28]_i_1_n_7 }),
        .S({\timer[28]_i_2_n_0 ,\timer[28]_i_3_n_0 ,\timer[28]_i_4_n_0 ,\timer[28]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[29] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[28]_i_1_n_6 ),
        .Q(timer_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[2] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[0]_i_2_n_5 ),
        .Q(timer_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[30] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[28]_i_1_n_5 ),
        .Q(timer_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[31] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[28]_i_1_n_4 ),
        .Q(timer_reg[31]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[3] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[0]_i_2_n_4 ),
        .Q(timer_reg[3]));
  FDPE #(
    .INIT(1'b1)) 
    \timer_reg[4] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[4]_i_1_n_7 ),
        .PRE(ready_s_i_2_n_0),
        .Q(timer_reg[4]));
  CARRY4 \timer_reg[4]_i_1 
       (.CI(\timer_reg[0]_i_2_n_0 ),
        .CO({\timer_reg[4]_i_1_n_0 ,\NLW_timer_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\timer_reg[4]_i_1_n_4 ,\timer_reg[4]_i_1_n_5 ,\timer_reg[4]_i_1_n_6 ,\timer_reg[4]_i_1_n_7 }),
        .S({\timer[4]_i_2_n_0 ,\timer[4]_i_3_n_0 ,\timer[4]_i_4_n_0 ,\timer[4]_i_5_n_0 }));
  FDPE #(
    .INIT(1'b1)) 
    \timer_reg[5] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[4]_i_1_n_6 ),
        .PRE(ready_s_i_2_n_0),
        .Q(timer_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[6] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[4]_i_1_n_5 ),
        .Q(timer_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[7] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[4]_i_1_n_4 ),
        .Q(timer_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[8] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[8]_i_1_n_7 ),
        .Q(timer_reg[8]));
  CARRY4 \timer_reg[8]_i_1 
       (.CI(\timer_reg[4]_i_1_n_0 ),
        .CO({\timer_reg[8]_i_1_n_0 ,\NLW_timer_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\timer_reg[8]_i_1_n_4 ,\timer_reg[8]_i_1_n_5 ,\timer_reg[8]_i_1_n_6 ,\timer_reg[8]_i_1_n_7 }),
        .S({\timer[8]_i_2_n_0 ,\timer[8]_i_3_n_0 ,\timer[8]_i_4_n_0 ,\timer[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[9] 
       (.C(clk_out_40_p),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[8]_i_1_n_6 ),
        .Q(timer_reg[9]));
endmodule

(* ECO_CHECKSUM = "2f8de087" *) 
(* NotValidForBitStream *)
module ttc_encoder_data_gen
   (data_out_p,
    data_out_n,
    clk_out_40_p,
    clk_out_40_n,
    ready_out,
    clk_in_p,
    clk_in_n,
    reset_in);
  output data_out_p;
  output data_out_n;
  output clk_out_40_p;
  output clk_out_40_n;
  output ready_out;
  input clk_in_p;
  input clk_in_n;
  input reset_in;

  wire a_ch_data_s;
  wire [30:0]addr_data_s;
  wire [7:0]brc_data_s;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire clk_in_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire clk_in_p;
  wire clk_out_40_n;
  wire clk_out_40_n_OBUF;
  wire clk_out_40_p;
  wire clk_out_40_p_OBUF;
  wire data_out_n;
  wire data_out_n_OBUF;
  wire data_out_p;
  wire data_out_p_OBUF;
  wire ins_ttc_n_4;
  wire ready_b_ch_in;
  wire ready_out;
  wire ready_out_OBUF;
  wire reset_in;
  wire reset_in_IBUF;
  wire valid_a_ch_data_s;
  wire valid_addr_data_s;
  wire valid_brc_data_s;

initial begin
 $sdf_annotate("tb_ttc_encoder_data_generation_time_impl.sdf",,,,"tool_control");
end
  OBUF clk_out_40_n_OBUF_inst
       (.I(clk_out_40_n_OBUF),
        .O(clk_out_40_n));
  OBUF clk_out_40_p_OBUF_inst
       (.I(clk_out_40_p_OBUF),
        .O(clk_out_40_p));
  OBUF data_out_n_OBUF_inst
       (.I(data_out_n_OBUF),
        .O(data_out_n));
  OBUF data_out_p_OBUF_inst
       (.I(data_out_p_OBUF),
        .O(data_out_p));
  ttc_enc_wrapper ins_ttc
       (.a_ch_data_out(a_ch_data_s),
        .addr_data_out(addr_data_s),
        .brc_data_out(brc_data_s),
        .clk_in_n(clk_in_n),
        .clk_in_p(clk_in_p),
        .clk_out_40_n(clk_out_40_n_OBUF),
        .clk_out_40_p(clk_out_40_p_OBUF),
        .data_out_n_OBUF(data_out_n_OBUF),
        .data_out_p_OBUF(data_out_p_OBUF),
        .ready_a_ch_in(ins_ttc_n_4),
        .ready_b_ch_in(ready_b_ch_in),
        .ready_out_OBUF(ready_out_OBUF),
        .reset_in_IBUF(reset_in_IBUF),
        .valid_a_ch_data_out(valid_a_ch_data_s),
        .valid_addr_data_out(valid_addr_data_s),
        .valid_brc_data_out(valid_brc_data_s));
  (* DONT_TOUCH *) 
  ttc_data_generation ins_ttc_data_generation
       (.a_ch_data_out(a_ch_data_s),
        .addr_data_out(addr_data_s),
        .brc_data_out(brc_data_s),
        .clk_in(clk_out_40_p_OBUF),
        .ready_a_ch_in(ins_ttc_n_4),
        .ready_b_ch_in(ready_b_ch_in),
        .reset_in(reset_in_IBUF),
        .valid_a_ch_data_out(valid_a_ch_data_s),
        .valid_addr_data_out(valid_addr_data_s),
        .valid_brc_data_out(valid_brc_data_s));
  OBUF ready_out_OBUF_inst
       (.I(ready_out_OBUF),
        .O(ready_out));
  IBUF reset_in_IBUF_inst
       (.I(reset_in),
        .O(reset_in_IBUF));
endmodule

module ttcvi_emulation
   (b_ch_out_reg,
    sel_cha_chb,
    ready_b_ch_in,
    clk_out_40_p,
    valid_a_ch_data_out,
    a_ch_data_out,
    reset_in_IBUF,
    ready_s_reg,
    valid_brc_data_out,
    brc_data_out,
    valid_addr_data_out,
    addr_data_out);
  output b_ch_out_reg;
  output sel_cha_chb;
  output ready_b_ch_in;
  input clk_out_40_p;
  input valid_a_ch_data_out;
  input a_ch_data_out;
  input reset_in_IBUF;
  input ready_s_reg;
  input valid_brc_data_out;
  input [7:0]brc_data_out;
  input valid_addr_data_out;
  input [30:0]addr_data_out;

  wire \FSM_sequential_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire a_ch_data_out;
  wire a_ch_from_ttcvi;
  wire a_ch_out_i_1_n_0;
  wire a_ch_strobe_s;
  wire a_ch_strobe_s_i_1_n_0;
  wire [13:0]addr_a14_in;
  wire [30:0]addr_data_out;
  wire addr_e_in;
  wire [7:0]addr_s8_in;
  wire b_ch_addr_s;
  wire [30:0]b_ch_addr_s0_in;
  wire \b_ch_addr_s[30]_i_3_n_0 ;
  wire \b_ch_addr_s[30]_i_4_n_0 ;
  wire \b_ch_addr_s_reg_n_0_[0] ;
  wire \b_ch_addr_s_reg_n_0_[1] ;
  wire \b_ch_addr_s_reg_n_0_[2] ;
  wire \b_ch_addr_s_reg_n_0_[3] ;
  wire \b_ch_addr_s_reg_n_0_[4] ;
  wire \b_ch_addr_s_reg_n_0_[5] ;
  wire \b_ch_addr_s_reg_n_0_[6] ;
  wire \b_ch_addr_s_reg_n_0_[7] ;
  wire b_ch_addr_valid_s;
  wire b_ch_addr_valid_s_i_2_n_0;
  wire b_ch_addr_valid_s_reg_n_0;
  wire b_ch_brc_s;
  wire [7:0]b_ch_brc_s0_in;
  wire \b_ch_brc_s[7]_i_3_n_0 ;
  wire \b_ch_brc_s_reg_n_0_[0] ;
  wire b_ch_brc_valid_s;
  wire b_ch_brc_valid_s_reg_n_0;
  wire b_ch_out_reg;
  wire [3:0]brc_d4_in;
  wire [7:0]brc_data_out;
  wire brc_e_in;
  wire [1:0]brc_t2_in;
  wire clk_out_40_p;
  wire [5:0]counter_b_ch;
  wire \counter_b_ch[2]_i_2_n_0 ;
  wire \counter_b_ch[3]_i_2_n_0 ;
  wire \counter_b_ch[3]_i_3_n_0 ;
  wire \counter_b_ch[3]_i_4_n_0 ;
  wire \counter_b_ch[3]_i_5_n_0 ;
  wire \counter_b_ch_reg_n_0_[0] ;
  wire \counter_b_ch_reg_n_0_[1] ;
  wire \counter_b_ch_reg_n_0_[2] ;
  wire \counter_b_ch_reg_n_0_[3] ;
  wire \counter_b_ch_reg_n_0_[4] ;
  wire \counter_b_ch_reg_n_0_[5] ;
  wire ready_b_ch_in;
  wire ready_rd_b_ch_out;
  wire ready_rd_b_ch_s;
  wire ready_rd_b_ch_s_i_2_n_0;
  wire ready_rd_b_ch_s_i_3_n_0;
  wire ready_rd_b_ch_s_i_4_n_0;
  wire ready_s_reg;
  wire reset_in_IBUF;
  wire sel_cha_chb;
  (* RTL_KEEP = "yes" *) wire [2:0]state;
  wire valid_a_ch_data_out;
  wire valid_addr_data_out;
  wire valid_brc_data_out;

  LUT6 #(
    .INIT(64'h0020002033331131)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .I3(\FSM_sequential_state[1]_i_3_n_0 ),
        .I4(valid_brc_data_out),
        .I5(state[0]),
        .O(\FSM_sequential_state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\counter_b_ch_reg_n_0_[2] ),
        .I1(\counter_b_ch_reg_n_0_[1] ),
        .I2(\counter_b_ch_reg_n_0_[3] ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAABAAABAAAFFAABA)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(\FSM_sequential_state[1]_i_4_n_0 ),
        .I3(state[2]),
        .I4(state[0]),
        .I5(state[1]),
        .O(\FSM_sequential_state[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\counter_b_ch[3]_i_5_n_0 ),
        .I1(\counter_b_ch_reg_n_0_[5] ),
        .I2(\counter_b_ch_reg_n_0_[3] ),
        .I3(\counter_b_ch[3]_i_2_n_0 ),
        .I4(\FSM_sequential_state[1]_i_5_n_0 ),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\counter_b_ch_reg_n_0_[5] ),
        .I1(\counter_b_ch_reg_n_0_[4] ),
        .I2(state[0]),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(\counter_b_ch_reg_n_0_[0] ),
        .I1(\counter_b_ch_reg_n_0_[1] ),
        .I2(\counter_b_ch_reg_n_0_[2] ),
        .I3(\counter_b_ch_reg_n_0_[3] ),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(valid_brc_data_out),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDDCCCCCCDFCCCCCC)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\counter_b_ch_reg_n_0_[5] ),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(\counter_b_ch_reg_n_0_[3] ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_3_n_0 ),
        .I5(\counter_b_ch_reg_n_0_[4] ),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(valid_brc_data_out),
        .I1(valid_addr_data_out),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "s1_wait:001,s3_brc:011,s3_addr:100,s0_ready_rd:000,s2_start_data:010" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_out_40_p),
        .CE(1'b1),
        .CLR(b_ch_out_reg),
        .D(\FSM_sequential_state[0]_i_1__0_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "s1_wait:001,s3_brc:011,s3_addr:100,s0_ready_rd:000,s2_start_data:010" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_out_40_p),
        .CE(1'b1),
        .CLR(b_ch_out_reg),
        .D(\FSM_sequential_state[1]_i_1__0_n_0 ),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "s1_wait:001,s3_brc:011,s3_addr:100,s0_ready_rd:000,s2_start_data:010" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk_out_40_p),
        .CE(1'b1),
        .CLR(b_ch_out_reg),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]));
  LUT2 #(
    .INIT(4'h8)) 
    a_ch_out_i_1
       (.I0(valid_a_ch_data_out),
        .I1(a_ch_data_out),
        .O(a_ch_out_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    a_ch_out_reg
       (.C(clk_out_40_p),
        .CE(1'b1),
        .CLR(b_ch_out_reg),
        .D(a_ch_out_i_1_n_0),
        .Q(a_ch_from_ttcvi));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    a_ch_strobe_s_i_1
       (.I0(a_ch_strobe_s),
        .I1(reset_in_IBUF),
        .I2(ready_s_reg),
        .I3(valid_a_ch_data_out),
        .O(a_ch_strobe_s_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    a_ch_strobe_s_reg
       (.C(clk_out_40_p),
        .CE(1'b1),
        .D(a_ch_strobe_s_i_1_n_0),
        .Q(a_ch_strobe_s),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[0]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[0]),
        .O(b_ch_addr_s0_in[0]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[10]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[10]),
        .O(b_ch_addr_s0_in[10]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[11]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[11]),
        .O(b_ch_addr_s0_in[11]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[12]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[12]),
        .O(b_ch_addr_s0_in[12]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[13]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[13]),
        .O(b_ch_addr_s0_in[13]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[14]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[14]),
        .O(b_ch_addr_s0_in[14]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[15]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[15]),
        .O(b_ch_addr_s0_in[15]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[16]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[16]),
        .O(b_ch_addr_s0_in[16]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[17]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[17]),
        .O(b_ch_addr_s0_in[17]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[18]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[18]),
        .O(b_ch_addr_s0_in[18]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[19]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[19]),
        .O(b_ch_addr_s0_in[19]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[1]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[1]),
        .O(b_ch_addr_s0_in[1]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[20]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[20]),
        .O(b_ch_addr_s0_in[20]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[21]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[21]),
        .O(b_ch_addr_s0_in[21]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[22]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[22]),
        .O(b_ch_addr_s0_in[22]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[23]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[23]),
        .O(b_ch_addr_s0_in[23]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[24]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[24]),
        .O(b_ch_addr_s0_in[24]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[25]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[25]),
        .O(b_ch_addr_s0_in[25]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[26]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[26]),
        .O(b_ch_addr_s0_in[26]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[27]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[27]),
        .O(b_ch_addr_s0_in[27]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[28]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[28]),
        .O(b_ch_addr_s0_in[28]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[29]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[29]),
        .O(b_ch_addr_s0_in[29]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[2]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[2]),
        .O(b_ch_addr_s0_in[2]));
  LUT6 #(
    .INIT(64'hBBBBBBABBBBBBBBB)) 
    \b_ch_addr_s[30]_i_1 
       (.I0(\b_ch_addr_s[30]_i_3_n_0 ),
        .I1(state[2]),
        .I2(state[0]),
        .I3(\counter_b_ch_reg_n_0_[4] ),
        .I4(\counter_b_ch_reg_n_0_[5] ),
        .I5(state[1]),
        .O(b_ch_addr_s));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[30]_i_2 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[30]),
        .O(b_ch_addr_s0_in[30]));
  LUT6 #(
    .INIT(64'hCFCECCCCCCCCCCCC)) 
    \b_ch_addr_s[30]_i_3 
       (.I0(\counter_b_ch_reg_n_0_[1] ),
        .I1(\b_ch_addr_s[30]_i_4_n_0 ),
        .I2(state[2]),
        .I3(\counter_b_ch_reg_n_0_[0] ),
        .I4(\counter_b_ch_reg_n_0_[3] ),
        .I5(\counter_b_ch_reg_n_0_[2] ),
        .O(\b_ch_addr_s[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0202020202000000)) 
    \b_ch_addr_s[30]_i_4 
       (.I0(\counter_b_ch_reg_n_0_[5] ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\counter_b_ch[3]_i_2_n_0 ),
        .I4(\counter_b_ch_reg_n_0_[3] ),
        .I5(\counter_b_ch_reg_n_0_[4] ),
        .O(\b_ch_addr_s[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[3]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[3]),
        .O(b_ch_addr_s0_in[3]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[4]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[4]),
        .O(b_ch_addr_s0_in[4]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[5]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[5]),
        .O(b_ch_addr_s0_in[5]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[6]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[6]),
        .O(b_ch_addr_s0_in[6]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[7]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[7]),
        .O(b_ch_addr_s0_in[7]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[8]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[8]),
        .O(b_ch_addr_s0_in[8]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \b_ch_addr_s[9]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(valid_addr_data_out),
        .I4(valid_brc_data_out),
        .I5(addr_data_out[9]),
        .O(b_ch_addr_s0_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[0] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[0]),
        .Q(\b_ch_addr_s_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[10] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[10]),
        .Q(addr_s8_in[2]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[11] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[11]),
        .Q(addr_s8_in[3]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[12] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[12]),
        .Q(addr_s8_in[4]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[13] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[13]),
        .Q(addr_s8_in[5]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[14] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[14]),
        .Q(addr_s8_in[6]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[15] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[15]),
        .Q(addr_s8_in[7]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[16] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[16]),
        .Q(addr_e_in));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[17] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[17]),
        .Q(addr_a14_in[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[18] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[18]),
        .Q(addr_a14_in[1]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[19] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[19]),
        .Q(addr_a14_in[2]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[1] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[1]),
        .Q(\b_ch_addr_s_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[20] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[20]),
        .Q(addr_a14_in[3]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[21] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[21]),
        .Q(addr_a14_in[4]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[22] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[22]),
        .Q(addr_a14_in[5]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[23] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[23]),
        .Q(addr_a14_in[6]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[24] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[24]),
        .Q(addr_a14_in[7]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[25] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[25]),
        .Q(addr_a14_in[8]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[26] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[26]),
        .Q(addr_a14_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[27] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[27]),
        .Q(addr_a14_in[10]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[28] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[28]),
        .Q(addr_a14_in[11]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[29] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[29]),
        .Q(addr_a14_in[12]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[2] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[2]),
        .Q(\b_ch_addr_s_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[30] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[30]),
        .Q(addr_a14_in[13]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[3] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[3]),
        .Q(\b_ch_addr_s_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[4] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[4]),
        .Q(\b_ch_addr_s_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[5] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[5]),
        .Q(\b_ch_addr_s_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[6] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[6]),
        .Q(\b_ch_addr_s_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[7] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[7]),
        .Q(\b_ch_addr_s_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[8] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[8]),
        .Q(addr_s8_in[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[9] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_s0_in[9]),
        .Q(addr_s8_in[1]));
  LUT6 #(
    .INIT(64'hDCCCFCCCDCCCDCCC)) 
    b_ch_addr_valid_s_i_1
       (.I0(\counter_b_ch_reg_n_0_[5] ),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(state[2]),
        .I3(\FSM_sequential_state[2]_i_3_n_0 ),
        .I4(\counter_b_ch_reg_n_0_[4] ),
        .I5(b_ch_addr_valid_s_i_2_n_0),
        .O(b_ch_addr_valid_s));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    b_ch_addr_valid_s_i_2
       (.I0(\counter_b_ch_reg_n_0_[2] ),
        .I1(\counter_b_ch_reg_n_0_[0] ),
        .I2(\counter_b_ch_reg_n_0_[1] ),
        .I3(\counter_b_ch_reg_n_0_[3] ),
        .O(b_ch_addr_valid_s_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    b_ch_addr_valid_s_reg
       (.C(clk_out_40_p),
        .CE(1'b1),
        .CLR(b_ch_out_reg),
        .D(b_ch_addr_valid_s),
        .Q(b_ch_addr_valid_s_reg_n_0));
  LUT5 #(
    .INIT(32'h00200000)) 
    \b_ch_brc_s[0]_i_1 
       (.I0(valid_brc_data_out),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(brc_data_out[0]),
        .O(b_ch_brc_s0_in[0]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \b_ch_brc_s[1]_i_1 
       (.I0(valid_brc_data_out),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(brc_data_out[1]),
        .O(b_ch_brc_s0_in[1]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \b_ch_brc_s[2]_i_1 
       (.I0(valid_brc_data_out),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(brc_data_out[2]),
        .O(b_ch_brc_s0_in[2]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \b_ch_brc_s[3]_i_1 
       (.I0(valid_brc_data_out),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(brc_data_out[3]),
        .O(b_ch_brc_s0_in[3]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \b_ch_brc_s[4]_i_1 
       (.I0(valid_brc_data_out),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(brc_data_out[4]),
        .O(b_ch_brc_s0_in[4]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \b_ch_brc_s[5]_i_1 
       (.I0(valid_brc_data_out),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(brc_data_out[5]),
        .O(b_ch_brc_s0_in[5]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \b_ch_brc_s[6]_i_1 
       (.I0(valid_brc_data_out),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(brc_data_out[6]),
        .O(b_ch_brc_s0_in[6]));
  LUT6 #(
    .INIT(64'hFAFAFAFAFFFEFEFF)) 
    \b_ch_brc_s[7]_i_1 
       (.I0(\b_ch_brc_s[7]_i_3_n_0 ),
        .I1(ready_rd_b_ch_s_i_3_n_0),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(\counter_b_ch_reg_n_0_[1] ),
        .I4(\counter_b_ch_reg_n_0_[0] ),
        .I5(state[2]),
        .O(b_ch_brc_s));
  LUT5 #(
    .INIT(32'h00200000)) 
    \b_ch_brc_s[7]_i_2 
       (.I0(valid_brc_data_out),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(brc_data_out[7]),
        .O(b_ch_brc_s0_in[7]));
  LUT5 #(
    .INIT(32'h0000FDFF)) 
    \b_ch_brc_s[7]_i_3 
       (.I0(state[1]),
        .I1(\counter_b_ch_reg_n_0_[5] ),
        .I2(\counter_b_ch_reg_n_0_[4] ),
        .I3(state[0]),
        .I4(state[2]),
        .O(\b_ch_brc_s[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_brc_s_reg[0] 
       (.C(clk_out_40_p),
        .CE(b_ch_brc_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_brc_s0_in[0]),
        .Q(\b_ch_brc_s_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_brc_s_reg[1] 
       (.C(clk_out_40_p),
        .CE(b_ch_brc_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_brc_s0_in[1]),
        .Q(brc_e_in));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_brc_s_reg[2] 
       (.C(clk_out_40_p),
        .CE(b_ch_brc_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_brc_s0_in[2]),
        .Q(brc_d4_in[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_brc_s_reg[3] 
       (.C(clk_out_40_p),
        .CE(b_ch_brc_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_brc_s0_in[3]),
        .Q(brc_d4_in[1]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_brc_s_reg[4] 
       (.C(clk_out_40_p),
        .CE(b_ch_brc_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_brc_s0_in[4]),
        .Q(brc_d4_in[2]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_brc_s_reg[5] 
       (.C(clk_out_40_p),
        .CE(b_ch_brc_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_brc_s0_in[5]),
        .Q(brc_d4_in[3]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_brc_s_reg[6] 
       (.C(clk_out_40_p),
        .CE(b_ch_brc_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_brc_s0_in[6]),
        .Q(brc_t2_in[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_brc_s_reg[7] 
       (.C(clk_out_40_p),
        .CE(b_ch_brc_s),
        .CLR(b_ch_out_reg),
        .D(b_ch_brc_s0_in[7]),
        .Q(brc_t2_in[1]));
  LUT6 #(
    .INIT(64'h0022000000F20000)) 
    b_ch_brc_valid_s_i_1
       (.I0(\FSM_sequential_state[1]_i_4_n_0 ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(valid_brc_data_out),
        .I3(state[2]),
        .I4(state[1]),
        .I5(state[0]),
        .O(b_ch_brc_valid_s));
  FDCE #(
    .INIT(1'b0)) 
    b_ch_brc_valid_s_reg
       (.C(clk_out_40_p),
        .CE(1'b1),
        .CLR(b_ch_out_reg),
        .D(b_ch_brc_valid_s),
        .Q(b_ch_brc_valid_s_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00FF0010)) 
    \counter_b_ch[0]_i_1 
       (.I0(\counter_b_ch_reg_n_0_[1] ),
        .I1(\counter_b_ch_reg_n_0_[2] ),
        .I2(\counter_b_ch[3]_i_5_n_0 ),
        .I3(\counter_b_ch_reg_n_0_[0] ),
        .I4(\counter_b_ch[2]_i_2_n_0 ),
        .O(counter_b_ch[0]));
  LUT3 #(
    .INIT(8'h28)) 
    \counter_b_ch[1]_i_1 
       (.I0(\counter_b_ch[2]_i_2_n_0 ),
        .I1(\counter_b_ch_reg_n_0_[0] ),
        .I2(\counter_b_ch_reg_n_0_[1] ),
        .O(counter_b_ch[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \counter_b_ch[2]_i_1 
       (.I0(\counter_b_ch[2]_i_2_n_0 ),
        .I1(\counter_b_ch_reg_n_0_[1] ),
        .I2(\counter_b_ch_reg_n_0_[0] ),
        .I3(\counter_b_ch_reg_n_0_[2] ),
        .O(counter_b_ch[2]));
  LUT6 #(
    .INIT(64'h0000030000370000)) 
    \counter_b_ch[2]_i_2 
       (.I0(\counter_b_ch_reg_n_0_[3] ),
        .I1(\counter_b_ch_reg_n_0_[5] ),
        .I2(\counter_b_ch_reg_n_0_[4] ),
        .I3(state[0]),
        .I4(state[2]),
        .I5(state[1]),
        .O(\counter_b_ch[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h53D3535300C30000)) 
    \counter_b_ch[3]_i_1 
       (.I0(\counter_b_ch[3]_i_2_n_0 ),
        .I1(\counter_b_ch[3]_i_3_n_0 ),
        .I2(\counter_b_ch_reg_n_0_[3] ),
        .I3(\counter_b_ch_reg_n_0_[5] ),
        .I4(\counter_b_ch[3]_i_4_n_0 ),
        .I5(\counter_b_ch[3]_i_5_n_0 ),
        .O(counter_b_ch[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \counter_b_ch[3]_i_2 
       (.I0(\counter_b_ch_reg_n_0_[1] ),
        .I1(\counter_b_ch_reg_n_0_[0] ),
        .I2(\counter_b_ch_reg_n_0_[2] ),
        .O(\counter_b_ch[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \counter_b_ch[3]_i_3 
       (.I0(\counter_b_ch_reg_n_0_[2] ),
        .I1(\counter_b_ch_reg_n_0_[1] ),
        .I2(\counter_b_ch_reg_n_0_[0] ),
        .O(\counter_b_ch[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0430)) 
    \counter_b_ch[3]_i_4 
       (.I0(\counter_b_ch_reg_n_0_[4] ),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .O(\counter_b_ch[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \counter_b_ch[3]_i_5 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\counter_b_ch_reg_n_0_[4] ),
        .O(\counter_b_ch[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000004)) 
    \counter_b_ch[4]_i_1 
       (.I0(\FSM_sequential_state[1]_i_4_n_0 ),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\counter_b_ch_reg_n_0_[5] ),
        .I5(\counter_b_ch_reg_n_0_[4] ),
        .O(counter_b_ch[4]));
  LUT6 #(
    .INIT(64'h0000800000C08000)) 
    \counter_b_ch[5]_i_1 
       (.I0(b_ch_addr_valid_s_i_2_n_0),
        .I1(state[2]),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(\counter_b_ch_reg_n_0_[5] ),
        .I4(\counter_b_ch_reg_n_0_[4] ),
        .I5(\FSM_sequential_state[1]_i_4_n_0 ),
        .O(counter_b_ch[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_b_ch_reg[0] 
       (.C(clk_out_40_p),
        .CE(1'b1),
        .CLR(b_ch_out_reg),
        .D(counter_b_ch[0]),
        .Q(\counter_b_ch_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_b_ch_reg[1] 
       (.C(clk_out_40_p),
        .CE(1'b1),
        .CLR(b_ch_out_reg),
        .D(counter_b_ch[1]),
        .Q(\counter_b_ch_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_b_ch_reg[2] 
       (.C(clk_out_40_p),
        .CE(1'b1),
        .CLR(b_ch_out_reg),
        .D(counter_b_ch[2]),
        .Q(\counter_b_ch_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_b_ch_reg[3] 
       (.C(clk_out_40_p),
        .CE(1'b1),
        .CLR(b_ch_out_reg),
        .D(counter_b_ch[3]),
        .Q(\counter_b_ch_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_b_ch_reg[4] 
       (.C(clk_out_40_p),
        .CE(1'b1),
        .CLR(b_ch_out_reg),
        .D(counter_b_ch[4]),
        .Q(\counter_b_ch_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_b_ch_reg[5] 
       (.C(clk_out_40_p),
        .CE(1'b1),
        .CLR(b_ch_out_reg),
        .D(counter_b_ch[5]),
        .Q(\counter_b_ch_reg_n_0_[5] ));
  ttcvi_encoder ins_chb_data
       (.AR(b_ch_out_reg),
        .Q({addr_a14_in,addr_e_in,addr_s8_in,\b_ch_addr_s_reg_n_0_[7] ,\b_ch_addr_s_reg_n_0_[6] ,\b_ch_addr_s_reg_n_0_[5] ,\b_ch_addr_s_reg_n_0_[4] ,\b_ch_addr_s_reg_n_0_[3] ,\b_ch_addr_s_reg_n_0_[2] ,\b_ch_addr_s_reg_n_0_[1] ,\b_ch_addr_s_reg_n_0_[0] }),
        .a_ch_from_ttcvi(a_ch_from_ttcvi),
        .a_ch_strobe_s(a_ch_strobe_s),
        .b_ch_addr_valid_s_reg(b_ch_addr_valid_s_reg_n_0),
        .\b_ch_brc_s_reg[7] ({brc_t2_in,brc_d4_in,brc_e_in,\b_ch_brc_s_reg_n_0_[0] }),
        .b_ch_brc_valid_s_reg(b_ch_brc_valid_s_reg_n_0),
        .clk_out_40_p(clk_out_40_p),
        .ready_s_reg(ready_s_reg),
        .reset_in_IBUF(reset_in_IBUF),
        .sel_cha_chb(sel_cha_chb));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ins_ttc_data_generation_i_2
       (.I0(ready_rd_b_ch_out),
        .I1(ready_s_reg),
        .O(ready_b_ch_in));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAAAAA)) 
    ready_rd_b_ch_s_i_1
       (.I0(ready_rd_b_ch_s_i_2_n_0),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(ready_rd_b_ch_s_i_3_n_0),
        .I3(\counter_b_ch_reg_n_0_[0] ),
        .I4(\counter_b_ch_reg_n_0_[1] ),
        .I5(ready_rd_b_ch_s_i_4_n_0),
        .O(ready_rd_b_ch_s));
  LUT6 #(
    .INIT(64'h5555575500000000)) 
    ready_rd_b_ch_s_i_2
       (.I0(state[2]),
        .I1(\counter_b_ch[3]_i_3_n_0 ),
        .I2(\counter_b_ch_reg_n_0_[3] ),
        .I3(\counter_b_ch_reg_n_0_[5] ),
        .I4(\counter_b_ch_reg_n_0_[4] ),
        .I5(\FSM_sequential_state[2]_i_3_n_0 ),
        .O(ready_rd_b_ch_s_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h7)) 
    ready_rd_b_ch_s_i_3
       (.I0(\counter_b_ch_reg_n_0_[2] ),
        .I1(\counter_b_ch_reg_n_0_[3] ),
        .O(ready_rd_b_ch_s_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ready_rd_b_ch_s_i_4
       (.I0(state[1]),
        .I1(state[2]),
        .O(ready_rd_b_ch_s_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    ready_rd_b_ch_s_reg
       (.C(clk_out_40_p),
        .CE(1'b1),
        .CLR(b_ch_out_reg),
        .D(ready_rd_b_ch_s),
        .Q(ready_rd_b_ch_out));
endmodule

module ttcvi_encoder
   (AR,
    sel_cha_chb,
    clk_out_40_p,
    b_ch_addr_valid_s_reg,
    b_ch_brc_valid_s_reg,
    a_ch_from_ttcvi,
    a_ch_strobe_s,
    reset_in_IBUF,
    ready_s_reg,
    Q,
    \b_ch_brc_s_reg[7] );
  output [0:0]AR;
  output sel_cha_chb;
  input clk_out_40_p;
  input b_ch_addr_valid_s_reg;
  input b_ch_brc_valid_s_reg;
  input a_ch_from_ttcvi;
  input a_ch_strobe_s;
  input reset_in_IBUF;
  input ready_s_reg;
  input [30:0]Q;
  input [7:0]\b_ch_brc_s_reg[7] ;

  wire [0:0]AR;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire [30:0]Q;
  wire a_ch_from_ttcvi;
  wire a_ch_strobe_s;
  wire b_ch_addr_valid_s_reg;
  wire [7:0]\b_ch_brc_s_reg[7] ;
  wire b_ch_brc_valid_s_reg;
  wire b_ch_from_ttcvi;
  wire b_ch_out_i_10_n_0;
  wire b_ch_out_i_13_n_0;
  wire b_ch_out_i_14_n_0;
  wire b_ch_out_i_16_n_0;
  wire b_ch_out_i_17_n_0;
  wire b_ch_out_i_1_n_0;
  wire b_ch_out_i_21_n_0;
  wire b_ch_out_i_22_n_0;
  wire b_ch_out_i_23_n_0;
  wire b_ch_out_i_24_n_0;
  wire b_ch_out_i_25_n_0;
  wire b_ch_out_i_26_n_0;
  wire b_ch_out_i_27_n_0;
  wire b_ch_out_i_29_n_0;
  wire b_ch_out_i_2_n_0;
  wire b_ch_out_i_30_n_0;
  wire b_ch_out_i_31_n_0;
  wire b_ch_out_i_35_n_0;
  wire b_ch_out_i_36_n_0;
  wire b_ch_out_i_38_n_0;
  wire b_ch_out_i_39_n_0;
  wire b_ch_out_i_3_n_0;
  wire b_ch_out_i_40_n_0;
  wire b_ch_out_i_41_n_0;
  wire b_ch_out_i_42_n_0;
  wire b_ch_out_i_43_n_0;
  wire b_ch_out_i_44_n_0;
  wire b_ch_out_i_45_n_0;
  wire b_ch_out_i_46_n_0;
  wire b_ch_out_i_48_n_0;
  wire b_ch_out_i_49_n_0;
  wire b_ch_out_i_4_n_0;
  wire b_ch_out_i_50_n_0;
  wire b_ch_out_i_51_n_0;
  wire b_ch_out_i_52_n_0;
  wire b_ch_out_i_53_n_0;
  wire b_ch_out_i_54_n_0;
  wire b_ch_out_i_55_n_0;
  wire b_ch_out_i_56_n_0;
  wire b_ch_out_i_57_n_0;
  wire b_ch_out_i_5_n_0;
  wire b_ch_out_i_6_n_0;
  wire b_ch_out_i_7_n_0;
  wire b_ch_out_i_8_n_0;
  wire b_ch_out_i_9_n_0;
  wire b_ch_out_reg_i_11_n_0;
  wire b_ch_out_reg_i_12_n_0;
  wire b_ch_out_reg_i_15_n_0;
  wire b_ch_strobe_out;
  wire b_ch_strobe_out_i_1_n_0;
  wire clk_out_40_p;
  wire [5:0]counter_addr;
  wire \counter_addr[0]_i_1_n_0 ;
  wire \counter_addr[1]_i_1_n_0 ;
  wire \counter_addr[2]_i_1_n_0 ;
  wire \counter_addr[3]_i_1_n_0 ;
  wire \counter_addr[4]_i_1_n_0 ;
  wire \counter_addr[5]_i_2_n_0 ;
  wire \counter_addr[5]_i_3_n_0 ;
  wire counter_addr_1;
  wire [3:0]counter_brc;
  wire \counter_brc[0]_i_1_n_0 ;
  wire \counter_brc[1]_i_1_n_0 ;
  wire \counter_brc[2]_i_1_n_0 ;
  wire \counter_brc[3]_i_2_n_0 ;
  wire counter_brc_0;
  wire data_addressed3723_out__5;
  wire data_addressed3727_out__8;
  wire data_addressed3729_out__8;
  wire data_addressed377_out__5;
  wire data_addressed37__2;
  wire data_broadcast1141_out__2;
  wire data_broadcast1143_out__0;
  wire data_broadcast1144_out__0;
  wire data_broadcast11__2;
  wire ready_s_reg;
  wire reset_in_IBUF;
  wire sel_cha_chb;
  (* RTL_KEEP = "yes" *) wire [1:0]state;

  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(b_ch_brc_valid_s_reg),
        .I1(state[1]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00C4)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(b_ch_brc_valid_s_reg),
        .I1(b_ch_addr_valid_s_reg),
        .I2(state[1]),
        .I3(state[0]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[1]_i_2__0 
       (.I0(reset_in_IBUF),
        .I1(ready_s_reg),
        .O(AR));
  (* FSM_ENCODED_STATES = "brc:01,init:00,ind_addr:10" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_out_40_p),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "brc:01,init:00,ind_addr:10" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_out_40_p),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  LUT6 #(
    .INIT(64'h00F0FFEA00F00040)) 
    b_ch_out_i_1
       (.I0(b_ch_brc_valid_s_reg),
        .I1(b_ch_addr_valid_s_reg),
        .I2(b_ch_out_i_2_n_0),
        .I3(state[0]),
        .I4(state[1]),
        .I5(b_ch_out_i_3_n_0),
        .O(b_ch_out_i_1_n_0));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    b_ch_out_i_10
       (.I0(b_ch_out_i_22_n_0),
        .I1(counter_brc[2]),
        .I2(counter_brc[1]),
        .I3(\b_ch_brc_s_reg[7] [7]),
        .I4(counter_brc[0]),
        .I5(\b_ch_brc_s_reg[7] [6]),
        .O(b_ch_out_i_10_n_0));
  LUT6 #(
    .INIT(64'hB88BFFFFB88B0000)) 
    b_ch_out_i_13
       (.I0(data_addressed3729_out__8),
        .I1(counter_addr[0]),
        .I2(b_ch_out_i_29_n_0),
        .I3(b_ch_out_i_30_n_0),
        .I4(counter_addr[1]),
        .I5(b_ch_out_i_31_n_0),
        .O(b_ch_out_i_13_n_0));
  LUT5 #(
    .INIT(32'hAFCFAFC0)) 
    b_ch_out_i_14
       (.I0(data_addressed377_out__5),
        .I1(data_addressed3723_out__5),
        .I2(counter_addr[1]),
        .I3(counter_addr[0]),
        .I4(data_addressed37__2),
        .O(b_ch_out_i_14_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    b_ch_out_i_16
       (.I0(Q[29]),
        .I1(Q[30]),
        .I2(counter_addr[1]),
        .I3(Q[27]),
        .I4(counter_addr[0]),
        .I5(Q[28]),
        .O(b_ch_out_i_16_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    b_ch_out_i_17
       (.I0(Q[25]),
        .I1(Q[26]),
        .I2(counter_addr[1]),
        .I3(Q[23]),
        .I4(counter_addr[0]),
        .I5(Q[24]),
        .O(b_ch_out_i_17_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    b_ch_out_i_18
       (.I0(\b_ch_brc_s_reg[7] [2]),
        .I1(\b_ch_brc_s_reg[7] [1]),
        .I2(\b_ch_brc_s_reg[7] [3]),
        .I3(\b_ch_brc_s_reg[7] [0]),
        .O(data_broadcast11__2));
  LUT4 #(
    .INIT(16'h6996)) 
    b_ch_out_i_19
       (.I0(\b_ch_brc_s_reg[7] [5]),
        .I1(\b_ch_brc_s_reg[7] [4]),
        .I2(\b_ch_brc_s_reg[7] [0]),
        .I3(\b_ch_brc_s_reg[7] [6]),
        .O(data_broadcast1141_out__2));
  LUT6 #(
    .INIT(64'hFCFFAFCA0C00A0CA)) 
    b_ch_out_i_2
       (.I0(b_ch_out_i_4_n_0),
        .I1(b_ch_out_i_5_n_0),
        .I2(counter_addr[4]),
        .I3(b_ch_out_i_6_n_0),
        .I4(counter_addr[5]),
        .I5(b_ch_out_i_7_n_0),
        .O(b_ch_out_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    b_ch_out_i_20
       (.I0(\b_ch_brc_s_reg[7] [5]),
        .I1(\b_ch_brc_s_reg[7] [2]),
        .I2(\b_ch_brc_s_reg[7] [1]),
        .I3(\b_ch_brc_s_reg[7] [4]),
        .I4(\b_ch_brc_s_reg[7] [7]),
        .O(data_broadcast1143_out__0));
  LUT6 #(
    .INIT(64'hBEEB1441EBBE4114)) 
    b_ch_out_i_21
       (.I0(counter_brc[0]),
        .I1(data_broadcast11__2),
        .I2(data_broadcast1141_out__2),
        .I3(\b_ch_brc_s_reg[7] [0]),
        .I4(data_broadcast1144_out__0),
        .I5(b_ch_out_i_38_n_0),
        .O(b_ch_out_i_21_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    b_ch_out_i_22
       (.I0(\b_ch_brc_s_reg[7] [2]),
        .I1(\b_ch_brc_s_reg[7] [3]),
        .I2(counter_brc[1]),
        .I3(\b_ch_brc_s_reg[7] [4]),
        .I4(counter_brc[0]),
        .I5(\b_ch_brc_s_reg[7] [5]),
        .O(b_ch_out_i_22_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    b_ch_out_i_23
       (.I0(counter_addr[1]),
        .I1(counter_addr[2]),
        .O(b_ch_out_i_23_n_0));
  LUT5 #(
    .INIT(32'hAFCFAFC0)) 
    b_ch_out_i_24
       (.I0(Q[17]),
        .I1(Q[18]),
        .I2(counter_addr[1]),
        .I3(counter_addr[0]),
        .I4(Q[16]),
        .O(b_ch_out_i_24_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    b_ch_out_i_25
       (.I0(Q[21]),
        .I1(Q[22]),
        .I2(counter_addr[1]),
        .I3(Q[19]),
        .I4(counter_addr[0]),
        .I5(Q[20]),
        .O(b_ch_out_i_25_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    b_ch_out_i_26
       (.I0(Q[10]),
        .I1(Q[11]),
        .I2(counter_addr[1]),
        .I3(Q[8]),
        .I4(counter_addr[0]),
        .I5(Q[9]),
        .O(b_ch_out_i_26_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    b_ch_out_i_27
       (.I0(Q[14]),
        .I1(Q[15]),
        .I2(counter_addr[1]),
        .I3(Q[12]),
        .I4(counter_addr[0]),
        .I5(Q[13]),
        .O(b_ch_out_i_27_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    b_ch_out_i_28
       (.I0(b_ch_out_i_39_n_0),
        .I1(b_ch_out_i_40_n_0),
        .I2(b_ch_out_i_41_n_0),
        .I3(b_ch_out_i_42_n_0),
        .I4(Q[5]),
        .I5(Q[1]),
        .O(data_addressed3729_out__8));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    b_ch_out_i_29
       (.I0(Q[20]),
        .I1(Q[17]),
        .O(b_ch_out_i_29_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    b_ch_out_i_3
       (.I0(b_ch_out_i_8_n_0),
        .I1(counter_brc[2]),
        .I2(b_ch_out_i_9_n_0),
        .I3(counter_brc[3]),
        .I4(b_ch_out_i_10_n_0),
        .O(b_ch_out_i_3_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    b_ch_out_i_30
       (.I0(b_ch_out_i_43_n_0),
        .I1(b_ch_out_i_44_n_0),
        .I2(b_ch_out_i_45_n_0),
        .I3(data_addressed377_out__5),
        .I4(data_addressed3729_out__8),
        .I5(b_ch_out_i_46_n_0),
        .O(b_ch_out_i_30_n_0));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    b_ch_out_i_31
       (.I0(data_addressed3727_out__8),
        .I1(counter_addr[0]),
        .I2(b_ch_out_i_44_n_0),
        .I3(b_ch_out_i_48_n_0),
        .I4(b_ch_out_i_49_n_0),
        .I5(b_ch_out_i_50_n_0),
        .O(b_ch_out_i_31_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    b_ch_out_i_32
       (.I0(b_ch_out_i_51_n_0),
        .I1(b_ch_out_i_52_n_0),
        .I2(Q[16]),
        .I3(Q[18]),
        .I4(Q[19]),
        .I5(Q[15]),
        .O(data_addressed377_out__5));
  LUT5 #(
    .INIT(32'h96696996)) 
    b_ch_out_i_33
       (.I0(b_ch_out_i_53_n_0),
        .I1(b_ch_out_i_44_n_0),
        .I2(Q[24]),
        .I3(Q[20]),
        .I4(Q[8]),
        .O(data_addressed3723_out__5));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    b_ch_out_i_34
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(data_addressed37__2));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    b_ch_out_i_35
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(counter_addr[1]),
        .I3(Q[0]),
        .I4(counter_addr[0]),
        .I5(Q[1]),
        .O(b_ch_out_i_35_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    b_ch_out_i_36
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(counter_addr[1]),
        .I3(Q[4]),
        .I4(counter_addr[0]),
        .I5(Q[5]),
        .O(b_ch_out_i_36_n_0));
  LUT5 #(
    .INIT(32'h96696996)) 
    b_ch_out_i_37
       (.I0(\b_ch_brc_s_reg[7] [1]),
        .I1(\b_ch_brc_s_reg[7] [4]),
        .I2(\b_ch_brc_s_reg[7] [7]),
        .I3(\b_ch_brc_s_reg[7] [3]),
        .I4(\b_ch_brc_s_reg[7] [6]),
        .O(data_broadcast1144_out__0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h96)) 
    b_ch_out_i_38
       (.I0(\b_ch_brc_s_reg[7] [7]),
        .I1(\b_ch_brc_s_reg[7] [4]),
        .I2(\b_ch_brc_s_reg[7] [1]),
        .O(b_ch_out_i_38_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    b_ch_out_i_39
       (.I0(Q[19]),
        .I1(Q[8]),
        .I2(Q[26]),
        .O(b_ch_out_i_39_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFF1EE100)) 
    b_ch_out_i_4
       (.I0(counter_addr[1]),
        .I1(counter_addr[2]),
        .I2(counter_addr[3]),
        .I3(b_ch_out_reg_i_11_n_0),
        .I4(b_ch_out_reg_i_12_n_0),
        .O(b_ch_out_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    b_ch_out_i_40
       (.I0(Q[27]),
        .I1(Q[14]),
        .I2(Q[20]),
        .I3(Q[24]),
        .O(b_ch_out_i_40_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    b_ch_out_i_41
       (.I0(Q[22]),
        .I1(Q[12]),
        .I2(Q[30]),
        .I3(Q[10]),
        .I4(Q[29]),
        .I5(Q[6]),
        .O(b_ch_out_i_41_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    b_ch_out_i_42
       (.I0(Q[17]),
        .I1(Q[3]),
        .O(b_ch_out_i_42_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    b_ch_out_i_43
       (.I0(b_ch_out_i_49_n_0),
        .I1(b_ch_out_i_54_n_0),
        .I2(Q[1]),
        .I3(b_ch_out_i_55_n_0),
        .I4(b_ch_out_i_56_n_0),
        .I5(Q[29]),
        .O(b_ch_out_i_43_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    b_ch_out_i_44
       (.I0(Q[25]),
        .I1(Q[21]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[11]),
        .I5(Q[10]),
        .O(b_ch_out_i_44_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    b_ch_out_i_45
       (.I0(Q[0]),
        .I1(Q[16]),
        .I2(Q[24]),
        .I3(Q[4]),
        .O(b_ch_out_i_45_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h96)) 
    b_ch_out_i_46
       (.I0(Q[19]),
        .I1(Q[3]),
        .I2(Q[17]),
        .O(b_ch_out_i_46_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    b_ch_out_i_47
       (.I0(b_ch_out_i_56_n_0),
        .I1(Q[2]),
        .I2(b_ch_out_i_57_n_0),
        .I3(Q[1]),
        .I4(b_ch_out_i_54_n_0),
        .I5(b_ch_out_i_49_n_0),
        .O(data_addressed3727_out__8));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    b_ch_out_i_48
       (.I0(Q[18]),
        .I1(Q[15]),
        .I2(Q[4]),
        .I3(Q[30]),
        .I4(Q[0]),
        .I5(Q[28]),
        .O(b_ch_out_i_48_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    b_ch_out_i_49
       (.I0(Q[14]),
        .I1(Q[27]),
        .O(b_ch_out_i_49_n_0));
  LUT6 #(
    .INIT(64'hFFFCCAAF000CCAA0)) 
    b_ch_out_i_5
       (.I0(b_ch_out_i_13_n_0),
        .I1(b_ch_out_i_14_n_0),
        .I2(counter_addr[1]),
        .I3(counter_addr[2]),
        .I4(counter_addr[3]),
        .I5(b_ch_out_reg_i_15_n_0),
        .O(b_ch_out_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    b_ch_out_i_50
       (.I0(Q[20]),
        .I1(Q[24]),
        .I2(Q[3]),
        .I3(Q[17]),
        .O(b_ch_out_i_50_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    b_ch_out_i_51
       (.I0(Q[12]),
        .I1(Q[8]),
        .I2(Q[14]),
        .I3(Q[17]),
        .I4(Q[9]),
        .I5(Q[13]),
        .O(b_ch_out_i_51_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    b_ch_out_i_52
       (.I0(Q[10]),
        .I1(Q[11]),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(b_ch_out_i_52_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    b_ch_out_i_53
       (.I0(Q[9]),
        .I1(Q[12]),
        .I2(Q[22]),
        .I3(Q[23]),
        .I4(Q[13]),
        .I5(Q[26]),
        .O(b_ch_out_i_53_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    b_ch_out_i_54
       (.I0(Q[23]),
        .I1(Q[9]),
        .I2(Q[0]),
        .I3(Q[28]),
        .I4(Q[16]),
        .I5(Q[15]),
        .O(b_ch_out_i_54_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h96)) 
    b_ch_out_i_55
       (.I0(Q[2]),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(b_ch_out_i_55_n_0));
  LUT5 #(
    .INIT(32'h96696996)) 
    b_ch_out_i_56
       (.I0(Q[20]),
        .I1(Q[22]),
        .I2(Q[21]),
        .I3(Q[8]),
        .I4(Q[29]),
        .O(b_ch_out_i_56_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    b_ch_out_i_57
       (.I0(Q[7]),
        .I1(Q[6]),
        .O(b_ch_out_i_57_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    b_ch_out_i_6
       (.I0(counter_addr[1]),
        .I1(counter_addr[2]),
        .I2(counter_addr[3]),
        .O(b_ch_out_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFCCAAF000CCAA0)) 
    b_ch_out_i_7
       (.I0(b_ch_out_i_16_n_0),
        .I1(b_ch_out_i_17_n_0),
        .I2(counter_addr[1]),
        .I3(counter_addr[2]),
        .I4(counter_addr[3]),
        .I5(counter_addr[0]),
        .O(b_ch_out_i_7_n_0));
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    b_ch_out_i_8
       (.I0(data_broadcast11__2),
        .I1(counter_brc[1]),
        .I2(data_broadcast1141_out__2),
        .I3(counter_brc[0]),
        .I4(data_broadcast1143_out__0),
        .O(b_ch_out_i_8_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    b_ch_out_i_9
       (.I0(b_ch_out_i_21_n_0),
        .I1(counter_brc[1]),
        .I2(\b_ch_brc_s_reg[7] [0]),
        .I3(counter_brc[0]),
        .I4(\b_ch_brc_s_reg[7] [1]),
        .O(b_ch_out_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    b_ch_out_reg
       (.C(clk_out_40_p),
        .CE(1'b1),
        .CLR(AR),
        .D(b_ch_out_i_1_n_0),
        .Q(b_ch_from_ttcvi));
  MUXF7 b_ch_out_reg_i_11
       (.I0(b_ch_out_i_24_n_0),
        .I1(b_ch_out_i_25_n_0),
        .O(b_ch_out_reg_i_11_n_0),
        .S(b_ch_out_i_23_n_0));
  MUXF7 b_ch_out_reg_i_12
       (.I0(b_ch_out_i_26_n_0),
        .I1(b_ch_out_i_27_n_0),
        .O(b_ch_out_reg_i_12_n_0),
        .S(b_ch_out_i_23_n_0));
  MUXF7 b_ch_out_reg_i_15
       (.I0(b_ch_out_i_35_n_0),
        .I1(b_ch_out_i_36_n_0),
        .O(b_ch_out_reg_i_15_n_0),
        .S(b_ch_out_i_23_n_0));
  LUT4 #(
    .INIT(16'h0FFE)) 
    b_ch_strobe_out_i_1
       (.I0(b_ch_brc_valid_s_reg),
        .I1(b_ch_addr_valid_s_reg),
        .I2(state[1]),
        .I3(state[0]),
        .O(b_ch_strobe_out_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    b_ch_strobe_out_reg
       (.C(clk_out_40_p),
        .CE(1'b1),
        .CLR(AR),
        .D(b_ch_strobe_out_i_1_n_0),
        .Q(b_ch_strobe_out));
  LUT3 #(
    .INIT(8'h04)) 
    \counter_addr[0]_i_1 
       (.I0(counter_addr[0]),
        .I1(b_ch_addr_valid_s_reg),
        .I2(state[0]),
        .O(\counter_addr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0060)) 
    \counter_addr[1]_i_1 
       (.I0(counter_addr[0]),
        .I1(counter_addr[1]),
        .I2(b_ch_addr_valid_s_reg),
        .I3(state[0]),
        .O(\counter_addr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00007800)) 
    \counter_addr[2]_i_1 
       (.I0(counter_addr[0]),
        .I1(counter_addr[1]),
        .I2(counter_addr[2]),
        .I3(b_ch_addr_valid_s_reg),
        .I4(state[0]),
        .O(\counter_addr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F800000)) 
    \counter_addr[3]_i_1 
       (.I0(counter_addr[1]),
        .I1(counter_addr[0]),
        .I2(counter_addr[2]),
        .I3(counter_addr[3]),
        .I4(b_ch_addr_valid_s_reg),
        .I5(state[0]),
        .O(\counter_addr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0060)) 
    \counter_addr[4]_i_1 
       (.I0(\counter_addr[5]_i_3_n_0 ),
        .I1(counter_addr[4]),
        .I2(b_ch_addr_valid_s_reg),
        .I3(state[0]),
        .O(\counter_addr[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h3D)) 
    \counter_addr[5]_i_1 
       (.I0(b_ch_brc_valid_s_reg),
        .I1(state[1]),
        .I2(state[0]),
        .O(counter_addr_1));
  LUT5 #(
    .INIT(32'h00007800)) 
    \counter_addr[5]_i_2 
       (.I0(\counter_addr[5]_i_3_n_0 ),
        .I1(counter_addr[4]),
        .I2(counter_addr[5]),
        .I3(b_ch_addr_valid_s_reg),
        .I4(state[0]),
        .O(\counter_addr[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \counter_addr[5]_i_3 
       (.I0(counter_addr[3]),
        .I1(counter_addr[1]),
        .I2(counter_addr[0]),
        .I3(counter_addr[2]),
        .O(\counter_addr[5]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_addr_reg[0] 
       (.C(clk_out_40_p),
        .CE(counter_addr_1),
        .CLR(AR),
        .D(\counter_addr[0]_i_1_n_0 ),
        .Q(counter_addr[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_addr_reg[1] 
       (.C(clk_out_40_p),
        .CE(counter_addr_1),
        .CLR(AR),
        .D(\counter_addr[1]_i_1_n_0 ),
        .Q(counter_addr[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_addr_reg[2] 
       (.C(clk_out_40_p),
        .CE(counter_addr_1),
        .CLR(AR),
        .D(\counter_addr[2]_i_1_n_0 ),
        .Q(counter_addr[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_addr_reg[3] 
       (.C(clk_out_40_p),
        .CE(counter_addr_1),
        .CLR(AR),
        .D(\counter_addr[3]_i_1_n_0 ),
        .Q(counter_addr[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_addr_reg[4] 
       (.C(clk_out_40_p),
        .CE(counter_addr_1),
        .CLR(AR),
        .D(\counter_addr[4]_i_1_n_0 ),
        .Q(counter_addr[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_addr_reg[5] 
       (.C(clk_out_40_p),
        .CE(counter_addr_1),
        .CLR(AR),
        .D(\counter_addr[5]_i_2_n_0 ),
        .Q(counter_addr[5]));
  LUT3 #(
    .INIT(8'h04)) 
    \counter_brc[0]_i_1 
       (.I0(counter_brc[0]),
        .I1(b_ch_brc_valid_s_reg),
        .I2(state[1]),
        .O(\counter_brc[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0060)) 
    \counter_brc[1]_i_1 
       (.I0(counter_brc[0]),
        .I1(counter_brc[1]),
        .I2(b_ch_brc_valid_s_reg),
        .I3(state[1]),
        .O(\counter_brc[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00007800)) 
    \counter_brc[2]_i_1 
       (.I0(counter_brc[0]),
        .I1(counter_brc[1]),
        .I2(counter_brc[2]),
        .I3(b_ch_brc_valid_s_reg),
        .I4(state[1]),
        .O(\counter_brc[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0FFB)) 
    \counter_brc[3]_i_1 
       (.I0(b_ch_brc_valid_s_reg),
        .I1(b_ch_addr_valid_s_reg),
        .I2(state[1]),
        .I3(state[0]),
        .O(counter_brc_0));
  LUT6 #(
    .INIT(64'h000000007F800000)) 
    \counter_brc[3]_i_2 
       (.I0(counter_brc[1]),
        .I1(counter_brc[0]),
        .I2(counter_brc[2]),
        .I3(counter_brc[3]),
        .I4(b_ch_brc_valid_s_reg),
        .I5(state[1]),
        .O(\counter_brc[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_brc_reg[0] 
       (.C(clk_out_40_p),
        .CE(counter_brc_0),
        .CLR(AR),
        .D(\counter_brc[0]_i_1_n_0 ),
        .Q(counter_brc[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_brc_reg[1] 
       (.C(clk_out_40_p),
        .CE(counter_brc_0),
        .CLR(AR),
        .D(\counter_brc[1]_i_1_n_0 ),
        .Q(counter_brc[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_brc_reg[2] 
       (.C(clk_out_40_p),
        .CE(counter_brc_0),
        .CLR(AR),
        .D(\counter_brc[2]_i_1_n_0 ),
        .Q(counter_brc[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_brc_reg[3] 
       (.C(clk_out_40_p),
        .CE(counter_brc_0),
        .CLR(AR),
        .D(\counter_brc[3]_i_2_n_0 ),
        .Q(counter_brc[3]));
  LUT5 #(
    .INIT(32'hA8A8FC00)) 
    d_internal_i_1
       (.I0(a_ch_from_ttcvi),
        .I1(a_ch_strobe_s),
        .I2(b_ch_strobe_out),
        .I3(b_ch_from_ttcvi),
        .I4(clk_out_40_p),
        .O(sel_cha_chb));
endmodule

module ttcvx_emulation
   (jk_internal,
    data_out_n_ttcvx,
    sel_cha_chb,
    clk_out_80_n,
    ready_s_reg,
    clk_out_160_n,
    clk_out_80_p);
  output jk_internal;
  output data_out_n_ttcvx;
  input sel_cha_chb;
  input clk_out_80_n;
  input ready_s_reg;
  input clk_out_160_n;
  input clk_out_80_p;

  wire clk_out_160_n;
  wire clk_out_80_n;
  wire clk_out_80_p;
  wire data_out_n_ttcvx;
  wire ins_dff_n_0;
  wire jk_internal;
  wire ready_s_reg;
  wire sel_cha_chb;

  d_ff_3 ins_dff
       (.clk_out_80_n(clk_out_80_n),
        .clk_out_80_p(clk_out_80_p),
        .jk_internal(jk_internal),
        .jk_internal_reg(ins_dff_n_0),
        .ready_s_reg(ready_s_reg),
        .sel_cha_chb(sel_cha_chb));
  jk_ff ins_jk
       (.clk_out_160_n(clk_out_160_n),
        .d_internal_reg(ins_dff_n_0),
        .data_out_n_ttcvx(data_out_n_ttcvx),
        .jk_internal(jk_internal),
        .ready_s_reg(ready_s_reg));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
