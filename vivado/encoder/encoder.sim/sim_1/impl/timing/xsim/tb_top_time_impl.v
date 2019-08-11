// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu Nov 15 13:21:47 2018
// Host        : Amoozegar-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Amoozegar/Desktop/2018_10_05_ttctx2ttcrx/vivado/encoder/encoder.sim/sim_1/impl/timing/xsim/tb_top_time_impl.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module cdr2a_b_clk
   (ttc_strobe,
    div_nrst_OBUF,
    ttc_clk_gated_out_OBUF,
    l1a_i,
    channelB,
    ready_OBUF,
    \brc_t2_reg[1] ,
    \add_a14_reg[13] ,
    \div_rst_cnt_reg[4]_0 ,
    SR,
    communication_error_reg,
    E,
    \hamming.data_out_reg[38] ,
    CLK,
    Q,
    channelB_comm_error_i,
    out,
    LOCKED,
    D);
  output ttc_strobe;
  output div_nrst_OBUF;
  output ttc_clk_gated_out_OBUF;
  output l1a_i;
  output channelB;
  output ready_OBUF;
  output \brc_t2_reg[1] ;
  output \add_a14_reg[13] ;
  output [0:0]\div_rst_cnt_reg[4]_0 ;
  output [0:0]SR;
  output communication_error_reg;
  output [0:0]E;
  output \hamming.data_out_reg[38] ;
  input CLK;
  input [1:0]Q;
  input channelB_comm_error_i;
  input [0:0]out;
  input LOCKED;
  input [0:0]D;

  wire Bchannel_i_1_n_0;
  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire LOCKED;
  wire [1:0]Q;
  wire [0:0]SR;
  wire a_channel_time_domain;
  wire a_channel_time_domain_i_1_n_0;
  wire \add_a14_reg[13] ;
  wire \brc_t2_reg[1] ;
  wire cdr_lock_i_10_n_0;
  wire cdr_lock_i_1_n_0;
  wire cdr_lock_i_2_n_0;
  wire cdr_lock_i_3_n_0;
  wire cdr_lock_i_4_n_0;
  wire cdr_lock_i_5_n_0;
  wire cdr_lock_i_6_n_0;
  wire cdr_lock_i_7_n_0;
  wire cdr_lock_i_8_n_0;
  wire cdr_lock_i_9_n_0;
  wire \cdrdata_q_reg_n_0_[0] ;
  wire channelB;
  wire channelB_comm_error_i;
  wire communication_error_reg;
  wire [2:0]div8;
  wire \div8[0]_i_1_n_0 ;
  wire \div8[1]_i_1_n_0 ;
  wire \div8[2]_i_1_n_0 ;
  wire div_nrst_OBUF;
  wire div_nrst_i_1_n_0;
  wire div_nrst_i_2_n_0;
  wire div_nrst_i_3_n_0;
  wire div_nrst_i_4_n_0;
  wire \div_rst_cnt[4]_i_1_n_0 ;
  wire [0:0]\div_rst_cnt_reg[4]_0 ;
  wire [3:0]div_rst_cnt_reg__0;
  wire \hamming.data_out_reg[38] ;
  wire l1a0;
  wire l1a_i;
  wire l1a_i_1_n_0;
  wire [0:0]out;
  wire [3:0]p_0_in;
  wire p_0_in_0;
  wire [4:0]p_0_in__0;
  wire ready_OBUF;
  wire strng_length0;
  wire [3:0]strng_length_reg__0;
  wire \timer[0]_i_1__0_n_0 ;
  wire \timer[0]_i_3_n_0 ;
  wire \timer[0]_i_4_n_0 ;
  wire \timer[0]_i_5_n_0 ;
  wire \timer[0]_i_6_n_0 ;
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
  wire toggle_channel;
  wire toggle_channel_i_1_n_0;
  wire \toggle_cnt[0]_i_1_n_0 ;
  wire \toggle_cnt[0]_i_2_n_0 ;
  wire \toggle_cnt[1]_i_1_n_0 ;
  wire \toggle_cnt[1]_i_2_n_0 ;
  wire \toggle_cnt[1]_i_3_n_0 ;
  wire \toggle_cnt_reg_n_0_[0] ;
  wire \toggle_cnt_reg_n_0_[1] ;
  wire ttc_clk_gated_out_OBUF;
  wire ttc_str0;
  wire ttc_strobe;
  wire ttcclk_i_1_n_0;
  wire [2:0]\NLW_timer_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_timer_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_reg[8]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFF6F0060)) 
    Bchannel_i_1
       (.I0(p_0_in_0),
        .I1(\cdrdata_q_reg_n_0_[0] ),
        .I2(toggle_channel),
        .I3(a_channel_time_domain),
        .I4(channelB),
        .O(Bchannel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Bchannel_reg
       (.C(CLK),
        .CE(1'b1),
        .D(Bchannel_i_1_n_0),
        .Q(channelB),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_hamming.next_state[2]_i_1 
       (.I0(\div_rst_cnt_reg[4]_0 ),
        .O(SR));
  LUT6 #(
    .INIT(64'h0000FFFFFF7F0000)) 
    a_channel_time_domain_i_1
       (.I0(strng_length_reg__0[3]),
        .I1(strng_length_reg__0[1]),
        .I2(strng_length_reg__0[0]),
        .I3(strng_length_reg__0[2]),
        .I4(toggle_channel),
        .I5(a_channel_time_domain),
        .O(a_channel_time_domain_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    a_channel_time_domain_reg
       (.C(CLK),
        .CE(1'b1),
        .D(a_channel_time_domain_i_1_n_0),
        .PRE(\toggle_cnt[1]_i_2_n_0 ),
        .Q(a_channel_time_domain));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \add_a14[13]_i_1 
       (.I0(ttc_strobe),
        .I1(Q[1]),
        .O(\add_a14_reg[13] ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \brc_t2[1]_i_1 
       (.I0(ttc_strobe),
        .I1(Q[0]),
        .O(\brc_t2_reg[1] ));
  LUT5 #(
    .INIT(32'hFFFF0004)) 
    cdr_lock_i_1
       (.I0(cdr_lock_i_3_n_0),
        .I1(cdr_lock_i_4_n_0),
        .I2(cdr_lock_i_5_n_0),
        .I3(cdr_lock_i_6_n_0),
        .I4(ready_OBUF),
        .O(cdr_lock_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cdr_lock_i_10
       (.I0(timer_reg[21]),
        .I1(timer_reg[20]),
        .I2(timer_reg[23]),
        .I3(timer_reg[22]),
        .O(cdr_lock_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cdr_lock_i_2
       (.I0(LOCKED),
        .O(cdr_lock_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    cdr_lock_i_3
       (.I0(timer_reg[8]),
        .I1(timer_reg[9]),
        .I2(timer_reg[10]),
        .I3(timer_reg[11]),
        .I4(cdr_lock_i_7_n_0),
        .O(cdr_lock_i_3_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    cdr_lock_i_4
       (.I0(timer_reg[1]),
        .I1(timer_reg[2]),
        .I2(timer_reg[3]),
        .I3(timer_reg[0]),
        .I4(cdr_lock_i_8_n_0),
        .O(cdr_lock_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    cdr_lock_i_5
       (.I0(timer_reg[24]),
        .I1(timer_reg[27]),
        .I2(timer_reg[25]),
        .I3(timer_reg[26]),
        .I4(cdr_lock_i_9_n_0),
        .O(cdr_lock_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    cdr_lock_i_6
       (.I0(timer_reg[16]),
        .I1(timer_reg[19]),
        .I2(timer_reg[17]),
        .I3(timer_reg[18]),
        .I4(cdr_lock_i_10_n_0),
        .O(cdr_lock_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cdr_lock_i_7
       (.I0(timer_reg[13]),
        .I1(timer_reg[12]),
        .I2(timer_reg[15]),
        .I3(timer_reg[14]),
        .O(cdr_lock_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cdr_lock_i_8
       (.I0(timer_reg[5]),
        .I1(timer_reg[4]),
        .I2(timer_reg[7]),
        .I3(timer_reg[6]),
        .O(cdr_lock_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    cdr_lock_i_9
       (.I0(timer_reg[29]),
        .I1(timer_reg[28]),
        .I2(timer_reg[30]),
        .I3(timer_reg[31]),
        .O(cdr_lock_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    cdr_lock_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(cdr_lock_i_2_n_0),
        .D(cdr_lock_i_1_n_0),
        .Q(ready_OBUF));
  FDCE #(
    .INIT(1'b0)) 
    \cdrdata_q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\toggle_cnt[1]_i_2_n_0 ),
        .D(D),
        .Q(\cdrdata_q_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cdrdata_q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\toggle_cnt[1]_i_2_n_0 ),
        .D(\cdrdata_q_reg_n_0_[0] ),
        .Q(p_0_in_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    communication_error_i_1
       (.I0(ttc_strobe),
        .I1(channelB_comm_error_i),
        .O(communication_error_reg));
  LUT2 #(
    .INIT(4'h9)) 
    \div8[0]_i_1 
       (.I0(toggle_channel),
        .I1(div8[0]),
        .O(\div8[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \div8[1]_i_1 
       (.I0(div8[0]),
        .I1(toggle_channel),
        .I2(div8[1]),
        .O(\div8[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \div8[2]_i_1 
       (.I0(div8[1]),
        .I1(div8[0]),
        .I2(toggle_channel),
        .I3(div8[2]),
        .O(\div8[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \div8_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\toggle_cnt[1]_i_2_n_0 ),
        .D(\div8[0]_i_1_n_0 ),
        .Q(div8[0]));
  FDCE #(
    .INIT(1'b0)) 
    \div8_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\toggle_cnt[1]_i_2_n_0 ),
        .D(\div8[1]_i_1_n_0 ),
        .Q(div8[1]));
  FDCE #(
    .INIT(1'b0)) 
    \div8_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\toggle_cnt[1]_i_2_n_0 ),
        .D(\div8[2]_i_1_n_0 ),
        .Q(div8[2]));
  LUT3 #(
    .INIT(8'hD5)) 
    div_nrst_i_1
       (.I0(div_nrst_i_3_n_0),
        .I1(div_nrst_i_4_n_0),
        .I2(ttc_strobe),
        .O(div_nrst_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    div_nrst_i_2
       (.I0(div_nrst_i_3_n_0),
        .I1(div_rst_cnt_reg__0[3]),
        .I2(div_rst_cnt_reg__0[2]),
        .I3(\div_rst_cnt_reg[4]_0 ),
        .I4(div_rst_cnt_reg__0[0]),
        .I5(div_rst_cnt_reg__0[1]),
        .O(div_nrst_i_2_n_0));
  LUT6 #(
    .INIT(64'h7777777707777777)) 
    div_nrst_i_3
       (.I0(\toggle_cnt_reg_n_0_[1] ),
        .I1(\toggle_cnt_reg_n_0_[0] ),
        .I2(strng_length_reg__0[3]),
        .I3(strng_length_reg__0[1]),
        .I4(strng_length_reg__0[0]),
        .I5(strng_length_reg__0[2]),
        .O(div_nrst_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    div_nrst_i_4
       (.I0(div_rst_cnt_reg__0[1]),
        .I1(div_rst_cnt_reg__0[0]),
        .I2(\div_rst_cnt_reg[4]_0 ),
        .I3(div_rst_cnt_reg__0[2]),
        .I4(div_rst_cnt_reg__0[3]),
        .O(div_nrst_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    div_nrst_reg
       (.C(CLK),
        .CE(div_nrst_i_1_n_0),
        .CLR(\toggle_cnt[1]_i_2_n_0 ),
        .D(div_nrst_i_2_n_0),
        .Q(div_nrst_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \div_rst_cnt[0]_i_1 
       (.I0(div_nrst_i_3_n_0),
        .I1(div_rst_cnt_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \div_rst_cnt[1]_i_1 
       (.I0(div_nrst_i_3_n_0),
        .I1(div_rst_cnt_reg__0[0]),
        .I2(div_rst_cnt_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \div_rst_cnt[2]_i_1 
       (.I0(div_nrst_i_3_n_0),
        .I1(div_rst_cnt_reg__0[0]),
        .I2(div_rst_cnt_reg__0[1]),
        .I3(div_rst_cnt_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \div_rst_cnt[3]_i_1 
       (.I0(div_nrst_i_3_n_0),
        .I1(div_rst_cnt_reg__0[1]),
        .I2(div_rst_cnt_reg__0[0]),
        .I3(div_rst_cnt_reg__0[2]),
        .I4(div_rst_cnt_reg__0[3]),
        .O(p_0_in__0[3]));
  LUT3 #(
    .INIT(8'h5D)) 
    \div_rst_cnt[4]_i_1 
       (.I0(div_nrst_i_3_n_0),
        .I1(ttc_strobe),
        .I2(div_nrst_i_4_n_0),
        .O(\div_rst_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \div_rst_cnt[4]_i_2 
       (.I0(div_nrst_i_3_n_0),
        .I1(div_rst_cnt_reg__0[2]),
        .I2(div_rst_cnt_reg__0[0]),
        .I3(div_rst_cnt_reg__0[1]),
        .I4(div_rst_cnt_reg__0[3]),
        .I5(\div_rst_cnt_reg[4]_0 ),
        .O(p_0_in__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \div_rst_cnt_reg[0] 
       (.C(CLK),
        .CE(\div_rst_cnt[4]_i_1_n_0 ),
        .CLR(\toggle_cnt[1]_i_2_n_0 ),
        .D(p_0_in__0[0]),
        .Q(div_rst_cnt_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \div_rst_cnt_reg[1] 
       (.C(CLK),
        .CE(\div_rst_cnt[4]_i_1_n_0 ),
        .CLR(\toggle_cnt[1]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(div_rst_cnt_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \div_rst_cnt_reg[2] 
       (.C(CLK),
        .CE(\div_rst_cnt[4]_i_1_n_0 ),
        .CLR(\toggle_cnt[1]_i_2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(div_rst_cnt_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \div_rst_cnt_reg[3] 
       (.C(CLK),
        .CE(\div_rst_cnt[4]_i_1_n_0 ),
        .CLR(\toggle_cnt[1]_i_2_n_0 ),
        .D(p_0_in__0[3]),
        .Q(div_rst_cnt_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \div_rst_cnt_reg[4] 
       (.C(CLK),
        .CE(\div_rst_cnt[4]_i_1_n_0 ),
        .CLR(\toggle_cnt[1]_i_2_n_0 ),
        .D(p_0_in__0[4]),
        .Q(\div_rst_cnt_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \hamming.data_out[38]_i_1 
       (.I0(ttc_strobe),
        .I1(\div_rst_cnt_reg[4]_0 ),
        .O(E));
  LUT2 #(
    .INIT(4'h8)) 
    \hamming.data_out[38]_i_3 
       (.I0(\div_rst_cnt_reg[4]_0 ),
        .I1(out),
        .O(\hamming.data_out_reg[38] ));
  LUT5 #(
    .INIT(32'h6FFF6000)) 
    l1a_i_1
       (.I0(p_0_in_0),
        .I1(\cdrdata_q_reg_n_0_[0] ),
        .I2(toggle_channel),
        .I3(a_channel_time_domain),
        .I4(l1a_i),
        .O(l1a_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    l1a_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(\toggle_cnt[1]_i_2_n_0 ),
        .D(l1a_i_1_n_0),
        .Q(l1a_i));
  LUT3 #(
    .INIT(8'h02)) 
    \strng_length[0]_i_1 
       (.I0(l1a_i),
        .I1(l1a0),
        .I2(strng_length_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00909000)) 
    \strng_length[1]_i_1 
       (.I0(p_0_in_0),
        .I1(\cdrdata_q_reg_n_0_[0] ),
        .I2(l1a_i),
        .I3(strng_length_reg__0[1]),
        .I4(strng_length_reg__0[0]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h000C0C0C04000000)) 
    \strng_length[2]_i_1 
       (.I0(strng_length_reg__0[3]),
        .I1(l1a_i),
        .I2(l1a0),
        .I3(strng_length_reg__0[0]),
        .I4(strng_length_reg__0[1]),
        .I5(strng_length_reg__0[2]),
        .O(p_0_in[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \strng_length[3]_i_1 
       (.I0(toggle_channel),
        .I1(a_channel_time_domain),
        .O(strng_length0));
  LUT6 #(
    .INIT(64'h0022222220000000)) 
    \strng_length[3]_i_2 
       (.I0(l1a_i),
        .I1(l1a0),
        .I2(strng_length_reg__0[2]),
        .I3(strng_length_reg__0[1]),
        .I4(strng_length_reg__0[0]),
        .I5(strng_length_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \strng_length[3]_i_3 
       (.I0(p_0_in_0),
        .I1(\cdrdata_q_reg_n_0_[0] ),
        .O(l1a0));
  FDCE #(
    .INIT(1'b0)) 
    \strng_length_reg[0] 
       (.C(CLK),
        .CE(strng_length0),
        .CLR(\toggle_cnt[1]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(strng_length_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \strng_length_reg[1] 
       (.C(CLK),
        .CE(strng_length0),
        .CLR(\toggle_cnt[1]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(strng_length_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \strng_length_reg[2] 
       (.C(CLK),
        .CE(strng_length0),
        .CLR(\toggle_cnt[1]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(strng_length_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \strng_length_reg[3] 
       (.C(CLK),
        .CE(strng_length0),
        .CLR(\toggle_cnt[1]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(strng_length_reg__0[3]));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \timer[0]_i_1__0 
       (.I0(cdr_lock_i_3_n_0),
        .I1(cdr_lock_i_4_n_0),
        .I2(cdr_lock_i_5_n_0),
        .I3(cdr_lock_i_6_n_0),
        .O(\timer[0]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[0]_i_3 
       (.I0(timer_reg[3]),
        .O(\timer[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[0]_i_4 
       (.I0(timer_reg[2]),
        .O(\timer[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[0]_i_5 
       (.I0(timer_reg[1]),
        .O(\timer[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[0]_i_6 
       (.I0(timer_reg[0]),
        .O(\timer[0]_i_6_n_0 ));
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
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .CLR(cdr_lock_i_2_n_0),
        .D(\timer_reg[0]_i_2_n_7 ),
        .Q(timer_reg[0]));
  CARRY4 \timer_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\timer_reg[0]_i_2_n_0 ,\NLW_timer_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\timer_reg[0]_i_2_n_4 ,\timer_reg[0]_i_2_n_5 ,\timer_reg[0]_i_2_n_6 ,\timer_reg[0]_i_2_n_7 }),
        .S({\timer[0]_i_3_n_0 ,\timer[0]_i_4_n_0 ,\timer[0]_i_5_n_0 ,\timer[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[10] 
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .CLR(cdr_lock_i_2_n_0),
        .D(\timer_reg[8]_i_1_n_5 ),
        .Q(timer_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[11] 
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .CLR(cdr_lock_i_2_n_0),
        .D(\timer_reg[8]_i_1_n_4 ),
        .Q(timer_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[12] 
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .CLR(cdr_lock_i_2_n_0),
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
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .CLR(cdr_lock_i_2_n_0),
        .D(\timer_reg[12]_i_1_n_6 ),
        .Q(timer_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[14] 
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .CLR(cdr_lock_i_2_n_0),
        .D(\timer_reg[12]_i_1_n_5 ),
        .Q(timer_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[15] 
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .CLR(cdr_lock_i_2_n_0),
        .D(\timer_reg[12]_i_1_n_4 ),
        .Q(timer_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[16] 
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .CLR(cdr_lock_i_2_n_0),
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
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .CLR(cdr_lock_i_2_n_0),
        .D(\timer_reg[16]_i_1_n_6 ),
        .Q(timer_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[18] 
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .CLR(cdr_lock_i_2_n_0),
        .D(\timer_reg[16]_i_1_n_5 ),
        .Q(timer_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[19] 
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .CLR(cdr_lock_i_2_n_0),
        .D(\timer_reg[16]_i_1_n_4 ),
        .Q(timer_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[1] 
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .CLR(cdr_lock_i_2_n_0),
        .D(\timer_reg[0]_i_2_n_6 ),
        .Q(timer_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[20] 
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .CLR(cdr_lock_i_2_n_0),
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
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .CLR(cdr_lock_i_2_n_0),
        .D(\timer_reg[20]_i_1_n_6 ),
        .Q(timer_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[22] 
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .CLR(cdr_lock_i_2_n_0),
        .D(\timer_reg[20]_i_1_n_5 ),
        .Q(timer_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[23] 
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .CLR(cdr_lock_i_2_n_0),
        .D(\timer_reg[20]_i_1_n_4 ),
        .Q(timer_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[24] 
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .CLR(cdr_lock_i_2_n_0),
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
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .CLR(cdr_lock_i_2_n_0),
        .D(\timer_reg[24]_i_1_n_6 ),
        .Q(timer_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[26] 
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .CLR(cdr_lock_i_2_n_0),
        .D(\timer_reg[24]_i_1_n_5 ),
        .Q(timer_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[27] 
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .CLR(cdr_lock_i_2_n_0),
        .D(\timer_reg[24]_i_1_n_4 ),
        .Q(timer_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[28] 
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .CLR(cdr_lock_i_2_n_0),
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
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .CLR(cdr_lock_i_2_n_0),
        .D(\timer_reg[28]_i_1_n_6 ),
        .Q(timer_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[2] 
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .CLR(cdr_lock_i_2_n_0),
        .D(\timer_reg[0]_i_2_n_5 ),
        .Q(timer_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[30] 
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .CLR(cdr_lock_i_2_n_0),
        .D(\timer_reg[28]_i_1_n_5 ),
        .Q(timer_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[31] 
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .CLR(cdr_lock_i_2_n_0),
        .D(\timer_reg[28]_i_1_n_4 ),
        .Q(timer_reg[31]));
  FDPE #(
    .INIT(1'b1)) 
    \timer_reg[3] 
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .D(\timer_reg[0]_i_2_n_4 ),
        .PRE(cdr_lock_i_2_n_0),
        .Q(timer_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[4] 
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .CLR(cdr_lock_i_2_n_0),
        .D(\timer_reg[4]_i_1_n_7 ),
        .Q(timer_reg[4]));
  CARRY4 \timer_reg[4]_i_1 
       (.CI(\timer_reg[0]_i_2_n_0 ),
        .CO({\timer_reg[4]_i_1_n_0 ,\NLW_timer_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\timer_reg[4]_i_1_n_4 ,\timer_reg[4]_i_1_n_5 ,\timer_reg[4]_i_1_n_6 ,\timer_reg[4]_i_1_n_7 }),
        .S({\timer[4]_i_2_n_0 ,\timer[4]_i_3_n_0 ,\timer[4]_i_4_n_0 ,\timer[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[5] 
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .CLR(cdr_lock_i_2_n_0),
        .D(\timer_reg[4]_i_1_n_6 ),
        .Q(timer_reg[5]));
  FDPE #(
    .INIT(1'b1)) 
    \timer_reg[6] 
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .D(\timer_reg[4]_i_1_n_5 ),
        .PRE(cdr_lock_i_2_n_0),
        .Q(timer_reg[6]));
  FDPE #(
    .INIT(1'b1)) 
    \timer_reg[7] 
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .D(\timer_reg[4]_i_1_n_4 ),
        .PRE(cdr_lock_i_2_n_0),
        .Q(timer_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[8] 
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .CLR(cdr_lock_i_2_n_0),
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
       (.C(CLK),
        .CE(\timer[0]_i_1__0_n_0 ),
        .CLR(cdr_lock_i_2_n_0),
        .D(\timer_reg[8]_i_1_n_6 ),
        .Q(timer_reg[9]));
  LUT3 #(
    .INIT(8'h87)) 
    toggle_channel_i_1
       (.I0(\toggle_cnt_reg_n_0_[1] ),
        .I1(\toggle_cnt_reg_n_0_[0] ),
        .I2(toggle_channel),
        .O(toggle_channel_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    toggle_channel_reg
       (.C(CLK),
        .CE(1'b1),
        .D(toggle_channel_i_1_n_0),
        .PRE(\toggle_cnt[1]_i_2_n_0 ),
        .Q(toggle_channel));
  LUT6 #(
    .INIT(64'h0000000900F60009)) 
    \toggle_cnt[0]_i_1 
       (.I0(p_0_in_0),
        .I1(\cdrdata_q_reg_n_0_[0] ),
        .I2(toggle_channel),
        .I3(\toggle_cnt[0]_i_2_n_0 ),
        .I4(\toggle_cnt_reg_n_0_[0] ),
        .I5(\toggle_cnt_reg_n_0_[1] ),
        .O(\toggle_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \toggle_cnt[0]_i_2 
       (.I0(div8[2]),
        .I1(div8[1]),
        .I2(div8[0]),
        .O(\toggle_cnt[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000000820000)) 
    \toggle_cnt[1]_i_1 
       (.I0(\toggle_cnt_reg_n_0_[0] ),
        .I1(p_0_in_0),
        .I2(\cdrdata_q_reg_n_0_[0] ),
        .I3(toggle_channel),
        .I4(\toggle_cnt[1]_i_3_n_0 ),
        .I5(\toggle_cnt_reg_n_0_[1] ),
        .O(\toggle_cnt[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \toggle_cnt[1]_i_2 
       (.I0(ready_OBUF),
        .O(\toggle_cnt[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h07777777)) 
    \toggle_cnt[1]_i_3 
       (.I0(\toggle_cnt_reg_n_0_[1] ),
        .I1(\toggle_cnt_reg_n_0_[0] ),
        .I2(div8[0]),
        .I3(div8[1]),
        .I4(div8[2]),
        .O(\toggle_cnt[1]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \toggle_cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\toggle_cnt[1]_i_2_n_0 ),
        .D(\toggle_cnt[0]_i_1_n_0 ),
        .Q(\toggle_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \toggle_cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\toggle_cnt[1]_i_2_n_0 ),
        .D(\toggle_cnt[1]_i_1_n_0 ),
        .Q(\toggle_cnt_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ttc_str_i_1
       (.I0(a_channel_time_domain),
        .I1(toggle_channel),
        .O(ttc_str0));
  FDRE #(
    .INIT(1'b0)) 
    ttc_str_reg
       (.C(CLK),
        .CE(1'b1),
        .D(ttc_str0),
        .Q(ttc_strobe),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    ttcclk_i_1
       (.I0(a_channel_time_domain),
        .O(ttcclk_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ttcclk_reg
       (.C(CLK),
        .CE(toggle_channel),
        .D(ttcclk_i_1_n_0),
        .Q(ttc_clk_gated_out_OBUF),
        .R(1'b0));
endmodule

module d_ff
   (jk_internal_reg,
    clk_in_80_n,
    reset_in,
    valid_in,
    b_ch_in,
    clk_in_40_p,
    a_ch_in,
    clk_in_80_p,
    data_out_p);
  output jk_internal_reg;
  input clk_in_80_n;
  input reset_in;
  input valid_in;
  input b_ch_in;
  input clk_in_40_p;
  input a_ch_in;
  input clk_in_80_p;
  input data_out_p;

  wire a_ch_in;
  wire b_ch_in;
  wire clk_in_40_p;
  wire clk_in_80_n;
  wire clk_in_80_p;
  wire d_internal;
  wire data_out_p;
  wire jk_internal_reg;
  wire reset_in;
  wire sel_cha_chb;
  wire valid_in;

  LUT4 #(
    .INIT(16'h8A80)) 
    d_internal_i_1
       (.I0(valid_in),
        .I1(b_ch_in),
        .I2(clk_in_40_p),
        .I3(a_ch_in),
        .O(sel_cha_chb));
  FDCE #(
    .INIT(1'b0)) 
    d_internal_reg
       (.C(clk_in_80_n),
        .CE(1'b1),
        .CLR(reset_in),
        .D(sel_cha_chb),
        .Q(d_internal));
  LUT3 #(
    .INIT(8'h4B)) 
    jk_internal_i_1
       (.I0(d_internal),
        .I1(clk_in_80_p),
        .I2(data_out_p),
        .O(jk_internal_reg));
endmodule

module jk_ff
   (data_out_p,
    data_out_n,
    d_internal_reg,
    clk_in_160_n,
    reset_in);
  output data_out_p;
  output data_out_n;
  input d_internal_reg;
  input clk_in_160_n;
  input reset_in;

  wire clk_in_160_n;
  wire d_internal_reg;
  wire data_out_n;
  wire data_out_p;
  wire reset_in;

  LUT1 #(
    .INIT(2'h1)) 
    data_out_n_INST_0
       (.I0(data_out_p),
        .O(data_out_n));
  FDCE #(
    .INIT(1'b0)) 
    jk_internal_reg
       (.C(clk_in_160_n),
        .CE(1'b1),
        .CLR(reset_in),
        .D(d_internal_reg),
        .Q(data_out_p));
endmodule

module mmcm
   (clk_out_40_p,
    clk_out_80_p,
    clk_out_80_n,
    clk_out_160_p,
    clk_out_160_n,
    locked,
    clk_in_200_p,
    clk_in_200_n,
    reset_in_IBUF);
  output clk_out_40_p;
  output clk_out_80_p;
  output clk_out_80_n;
  output clk_out_160_p;
  output clk_out_160_n;
  output locked;
  input clk_in_200_p;
  input clk_in_200_n;
  input reset_in_IBUF;

  wire clk_in_200_n;
  wire clk_in_200_p;
  wire clk_in_mmcm;
  wire clk_out_160_n;
  wire clk_out_160_n_mmcm;
  wire clk_out_160_p;
  wire clk_out_160_p_mmcm;
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
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
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
       (.I(clk_in_200_p),
        .IB(clk_in_200_n),
        .O(clk_in_mmcm));
  (* box_type = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out_40_p_mmcm),
        .O(clk_out_40_p));
  (* box_type = "PRIMITIVE" *) 
  BUFG clkout3_buf
       (.I(clk_out_80_p_mmcm),
        .O(clk_out_80_p));
  (* box_type = "PRIMITIVE" *) 
  BUFG clkout4_buf
       (.I(clk_out_80_n_mmcm),
        .O(clk_out_80_n));
  (* box_type = "PRIMITIVE" *) 
  BUFG clkout5_buf
       (.I(clk_out_160_p_mmcm),
        .O(clk_out_160_p));
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
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(clk_out_80_p_mmcm),
        .CLKOUT1B(clk_out_80_n_mmcm),
        .CLKOUT2(clk_out_160_p_mmcm),
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

module pll_160MHz
   (LOCKED,
    CLK_OUT1,
    CLK_IN1,
    RESET);
  output LOCKED;
  output CLK_OUT1;
  input CLK_IN1;
  input RESET;

  wire CLK_IN1;
  wire CLK_OUT1;
  wire LOCKED;
  wire RESET;
  wire clkfbout;
  wire clkfbout_buf;
  wire clkout0;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
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
       (.I(clkfbout),
        .O(clkfbout_buf));
  (* box_type = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clkout0),
        .O(CLK_OUT1));
  (* XILINX_LEGACY_PRIM = "MMCM_ADV" *) 
  (* box_type = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(25.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(6.250000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(6.250000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
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
    .COMPENSATION("BUF_IN"),
    .DIVCLK_DIVIDE(4),
    .IS_PSINCDEC_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.000000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf),
        .CLKFBOUT(clkfbout),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(CLK_IN1),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clkout0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
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
        .LOCKED(LOCKED),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(RESET));
endmodule

module serialb_com
   (out,
    channelB_comm_error_i,
    single_bit_error_i,
    double_bit_error_i,
    communication_error0,
    Q,
    \add_a14_reg[13] ,
    SR,
    ttc_strobe,
    CLK,
    channelB,
    \div_rst_cnt_reg[4] ,
    \div_rst_cnt_reg[4]_0 ,
    E);
  output [0:0]out;
  output channelB_comm_error_i;
  output single_bit_error_i;
  output double_bit_error_i;
  output communication_error0;
  output [1:0]Q;
  output [32:0]\add_a14_reg[13] ;
  input [0:0]SR;
  input ttc_strobe;
  input CLK;
  input channelB;
  input [0:0]\div_rst_cnt_reg[4] ;
  input \div_rst_cnt_reg[4]_0 ;
  input [0:0]E;

  wire CLK;
  wire [0:0]E;
  wire \FSM_sequential_hamming.next_state[0]_i_1_n_0 ;
  wire \FSM_sequential_hamming.next_state[1]_i_1_n_0 ;
  wire \FSM_sequential_hamming.next_state[2]_i_10_n_0 ;
  wire \FSM_sequential_hamming.next_state[2]_i_11_n_0 ;
  wire \FSM_sequential_hamming.next_state[2]_i_12_n_0 ;
  wire \FSM_sequential_hamming.next_state[2]_i_13_n_0 ;
  wire \FSM_sequential_hamming.next_state[2]_i_14_n_0 ;
  wire \FSM_sequential_hamming.next_state[2]_i_15_n_0 ;
  wire \FSM_sequential_hamming.next_state[2]_i_16_n_0 ;
  wire \FSM_sequential_hamming.next_state[2]_i_17_n_0 ;
  wire \FSM_sequential_hamming.next_state[2]_i_18_n_0 ;
  wire \FSM_sequential_hamming.next_state[2]_i_19_n_0 ;
  wire \FSM_sequential_hamming.next_state[2]_i_20_n_0 ;
  wire \FSM_sequential_hamming.next_state[2]_i_21_n_0 ;
  wire \FSM_sequential_hamming.next_state[2]_i_22_n_0 ;
  wire \FSM_sequential_hamming.next_state[2]_i_23_n_0 ;
  wire \FSM_sequential_hamming.next_state[2]_i_24_n_0 ;
  wire \FSM_sequential_hamming.next_state[2]_i_25_n_0 ;
  wire \FSM_sequential_hamming.next_state[2]_i_26_n_0 ;
  wire \FSM_sequential_hamming.next_state[2]_i_2_n_0 ;
  wire \FSM_sequential_hamming.next_state[2]_i_3_n_0 ;
  wire \FSM_sequential_hamming.next_state[2]_i_4_n_0 ;
  wire \FSM_sequential_hamming.next_state[2]_i_5_n_0 ;
  wire \FSM_sequential_hamming.next_state[2]_i_6_n_0 ;
  wire \FSM_sequential_hamming.next_state[2]_i_7_n_0 ;
  wire \FSM_sequential_hamming.next_state[2]_i_8_n_0 ;
  wire \FSM_sequential_hamming.next_state[2]_i_9_n_0 ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [32:0]\add_a14_reg[13] ;
  wire [23:23]chB_data;
  wire channelB;
  wire channelB_comm_error_i;
  wire communication_error0;
  wire [0:0]\div_rst_cnt_reg[4] ;
  wire \div_rst_cnt_reg[4]_0 ;
  wire double_bit_error_i;
  wire dta_rdy;
  wire \hamming.brc_rdy_i_1_n_0 ;
  wire \hamming.brc_rdy_reg_n_0 ;
  wire \hamming.communication_error_i_1_n_0 ;
  wire \hamming.data_out[10]_i_1_n_0 ;
  wire \hamming.data_out[10]_i_2_n_0 ;
  wire \hamming.data_out[10]_i_3_n_0 ;
  wire \hamming.data_out[11]_i_1_n_0 ;
  wire \hamming.data_out[11]_i_2_n_0 ;
  wire \hamming.data_out[11]_i_3_n_0 ;
  wire \hamming.data_out[11]_i_4_n_0 ;
  wire \hamming.data_out[11]_i_5_n_0 ;
  wire \hamming.data_out[11]_i_6_n_0 ;
  wire \hamming.data_out[12]_i_1_n_0 ;
  wire \hamming.data_out[12]_i_2_n_0 ;
  wire \hamming.data_out[12]_i_3_n_0 ;
  wire \hamming.data_out[12]_i_4_n_0 ;
  wire \hamming.data_out[12]_i_5_n_0 ;
  wire \hamming.data_out[12]_i_6_n_0 ;
  wire \hamming.data_out[12]_i_7_n_0 ;
  wire \hamming.data_out[12]_i_8_n_0 ;
  wire \hamming.data_out[12]_i_9_n_0 ;
  wire \hamming.data_out[13]_i_1_n_0 ;
  wire \hamming.data_out[13]_i_2_n_0 ;
  wire \hamming.data_out[14]_i_1_n_0 ;
  wire \hamming.data_out[15]_i_1_n_0 ;
  wire \hamming.data_out[15]_i_2_n_0 ;
  wire \hamming.data_out[15]_i_3_n_0 ;
  wire \hamming.data_out[16]_i_1_n_0 ;
  wire \hamming.data_out[16]_i_2_n_0 ;
  wire \hamming.data_out[16]_i_3_n_0 ;
  wire \hamming.data_out[17]_i_1_n_0 ;
  wire \hamming.data_out[18]_i_1_n_0 ;
  wire \hamming.data_out[18]_i_2_n_0 ;
  wire \hamming.data_out[19]_i_1_n_0 ;
  wire \hamming.data_out[20]_i_1_n_0 ;
  wire \hamming.data_out[20]_i_2_n_0 ;
  wire \hamming.data_out[21]_i_1_n_0 ;
  wire \hamming.data_out[22]_i_1_n_0 ;
  wire \hamming.data_out[23]_i_1_n_0 ;
  wire \hamming.data_out[24]_i_1_n_0 ;
  wire \hamming.data_out[24]_i_2_n_0 ;
  wire \hamming.data_out[24]_i_3_n_0 ;
  wire \hamming.data_out[24]_i_4_n_0 ;
  wire \hamming.data_out[24]_i_5_n_0 ;
  wire \hamming.data_out[25]_i_1_n_0 ;
  wire \hamming.data_out[26]_i_1_n_0 ;
  wire \hamming.data_out[26]_i_2_n_0 ;
  wire \hamming.data_out[27]_i_10_n_0 ;
  wire \hamming.data_out[27]_i_1_n_0 ;
  wire \hamming.data_out[27]_i_2_n_0 ;
  wire \hamming.data_out[27]_i_3_n_0 ;
  wire \hamming.data_out[27]_i_4_n_0 ;
  wire \hamming.data_out[27]_i_5_n_0 ;
  wire \hamming.data_out[27]_i_6_n_0 ;
  wire \hamming.data_out[27]_i_7_n_0 ;
  wire \hamming.data_out[27]_i_8_n_0 ;
  wire \hamming.data_out[27]_i_9_n_0 ;
  wire \hamming.data_out[28]_i_1_n_0 ;
  wire \hamming.data_out[28]_i_2_n_0 ;
  wire \hamming.data_out[29]_i_1_n_0 ;
  wire \hamming.data_out[29]_i_2_n_0 ;
  wire \hamming.data_out[30]_i_1_n_0 ;
  wire \hamming.data_out[30]_i_2_n_0 ;
  wire \hamming.data_out[31]_i_1_n_0 ;
  wire \hamming.data_out[31]_i_2_n_0 ;
  wire \hamming.data_out[31]_i_3_n_0 ;
  wire \hamming.data_out[31]_i_4_n_0 ;
  wire \hamming.data_out[32]_i_1_n_0 ;
  wire \hamming.data_out[32]_i_2_n_0 ;
  wire \hamming.data_out[33]_i_1_n_0 ;
  wire \hamming.data_out[33]_i_2_n_0 ;
  wire \hamming.data_out[33]_i_3_n_0 ;
  wire \hamming.data_out[33]_i_4_n_0 ;
  wire \hamming.data_out[33]_i_5_n_0 ;
  wire \hamming.data_out[34]_i_1_n_0 ;
  wire \hamming.data_out[34]_i_2_n_0 ;
  wire \hamming.data_out[34]_i_3_n_0 ;
  wire \hamming.data_out[35]_i_1_n_0 ;
  wire \hamming.data_out[35]_i_2_n_0 ;
  wire \hamming.data_out[36]_i_1_n_0 ;
  wire \hamming.data_out[36]_i_2_n_0 ;
  wire \hamming.data_out[36]_i_3_n_0 ;
  wire \hamming.data_out[36]_i_4_n_0 ;
  wire \hamming.data_out[36]_i_5_n_0 ;
  wire \hamming.data_out[36]_i_6_n_0 ;
  wire \hamming.data_out[36]_i_7_n_0 ;
  wire \hamming.data_out[37]_i_1_n_0 ;
  wire \hamming.data_out[37]_i_2_n_0 ;
  wire \hamming.data_out[37]_i_3_n_0 ;
  wire \hamming.data_out[38]_i_10_n_0 ;
  wire \hamming.data_out[38]_i_11_n_0 ;
  wire \hamming.data_out[38]_i_12_n_0 ;
  wire \hamming.data_out[38]_i_2_n_0 ;
  wire \hamming.data_out[38]_i_4_n_0 ;
  wire \hamming.data_out[38]_i_5_n_0 ;
  wire \hamming.data_out[38]_i_6_n_0 ;
  wire \hamming.data_out[38]_i_7_n_0 ;
  wire \hamming.data_out[38]_i_8_n_0 ;
  wire \hamming.data_out[38]_i_9_n_0 ;
  wire \hamming.data_out[5]_i_1_n_0 ;
  wire \hamming.data_out[5]_i_2_n_0 ;
  wire \hamming.data_out[5]_i_3_n_0 ;
  wire \hamming.data_out[5]_i_4_n_0 ;
  wire \hamming.data_out[6]_i_1_n_0 ;
  wire \hamming.data_out[6]_i_2_n_0 ;
  wire \hamming.data_out[7]_i_1_n_0 ;
  wire \hamming.data_out[7]_i_2_n_0 ;
  wire \hamming.data_out[7]_i_3_n_0 ;
  wire \hamming.data_out[8]_i_1_n_0 ;
  wire \hamming.data_out[8]_i_2_n_0 ;
  wire \hamming.data_out[8]_i_3_n_0 ;
  wire \hamming.data_out[8]_i_4_n_0 ;
  wire \hamming.data_out[8]_i_5_n_0 ;
  wire \hamming.data_out[9]_i_1_n_0 ;
  wire \hamming.data_out[9]_i_2_n_0 ;
  wire \hamming.data_out[9]_i_3_n_0 ;
  wire \hamming.data_out[9]_i_4_n_0 ;
  wire \hamming.data_ready[0]_i_1_n_0 ;
  wire \hamming.data_ready[1]_i_1_n_0 ;
  wire \hamming.double_bit_error_i_i_1_n_0 ;
  wire \hamming.dta_rdy_reg_n_0 ;
  wire \hamming.received_word[10]_i_1_n_0 ;
  wire \hamming.received_word[11]_i_1_n_0 ;
  wire \hamming.received_word[12]_i_1_n_0 ;
  wire \hamming.received_word[14]_i_1_n_0 ;
  wire \hamming.received_word[15]_i_1_n_0 ;
  wire \hamming.received_word[16]_i_1_n_0 ;
  wire \hamming.received_word[17]_i_1_n_0 ;
  wire \hamming.received_word[18]_i_1_n_0 ;
  wire \hamming.received_word[19]_i_1_n_0 ;
  wire \hamming.received_word[1]_i_1_n_0 ;
  wire \hamming.received_word[20]_i_1_n_0 ;
  wire \hamming.received_word[21]_i_1_n_0 ;
  wire \hamming.received_word[22]_i_1_n_0 ;
  wire \hamming.received_word[23]_i_1_n_0 ;
  wire \hamming.received_word[24]_i_1_n_0 ;
  wire \hamming.received_word[25]_i_1_n_0 ;
  wire \hamming.received_word[26]_i_1_n_0 ;
  wire \hamming.received_word[27]_i_1_n_0 ;
  wire \hamming.received_word[28]_i_1_n_0 ;
  wire \hamming.received_word[29]_i_1_n_0 ;
  wire \hamming.received_word[2]_i_1_n_0 ;
  wire \hamming.received_word[30]_i_1_n_0 ;
  wire \hamming.received_word[31]_i_1_n_0 ;
  wire \hamming.received_word[32]_i_1_n_0 ;
  wire \hamming.received_word[33]_i_1_n_0 ;
  wire \hamming.received_word[34]_i_1_n_0 ;
  wire \hamming.received_word[35]_i_1_n_0 ;
  wire \hamming.received_word[36]_i_1_n_0 ;
  wire \hamming.received_word[37]_i_1_n_0 ;
  wire \hamming.received_word[38]_i_1_n_0 ;
  wire \hamming.received_word[3]_i_1_n_0 ;
  wire \hamming.received_word[4]_i_1_n_0 ;
  wire \hamming.received_word[5]_i_1_n_0 ;
  wire \hamming.received_word[6]_i_1_n_0 ;
  wire \hamming.received_word[7]_i_1_n_0 ;
  wire \hamming.received_word[8]_i_1_n_0 ;
  wire \hamming.received_word[9]_i_1_n_0 ;
  wire \hamming.received_word_reg_n_0_[0] ;
  wire \hamming.received_word_reg_n_0_[10] ;
  wire \hamming.received_word_reg_n_0_[11] ;
  wire \hamming.received_word_reg_n_0_[12] ;
  wire \hamming.received_word_reg_n_0_[13] ;
  wire \hamming.received_word_reg_n_0_[14] ;
  wire \hamming.received_word_reg_n_0_[15] ;
  wire \hamming.received_word_reg_n_0_[16] ;
  wire \hamming.received_word_reg_n_0_[17] ;
  wire \hamming.received_word_reg_n_0_[18] ;
  wire \hamming.received_word_reg_n_0_[19] ;
  wire \hamming.received_word_reg_n_0_[1] ;
  wire \hamming.received_word_reg_n_0_[20] ;
  wire \hamming.received_word_reg_n_0_[21] ;
  wire \hamming.received_word_reg_n_0_[22] ;
  wire \hamming.received_word_reg_n_0_[23] ;
  wire \hamming.received_word_reg_n_0_[24] ;
  wire \hamming.received_word_reg_n_0_[25] ;
  wire \hamming.received_word_reg_n_0_[26] ;
  wire \hamming.received_word_reg_n_0_[27] ;
  wire \hamming.received_word_reg_n_0_[28] ;
  wire \hamming.received_word_reg_n_0_[29] ;
  wire \hamming.received_word_reg_n_0_[2] ;
  wire \hamming.received_word_reg_n_0_[30] ;
  wire \hamming.received_word_reg_n_0_[31] ;
  wire \hamming.received_word_reg_n_0_[32] ;
  wire \hamming.received_word_reg_n_0_[33] ;
  wire \hamming.received_word_reg_n_0_[34] ;
  wire \hamming.received_word_reg_n_0_[35] ;
  wire \hamming.received_word_reg_n_0_[36] ;
  wire \hamming.received_word_reg_n_0_[37] ;
  wire \hamming.received_word_reg_n_0_[38] ;
  wire \hamming.received_word_reg_n_0_[3] ;
  wire \hamming.received_word_reg_n_0_[4] ;
  wire \hamming.received_word_reg_n_0_[5] ;
  wire \hamming.received_word_reg_n_0_[6] ;
  wire \hamming.received_word_reg_n_0_[7] ;
  wire \hamming.received_word_reg_n_0_[8] ;
  wire \hamming.received_word_reg_n_0_[9] ;
  wire \hamming.serBchanR_reg_n_0 ;
  wire \hamming.single_bit_error_i_i_1_n_0 ;
  wire \hamming.single_bit_error_i_i_3_n_0 ;
  wire \hamming.single_bit_error_i_i_4_n_0 ;
  wire \hamming.single_bit_error_i_i_5_n_0 ;
  wire \hamming.single_bit_error_i_i_6_n_0 ;
  wire \hamming.single_bit_error_i_i_7_n_0 ;
  (* RTL_KEEP = "yes" *) wire [1:0]next_state;
  (* RTL_KEEP = "yes" *) wire [0:0]out;
  wire [13:0]received_word;
  wire serBchanRR;
  wire single_bit_error_i;
  wire single_bit_error_i11_out;
  wire ttc_strobe;

  LUT6 #(
    .INIT(64'hF300F30FF0A0F0FF)) 
    \FSM_sequential_hamming.next_state[0]_i_1 
       (.I0(\FSM_sequential_hamming.next_state[2]_i_4_n_0 ),
        .I1(\hamming.received_word_reg_n_0_[12] ),
        .I2(out),
        .I3(next_state[1]),
        .I4(serBchanRR),
        .I5(next_state[0]),
        .O(\FSM_sequential_hamming.next_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h01515050)) 
    \FSM_sequential_hamming.next_state[1]_i_1 
       (.I0(out),
        .I1(\hamming.received_word_reg_n_0_[38] ),
        .I2(next_state[0]),
        .I3(\hamming.received_word_reg_n_0_[12] ),
        .I4(next_state[1]),
        .O(\FSM_sequential_hamming.next_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \FSM_sequential_hamming.next_state[2]_i_10 
       (.I0(\hamming.data_out[36]_i_3_n_0 ),
        .I1(\hamming.data_out[38]_i_10_n_0 ),
        .I2(\hamming.data_out[33]_i_4_n_0 ),
        .I3(\hamming.data_out[38]_i_12_n_0 ),
        .I4(\hamming.data_out[38]_i_11_n_0 ),
        .O(\FSM_sequential_hamming.next_state[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \FSM_sequential_hamming.next_state[2]_i_11 
       (.I0(\FSM_sequential_hamming.next_state[2]_i_17_n_0 ),
        .I1(\FSM_sequential_hamming.next_state[2]_i_18_n_0 ),
        .I2(\hamming.received_word_reg_n_0_[22] ),
        .I3(\hamming.received_word_reg_n_0_[29] ),
        .I4(\FSM_sequential_hamming.next_state[2]_i_19_n_0 ),
        .I5(\hamming.received_word_reg_n_0_[11] ),
        .O(\FSM_sequential_hamming.next_state[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \FSM_sequential_hamming.next_state[2]_i_12 
       (.I0(\hamming.received_word_reg_n_0_[19] ),
        .I1(\hamming.received_word_reg_n_0_[12] ),
        .I2(\hamming.received_word_reg_n_0_[10] ),
        .I3(\hamming.received_word_reg_n_0_[34] ),
        .I4(\hamming.received_word_reg_n_0_[23] ),
        .I5(\hamming.received_word_reg_n_0_[27] ),
        .O(\FSM_sequential_hamming.next_state[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \FSM_sequential_hamming.next_state[2]_i_13 
       (.I0(\FSM_sequential_hamming.next_state[2]_i_20_n_0 ),
        .I1(\FSM_sequential_hamming.next_state[2]_i_21_n_0 ),
        .I2(\hamming.received_word_reg_n_0_[22] ),
        .I3(\hamming.received_word_reg_n_0_[24] ),
        .I4(\hamming.received_word_reg_n_0_[16] ),
        .I5(\hamming.received_word_reg_n_0_[14] ),
        .O(\FSM_sequential_hamming.next_state[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \FSM_sequential_hamming.next_state[2]_i_14 
       (.I0(\hamming.received_word_reg_n_0_[17] ),
        .I1(\hamming.received_word_reg_n_0_[25] ),
        .I2(\hamming.received_word_reg_n_0_[28] ),
        .I3(\hamming.received_word_reg_n_0_[8] ),
        .I4(\hamming.received_word_reg_n_0_[30] ),
        .I5(\FSM_sequential_hamming.next_state[2]_i_22_n_0 ),
        .O(\FSM_sequential_hamming.next_state[2]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \FSM_sequential_hamming.next_state[2]_i_15 
       (.I0(\hamming.received_word_reg_n_0_[33] ),
        .I1(\hamming.received_word_reg_n_0_[18] ),
        .I2(\hamming.received_word_reg_n_0_[26] ),
        .I3(\hamming.received_word_reg_n_0_[14] ),
        .I4(\FSM_sequential_hamming.next_state[2]_i_23_n_0 ),
        .O(\FSM_sequential_hamming.next_state[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \FSM_sequential_hamming.next_state[2]_i_16 
       (.I0(\FSM_sequential_hamming.next_state[2]_i_24_n_0 ),
        .I1(\hamming.received_word_reg_n_0_[6] ),
        .I2(\hamming.data_out[36]_i_5_n_0 ),
        .I3(\FSM_sequential_hamming.next_state[2]_i_25_n_0 ),
        .I4(\hamming.data_out[27]_i_7_n_0 ),
        .I5(\hamming.data_out[27]_i_6_n_0 ),
        .O(\FSM_sequential_hamming.next_state[2]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \FSM_sequential_hamming.next_state[2]_i_17 
       (.I0(\hamming.data_out[36]_i_6_n_0 ),
        .I1(\hamming.received_word_reg_n_0_[7] ),
        .I2(\hamming.received_word_reg_n_0_[36] ),
        .I3(\hamming.received_word_reg_n_0_[33] ),
        .I4(\hamming.received_word_reg_n_0_[18] ),
        .O(\FSM_sequential_hamming.next_state[2]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_hamming.next_state[2]_i_18 
       (.I0(\hamming.received_word_reg_n_0_[26] ),
        .I1(\hamming.received_word_reg_n_0_[14] ),
        .O(\FSM_sequential_hamming.next_state[2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \FSM_sequential_hamming.next_state[2]_i_19 
       (.I0(\hamming.received_word_reg_n_0_[38] ),
        .I1(\hamming.received_word_reg_n_0_[32] ),
        .I2(\hamming.received_word_reg_n_0_[17] ),
        .I3(\hamming.received_word_reg_n_0_[25] ),
        .I4(\hamming.received_word_reg_n_0_[10] ),
        .I5(\hamming.received_word_reg_n_0_[28] ),
        .O(\FSM_sequential_hamming.next_state[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEAAAAFFEFAAAA)) 
    \FSM_sequential_hamming.next_state[2]_i_2 
       (.I0(\FSM_sequential_hamming.next_state[2]_i_3_n_0 ),
        .I1(next_state[1]),
        .I2(serBchanRR),
        .I3(\FSM_sequential_hamming.next_state[2]_i_4_n_0 ),
        .I4(out),
        .I5(next_state[0]),
        .O(\FSM_sequential_hamming.next_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \FSM_sequential_hamming.next_state[2]_i_20 
       (.I0(\hamming.received_word_reg_n_0_[15] ),
        .I1(\hamming.received_word_reg_n_0_[37] ),
        .I2(\hamming.received_word_reg_n_0_[9] ),
        .I3(\hamming.received_word_reg_n_0_[8] ),
        .I4(\hamming.received_word_reg_n_0_[7] ),
        .I5(\hamming.data_out[36]_i_6_n_0 ),
        .O(\FSM_sequential_hamming.next_state[2]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \FSM_sequential_hamming.next_state[2]_i_21 
       (.I0(\hamming.received_word_reg_n_0_[23] ),
        .I1(\hamming.received_word_reg_n_0_[28] ),
        .I2(\hamming.received_word_reg_n_0_[31] ),
        .I3(\hamming.received_word_reg_n_0_[36] ),
        .I4(\hamming.received_word_reg_n_0_[29] ),
        .I5(\hamming.received_word_reg_n_0_[30] ),
        .O(\FSM_sequential_hamming.next_state[2]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_hamming.next_state[2]_i_22 
       (.I0(\hamming.received_word_reg_n_0_[37] ),
        .I1(\hamming.received_word_reg_n_0_[15] ),
        .O(\FSM_sequential_hamming.next_state[2]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \FSM_sequential_hamming.next_state[2]_i_23 
       (.I0(\hamming.received_word_reg_n_0_[7] ),
        .I1(\hamming.received_word_reg_n_0_[36] ),
        .I2(\hamming.received_word_reg_n_0_[16] ),
        .I3(\hamming.received_word_reg_n_0_[11] ),
        .I4(\hamming.received_word_reg_n_0_[20] ),
        .I5(\FSM_sequential_hamming.next_state[2]_i_26_n_0 ),
        .O(\FSM_sequential_hamming.next_state[2]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \FSM_sequential_hamming.next_state[2]_i_24 
       (.I0(\hamming.received_word_reg_n_0_[9] ),
        .I1(\hamming.received_word_reg_n_0_[29] ),
        .I2(\hamming.received_word_reg_n_0_[24] ),
        .I3(\hamming.received_word_reg_n_0_[22] ),
        .I4(\hamming.data_out[36]_i_6_n_0 ),
        .I5(\hamming.received_word_reg_n_0_[31] ),
        .O(\FSM_sequential_hamming.next_state[2]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \FSM_sequential_hamming.next_state[2]_i_25 
       (.I0(\hamming.received_word_reg_n_0_[12] ),
        .I1(\hamming.received_word_reg_n_0_[11] ),
        .I2(\hamming.received_word_reg_n_0_[9] ),
        .I3(\hamming.received_word_reg_n_0_[8] ),
        .I4(\hamming.received_word_reg_n_0_[7] ),
        .I5(\hamming.received_word_reg_n_0_[10] ),
        .O(\FSM_sequential_hamming.next_state[2]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_hamming.next_state[2]_i_26 
       (.I0(\hamming.received_word_reg_n_0_[32] ),
        .I1(\hamming.received_word_reg_n_0_[38] ),
        .O(\FSM_sequential_hamming.next_state[2]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \FSM_sequential_hamming.next_state[2]_i_3 
       (.I0(\hamming.received_word_reg_n_0_[38] ),
        .I1(next_state[0]),
        .I2(\hamming.received_word_reg_n_0_[12] ),
        .I3(next_state[1]),
        .O(\FSM_sequential_hamming.next_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEAEEEAEEEEEEEAE)) 
    \FSM_sequential_hamming.next_state[2]_i_4 
       (.I0(\FSM_sequential_hamming.next_state[2]_i_5_n_0 ),
        .I1(\FSM_sequential_hamming.next_state[2]_i_6_n_0 ),
        .I2(\FSM_sequential_hamming.next_state[2]_i_7_n_0 ),
        .I3(\FSM_sequential_hamming.next_state[2]_i_8_n_0 ),
        .I4(\FSM_sequential_hamming.next_state[2]_i_9_n_0 ),
        .I5(\FSM_sequential_hamming.next_state[2]_i_10_n_0 ),
        .O(\FSM_sequential_hamming.next_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h82288082AAAAAAAA)) 
    \FSM_sequential_hamming.next_state[2]_i_5 
       (.I0(\hamming.brc_rdy_reg_n_0 ),
        .I1(\hamming.data_out[11]_i_5_n_0 ),
        .I2(\hamming.data_out[11]_i_6_n_0 ),
        .I3(\hamming.data_out[12]_i_7_n_0 ),
        .I4(\hamming.data_out[12]_i_8_n_0 ),
        .I5(\hamming.data_out[12]_i_6_n_0 ),
        .O(\FSM_sequential_hamming.next_state[2]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_hamming.next_state[2]_i_6 
       (.I0(\hamming.dta_rdy_reg_n_0 ),
        .I1(\hamming.brc_rdy_reg_n_0 ),
        .O(\FSM_sequential_hamming.next_state[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDBF7F3F3B6)) 
    \FSM_sequential_hamming.next_state[2]_i_7 
       (.I0(\hamming.data_out[33]_i_4_n_0 ),
        .I1(\hamming.data_out[38]_i_10_n_0 ),
        .I2(\hamming.data_out[36]_i_3_n_0 ),
        .I3(\hamming.data_out[27]_i_3_n_0 ),
        .I4(\hamming.data_out[27]_i_4_n_0 ),
        .I5(\hamming.data_out[38]_i_12_n_0 ),
        .O(\FSM_sequential_hamming.next_state[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_hamming.next_state[2]_i_8 
       (.I0(\hamming.data_out[38]_i_11_n_0 ),
        .I1(\hamming.data_out[33]_i_4_n_0 ),
        .O(\FSM_sequential_hamming.next_state[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \FSM_sequential_hamming.next_state[2]_i_9 
       (.I0(\FSM_sequential_hamming.next_state[2]_i_11_n_0 ),
        .I1(\FSM_sequential_hamming.next_state[2]_i_12_n_0 ),
        .I2(\FSM_sequential_hamming.next_state[2]_i_13_n_0 ),
        .I3(\FSM_sequential_hamming.next_state[2]_i_14_n_0 ),
        .I4(\FSM_sequential_hamming.next_state[2]_i_15_n_0 ),
        .I5(\FSM_sequential_hamming.next_state[2]_i_16_n_0 ),
        .O(\FSM_sequential_hamming.next_state[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "s_fmt:001,s_get_data:010,s_get_broadcast:011,s_stop:100,s_error:101,s_idle:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_hamming.next_state_reg[0] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\FSM_sequential_hamming.next_state[0]_i_1_n_0 ),
        .Q(next_state[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "s_fmt:001,s_get_data:010,s_get_broadcast:011,s_stop:100,s_error:101,s_idle:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_hamming.next_state_reg[1] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\FSM_sequential_hamming.next_state[1]_i_1_n_0 ),
        .Q(next_state[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "s_fmt:001,s_get_data:010,s_get_broadcast:011,s_stop:100,s_error:101,s_idle:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_hamming.next_state_reg[2] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\FSM_sequential_hamming.next_state[2]_i_2_n_0 ),
        .Q(out),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    communication_error_i_2
       (.I0(Q[1]),
        .I1(chB_data),
        .O(communication_error0));
  LUT4 #(
    .INIT(16'h4000)) 
    \hamming.brc_rdy_i_1 
       (.I0(out),
        .I1(\hamming.received_word_reg_n_0_[12] ),
        .I2(next_state[1]),
        .I3(next_state[0]),
        .O(\hamming.brc_rdy_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.brc_rdy_reg 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.brc_rdy_i_1_n_0 ),
        .Q(\hamming.brc_rdy_reg_n_0 ),
        .R(SR));
  LUT3 #(
    .INIT(8'h08)) 
    \hamming.communication_error_i_1 
       (.I0(next_state[0]),
        .I1(out),
        .I2(next_state[1]),
        .O(\hamming.communication_error_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.communication_error_reg 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.communication_error_i_1_n_0 ),
        .Q(channelB_comm_error_i),
        .R(SR));
  LUT5 #(
    .INIT(32'h09CCCCCC)) 
    \hamming.data_out[10]_i_1 
       (.I0(\hamming.data_out[10]_i_2_n_0 ),
        .I1(\hamming.received_word_reg_n_0_[10] ),
        .I2(next_state[1]),
        .I3(out),
        .I4(\div_rst_cnt_reg[4] ),
        .O(\hamming.data_out[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFFFFAB)) 
    \hamming.data_out[10]_i_2 
       (.I0(\hamming.data_out[10]_i_3_n_0 ),
        .I1(\FSM_sequential_hamming.next_state[2]_i_10_n_0 ),
        .I2(\hamming.data_out[38]_i_8_n_0 ),
        .I3(\hamming.data_out[12]_i_4_n_0 ),
        .I4(\hamming.data_out[38]_i_6_n_0 ),
        .I5(\hamming.brc_rdy_reg_n_0 ),
        .O(\hamming.data_out[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBAAAAFFFBFFFB)) 
    \hamming.data_out[10]_i_3 
       (.I0(next_state[0]),
        .I1(\hamming.data_out[12]_i_6_n_0 ),
        .I2(\hamming.data_out[9]_i_4_n_0 ),
        .I3(\hamming.data_out[12]_i_7_n_0 ),
        .I4(\hamming.brc_rdy_reg_n_0 ),
        .I5(serBchanRR),
        .O(\hamming.data_out[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC7C7C7CC44444444)) 
    \hamming.data_out[11]_i_1 
       (.I0(\div_rst_cnt_reg[4]_0 ),
        .I1(\hamming.received_word_reg_n_0_[11] ),
        .I2(\hamming.data_out[11]_i_2_n_0 ),
        .I3(\hamming.brc_rdy_reg_n_0 ),
        .I4(\hamming.data_out[11]_i_3_n_0 ),
        .I5(\hamming.data_out[38]_i_7_n_0 ),
        .O(\hamming.data_out[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFAAAAAAAA)) 
    \hamming.data_out[11]_i_2 
       (.I0(next_state[0]),
        .I1(\hamming.data_out[12]_i_6_n_0 ),
        .I2(\hamming.data_out[11]_i_4_n_0 ),
        .I3(\hamming.data_out[11]_i_5_n_0 ),
        .I4(\hamming.data_out[11]_i_6_n_0 ),
        .I5(\hamming.data_out[12]_i_5_n_0 ),
        .O(\hamming.data_out[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \hamming.data_out[11]_i_3 
       (.I0(\hamming.dta_rdy_reg_n_0 ),
        .I1(\FSM_sequential_hamming.next_state[2]_i_9_n_0 ),
        .I2(\hamming.data_out[24]_i_5_n_0 ),
        .I3(\hamming.data_out[33]_i_4_n_0 ),
        .I4(\hamming.data_out[38]_i_10_n_0 ),
        .I5(\hamming.data_out[36]_i_3_n_0 ),
        .O(\hamming.data_out[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \hamming.data_out[11]_i_4 
       (.I0(\hamming.data_out[12]_i_7_n_0 ),
        .I1(serBchanRR),
        .I2(\hamming.data_out[12]_i_8_n_0 ),
        .O(\hamming.data_out[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \hamming.data_out[11]_i_5 
       (.I0(\hamming.received_word_reg_n_0_[0] ),
        .I1(\hamming.received_word_reg_n_0_[5] ),
        .I2(\hamming.received_word_reg_n_0_[6] ),
        .I3(\hamming.received_word_reg_n_0_[7] ),
        .I4(\hamming.received_word_reg_n_0_[8] ),
        .O(\hamming.data_out[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \hamming.data_out[11]_i_6 
       (.I0(\hamming.received_word_reg_n_0_[1] ),
        .I1(\hamming.received_word_reg_n_0_[10] ),
        .I2(\hamming.received_word_reg_n_0_[11] ),
        .I3(\hamming.received_word_reg_n_0_[9] ),
        .I4(\hamming.received_word_reg_n_0_[5] ),
        .O(\hamming.data_out[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC77C744444444)) 
    \hamming.data_out[12]_i_1 
       (.I0(\div_rst_cnt_reg[4]_0 ),
        .I1(\hamming.received_word_reg_n_0_[12] ),
        .I2(\hamming.data_out[12]_i_2_n_0 ),
        .I3(\hamming.data_out[12]_i_3_n_0 ),
        .I4(next_state[0]),
        .I5(\hamming.data_out[38]_i_7_n_0 ),
        .O(\hamming.data_out[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDDDF)) 
    \hamming.data_out[12]_i_2 
       (.I0(\hamming.data_out[38]_i_10_n_0 ),
        .I1(\hamming.data_out[12]_i_4_n_0 ),
        .I2(\hamming.data_out[38]_i_8_n_0 ),
        .I3(\FSM_sequential_hamming.next_state[2]_i_10_n_0 ),
        .I4(\hamming.data_out[12]_i_5_n_0 ),
        .I5(\hamming.data_out[24]_i_5_n_0 ),
        .O(\hamming.data_out[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \hamming.data_out[12]_i_3 
       (.I0(\hamming.data_out[12]_i_6_n_0 ),
        .I1(serBchanRR),
        .I2(\hamming.brc_rdy_reg_n_0 ),
        .I3(\hamming.data_out[12]_i_7_n_0 ),
        .I4(\hamming.data_out[12]_i_8_n_0 ),
        .I5(\hamming.data_out[12]_i_9_n_0 ),
        .O(\hamming.data_out[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \hamming.data_out[12]_i_4 
       (.I0(\hamming.data_out[36]_i_3_n_0 ),
        .I1(\hamming.data_out[33]_i_4_n_0 ),
        .I2(\hamming.dta_rdy_reg_n_0 ),
        .O(\hamming.data_out[12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \hamming.data_out[12]_i_5 
       (.I0(\hamming.brc_rdy_reg_n_0 ),
        .I1(serBchanRR),
        .O(\hamming.data_out[12]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFF10)) 
    \hamming.data_out[12]_i_6 
       (.I0(\hamming.data_out[11]_i_5_n_0 ),
        .I1(\hamming.data_out[11]_i_6_n_0 ),
        .I2(\hamming.data_out[5]_i_4_n_0 ),
        .I3(\hamming.single_bit_error_i_i_6_n_0 ),
        .O(\hamming.data_out[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \hamming.data_out[12]_i_7 
       (.I0(\hamming.received_word_reg_n_0_[3] ),
        .I1(\hamming.received_word_reg_n_0_[8] ),
        .I2(\hamming.received_word_reg_n_0_[11] ),
        .I3(\hamming.received_word_reg_n_0_[12] ),
        .I4(\hamming.received_word_reg_n_0_[6] ),
        .I5(\hamming.received_word_reg_n_0_[9] ),
        .O(\hamming.data_out[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \hamming.data_out[12]_i_8 
       (.I0(\hamming.received_word_reg_n_0_[9] ),
        .I1(\hamming.received_word_reg_n_0_[6] ),
        .I2(\hamming.received_word_reg_n_0_[12] ),
        .I3(\hamming.received_word_reg_n_0_[10] ),
        .I4(\hamming.received_word_reg_n_0_[7] ),
        .I5(\hamming.received_word_reg_n_0_[2] ),
        .O(\hamming.data_out[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF96696996)) 
    \hamming.data_out[12]_i_9 
       (.I0(\hamming.received_word_reg_n_0_[8] ),
        .I1(\hamming.received_word_reg_n_0_[7] ),
        .I2(\hamming.received_word_reg_n_0_[6] ),
        .I3(\hamming.received_word_reg_n_0_[5] ),
        .I4(\hamming.received_word_reg_n_0_[0] ),
        .I5(\hamming.data_out[11]_i_6_n_0 ),
        .O(\hamming.data_out[12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hCC7CCCCC44444444)) 
    \hamming.data_out[13]_i_1 
       (.I0(\div_rst_cnt_reg[4]_0 ),
        .I1(\hamming.received_word_reg_n_0_[13] ),
        .I2(\hamming.data_out[15]_i_2_n_0 ),
        .I3(\hamming.data_out[38]_i_5_n_0 ),
        .I4(\hamming.data_out[13]_i_2_n_0 ),
        .I5(\hamming.data_out[38]_i_7_n_0 ),
        .O(\hamming.data_out[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \hamming.data_out[13]_i_2 
       (.I0(\hamming.data_out[38]_i_12_n_0 ),
        .I1(\hamming.data_out[38]_i_10_n_0 ),
        .O(\hamming.data_out[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCC7CC44444444)) 
    \hamming.data_out[14]_i_1 
       (.I0(\div_rst_cnt_reg[4]_0 ),
        .I1(\hamming.received_word_reg_n_0_[14] ),
        .I2(\hamming.data_out[18]_i_2_n_0 ),
        .I3(\hamming.data_out[38]_i_4_n_0 ),
        .I4(\hamming.data_out[29]_i_2_n_0 ),
        .I5(\hamming.data_out[38]_i_7_n_0 ),
        .O(\hamming.data_out[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCC7C44444444)) 
    \hamming.data_out[15]_i_1 
       (.I0(\div_rst_cnt_reg[4]_0 ),
        .I1(\hamming.received_word_reg_n_0_[15] ),
        .I2(\hamming.data_out[15]_i_2_n_0 ),
        .I3(next_state[0]),
        .I4(\hamming.data_out[15]_i_3_n_0 ),
        .I5(\hamming.data_out[38]_i_7_n_0 ),
        .O(\hamming.data_out[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \hamming.data_out[15]_i_2 
       (.I0(\FSM_sequential_hamming.next_state[2]_i_10_n_0 ),
        .I1(\hamming.data_out[38]_i_8_n_0 ),
        .I2(\hamming.data_out[16]_i_2_n_0 ),
        .O(\hamming.data_out[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \hamming.data_out[15]_i_3 
       (.I0(\hamming.data_out[36]_i_3_n_0 ),
        .I1(\hamming.data_out[24]_i_3_n_0 ),
        .I2(\hamming.data_out[38]_i_10_n_0 ),
        .I3(\hamming.data_out[38]_i_12_n_0 ),
        .O(\hamming.data_out[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCC7C44444444)) 
    \hamming.data_out[16]_i_1 
       (.I0(\div_rst_cnt_reg[4]_0 ),
        .I1(\hamming.received_word_reg_n_0_[16] ),
        .I2(\hamming.data_out[38]_i_4_n_0 ),
        .I3(\hamming.data_out[16]_i_2_n_0 ),
        .I4(\hamming.data_out[16]_i_3_n_0 ),
        .I5(\hamming.data_out[38]_i_7_n_0 ),
        .O(\hamming.data_out[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \hamming.data_out[16]_i_2 
       (.I0(\hamming.data_out[27]_i_4_n_0 ),
        .I1(\hamming.data_out[27]_i_3_n_0 ),
        .O(\hamming.data_out[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    \hamming.data_out[16]_i_3 
       (.I0(\hamming.data_out[38]_i_10_n_0 ),
        .I1(\hamming.data_out[36]_i_3_n_0 ),
        .I2(\hamming.data_out[24]_i_3_n_0 ),
        .I3(\hamming.data_out[38]_i_12_n_0 ),
        .I4(next_state[0]),
        .O(\hamming.data_out[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00A6AAAAAAAAAAAA)) 
    \hamming.data_out[17]_i_1 
       (.I0(\hamming.received_word_reg_n_0_[17] ),
        .I1(\hamming.data_out[35]_i_2_n_0 ),
        .I2(\hamming.data_out[20]_i_2_n_0 ),
        .I3(next_state[1]),
        .I4(out),
        .I5(\div_rst_cnt_reg[4] ),
        .O(\hamming.data_out[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00D2F0F0F0F0F0F0)) 
    \hamming.data_out[18]_i_1 
       (.I0(\hamming.data_out[33]_i_2_n_0 ),
        .I1(\hamming.data_out[18]_i_2_n_0 ),
        .I2(\hamming.received_word_reg_n_0_[18] ),
        .I3(next_state[1]),
        .I4(out),
        .I5(\div_rst_cnt_reg[4] ),
        .O(\hamming.data_out[18]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \hamming.data_out[18]_i_2 
       (.I0(next_state[0]),
        .I1(\hamming.data_out[36]_i_4_n_0 ),
        .I2(\hamming.data_out[16]_i_2_n_0 ),
        .O(\hamming.data_out[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00AAAAAA9AAAAAAA)) 
    \hamming.data_out[19]_i_1 
       (.I0(\hamming.received_word_reg_n_0_[19] ),
        .I1(\hamming.data_out[20]_i_2_n_0 ),
        .I2(\hamming.data_out[37]_i_3_n_0 ),
        .I3(\div_rst_cnt_reg[4] ),
        .I4(out),
        .I5(next_state[1]),
        .O(\hamming.data_out[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCC7C44444444)) 
    \hamming.data_out[20]_i_1 
       (.I0(\div_rst_cnt_reg[4]_0 ),
        .I1(\hamming.received_word_reg_n_0_[20] ),
        .I2(\hamming.data_out[24]_i_2_n_0 ),
        .I3(\hamming.data_out[24]_i_3_n_0 ),
        .I4(\hamming.data_out[20]_i_2_n_0 ),
        .I5(\hamming.data_out[38]_i_7_n_0 ),
        .O(\hamming.data_out[20]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \hamming.data_out[20]_i_2 
       (.I0(next_state[0]),
        .I1(\hamming.data_out[16]_i_2_n_0 ),
        .I2(\hamming.data_out[38]_i_12_n_0 ),
        .O(\hamming.data_out[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00AAAAAAA6AAAAAA)) 
    \hamming.data_out[21]_i_1 
       (.I0(\hamming.received_word_reg_n_0_[21] ),
        .I1(\hamming.data_out[35]_i_2_n_0 ),
        .I2(\hamming.data_out[24]_i_4_n_0 ),
        .I3(\div_rst_cnt_reg[4] ),
        .I4(out),
        .I5(next_state[1]),
        .O(\hamming.data_out[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCC7C44444444)) 
    \hamming.data_out[22]_i_1 
       (.I0(\div_rst_cnt_reg[4]_0 ),
        .I1(\hamming.received_word_reg_n_0_[22] ),
        .I2(\hamming.data_out[38]_i_4_n_0 ),
        .I3(\hamming.data_out[29]_i_2_n_0 ),
        .I4(\hamming.data_out[26]_i_2_n_0 ),
        .I5(\hamming.data_out[38]_i_7_n_0 ),
        .O(\hamming.data_out[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00AAAAAAA6AAAAAA)) 
    \hamming.data_out[23]_i_1 
       (.I0(\hamming.received_word_reg_n_0_[23] ),
        .I1(\hamming.data_out[37]_i_3_n_0 ),
        .I2(\hamming.data_out[24]_i_4_n_0 ),
        .I3(\div_rst_cnt_reg[4] ),
        .I4(out),
        .I5(next_state[1]),
        .O(\hamming.data_out[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCC7C44444444)) 
    \hamming.data_out[24]_i_1 
       (.I0(\div_rst_cnt_reg[4]_0 ),
        .I1(\hamming.received_word_reg_n_0_[24] ),
        .I2(\hamming.data_out[24]_i_2_n_0 ),
        .I3(\hamming.data_out[24]_i_3_n_0 ),
        .I4(\hamming.data_out[24]_i_4_n_0 ),
        .I5(\hamming.data_out[38]_i_7_n_0 ),
        .O(\hamming.data_out[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h02AA)) 
    \hamming.data_out[24]_i_2 
       (.I0(\hamming.data_out[31]_i_2_n_0 ),
        .I1(\hamming.data_out[33]_i_4_n_0 ),
        .I2(\hamming.data_out[24]_i_5_n_0 ),
        .I3(\FSM_sequential_hamming.next_state[2]_i_9_n_0 ),
        .O(\hamming.data_out[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \hamming.data_out[24]_i_3 
       (.I0(\hamming.data_out[33]_i_4_n_0 ),
        .I1(\hamming.dta_rdy_reg_n_0 ),
        .I2(\hamming.brc_rdy_reg_n_0 ),
        .I3(serBchanRR),
        .O(\hamming.data_out[24]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \hamming.data_out[24]_i_4 
       (.I0(\hamming.data_out[27]_i_3_n_0 ),
        .I1(\hamming.data_out[27]_i_4_n_0 ),
        .I2(next_state[0]),
        .I3(\hamming.data_out[38]_i_12_n_0 ),
        .O(\hamming.data_out[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \hamming.data_out[24]_i_5 
       (.I0(\hamming.data_out[38]_i_12_n_0 ),
        .I1(\hamming.data_out[38]_i_11_n_0 ),
        .O(\hamming.data_out[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h006AAAAAAAAAAAAA)) 
    \hamming.data_out[25]_i_1 
       (.I0(\hamming.received_word_reg_n_0_[25] ),
        .I1(\hamming.data_out[27]_i_2_n_0 ),
        .I2(\hamming.data_out[35]_i_2_n_0 ),
        .I3(next_state[1]),
        .I4(out),
        .I5(\div_rst_cnt_reg[4] ),
        .O(\hamming.data_out[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00AAAAAA9AAAAAAA)) 
    \hamming.data_out[26]_i_1 
       (.I0(\hamming.received_word_reg_n_0_[26] ),
        .I1(\hamming.data_out[26]_i_2_n_0 ),
        .I2(\hamming.data_out[33]_i_2_n_0 ),
        .I3(\div_rst_cnt_reg[4] ),
        .I4(out),
        .I5(next_state[1]),
        .O(\hamming.data_out[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \hamming.data_out[26]_i_2 
       (.I0(\hamming.data_out[27]_i_3_n_0 ),
        .I1(\hamming.data_out[27]_i_4_n_0 ),
        .I2(next_state[0]),
        .I3(\hamming.data_out[36]_i_4_n_0 ),
        .O(\hamming.data_out[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h006AAAAAAAAAAAAA)) 
    \hamming.data_out[27]_i_1 
       (.I0(\hamming.received_word_reg_n_0_[27] ),
        .I1(\hamming.data_out[27]_i_2_n_0 ),
        .I2(\hamming.data_out[37]_i_3_n_0 ),
        .I3(next_state[1]),
        .I4(out),
        .I5(\div_rst_cnt_reg[4] ),
        .O(\hamming.data_out[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \hamming.data_out[27]_i_10 
       (.I0(\hamming.received_word_reg_n_0_[23] ),
        .I1(\hamming.received_word_reg_n_0_[22] ),
        .I2(\hamming.received_word_reg_n_0_[24] ),
        .I3(\hamming.received_word_reg_n_0_[26] ),
        .O(\hamming.data_out[27]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \hamming.data_out[27]_i_2 
       (.I0(\hamming.data_out[27]_i_3_n_0 ),
        .I1(\hamming.data_out[27]_i_4_n_0 ),
        .I2(next_state[0]),
        .I3(\hamming.data_out[38]_i_12_n_0 ),
        .O(\hamming.data_out[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \hamming.data_out[27]_i_3 
       (.I0(\hamming.received_word_reg_n_0_[2] ),
        .I1(\hamming.data_out[27]_i_5_n_0 ),
        .I2(\hamming.data_out[27]_i_6_n_0 ),
        .O(\hamming.data_out[27]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \hamming.data_out[27]_i_4 
       (.I0(\hamming.received_word_reg_n_0_[1] ),
        .I1(\hamming.data_out[27]_i_5_n_0 ),
        .I2(\hamming.data_out[27]_i_7_n_0 ),
        .O(\hamming.data_out[27]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \hamming.data_out[27]_i_5 
       (.I0(\hamming.received_word_reg_n_0_[18] ),
        .I1(\hamming.received_word_reg_n_0_[14] ),
        .I2(\hamming.received_word_reg_n_0_[20] ),
        .I3(\hamming.received_word_reg_n_0_[16] ),
        .I4(\hamming.data_out[27]_i_8_n_0 ),
        .O(\hamming.data_out[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \hamming.data_out[27]_i_6 
       (.I0(\hamming.received_word_reg_n_0_[31] ),
        .I1(\hamming.received_word_reg_n_0_[33] ),
        .I2(\hamming.data_out[27]_i_9_n_0 ),
        .I3(\hamming.received_word_reg_n_0_[32] ),
        .I4(\hamming.received_word_reg_n_0_[34] ),
        .I5(\hamming.received_word_reg_n_0_[28] ),
        .O(\hamming.data_out[27]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \hamming.data_out[27]_i_7 
       (.I0(\hamming.data_out[27]_i_10_n_0 ),
        .I1(\hamming.received_word_reg_n_0_[27] ),
        .I2(\hamming.received_word_reg_n_0_[25] ),
        .I3(\hamming.received_word_reg_n_0_[21] ),
        .O(\hamming.data_out[27]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \hamming.data_out[27]_i_8 
       (.I0(\hamming.received_word_reg_n_0_[13] ),
        .I1(\hamming.received_word_reg_n_0_[17] ),
        .I2(\hamming.received_word_reg_n_0_[19] ),
        .I3(\hamming.received_word_reg_n_0_[15] ),
        .O(\hamming.data_out[27]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hamming.data_out[27]_i_9 
       (.I0(\hamming.received_word_reg_n_0_[29] ),
        .I1(\hamming.received_word_reg_n_0_[30] ),
        .O(\hamming.data_out[27]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00AAAAAAA9AAAAAA)) 
    \hamming.data_out[28]_i_1 
       (.I0(\hamming.received_word_reg_n_0_[28] ),
        .I1(\hamming.data_out[31]_i_4_n_0 ),
        .I2(\hamming.data_out[28]_i_2_n_0 ),
        .I3(\div_rst_cnt_reg[4] ),
        .I4(out),
        .I5(next_state[1]),
        .O(\hamming.data_out[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \hamming.data_out[28]_i_2 
       (.I0(\hamming.data_out[36]_i_3_n_0 ),
        .I1(\FSM_sequential_hamming.next_state[2]_i_9_n_0 ),
        .I2(\hamming.data_out[38]_i_10_n_0 ),
        .O(\hamming.data_out[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCC7CC44444444)) 
    \hamming.data_out[29]_i_1 
       (.I0(\div_rst_cnt_reg[4]_0 ),
        .I1(\hamming.received_word_reg_n_0_[29] ),
        .I2(\hamming.data_out[33]_i_3_n_0 ),
        .I3(\hamming.data_out[38]_i_4_n_0 ),
        .I4(\hamming.data_out[29]_i_2_n_0 ),
        .I5(\hamming.data_out[38]_i_7_n_0 ),
        .O(\hamming.data_out[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \hamming.data_out[29]_i_2 
       (.I0(\hamming.data_out[36]_i_3_n_0 ),
        .I1(\hamming.data_out[38]_i_10_n_0 ),
        .I2(\hamming.data_out[38]_i_12_n_0 ),
        .O(\hamming.data_out[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00AAAAAAA9AAAAAA)) 
    \hamming.data_out[30]_i_1 
       (.I0(\hamming.received_word_reg_n_0_[30] ),
        .I1(\hamming.data_out[30]_i_2_n_0 ),
        .I2(\hamming.data_out[31]_i_3_n_0 ),
        .I3(\div_rst_cnt_reg[4] ),
        .I4(out),
        .I5(next_state[1]),
        .O(\hamming.data_out[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \hamming.data_out[30]_i_2 
       (.I0(\hamming.data_out[38]_i_10_n_0 ),
        .I1(\hamming.data_out[38]_i_12_n_0 ),
        .I2(\hamming.data_out[38]_i_9_n_0 ),
        .I3(\hamming.data_out[34]_i_3_n_0 ),
        .I4(next_state[0]),
        .O(\hamming.data_out[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCC7C44444444)) 
    \hamming.data_out[31]_i_1 
       (.I0(\div_rst_cnt_reg[4]_0 ),
        .I1(\hamming.received_word_reg_n_0_[31] ),
        .I2(\hamming.data_out[31]_i_2_n_0 ),
        .I3(\hamming.data_out[31]_i_3_n_0 ),
        .I4(\hamming.data_out[31]_i_4_n_0 ),
        .I5(\hamming.data_out[38]_i_7_n_0 ),
        .O(\hamming.data_out[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \hamming.data_out[31]_i_2 
       (.I0(\hamming.data_out[38]_i_10_n_0 ),
        .I1(\hamming.data_out[36]_i_3_n_0 ),
        .O(\hamming.data_out[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \hamming.data_out[31]_i_3 
       (.I0(\FSM_sequential_hamming.next_state[2]_i_9_n_0 ),
        .I1(\FSM_sequential_hamming.next_state[2]_i_10_n_0 ),
        .O(\hamming.data_out[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \hamming.data_out[31]_i_4 
       (.I0(next_state[0]),
        .I1(\hamming.data_out[24]_i_3_n_0 ),
        .I2(\hamming.data_out[38]_i_12_n_0 ),
        .I3(\hamming.data_out[34]_i_3_n_0 ),
        .O(\hamming.data_out[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0A09AAAAAAAAAAAA)) 
    \hamming.data_out[32]_i_1 
       (.I0(\hamming.received_word_reg_n_0_[32] ),
        .I1(\hamming.data_out[32]_i_2_n_0 ),
        .I2(next_state[1]),
        .I3(next_state[0]),
        .I4(out),
        .I5(\div_rst_cnt_reg[4] ),
        .O(\hamming.data_out[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \hamming.data_out[32]_i_2 
       (.I0(\FSM_sequential_hamming.next_state[2]_i_10_n_0 ),
        .I1(\FSM_sequential_hamming.next_state[2]_i_9_n_0 ),
        .I2(\hamming.data_out[38]_i_12_n_0 ),
        .I3(\hamming.data_out[34]_i_3_n_0 ),
        .I4(\hamming.data_out[38]_i_10_n_0 ),
        .I5(\hamming.data_out[38]_i_9_n_0 ),
        .O(\hamming.data_out[32]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00A6AAAAAAAAAAAA)) 
    \hamming.data_out[33]_i_1 
       (.I0(\hamming.received_word_reg_n_0_[33] ),
        .I1(\hamming.data_out[33]_i_2_n_0 ),
        .I2(\hamming.data_out[33]_i_3_n_0 ),
        .I3(next_state[1]),
        .I4(out),
        .I5(\div_rst_cnt_reg[4] ),
        .O(\hamming.data_out[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055570505)) 
    \hamming.data_out[33]_i_2 
       (.I0(\FSM_sequential_hamming.next_state[2]_i_9_n_0 ),
        .I1(\hamming.data_out[38]_i_11_n_0 ),
        .I2(\hamming.data_out[38]_i_12_n_0 ),
        .I3(\hamming.data_out[33]_i_4_n_0 ),
        .I4(\hamming.data_out[38]_i_10_n_0 ),
        .I5(\hamming.data_out[36]_i_3_n_0 ),
        .O(\hamming.data_out[33]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \hamming.data_out[33]_i_3 
       (.I0(next_state[0]),
        .I1(\hamming.data_out[36]_i_4_n_0 ),
        .I2(\hamming.data_out[34]_i_3_n_0 ),
        .O(\hamming.data_out[33]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \hamming.data_out[33]_i_4 
       (.I0(\hamming.received_word_reg_n_0_[0] ),
        .I1(\hamming.received_word_reg_n_0_[10] ),
        .I2(\hamming.data_out[33]_i_5_n_0 ),
        .I3(\hamming.received_word_reg_n_0_[9] ),
        .I4(\hamming.received_word_reg_n_0_[11] ),
        .I5(\hamming.received_word_reg_n_0_[12] ),
        .O(\hamming.data_out[33]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hamming.data_out[33]_i_5 
       (.I0(\hamming.received_word_reg_n_0_[7] ),
        .I1(\hamming.received_word_reg_n_0_[8] ),
        .O(\hamming.data_out[33]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCCC7CCCC44444444)) 
    \hamming.data_out[34]_i_1 
       (.I0(\div_rst_cnt_reg[4]_0 ),
        .I1(\hamming.received_word_reg_n_0_[34] ),
        .I2(next_state[0]),
        .I3(\hamming.data_out[34]_i_2_n_0 ),
        .I4(\hamming.data_out[37]_i_3_n_0 ),
        .I5(\hamming.data_out[38]_i_7_n_0 ),
        .O(\hamming.data_out[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \hamming.data_out[34]_i_2 
       (.I0(\hamming.data_out[38]_i_12_n_0 ),
        .I1(\hamming.data_out[34]_i_3_n_0 ),
        .O(\hamming.data_out[34]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \hamming.data_out[34]_i_3 
       (.I0(\hamming.data_out[27]_i_4_n_0 ),
        .I1(\hamming.data_out[27]_i_3_n_0 ),
        .O(\hamming.data_out[34]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCC7C44444444)) 
    \hamming.data_out[35]_i_1 
       (.I0(\div_rst_cnt_reg[4]_0 ),
        .I1(\hamming.received_word_reg_n_0_[35] ),
        .I2(\hamming.data_out[35]_i_2_n_0 ),
        .I3(next_state[0]),
        .I4(\hamming.data_out[37]_i_2_n_0 ),
        .I5(\hamming.data_out[38]_i_7_n_0 ),
        .O(\hamming.data_out[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \hamming.data_out[35]_i_2 
       (.I0(\hamming.data_out[36]_i_3_n_0 ),
        .I1(\hamming.data_out[24]_i_3_n_0 ),
        .I2(\hamming.data_out[38]_i_10_n_0 ),
        .I3(\FSM_sequential_hamming.next_state[2]_i_9_n_0 ),
        .O(\hamming.data_out[35]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A09AAAAAAAAAAAA)) 
    \hamming.data_out[36]_i_1 
       (.I0(\hamming.received_word_reg_n_0_[36] ),
        .I1(\hamming.data_out[36]_i_2_n_0 ),
        .I2(next_state[1]),
        .I3(next_state[0]),
        .I4(out),
        .I5(\div_rst_cnt_reg[4] ),
        .O(\hamming.data_out[36]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF30FFFFFF75)) 
    \hamming.data_out[36]_i_2 
       (.I0(\hamming.data_out[36]_i_3_n_0 ),
        .I1(\FSM_sequential_hamming.next_state[2]_i_10_n_0 ),
        .I2(\FSM_sequential_hamming.next_state[2]_i_9_n_0 ),
        .I3(\hamming.data_out[38]_i_11_n_0 ),
        .I4(\hamming.data_out[36]_i_4_n_0 ),
        .I5(\hamming.data_out[13]_i_2_n_0 ),
        .O(\hamming.data_out[36]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hamming.data_out[36]_i_3 
       (.I0(\hamming.received_word_reg_n_0_[5] ),
        .I1(\hamming.data_out[36]_i_5_n_0 ),
        .O(\hamming.data_out[36]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFFFFF)) 
    \hamming.data_out[36]_i_4 
       (.I0(\hamming.data_out[36]_i_3_n_0 ),
        .I1(\hamming.data_out[38]_i_10_n_0 ),
        .I2(serBchanRR),
        .I3(\hamming.brc_rdy_reg_n_0 ),
        .I4(\hamming.dta_rdy_reg_n_0 ),
        .I5(\hamming.data_out[33]_i_4_n_0 ),
        .O(\hamming.data_out[36]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \hamming.data_out[36]_i_5 
       (.I0(\hamming.received_word_reg_n_0_[19] ),
        .I1(\hamming.received_word_reg_n_0_[27] ),
        .I2(\hamming.received_word_reg_n_0_[23] ),
        .I3(\hamming.data_out[36]_i_6_n_0 ),
        .I4(\hamming.data_out[36]_i_7_n_0 ),
        .I5(\FSM_sequential_hamming.next_state[2]_i_19_n_0 ),
        .O(\hamming.data_out[36]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \hamming.data_out[36]_i_6 
       (.I0(\hamming.received_word_reg_n_0_[35] ),
        .I1(\hamming.received_word_reg_n_0_[21] ),
        .I2(\hamming.received_word_reg_n_0_[13] ),
        .O(\hamming.data_out[36]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \hamming.data_out[36]_i_7 
       (.I0(\hamming.received_word_reg_n_0_[8] ),
        .I1(\hamming.received_word_reg_n_0_[12] ),
        .I2(\hamming.received_word_reg_n_0_[30] ),
        .I3(\hamming.received_word_reg_n_0_[37] ),
        .I4(\hamming.received_word_reg_n_0_[15] ),
        .I5(\hamming.received_word_reg_n_0_[34] ),
        .O(\hamming.data_out[36]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCCC7CCCC44444444)) 
    \hamming.data_out[37]_i_1 
       (.I0(\div_rst_cnt_reg[4]_0 ),
        .I1(\hamming.received_word_reg_n_0_[37] ),
        .I2(next_state[0]),
        .I3(\hamming.data_out[37]_i_2_n_0 ),
        .I4(\hamming.data_out[37]_i_3_n_0 ),
        .I5(\hamming.data_out[38]_i_7_n_0 ),
        .O(\hamming.data_out[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \hamming.data_out[37]_i_2 
       (.I0(\hamming.data_out[38]_i_11_n_0 ),
        .I1(\hamming.data_out[38]_i_12_n_0 ),
        .O(\hamming.data_out[37]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h00A8)) 
    \hamming.data_out[37]_i_3 
       (.I0(\hamming.data_out[38]_i_10_n_0 ),
        .I1(\FSM_sequential_hamming.next_state[2]_i_10_n_0 ),
        .I2(\hamming.data_out[38]_i_8_n_0 ),
        .I3(\hamming.data_out[38]_i_9_n_0 ),
        .O(\hamming.data_out[37]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \hamming.data_out[38]_i_10 
       (.I0(\hamming.received_word_reg_n_0_[4] ),
        .I1(\FSM_sequential_hamming.next_state[2]_i_11_n_0 ),
        .O(\hamming.data_out[38]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \hamming.data_out[38]_i_11 
       (.I0(\hamming.data_out[27]_i_4_n_0 ),
        .I1(\hamming.data_out[27]_i_3_n_0 ),
        .O(\hamming.data_out[38]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hamming.data_out[38]_i_12 
       (.I0(\hamming.received_word_reg_n_0_[3] ),
        .I1(\FSM_sequential_hamming.next_state[2]_i_13_n_0 ),
        .O(\hamming.data_out[38]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7000C55550000)) 
    \hamming.data_out[38]_i_2 
       (.I0(\div_rst_cnt_reg[4]_0 ),
        .I1(\hamming.data_out[38]_i_4_n_0 ),
        .I2(\hamming.data_out[38]_i_5_n_0 ),
        .I3(\hamming.data_out[38]_i_6_n_0 ),
        .I4(\hamming.received_word_reg_n_0_[38] ),
        .I5(\hamming.data_out[38]_i_7_n_0 ),
        .O(\hamming.data_out[38]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \hamming.data_out[38]_i_4 
       (.I0(\hamming.data_out[38]_i_8_n_0 ),
        .I1(\FSM_sequential_hamming.next_state[2]_i_10_n_0 ),
        .O(\hamming.data_out[38]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \hamming.data_out[38]_i_5 
       (.I0(next_state[0]),
        .I1(\hamming.data_out[38]_i_9_n_0 ),
        .O(\hamming.data_out[38]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \hamming.data_out[38]_i_6 
       (.I0(\hamming.data_out[38]_i_10_n_0 ),
        .I1(\hamming.data_out[38]_i_11_n_0 ),
        .I2(\hamming.data_out[38]_i_12_n_0 ),
        .O(\hamming.data_out[38]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \hamming.data_out[38]_i_7 
       (.I0(\div_rst_cnt_reg[4] ),
        .I1(out),
        .I2(next_state[1]),
        .O(\hamming.data_out[38]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \hamming.data_out[38]_i_8 
       (.I0(\FSM_sequential_hamming.next_state[2]_i_11_n_0 ),
        .I1(\FSM_sequential_hamming.next_state[2]_i_12_n_0 ),
        .I2(\FSM_sequential_hamming.next_state[2]_i_13_n_0 ),
        .I3(\FSM_sequential_hamming.next_state[2]_i_14_n_0 ),
        .I4(\FSM_sequential_hamming.next_state[2]_i_15_n_0 ),
        .I5(\FSM_sequential_hamming.next_state[2]_i_16_n_0 ),
        .O(\hamming.data_out[38]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \hamming.data_out[38]_i_9 
       (.I0(\hamming.data_out[36]_i_3_n_0 ),
        .I1(serBchanRR),
        .I2(\hamming.brc_rdy_reg_n_0 ),
        .I3(\hamming.dta_rdy_reg_n_0 ),
        .I4(\hamming.data_out[33]_i_4_n_0 ),
        .O(\hamming.data_out[38]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h06AAAAAA)) 
    \hamming.data_out[5]_i_1 
       (.I0(\hamming.received_word_reg_n_0_[5] ),
        .I1(\hamming.data_out[5]_i_2_n_0 ),
        .I2(next_state[1]),
        .I3(out),
        .I4(\div_rst_cnt_reg[4] ),
        .O(\hamming.data_out[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \hamming.data_out[5]_i_2 
       (.I0(\hamming.data_out[12]_i_6_n_0 ),
        .I1(\hamming.data_out[11]_i_6_n_0 ),
        .I2(next_state[0]),
        .I3(\hamming.data_out[5]_i_3_n_0 ),
        .I4(\hamming.data_out[11]_i_5_n_0 ),
        .I5(\hamming.data_out[5]_i_4_n_0 ),
        .O(\hamming.data_out[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \hamming.data_out[5]_i_3 
       (.I0(\hamming.brc_rdy_reg_n_0 ),
        .I1(serBchanRR),
        .O(\hamming.data_out[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \hamming.data_out[5]_i_4 
       (.I0(\hamming.data_out[12]_i_8_n_0 ),
        .I1(\hamming.data_out[12]_i_7_n_0 ),
        .O(\hamming.data_out[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h06AAAAAA)) 
    \hamming.data_out[6]_i_1 
       (.I0(\hamming.received_word_reg_n_0_[6] ),
        .I1(\hamming.data_out[6]_i_2_n_0 ),
        .I2(next_state[1]),
        .I3(out),
        .I4(\div_rst_cnt_reg[4] ),
        .O(\hamming.data_out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \hamming.data_out[6]_i_2 
       (.I0(\hamming.data_out[8]_i_5_n_0 ),
        .I1(serBchanRR),
        .I2(\hamming.brc_rdy_reg_n_0 ),
        .I3(\hamming.data_out[12]_i_7_n_0 ),
        .I4(\hamming.data_out[12]_i_8_n_0 ),
        .I5(next_state[0]),
        .O(\hamming.data_out[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC777C44444444)) 
    \hamming.data_out[7]_i_1 
       (.I0(\div_rst_cnt_reg[4]_0 ),
        .I1(\hamming.received_word_reg_n_0_[7] ),
        .I2(\hamming.brc_rdy_reg_n_0 ),
        .I3(\hamming.data_out[7]_i_2_n_0 ),
        .I4(\hamming.data_out[7]_i_3_n_0 ),
        .I5(\hamming.data_out[38]_i_7_n_0 ),
        .O(\hamming.data_out[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \hamming.data_out[7]_i_2 
       (.I0(\hamming.data_out[38]_i_8_n_0 ),
        .I1(\hamming.data_out[37]_i_2_n_0 ),
        .I2(\hamming.data_out[33]_i_4_n_0 ),
        .I3(\hamming.dta_rdy_reg_n_0 ),
        .I4(\hamming.data_out[38]_i_10_n_0 ),
        .I5(\hamming.data_out[36]_i_3_n_0 ),
        .O(\hamming.data_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFFAAFFAAFF)) 
    \hamming.data_out[7]_i_3 
       (.I0(next_state[0]),
        .I1(\hamming.data_out[8]_i_5_n_0 ),
        .I2(\hamming.data_out[12]_i_8_n_0 ),
        .I3(serBchanRR),
        .I4(\hamming.data_out[12]_i_7_n_0 ),
        .I5(\hamming.brc_rdy_reg_n_0 ),
        .O(\hamming.data_out[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCCC777C44444444)) 
    \hamming.data_out[8]_i_1 
       (.I0(\div_rst_cnt_reg[4]_0 ),
        .I1(\hamming.received_word_reg_n_0_[8] ),
        .I2(\hamming.brc_rdy_reg_n_0 ),
        .I3(\hamming.data_out[8]_i_2_n_0 ),
        .I4(\hamming.data_out[8]_i_3_n_0 ),
        .I5(\hamming.data_out[38]_i_7_n_0 ),
        .O(\hamming.data_out[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008080800)) 
    \hamming.data_out[8]_i_2 
       (.I0(\hamming.data_out[38]_i_10_n_0 ),
        .I1(\hamming.data_out[36]_i_3_n_0 ),
        .I2(\hamming.data_out[8]_i_4_n_0 ),
        .I3(\hamming.data_out[38]_i_8_n_0 ),
        .I4(\FSM_sequential_hamming.next_state[2]_i_10_n_0 ),
        .I5(\hamming.data_out[37]_i_2_n_0 ),
        .O(\hamming.data_out[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFAAFFAAFF)) 
    \hamming.data_out[8]_i_3 
       (.I0(next_state[0]),
        .I1(\hamming.data_out[8]_i_5_n_0 ),
        .I2(\hamming.data_out[12]_i_8_n_0 ),
        .I3(serBchanRR),
        .I4(\hamming.data_out[12]_i_7_n_0 ),
        .I5(\hamming.brc_rdy_reg_n_0 ),
        .O(\hamming.data_out[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \hamming.data_out[8]_i_4 
       (.I0(\hamming.dta_rdy_reg_n_0 ),
        .I1(\hamming.data_out[33]_i_4_n_0 ),
        .O(\hamming.data_out[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \hamming.data_out[8]_i_5 
       (.I0(\hamming.single_bit_error_i_i_6_n_0 ),
        .I1(\hamming.data_out[11]_i_5_n_0 ),
        .I2(\hamming.data_out[11]_i_6_n_0 ),
        .O(\hamming.data_out[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC7C7C7CC44444444)) 
    \hamming.data_out[9]_i_1 
       (.I0(\div_rst_cnt_reg[4]_0 ),
        .I1(\hamming.received_word_reg_n_0_[9] ),
        .I2(\hamming.data_out[9]_i_2_n_0 ),
        .I3(\hamming.brc_rdy_reg_n_0 ),
        .I4(\hamming.data_out[9]_i_3_n_0 ),
        .I5(\hamming.data_out[38]_i_7_n_0 ),
        .O(\hamming.data_out[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFAAAAFFBFFFBF)) 
    \hamming.data_out[9]_i_2 
       (.I0(next_state[0]),
        .I1(\hamming.data_out[12]_i_6_n_0 ),
        .I2(\hamming.data_out[12]_i_7_n_0 ),
        .I3(\hamming.data_out[9]_i_4_n_0 ),
        .I4(\hamming.brc_rdy_reg_n_0 ),
        .I5(serBchanRR),
        .O(\hamming.data_out[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \hamming.data_out[9]_i_3 
       (.I0(\FSM_sequential_hamming.next_state[2]_i_9_n_0 ),
        .I1(\hamming.data_out[31]_i_2_n_0 ),
        .I2(\hamming.dta_rdy_reg_n_0 ),
        .I3(\hamming.data_out[33]_i_4_n_0 ),
        .I4(\hamming.data_out[38]_i_11_n_0 ),
        .I5(\hamming.data_out[38]_i_12_n_0 ),
        .O(\hamming.data_out[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \hamming.data_out[9]_i_4 
       (.I0(\hamming.data_out[11]_i_6_n_0 ),
        .I1(\hamming.data_out[11]_i_5_n_0 ),
        .I2(serBchanRR),
        .I3(\hamming.data_out[12]_i_8_n_0 ),
        .O(\hamming.data_out[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[10]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[11]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[12]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[13]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[14]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[15]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[16] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[16]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[17] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[17]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[18] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[18]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[19] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[19]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[20] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[20]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[21] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[21]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[22] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[22]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[23] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[23]_i_1_n_0 ),
        .Q(chB_data),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[24] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[24]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[25] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[25]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[26] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[26]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[27] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[27]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[28] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[28]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[29] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[29]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[30] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[30]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[31] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[31]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[32] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[32]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[33] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[33]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[34] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[34]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[35] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[35]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[36] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[36]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[37] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[37]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[38] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[38]_i_2_n_0 ),
        .Q(\add_a14_reg[13] [32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[5]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[6]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[7]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[8]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_out_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(\hamming.data_out[9]_i_1_n_0 ),
        .Q(\add_a14_reg[13] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \hamming.data_ready[0]_i_1 
       (.I0(out),
        .I1(next_state[0]),
        .I2(next_state[1]),
        .I3(serBchanRR),
        .I4(\hamming.brc_rdy_reg_n_0 ),
        .O(\hamming.data_ready[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \hamming.data_ready[1]_i_1 
       (.I0(next_state[1]),
        .I1(out),
        .I2(serBchanRR),
        .I3(\hamming.dta_rdy_reg_n_0 ),
        .I4(next_state[0]),
        .O(\hamming.data_ready[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_ready_reg[0] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.data_ready[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.data_ready_reg[1] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.data_ready[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  LUT6 #(
    .INIT(64'h2222E22200000000)) 
    \hamming.double_bit_error_i_i_1 
       (.I0(double_bit_error_i),
        .I1(single_bit_error_i11_out),
        .I2(\FSM_sequential_hamming.next_state[2]_i_4_n_0 ),
        .I3(serBchanRR),
        .I4(\hamming.single_bit_error_i_i_4_n_0 ),
        .I5(\div_rst_cnt_reg[4] ),
        .O(\hamming.double_bit_error_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.double_bit_error_i_reg 
       (.C(CLK),
        .CE(1'b1),
        .D(\hamming.double_bit_error_i_i_1_n_0 ),
        .Q(double_bit_error_i),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0040)) 
    \hamming.dta_rdy_i_1 
       (.I0(next_state[0]),
        .I1(\hamming.received_word_reg_n_0_[38] ),
        .I2(next_state[1]),
        .I3(out),
        .O(dta_rdy));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.dta_rdy_reg 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(dta_rdy),
        .Q(\hamming.dta_rdy_reg_n_0 ),
        .R(SR));
  LUT3 #(
    .INIT(8'h4F)) 
    \hamming.received_word[0]_i_1 
       (.I0(out),
        .I1(serBchanRR),
        .I2(next_state[1]),
        .O(received_word[0]));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[10]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[9] ),
        .O(\hamming.received_word[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[11]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[10] ),
        .O(\hamming.received_word[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[12]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[11] ),
        .O(\hamming.received_word[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \hamming.received_word[13]_i_1 
       (.I0(next_state[1]),
        .I1(\hamming.received_word_reg_n_0_[12] ),
        .I2(out),
        .O(received_word[13]));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[14]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[13] ),
        .O(\hamming.received_word[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[15]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[14] ),
        .O(\hamming.received_word[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[16]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[15] ),
        .O(\hamming.received_word[16]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[17]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[16] ),
        .O(\hamming.received_word[17]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[18]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[17] ),
        .O(\hamming.received_word[18]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[19]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[18] ),
        .O(\hamming.received_word[19]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[1]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[0] ),
        .O(\hamming.received_word[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[20]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[19] ),
        .O(\hamming.received_word[20]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[21]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[20] ),
        .O(\hamming.received_word[21]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[22]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[21] ),
        .O(\hamming.received_word[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[23]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[22] ),
        .O(\hamming.received_word[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[24]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[23] ),
        .O(\hamming.received_word[24]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[25]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[24] ),
        .O(\hamming.received_word[25]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[26]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[25] ),
        .O(\hamming.received_word[26]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[27]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[26] ),
        .O(\hamming.received_word[27]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[28]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[27] ),
        .O(\hamming.received_word[28]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[29]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[28] ),
        .O(\hamming.received_word[29]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[2]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[1] ),
        .O(\hamming.received_word[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[30]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[29] ),
        .O(\hamming.received_word[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[31]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[30] ),
        .O(\hamming.received_word[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[32]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[31] ),
        .O(\hamming.received_word[32]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[33]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[32] ),
        .O(\hamming.received_word[33]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[34]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[33] ),
        .O(\hamming.received_word[34]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[35]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[34] ),
        .O(\hamming.received_word[35]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[36]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[35] ),
        .O(\hamming.received_word[36]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[37]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[36] ),
        .O(\hamming.received_word[37]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[38]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[37] ),
        .O(\hamming.received_word[38]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[3]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[2] ),
        .O(\hamming.received_word[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[4]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[3] ),
        .O(\hamming.received_word[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[5]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[4] ),
        .O(\hamming.received_word[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[6]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[5] ),
        .O(\hamming.received_word[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[7]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[6] ),
        .O(\hamming.received_word[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[8]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[7] ),
        .O(\hamming.received_word[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \hamming.received_word[9]_i_1 
       (.I0(out),
        .I1(next_state[1]),
        .I2(\hamming.received_word_reg_n_0_[8] ),
        .O(\hamming.received_word[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \hamming.received_word_reg[0] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(received_word[0]),
        .Q(\hamming.received_word_reg_n_0_[0] ),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[10] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[10]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[11] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[11]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[12] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[12]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[13] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(received_word[13]),
        .Q(\hamming.received_word_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[14] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[14]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[15] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[15]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[16] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[16]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[17] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[17]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[18] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[18]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[19] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[19]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[1] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[1]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[20] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[20]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[21] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[21]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[22] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[22]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[23] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[23]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[24] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[24]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[24] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[25] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[25]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[26] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[26]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[27] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[27]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[28] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[28]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[28] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[29] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[29]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[2] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[2]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[30] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[30]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[31] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[31]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[31] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[32] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[32]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[32] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[33] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[33]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[33] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[34] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[34]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[34] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[35] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[35]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[35] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[36] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[36]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[36] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[37] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[37]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[37] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[38] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[38]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[38] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[3] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[3]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[4] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[4]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[5] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[5]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[6] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[6]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[7] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[7]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[8] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[8]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.received_word_reg[9] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.received_word[9]_i_1_n_0 ),
        .Q(\hamming.received_word_reg_n_0_[9] ),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \hamming.serBchanRR_reg 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(\hamming.serBchanR_reg_n_0 ),
        .Q(serBchanRR),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \hamming.serBchanR_reg 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(channelB),
        .Q(\hamming.serBchanR_reg_n_0 ),
        .S(SR));
  LUT6 #(
    .INIT(64'h22222E2200000000)) 
    \hamming.single_bit_error_i_i_1 
       (.I0(single_bit_error_i),
        .I1(single_bit_error_i11_out),
        .I2(\hamming.single_bit_error_i_i_3_n_0 ),
        .I3(serBchanRR),
        .I4(\hamming.single_bit_error_i_i_4_n_0 ),
        .I5(\div_rst_cnt_reg[4] ),
        .O(\hamming.single_bit_error_i_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h02AA)) 
    \hamming.single_bit_error_i_i_2 
       (.I0(ttc_strobe),
        .I1(next_state[0]),
        .I2(next_state[1]),
        .I3(out),
        .O(single_bit_error_i11_out));
  LUT6 #(
    .INIT(64'hFF00FBFBFFFFFBFB)) 
    \hamming.single_bit_error_i_i_3 
       (.I0(\FSM_sequential_hamming.next_state[2]_i_10_n_0 ),
        .I1(\hamming.dta_rdy_reg_n_0 ),
        .I2(\FSM_sequential_hamming.next_state[2]_i_9_n_0 ),
        .I3(\hamming.single_bit_error_i_i_5_n_0 ),
        .I4(\hamming.brc_rdy_reg_n_0 ),
        .I5(\hamming.single_bit_error_i_i_6_n_0 ),
        .O(\hamming.single_bit_error_i_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \hamming.single_bit_error_i_i_4 
       (.I0(next_state[1]),
        .I1(out),
        .O(\hamming.single_bit_error_i_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \hamming.single_bit_error_i_i_5 
       (.I0(\hamming.data_out[5]_i_4_n_0 ),
        .I1(\hamming.data_out[11]_i_6_n_0 ),
        .I2(\hamming.data_out[11]_i_5_n_0 ),
        .O(\hamming.single_bit_error_i_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \hamming.single_bit_error_i_i_6 
       (.I0(\hamming.received_word_reg_n_0_[12] ),
        .I1(\hamming.received_word_reg_n_0_[9] ),
        .I2(\hamming.received_word_reg_n_0_[4] ),
        .I3(\hamming.data_out[33]_i_5_n_0 ),
        .I4(\hamming.single_bit_error_i_i_7_n_0 ),
        .O(\hamming.single_bit_error_i_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \hamming.single_bit_error_i_i_7 
       (.I0(\hamming.received_word_reg_n_0_[5] ),
        .I1(\hamming.received_word_reg_n_0_[9] ),
        .I2(\hamming.received_word_reg_n_0_[11] ),
        .I3(\hamming.received_word_reg_n_0_[10] ),
        .O(\hamming.single_bit_error_i_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hamming.single_bit_error_i_reg 
       (.C(CLK),
        .CE(1'b1),
        .D(\hamming.single_bit_error_i_i_1_n_0 ),
        .Q(single_bit_error_i),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "5fca1083" *) 
(* NotValidForBitStream *)
module top
   (data_out_p,
    data_out_n,
    div_nrst,
    single_bit_error,
    double_bit_error,
    communication_error,
    l1a_out,
    brc_strobe_out,
    addr_strobe_out,
    brc_t2_out,
    brc_d4_out,
    brc_e_out,
    brc_b_out,
    addr_a14_out,
    addr_e_out,
    addr_s8_out,
    addr_d8_out,
    cdrclk_out,
    ready,
    ttc_clk_gated_out,
    clk_in_200_p,
    clk_in_200_n,
    reset_in);
  output data_out_p;
  output data_out_n;
  output div_nrst;
  output single_bit_error;
  output double_bit_error;
  output communication_error;
  output l1a_out;
  output brc_strobe_out;
  output addr_strobe_out;
  output [1:0]brc_t2_out;
  output [3:0]brc_d4_out;
  output brc_e_out;
  output brc_b_out;
  output [13:0]addr_a14_out;
  output addr_e_out;
  output [7:0]addr_s8_out;
  output [7:0]addr_d8_out;
  output cdrclk_out;
  output ready;
  output ttc_clk_gated_out;
  input clk_in_200_p;
  input clk_in_200_n;
  input reset_in;

  wire [13:0]addr_a14_out;
  wire [13:0]addr_a14_out_OBUF;
  wire [7:0]addr_d8_out;
  wire [7:0]addr_d8_out_OBUF;
  wire addr_e_out;
  wire addr_e_out_OBUF;
  wire [7:0]addr_s8_out;
  wire [7:0]addr_s8_out_OBUF;
  wire addr_strobe_out;
  wire addr_strobe_out_OBUF;
  wire brc_b_out;
  wire brc_b_out_OBUF;
  wire [3:0]brc_d4_out;
  wire [3:0]brc_d4_out_OBUF;
  wire brc_e_out;
  wire brc_e_out_OBUF;
  wire brc_strobe_out;
  wire brc_strobe_out_OBUF;
  wire [1:0]brc_t2_out;
  wire [1:0]brc_t2_out_OBUF;
  wire cdrclk_out;
  wire cdrclk_out_OBUF;
  wire clk_160_p_s;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire clk_in_200_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire clk_in_200_p;
  wire communication_error;
  wire communication_error_OBUF;
  wire data_out_n;
  wire data_out_n_OBUF;
  wire data_out_p;
  wire data_out_p_OBUF;
  wire div_nrst;
  wire div_nrst_OBUF;
  wire double_bit_error;
  wire double_bit_error_OBUF;
  wire l1a_out;
  wire l1a_out_OBUF;
  wire ready;
  wire ready_OBUF;
  wire reset_in;
  wire reset_in_IBUF;
  wire single_bit_error;
  wire single_bit_error_OBUF;
  wire ttc_clk_gated_out;
  wire ttc_clk_gated_out_OBUF;

initial begin
 $sdf_annotate("tb_top_time_impl.sdf",,,,"tool_control");
end
  OBUF \addr_a14_out_OBUF[0]_inst 
       (.I(addr_a14_out_OBUF[0]),
        .O(addr_a14_out[0]));
  OBUF \addr_a14_out_OBUF[10]_inst 
       (.I(addr_a14_out_OBUF[10]),
        .O(addr_a14_out[10]));
  OBUF \addr_a14_out_OBUF[11]_inst 
       (.I(addr_a14_out_OBUF[11]),
        .O(addr_a14_out[11]));
  OBUF \addr_a14_out_OBUF[12]_inst 
       (.I(addr_a14_out_OBUF[12]),
        .O(addr_a14_out[12]));
  OBUF \addr_a14_out_OBUF[13]_inst 
       (.I(addr_a14_out_OBUF[13]),
        .O(addr_a14_out[13]));
  OBUF \addr_a14_out_OBUF[1]_inst 
       (.I(addr_a14_out_OBUF[1]),
        .O(addr_a14_out[1]));
  OBUF \addr_a14_out_OBUF[2]_inst 
       (.I(addr_a14_out_OBUF[2]),
        .O(addr_a14_out[2]));
  OBUF \addr_a14_out_OBUF[3]_inst 
       (.I(addr_a14_out_OBUF[3]),
        .O(addr_a14_out[3]));
  OBUF \addr_a14_out_OBUF[4]_inst 
       (.I(addr_a14_out_OBUF[4]),
        .O(addr_a14_out[4]));
  OBUF \addr_a14_out_OBUF[5]_inst 
       (.I(addr_a14_out_OBUF[5]),
        .O(addr_a14_out[5]));
  OBUF \addr_a14_out_OBUF[6]_inst 
       (.I(addr_a14_out_OBUF[6]),
        .O(addr_a14_out[6]));
  OBUF \addr_a14_out_OBUF[7]_inst 
       (.I(addr_a14_out_OBUF[7]),
        .O(addr_a14_out[7]));
  OBUF \addr_a14_out_OBUF[8]_inst 
       (.I(addr_a14_out_OBUF[8]),
        .O(addr_a14_out[8]));
  OBUF \addr_a14_out_OBUF[9]_inst 
       (.I(addr_a14_out_OBUF[9]),
        .O(addr_a14_out[9]));
  OBUF \addr_d8_out_OBUF[0]_inst 
       (.I(addr_d8_out_OBUF[0]),
        .O(addr_d8_out[0]));
  OBUF \addr_d8_out_OBUF[1]_inst 
       (.I(addr_d8_out_OBUF[1]),
        .O(addr_d8_out[1]));
  OBUF \addr_d8_out_OBUF[2]_inst 
       (.I(addr_d8_out_OBUF[2]),
        .O(addr_d8_out[2]));
  OBUF \addr_d8_out_OBUF[3]_inst 
       (.I(addr_d8_out_OBUF[3]),
        .O(addr_d8_out[3]));
  OBUF \addr_d8_out_OBUF[4]_inst 
       (.I(addr_d8_out_OBUF[4]),
        .O(addr_d8_out[4]));
  OBUF \addr_d8_out_OBUF[5]_inst 
       (.I(addr_d8_out_OBUF[5]),
        .O(addr_d8_out[5]));
  OBUF \addr_d8_out_OBUF[6]_inst 
       (.I(addr_d8_out_OBUF[6]),
        .O(addr_d8_out[6]));
  OBUF \addr_d8_out_OBUF[7]_inst 
       (.I(addr_d8_out_OBUF[7]),
        .O(addr_d8_out[7]));
  OBUF addr_e_out_OBUF_inst
       (.I(addr_e_out_OBUF),
        .O(addr_e_out));
  OBUF \addr_s8_out_OBUF[0]_inst 
       (.I(addr_s8_out_OBUF[0]),
        .O(addr_s8_out[0]));
  OBUF \addr_s8_out_OBUF[1]_inst 
       (.I(addr_s8_out_OBUF[1]),
        .O(addr_s8_out[1]));
  OBUF \addr_s8_out_OBUF[2]_inst 
       (.I(addr_s8_out_OBUF[2]),
        .O(addr_s8_out[2]));
  OBUF \addr_s8_out_OBUF[3]_inst 
       (.I(addr_s8_out_OBUF[3]),
        .O(addr_s8_out[3]));
  OBUF \addr_s8_out_OBUF[4]_inst 
       (.I(addr_s8_out_OBUF[4]),
        .O(addr_s8_out[4]));
  OBUF \addr_s8_out_OBUF[5]_inst 
       (.I(addr_s8_out_OBUF[5]),
        .O(addr_s8_out[5]));
  OBUF \addr_s8_out_OBUF[6]_inst 
       (.I(addr_s8_out_OBUF[6]),
        .O(addr_s8_out[6]));
  OBUF \addr_s8_out_OBUF[7]_inst 
       (.I(addr_s8_out_OBUF[7]),
        .O(addr_s8_out[7]));
  OBUF addr_strobe_out_OBUF_inst
       (.I(addr_strobe_out_OBUF),
        .O(addr_strobe_out));
  OBUF brc_b_out_OBUF_inst
       (.I(brc_b_out_OBUF),
        .O(brc_b_out));
  OBUF \brc_d4_out_OBUF[0]_inst 
       (.I(brc_d4_out_OBUF[0]),
        .O(brc_d4_out[0]));
  OBUF \brc_d4_out_OBUF[1]_inst 
       (.I(brc_d4_out_OBUF[1]),
        .O(brc_d4_out[1]));
  OBUF \brc_d4_out_OBUF[2]_inst 
       (.I(brc_d4_out_OBUF[2]),
        .O(brc_d4_out[2]));
  OBUF \brc_d4_out_OBUF[3]_inst 
       (.I(brc_d4_out_OBUF[3]),
        .O(brc_d4_out[3]));
  OBUF brc_e_out_OBUF_inst
       (.I(brc_e_out_OBUF),
        .O(brc_e_out));
  OBUF brc_strobe_out_OBUF_inst
       (.I(brc_strobe_out_OBUF),
        .O(brc_strobe_out));
  OBUF \brc_t2_out_OBUF[0]_inst 
       (.I(brc_t2_out_OBUF[0]),
        .O(brc_t2_out[0]));
  OBUF \brc_t2_out_OBUF[1]_inst 
       (.I(brc_t2_out_OBUF[1]),
        .O(brc_t2_out[1]));
  OBUF cdrclk_out_OBUF_inst
       (.I(cdrclk_out_OBUF),
        .O(cdrclk_out));
  OBUF communication_error_OBUF_inst
       (.I(communication_error_OBUF),
        .O(communication_error));
  OBUF data_out_n_OBUF_inst
       (.I(data_out_n_OBUF),
        .O(data_out_n));
  OBUF data_out_p_OBUF_inst
       (.I(data_out_p_OBUF),
        .O(data_out_p));
  OBUF div_nrst_OBUF_inst
       (.I(div_nrst_OBUF),
        .O(div_nrst));
  OBUF double_bit_error_OBUF_inst
       (.I(double_bit_error_OBUF),
        .O(double_bit_error));
  ttc_encoder_data_gen ins_ttc_encoder
       (.D(data_out_p_OBUF),
        .clk_in_200_n(clk_in_200_n),
        .clk_in_200_p(clk_in_200_p),
        .clk_out_160_p(clk_160_p_s),
        .data_out_n(data_out_n_OBUF),
        .reset_in_IBUF(reset_in_IBUF));
  ttc_fmc_wrapper ins_ttcrx
       (.CLK_IN1(clk_160_p_s),
        .CLK_OUT1(cdrclk_out_OBUF),
        .D(data_out_p_OBUF),
        .RESET(reset_in_IBUF),
        .addr_a14_out_OBUF(addr_a14_out_OBUF),
        .addr_d8_out_OBUF(addr_d8_out_OBUF),
        .addr_e_out_OBUF(addr_e_out_OBUF),
        .addr_s8_out_OBUF(addr_s8_out_OBUF),
        .addr_strobe_out_OBUF(addr_strobe_out_OBUF),
        .brc_b_out_OBUF(brc_b_out_OBUF),
        .brc_d4_out_OBUF(brc_d4_out_OBUF),
        .brc_e_out_OBUF(brc_e_out_OBUF),
        .brc_strobe_out_OBUF(brc_strobe_out_OBUF),
        .brc_t2_out_OBUF(brc_t2_out_OBUF),
        .communication_error_OBUF(communication_error_OBUF),
        .div_nrst_OBUF(div_nrst_OBUF),
        .double_bit_error_OBUF(double_bit_error_OBUF),
        .l1a_out_OBUF(l1a_out_OBUF),
        .ready_OBUF(ready_OBUF),
        .single_bit_error_OBUF(single_bit_error_OBUF),
        .ttc_clk_gated_out_OBUF(ttc_clk_gated_out_OBUF));
  OBUF l1a_out_OBUF_inst
       (.I(l1a_out_OBUF),
        .O(l1a_out));
  OBUF ready_OBUF_inst
       (.I(ready_OBUF),
        .O(ready));
  IBUF reset_in_IBUF_inst
       (.I(reset_in),
        .O(reset_in_IBUF));
  OBUF single_bit_error_OBUF_inst
       (.I(single_bit_error_OBUF),
        .O(single_bit_error));
  OBUF ttc_clk_gated_out_OBUF_inst
       (.I(ttc_clk_gated_out_OBUF),
        .O(ttc_clk_gated_out));
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
  wire [5:1]a_ch_counter;
  wire \a_ch_counter[0]_i_1_n_0 ;
  wire \a_ch_counter_reg_n_0_[0] ;
  wire \a_ch_counter_reg_n_0_[1] ;
  wire \a_ch_counter_reg_n_0_[2] ;
  wire \a_ch_counter_reg_n_0_[3] ;
  wire \a_ch_counter_reg_n_0_[4] ;
  wire \a_ch_counter_reg_n_0_[5] ;
  wire a_ch_data_out;
  wire a_ch_data_s;
  wire [28:28]\^addr_data_out ;
  wire [30:30]addr_data_s;
  wire b_sel_flag;
  wire b_sel_flag_i_1_n_0;
  wire \brc_data_s[4]_i_1_n_0 ;
  wire clk_in;
  wire ready_a_ch_in;
  wire ready_b_ch_in;
  wire reset_in;
  wire valid_a_ch_data_out;
  wire valid_addr_data_out;
  wire valid_addr_data_s;
  wire valid_brc_data_out;

  assign addr_data_out[30] = \^addr_data_out [28];
  assign addr_data_out[29] = \<const0> ;
  assign addr_data_out[28] = \^addr_data_out [28];
  assign addr_data_out[27] = \<const0> ;
  assign addr_data_out[26] = \^addr_data_out [28];
  assign addr_data_out[25] = \<const0> ;
  assign addr_data_out[24] = \^addr_data_out [28];
  assign addr_data_out[23] = \<const0> ;
  assign addr_data_out[22] = \^addr_data_out [28];
  assign addr_data_out[21] = \<const0> ;
  assign addr_data_out[20] = \^addr_data_out [28];
  assign addr_data_out[19] = \<const0> ;
  assign addr_data_out[18] = \^addr_data_out [28];
  assign addr_data_out[17] = \<const0> ;
  assign addr_data_out[16] = \^addr_data_out [28];
  assign addr_data_out[15] = \<const0> ;
  assign addr_data_out[14] = \^addr_data_out [28];
  assign addr_data_out[13] = \<const0> ;
  assign addr_data_out[12] = \^addr_data_out [28];
  assign addr_data_out[11] = \<const0> ;
  assign addr_data_out[10] = \^addr_data_out [28];
  assign addr_data_out[9] = \<const0> ;
  assign addr_data_out[8] = \^addr_data_out [28];
  assign addr_data_out[7] = \<const0> ;
  assign addr_data_out[6] = \^addr_data_out [28];
  assign addr_data_out[5] = \<const0> ;
  assign addr_data_out[4] = \^addr_data_out [28];
  assign addr_data_out[3] = \<const0> ;
  assign addr_data_out[2] = \^addr_data_out [28];
  assign addr_data_out[1] = \<const0> ;
  assign addr_data_out[0] = \^addr_data_out [28];
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
  LUT1 #(
    .INIT(2'h1)) 
    \a_ch_counter[0]_i_1 
       (.I0(\a_ch_counter_reg_n_0_[0] ),
        .O(\a_ch_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_ch_counter[1]_i_1 
       (.I0(\a_ch_counter_reg_n_0_[0] ),
        .I1(\a_ch_counter_reg_n_0_[1] ),
        .O(a_ch_counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \a_ch_counter[2]_i_1 
       (.I0(\a_ch_counter_reg_n_0_[2] ),
        .I1(\a_ch_counter_reg_n_0_[0] ),
        .I2(\a_ch_counter_reg_n_0_[1] ),
        .O(a_ch_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \a_ch_counter[3]_i_1 
       (.I0(\a_ch_counter_reg_n_0_[2] ),
        .I1(\a_ch_counter_reg_n_0_[3] ),
        .I2(\a_ch_counter_reg_n_0_[0] ),
        .I3(\a_ch_counter_reg_n_0_[1] ),
        .O(a_ch_counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \a_ch_counter[4]_i_1 
       (.I0(\a_ch_counter_reg_n_0_[2] ),
        .I1(\a_ch_counter_reg_n_0_[3] ),
        .I2(\a_ch_counter_reg_n_0_[0] ),
        .I3(\a_ch_counter_reg_n_0_[1] ),
        .I4(\a_ch_counter_reg_n_0_[4] ),
        .O(a_ch_counter[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \a_ch_counter[5]_i_1 
       (.I0(\a_ch_counter_reg_n_0_[2] ),
        .I1(\a_ch_counter_reg_n_0_[3] ),
        .I2(\a_ch_counter_reg_n_0_[0] ),
        .I3(\a_ch_counter_reg_n_0_[1] ),
        .I4(\a_ch_counter_reg_n_0_[4] ),
        .I5(\a_ch_counter_reg_n_0_[5] ),
        .O(a_ch_counter[5]));
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
        .D(a_ch_counter[1]),
        .Q(\a_ch_counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_ch_counter_reg[2] 
       (.C(clk_in),
        .CE(ready_a_ch_in),
        .CLR(reset_in),
        .D(a_ch_counter[2]),
        .Q(\a_ch_counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_ch_counter_reg[3] 
       (.C(clk_in),
        .CE(ready_a_ch_in),
        .CLR(reset_in),
        .D(a_ch_counter[3]),
        .Q(\a_ch_counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_ch_counter_reg[4] 
       (.C(clk_in),
        .CE(ready_a_ch_in),
        .CLR(reset_in),
        .D(a_ch_counter[4]),
        .Q(\a_ch_counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_ch_counter_reg[5] 
       (.C(clk_in),
        .CE(ready_a_ch_in),
        .CLR(reset_in),
        .D(a_ch_counter[5]),
        .Q(\a_ch_counter_reg_n_0_[5] ));
  LUT6 #(
    .INIT(64'h022222222222222A)) 
    a_ch_data_s_i_1
       (.I0(ready_a_ch_in),
        .I1(\a_ch_counter_reg_n_0_[1] ),
        .I2(\a_ch_counter_reg_n_0_[2] ),
        .I3(\a_ch_counter_reg_n_0_[3] ),
        .I4(\a_ch_counter_reg_n_0_[4] ),
        .I5(\a_ch_counter_reg_n_0_[5] ),
        .O(a_ch_data_s));
  FDCE #(
    .INIT(1'b0)) 
    a_ch_data_s_reg
       (.C(clk_in),
        .CE(1'b1),
        .CLR(reset_in),
        .D(a_ch_data_s),
        .Q(a_ch_data_out));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_data_s[30]_i_1 
       (.I0(b_sel_flag),
        .I1(ready_b_ch_in),
        .O(addr_data_s));
  FDCE #(
    .INIT(1'b0)) 
    \addr_data_s_reg[30] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(reset_in),
        .D(addr_data_s),
        .Q(\^addr_data_out ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    b_sel_flag_i_1
       (.I0(ready_b_ch_in),
        .I1(b_sel_flag),
        .O(b_sel_flag_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    b_sel_flag_reg
       (.C(clk_in),
        .CE(1'b1),
        .CLR(reset_in),
        .D(b_sel_flag_i_1_n_0),
        .Q(b_sel_flag));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \brc_data_s[4]_i_1 
       (.I0(ready_b_ch_in),
        .I1(b_sel_flag),
        .O(\brc_data_s[4]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \brc_data_s_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(reset_in),
        .D(\brc_data_s[4]_i_1_n_0 ),
        .Q(valid_brc_data_out));
  FDCE #(
    .INIT(1'b0)) 
    valid_a_ch_data_s_reg
       (.C(clk_in),
        .CE(1'b1),
        .CLR(reset_in),
        .D(ready_a_ch_in),
        .Q(valid_a_ch_data_out));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    valid_addr_data_s_i_1
       (.I0(ready_b_ch_in),
        .I1(b_sel_flag),
        .O(valid_addr_data_s));
  FDCE #(
    .INIT(1'b0)) 
    valid_addr_data_s_reg
       (.C(clk_in),
        .CE(1'b1),
        .CLR(reset_in),
        .D(valid_addr_data_s),
        .Q(valid_addr_data_out));
endmodule

module ttc_decoder_core
   (div_nrst_OBUF,
    ttc_clk_gated_out_OBUF,
    single_bit_error_OBUF,
    double_bit_error_OBUF,
    communication_error_OBUF,
    l1a_out_OBUF,
    brc_strobe_out_OBUF,
    addr_strobe_out_OBUF,
    brc_e_out_OBUF,
    brc_b_out_OBUF,
    addr_e_out_OBUF,
    ready_OBUF,
    brc_t2_out_OBUF,
    brc_d4_out_OBUF,
    addr_a14_out_OBUF,
    addr_s8_out_OBUF,
    addr_d8_out_OBUF,
    CLK,
    LOCKED,
    D);
  output div_nrst_OBUF;
  output ttc_clk_gated_out_OBUF;
  output single_bit_error_OBUF;
  output double_bit_error_OBUF;
  output communication_error_OBUF;
  output l1a_out_OBUF;
  output brc_strobe_out_OBUF;
  output addr_strobe_out_OBUF;
  output brc_e_out_OBUF;
  output brc_b_out_OBUF;
  output addr_e_out_OBUF;
  output ready_OBUF;
  output [1:0]brc_t2_out_OBUF;
  output [3:0]brc_d4_out_OBUF;
  output [13:0]addr_a14_out_OBUF;
  output [7:0]addr_s8_out_OBUF;
  output [7:0]addr_d8_out_OBUF;
  input CLK;
  input LOCKED;
  input [0:0]D;

  wire CLK;
  wire [0:0]D;
  wire LOCKED;
  wire [13:0]addr_a14_out_OBUF;
  wire [7:0]addr_d8_out_OBUF;
  wire addr_e_out_OBUF;
  wire [7:0]addr_s8_out_OBUF;
  wire addr_strobe_out_OBUF;
  wire brc_b_out_OBUF;
  wire [3:0]brc_d4_out_OBUF;
  wire brc_e_out_OBUF;
  wire brc_strobe_out_OBUF;
  wire [1:0]brc_t2_out_OBUF;
  wire [38:5]chB_data;
  wire [1:0]chB_data_rdy;
  wire channelB;
  wire channelB_comm_error_i;
  wire communication_error0;
  wire communication_error_OBUF;
  wire div_nrst_OBUF;
  wire double_bit_error_OBUF;
  wire double_bit_error_i;
  wire from_cdr_to_AandB_n_10;
  wire from_cdr_to_AandB_n_11;
  wire from_cdr_to_AandB_n_12;
  wire from_cdr_to_AandB_n_6;
  wire from_cdr_to_AandB_n_7;
  wire from_cdr_to_AandB_n_9;
  wire l1a_i;
  wire l1a_out_OBUF;
  wire ready_OBUF;
  wire serialb_com0_n_0;
  wire single_bit_error_OBUF;
  wire single_bit_error_i;
  wire ttc_clk_gated_out_OBUF;
  wire ttc_frame_reset;
  wire ttc_strobe;

  FDRE #(
    .INIT(1'b0)) 
    \add_a14_reg[0] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[25]),
        .Q(addr_a14_out_OBUF[0]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \add_a14_reg[10] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[35]),
        .Q(addr_a14_out_OBUF[10]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \add_a14_reg[11] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[36]),
        .Q(addr_a14_out_OBUF[11]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \add_a14_reg[12] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[37]),
        .Q(addr_a14_out_OBUF[12]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \add_a14_reg[13] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[38]),
        .Q(addr_a14_out_OBUF[13]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \add_a14_reg[1] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[26]),
        .Q(addr_a14_out_OBUF[1]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \add_a14_reg[2] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[27]),
        .Q(addr_a14_out_OBUF[2]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \add_a14_reg[3] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[28]),
        .Q(addr_a14_out_OBUF[3]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \add_a14_reg[4] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[29]),
        .Q(addr_a14_out_OBUF[4]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \add_a14_reg[5] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[30]),
        .Q(addr_a14_out_OBUF[5]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \add_a14_reg[6] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[31]),
        .Q(addr_a14_out_OBUF[6]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \add_a14_reg[7] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[32]),
        .Q(addr_a14_out_OBUF[7]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \add_a14_reg[8] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[33]),
        .Q(addr_a14_out_OBUF[8]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \add_a14_reg[9] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[34]),
        .Q(addr_a14_out_OBUF[9]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \add_d8_reg[0] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[7]),
        .Q(addr_d8_out_OBUF[0]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \add_d8_reg[1] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[8]),
        .Q(addr_d8_out_OBUF[1]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \add_d8_reg[2] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[9]),
        .Q(addr_d8_out_OBUF[2]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \add_d8_reg[3] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[10]),
        .Q(addr_d8_out_OBUF[3]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \add_d8_reg[4] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[11]),
        .Q(addr_d8_out_OBUF[4]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \add_d8_reg[5] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[12]),
        .Q(addr_d8_out_OBUF[5]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \add_d8_reg[6] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[13]),
        .Q(addr_d8_out_OBUF[6]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \add_d8_reg[7] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[14]),
        .Q(addr_d8_out_OBUF[7]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    add_e_reg
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[24]),
        .Q(addr_e_out_OBUF),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \add_s8_reg[0] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[15]),
        .Q(addr_s8_out_OBUF[0]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \add_s8_reg[1] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[16]),
        .Q(addr_s8_out_OBUF[1]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \add_s8_reg[2] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[17]),
        .Q(addr_s8_out_OBUF[2]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \add_s8_reg[3] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[18]),
        .Q(addr_s8_out_OBUF[3]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \add_s8_reg[4] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[19]),
        .Q(addr_s8_out_OBUF[4]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \add_s8_reg[5] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[20]),
        .Q(addr_s8_out_OBUF[5]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \add_s8_reg[6] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[21]),
        .Q(addr_s8_out_OBUF[6]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    \add_s8_reg[7] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[22]),
        .Q(addr_s8_out_OBUF[7]),
        .R(from_cdr_to_AandB_n_7));
  FDRE #(
    .INIT(1'b0)) 
    add_strobe_reg
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data_rdy[1]),
        .Q(addr_strobe_out_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    brc_b_reg
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[5]),
        .Q(brc_b_out_OBUF),
        .R(from_cdr_to_AandB_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \brc_d4_reg[0] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[7]),
        .Q(brc_d4_out_OBUF[0]),
        .R(from_cdr_to_AandB_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \brc_d4_reg[1] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[8]),
        .Q(brc_d4_out_OBUF[1]),
        .R(from_cdr_to_AandB_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \brc_d4_reg[2] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[9]),
        .Q(brc_d4_out_OBUF[2]),
        .R(from_cdr_to_AandB_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \brc_d4_reg[3] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[10]),
        .Q(brc_d4_out_OBUF[3]),
        .R(from_cdr_to_AandB_n_6));
  FDRE #(
    .INIT(1'b0)) 
    brc_e_reg
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[6]),
        .Q(brc_e_out_OBUF),
        .R(from_cdr_to_AandB_n_6));
  FDRE #(
    .INIT(1'b0)) 
    brc_strobe_reg
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data_rdy[0]),
        .Q(brc_strobe_out_OBUF),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \brc_t2_reg[0] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[11]),
        .Q(brc_t2_out_OBUF[0]),
        .R(from_cdr_to_AandB_n_6));
  FDRE #(
    .INIT(1'b0)) 
    \brc_t2_reg[1] 
       (.C(CLK),
        .CE(ttc_strobe),
        .D(chB_data[12]),
        .Q(brc_t2_out_OBUF[1]),
        .R(from_cdr_to_AandB_n_6));
  FDSE #(
    .INIT(1'b1)) 
    communication_error_reg
       (.C(CLK),
        .CE(ttc_strobe),
        .D(communication_error0),
        .Q(communication_error_OBUF),
        .S(from_cdr_to_AandB_n_10));
  FDRE #(
    .INIT(1'b0)) 
    double_bit_error_reg
       (.C(CLK),
        .CE(ttc_strobe),
        .D(double_bit_error_i),
        .Q(double_bit_error_OBUF),
        .R(1'b0));
  cdr2a_b_clk from_cdr_to_AandB
       (.CLK(CLK),
        .D(D),
        .E(from_cdr_to_AandB_n_11),
        .LOCKED(LOCKED),
        .Q(chB_data_rdy),
        .SR(from_cdr_to_AandB_n_9),
        .\add_a14_reg[13] (from_cdr_to_AandB_n_7),
        .\brc_t2_reg[1] (from_cdr_to_AandB_n_6),
        .channelB(channelB),
        .channelB_comm_error_i(channelB_comm_error_i),
        .communication_error_reg(from_cdr_to_AandB_n_10),
        .div_nrst_OBUF(div_nrst_OBUF),
        .\div_rst_cnt_reg[4]_0 (ttc_frame_reset),
        .\hamming.data_out_reg[38] (from_cdr_to_AandB_n_12),
        .l1a_i(l1a_i),
        .out(serialb_com0_n_0),
        .ready_OBUF(ready_OBUF),
        .ttc_clk_gated_out_OBUF(ttc_clk_gated_out_OBUF),
        .ttc_strobe(ttc_strobe));
  FDRE #(
    .INIT(1'b0)) 
    l1a_reg
       (.C(CLK),
        .CE(ttc_strobe),
        .D(l1a_i),
        .Q(l1a_out_OBUF),
        .R(1'b0));
  serialb_com serialb_com0
       (.CLK(CLK),
        .E(from_cdr_to_AandB_n_11),
        .Q(chB_data_rdy),
        .SR(from_cdr_to_AandB_n_9),
        .\add_a14_reg[13] ({chB_data[38:24],chB_data[22:5]}),
        .channelB(channelB),
        .channelB_comm_error_i(channelB_comm_error_i),
        .communication_error0(communication_error0),
        .\div_rst_cnt_reg[4] (ttc_frame_reset),
        .\div_rst_cnt_reg[4]_0 (from_cdr_to_AandB_n_12),
        .double_bit_error_i(double_bit_error_i),
        .out(serialb_com0_n_0),
        .single_bit_error_i(single_bit_error_i),
        .ttc_strobe(ttc_strobe));
  FDRE #(
    .INIT(1'b0)) 
    single_bit_error_reg
       (.C(CLK),
        .CE(ttc_strobe),
        .D(single_bit_error_i),
        .Q(single_bit_error_OBUF),
        .R(1'b0));
endmodule

module ttc_enc_wrapper
   (D,
    data_out_n,
    ready_a_ch_in,
    clk_out_160_p,
    ready_b_ch_in,
    valid_a_ch_data_out,
    a_ch_data_out,
    reset_in_IBUF,
    clk_in_200_p,
    clk_in_200_n,
    valid_brc_data_out,
    brc_data_out,
    valid_addr_data_out,
    addr_data_out);
  output [0:0]D;
  output data_out_n;
  output ready_a_ch_in;
  output clk_out_160_p;
  output ready_b_ch_in;
  input valid_a_ch_data_out;
  input a_ch_data_out;
  input reset_in_IBUF;
  input clk_in_200_p;
  input clk_in_200_n;
  input valid_brc_data_out;
  input [7:0]brc_data_out;
  input valid_addr_data_out;
  input [30:0]addr_data_out;

  wire [0:0]D;
  wire a_ch_data_out;
  wire a_ch_from_ttcvi;
  wire [30:0]addr_data_out;
  wire b_ch_from_ttcvi;
  wire [7:0]brc_data_out;
  wire clk_160_n_s;
  wire clk_40_p_s;
  wire clk_80_n_s;
  wire clk_80_p_S;
  wire clk_in_200_n;
  wire clk_in_200_p;
  wire clk_out_160_p;
  wire data_out_n;
  wire data_strobe_from_ttcvi;
  wire ins_ttcvi_n_0;
  wire locked_s;
  wire ready_a_ch_in;
  wire ready_b_ch_in;
  wire ready_s_i_1_n_0;
  wire ready_s_i_2_n_0;
  wire ready_s_i_3_n_0;
  wire ready_s_i_4_n_0;
  wire ready_s_i_5_n_0;
  wire ready_s_i_6_n_0;
  wire ready_s_i_7_n_0;
  wire ready_s_i_8_n_0;
  wire ready_s_reg_n_0;
  wire reset_in_IBUF;
  wire \timer[0]_i_10_n_0 ;
  wire \timer[0]_i_11_n_0 ;
  wire \timer[0]_i_12_n_0 ;
  wire \timer[0]_i_1_n_0 ;
  wire \timer[0]_i_3__0_n_0 ;
  wire \timer[0]_i_4__0_n_0 ;
  wire \timer[0]_i_5__0_n_0 ;
  wire \timer[0]_i_6__0_n_0 ;
  wire \timer[0]_i_7_n_0 ;
  wire \timer[0]_i_8_n_0 ;
  wire \timer[0]_i_9_n_0 ;
  wire \timer[12]_i_2__0_n_0 ;
  wire \timer[12]_i_3__0_n_0 ;
  wire \timer[12]_i_4__0_n_0 ;
  wire \timer[12]_i_5__0_n_0 ;
  wire \timer[16]_i_2__0_n_0 ;
  wire \timer[16]_i_3__0_n_0 ;
  wire \timer[16]_i_4__0_n_0 ;
  wire \timer[16]_i_5__0_n_0 ;
  wire \timer[20]_i_2__0_n_0 ;
  wire \timer[20]_i_3__0_n_0 ;
  wire \timer[20]_i_4__0_n_0 ;
  wire \timer[20]_i_5__0_n_0 ;
  wire \timer[24]_i_2__0_n_0 ;
  wire \timer[24]_i_3__0_n_0 ;
  wire \timer[24]_i_4__0_n_0 ;
  wire \timer[24]_i_5__0_n_0 ;
  wire \timer[28]_i_2__0_n_0 ;
  wire \timer[28]_i_3__0_n_0 ;
  wire \timer[28]_i_4__0_n_0 ;
  wire \timer[28]_i_5__0_n_0 ;
  wire \timer[4]_i_2__0_n_0 ;
  wire \timer[4]_i_3__0_n_0 ;
  wire \timer[4]_i_4__0_n_0 ;
  wire \timer[4]_i_5__0_n_0 ;
  wire \timer[8]_i_2__0_n_0 ;
  wire \timer[8]_i_3__0_n_0 ;
  wire \timer[8]_i_4__0_n_0 ;
  wire \timer[8]_i_5__0_n_0 ;
  wire [31:0]timer_reg;
  wire \timer_reg[0]_i_2__0_n_0 ;
  wire \timer_reg[0]_i_2__0_n_4 ;
  wire \timer_reg[0]_i_2__0_n_5 ;
  wire \timer_reg[0]_i_2__0_n_6 ;
  wire \timer_reg[0]_i_2__0_n_7 ;
  wire \timer_reg[12]_i_1__0_n_0 ;
  wire \timer_reg[12]_i_1__0_n_4 ;
  wire \timer_reg[12]_i_1__0_n_5 ;
  wire \timer_reg[12]_i_1__0_n_6 ;
  wire \timer_reg[12]_i_1__0_n_7 ;
  wire \timer_reg[16]_i_1__0_n_0 ;
  wire \timer_reg[16]_i_1__0_n_4 ;
  wire \timer_reg[16]_i_1__0_n_5 ;
  wire \timer_reg[16]_i_1__0_n_6 ;
  wire \timer_reg[16]_i_1__0_n_7 ;
  wire \timer_reg[20]_i_1__0_n_0 ;
  wire \timer_reg[20]_i_1__0_n_4 ;
  wire \timer_reg[20]_i_1__0_n_5 ;
  wire \timer_reg[20]_i_1__0_n_6 ;
  wire \timer_reg[20]_i_1__0_n_7 ;
  wire \timer_reg[24]_i_1__0_n_0 ;
  wire \timer_reg[24]_i_1__0_n_4 ;
  wire \timer_reg[24]_i_1__0_n_5 ;
  wire \timer_reg[24]_i_1__0_n_6 ;
  wire \timer_reg[24]_i_1__0_n_7 ;
  wire \timer_reg[28]_i_1__0_n_4 ;
  wire \timer_reg[28]_i_1__0_n_5 ;
  wire \timer_reg[28]_i_1__0_n_6 ;
  wire \timer_reg[28]_i_1__0_n_7 ;
  wire \timer_reg[4]_i_1__0_n_0 ;
  wire \timer_reg[4]_i_1__0_n_4 ;
  wire \timer_reg[4]_i_1__0_n_5 ;
  wire \timer_reg[4]_i_1__0_n_6 ;
  wire \timer_reg[4]_i_1__0_n_7 ;
  wire \timer_reg[8]_i_1__0_n_0 ;
  wire \timer_reg[8]_i_1__0_n_4 ;
  wire \timer_reg[8]_i_1__0_n_5 ;
  wire \timer_reg[8]_i_1__0_n_6 ;
  wire \timer_reg[8]_i_1__0_n_7 ;
  wire valid_a_ch_data_out;
  wire valid_addr_data_out;
  wire valid_brc_data_out;
  wire [2:0]\NLW_timer_reg[0]_i_2__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_reg[20]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_reg[24]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_timer_reg[28]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_reg[4]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_timer_reg[8]_i_1__0_CO_UNCONNECTED ;

  mmcm ins_clk_wizard
       (.clk_in_200_n(clk_in_200_n),
        .clk_in_200_p(clk_in_200_p),
        .clk_out_160_n(clk_160_n_s),
        .clk_out_160_p(clk_out_160_p),
        .clk_out_40_p(clk_40_p_s),
        .clk_out_80_n(clk_80_n_s),
        .clk_out_80_p(clk_80_p_S),
        .locked(locked_s),
        .reset_in_IBUF(reset_in_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ins_ttc_data_generation_i_1
       (.I0(ready_s_reg_n_0),
        .I1(reset_in_IBUF),
        .O(ready_a_ch_in));
  ttcvi_emulation ins_ttcvi
       (.AR(ins_ttcvi_n_0),
        .a_ch_data_out(a_ch_data_out),
        .a_ch_in(a_ch_from_ttcvi),
        .addr_data_out(addr_data_out),
        .b_ch_in(b_ch_from_ttcvi),
        .brc_data_out(brc_data_out),
        .clk_out_40_p(clk_40_p_s),
        .ready_b_ch_in(ready_b_ch_in),
        .ready_s_reg(ready_s_reg_n_0),
        .reset_in_IBUF(reset_in_IBUF),
        .valid_a_ch_data_out(valid_a_ch_data_out),
        .valid_addr_data_out(valid_addr_data_out),
        .valid_brc_data_out(valid_brc_data_out),
        .valid_in(data_strobe_from_ttcvi));
  (* DONT_TOUCH *) 
  ttcvx_emulation ins_ttcvx
       (.a_ch_in(a_ch_from_ttcvi),
        .b_ch_in(b_ch_from_ttcvi),
        .clk_in_160_n(clk_160_n_s),
        .clk_in_40_p(clk_40_p_s),
        .clk_in_80_n(clk_80_n_s),
        .clk_in_80_p(clk_80_p_S),
        .data_out_n(data_out_n),
        .data_out_p(D),
        .reset_in(ins_ttcvi_n_0),
        .valid_in(data_strobe_from_ttcvi));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    ready_s_i_1
       (.I0(ready_s_i_3_n_0),
        .I1(ready_s_i_4_n_0),
        .I2(ready_s_reg_n_0),
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
       (.C(clk_40_p_s),
        .CE(1'b1),
        .CLR(ready_s_i_2_n_0),
        .D(ready_s_i_1_n_0),
        .Q(ready_s_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \timer[0]_i_1 
       (.I0(\timer[0]_i_3__0_n_0 ),
        .I1(\timer[0]_i_4__0_n_0 ),
        .I2(\timer[0]_i_5__0_n_0 ),
        .I3(\timer[0]_i_6__0_n_0 ),
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
    \timer[0]_i_3__0 
       (.I0(timer_reg[12]),
        .I1(timer_reg[13]),
        .I2(timer_reg[10]),
        .I3(timer_reg[11]),
        .I4(timer_reg[9]),
        .I5(timer_reg[8]),
        .O(\timer[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timer[0]_i_4__0 
       (.I0(timer_reg[18]),
        .I1(timer_reg[19]),
        .I2(timer_reg[16]),
        .I3(timer_reg[17]),
        .I4(timer_reg[15]),
        .I5(timer_reg[14]),
        .O(\timer[0]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timer[0]_i_5__0 
       (.I0(timer_reg[30]),
        .I1(timer_reg[31]),
        .I2(timer_reg[28]),
        .I3(timer_reg[29]),
        .I4(timer_reg[27]),
        .I5(timer_reg[26]),
        .O(\timer[0]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timer[0]_i_6__0 
       (.I0(timer_reg[24]),
        .I1(timer_reg[25]),
        .I2(timer_reg[22]),
        .I3(timer_reg[23]),
        .I4(timer_reg[21]),
        .I5(timer_reg[20]),
        .O(\timer[0]_i_6__0_n_0 ));
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
    \timer[12]_i_2__0 
       (.I0(timer_reg[15]),
        .O(\timer[12]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[12]_i_3__0 
       (.I0(timer_reg[14]),
        .O(\timer[12]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[12]_i_4__0 
       (.I0(timer_reg[13]),
        .O(\timer[12]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[12]_i_5__0 
       (.I0(timer_reg[12]),
        .O(\timer[12]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[16]_i_2__0 
       (.I0(timer_reg[19]),
        .O(\timer[16]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[16]_i_3__0 
       (.I0(timer_reg[18]),
        .O(\timer[16]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[16]_i_4__0 
       (.I0(timer_reg[17]),
        .O(\timer[16]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[16]_i_5__0 
       (.I0(timer_reg[16]),
        .O(\timer[16]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[20]_i_2__0 
       (.I0(timer_reg[23]),
        .O(\timer[20]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[20]_i_3__0 
       (.I0(timer_reg[22]),
        .O(\timer[20]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[20]_i_4__0 
       (.I0(timer_reg[21]),
        .O(\timer[20]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[20]_i_5__0 
       (.I0(timer_reg[20]),
        .O(\timer[20]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[24]_i_2__0 
       (.I0(timer_reg[27]),
        .O(\timer[24]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[24]_i_3__0 
       (.I0(timer_reg[26]),
        .O(\timer[24]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[24]_i_4__0 
       (.I0(timer_reg[25]),
        .O(\timer[24]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[24]_i_5__0 
       (.I0(timer_reg[24]),
        .O(\timer[24]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[28]_i_2__0 
       (.I0(timer_reg[31]),
        .O(\timer[28]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[28]_i_3__0 
       (.I0(timer_reg[30]),
        .O(\timer[28]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[28]_i_4__0 
       (.I0(timer_reg[29]),
        .O(\timer[28]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[28]_i_5__0 
       (.I0(timer_reg[28]),
        .O(\timer[28]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[4]_i_2__0 
       (.I0(timer_reg[7]),
        .O(\timer[4]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[4]_i_3__0 
       (.I0(timer_reg[6]),
        .O(\timer[4]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[4]_i_4__0 
       (.I0(timer_reg[5]),
        .O(\timer[4]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[4]_i_5__0 
       (.I0(timer_reg[4]),
        .O(\timer[4]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[8]_i_2__0 
       (.I0(timer_reg[11]),
        .O(\timer[8]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[8]_i_3__0 
       (.I0(timer_reg[10]),
        .O(\timer[8]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[8]_i_4__0 
       (.I0(timer_reg[9]),
        .O(\timer[8]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[8]_i_5__0 
       (.I0(timer_reg[8]),
        .O(\timer[8]_i_5__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[0] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[0]_i_2__0_n_7 ),
        .Q(timer_reg[0]));
  CARRY4 \timer_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\timer_reg[0]_i_2__0_n_0 ,\NLW_timer_reg[0]_i_2__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\timer_reg[0]_i_2__0_n_4 ,\timer_reg[0]_i_2__0_n_5 ,\timer_reg[0]_i_2__0_n_6 ,\timer_reg[0]_i_2__0_n_7 }),
        .S({\timer[0]_i_9_n_0 ,\timer[0]_i_10_n_0 ,\timer[0]_i_11_n_0 ,\timer[0]_i_12_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[10] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[8]_i_1__0_n_5 ),
        .Q(timer_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[11] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[8]_i_1__0_n_4 ),
        .Q(timer_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[12] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[12]_i_1__0_n_7 ),
        .Q(timer_reg[12]));
  CARRY4 \timer_reg[12]_i_1__0 
       (.CI(\timer_reg[8]_i_1__0_n_0 ),
        .CO({\timer_reg[12]_i_1__0_n_0 ,\NLW_timer_reg[12]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\timer_reg[12]_i_1__0_n_4 ,\timer_reg[12]_i_1__0_n_5 ,\timer_reg[12]_i_1__0_n_6 ,\timer_reg[12]_i_1__0_n_7 }),
        .S({\timer[12]_i_2__0_n_0 ,\timer[12]_i_3__0_n_0 ,\timer[12]_i_4__0_n_0 ,\timer[12]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[13] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[12]_i_1__0_n_6 ),
        .Q(timer_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[14] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[12]_i_1__0_n_5 ),
        .Q(timer_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[15] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[12]_i_1__0_n_4 ),
        .Q(timer_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[16] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[16]_i_1__0_n_7 ),
        .Q(timer_reg[16]));
  CARRY4 \timer_reg[16]_i_1__0 
       (.CI(\timer_reg[12]_i_1__0_n_0 ),
        .CO({\timer_reg[16]_i_1__0_n_0 ,\NLW_timer_reg[16]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\timer_reg[16]_i_1__0_n_4 ,\timer_reg[16]_i_1__0_n_5 ,\timer_reg[16]_i_1__0_n_6 ,\timer_reg[16]_i_1__0_n_7 }),
        .S({\timer[16]_i_2__0_n_0 ,\timer[16]_i_3__0_n_0 ,\timer[16]_i_4__0_n_0 ,\timer[16]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[17] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[16]_i_1__0_n_6 ),
        .Q(timer_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[18] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[16]_i_1__0_n_5 ),
        .Q(timer_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[19] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[16]_i_1__0_n_4 ),
        .Q(timer_reg[19]));
  FDPE #(
    .INIT(1'b1)) 
    \timer_reg[1] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[0]_i_2__0_n_6 ),
        .PRE(ready_s_i_2_n_0),
        .Q(timer_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[20] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[20]_i_1__0_n_7 ),
        .Q(timer_reg[20]));
  CARRY4 \timer_reg[20]_i_1__0 
       (.CI(\timer_reg[16]_i_1__0_n_0 ),
        .CO({\timer_reg[20]_i_1__0_n_0 ,\NLW_timer_reg[20]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\timer_reg[20]_i_1__0_n_4 ,\timer_reg[20]_i_1__0_n_5 ,\timer_reg[20]_i_1__0_n_6 ,\timer_reg[20]_i_1__0_n_7 }),
        .S({\timer[20]_i_2__0_n_0 ,\timer[20]_i_3__0_n_0 ,\timer[20]_i_4__0_n_0 ,\timer[20]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[21] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[20]_i_1__0_n_6 ),
        .Q(timer_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[22] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[20]_i_1__0_n_5 ),
        .Q(timer_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[23] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[20]_i_1__0_n_4 ),
        .Q(timer_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[24] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[24]_i_1__0_n_7 ),
        .Q(timer_reg[24]));
  CARRY4 \timer_reg[24]_i_1__0 
       (.CI(\timer_reg[20]_i_1__0_n_0 ),
        .CO({\timer_reg[24]_i_1__0_n_0 ,\NLW_timer_reg[24]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\timer_reg[24]_i_1__0_n_4 ,\timer_reg[24]_i_1__0_n_5 ,\timer_reg[24]_i_1__0_n_6 ,\timer_reg[24]_i_1__0_n_7 }),
        .S({\timer[24]_i_2__0_n_0 ,\timer[24]_i_3__0_n_0 ,\timer[24]_i_4__0_n_0 ,\timer[24]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[25] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[24]_i_1__0_n_6 ),
        .Q(timer_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[26] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[24]_i_1__0_n_5 ),
        .Q(timer_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[27] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[24]_i_1__0_n_4 ),
        .Q(timer_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[28] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[28]_i_1__0_n_7 ),
        .Q(timer_reg[28]));
  CARRY4 \timer_reg[28]_i_1__0 
       (.CI(\timer_reg[24]_i_1__0_n_0 ),
        .CO(\NLW_timer_reg[28]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\timer_reg[28]_i_1__0_n_4 ,\timer_reg[28]_i_1__0_n_5 ,\timer_reg[28]_i_1__0_n_6 ,\timer_reg[28]_i_1__0_n_7 }),
        .S({\timer[28]_i_2__0_n_0 ,\timer[28]_i_3__0_n_0 ,\timer[28]_i_4__0_n_0 ,\timer[28]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[29] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[28]_i_1__0_n_6 ),
        .Q(timer_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[2] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[0]_i_2__0_n_5 ),
        .Q(timer_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[30] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[28]_i_1__0_n_5 ),
        .Q(timer_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[31] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[28]_i_1__0_n_4 ),
        .Q(timer_reg[31]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[3] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[0]_i_2__0_n_4 ),
        .Q(timer_reg[3]));
  FDPE #(
    .INIT(1'b1)) 
    \timer_reg[4] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[4]_i_1__0_n_7 ),
        .PRE(ready_s_i_2_n_0),
        .Q(timer_reg[4]));
  CARRY4 \timer_reg[4]_i_1__0 
       (.CI(\timer_reg[0]_i_2__0_n_0 ),
        .CO({\timer_reg[4]_i_1__0_n_0 ,\NLW_timer_reg[4]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\timer_reg[4]_i_1__0_n_4 ,\timer_reg[4]_i_1__0_n_5 ,\timer_reg[4]_i_1__0_n_6 ,\timer_reg[4]_i_1__0_n_7 }),
        .S({\timer[4]_i_2__0_n_0 ,\timer[4]_i_3__0_n_0 ,\timer[4]_i_4__0_n_0 ,\timer[4]_i_5__0_n_0 }));
  FDPE #(
    .INIT(1'b1)) 
    \timer_reg[5] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .D(\timer_reg[4]_i_1__0_n_6 ),
        .PRE(ready_s_i_2_n_0),
        .Q(timer_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[6] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[4]_i_1__0_n_5 ),
        .Q(timer_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[7] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[4]_i_1__0_n_4 ),
        .Q(timer_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[8] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[8]_i_1__0_n_7 ),
        .Q(timer_reg[8]));
  CARRY4 \timer_reg[8]_i_1__0 
       (.CI(\timer_reg[4]_i_1__0_n_0 ),
        .CO({\timer_reg[8]_i_1__0_n_0 ,\NLW_timer_reg[8]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\timer_reg[8]_i_1__0_n_4 ,\timer_reg[8]_i_1__0_n_5 ,\timer_reg[8]_i_1__0_n_6 ,\timer_reg[8]_i_1__0_n_7 }),
        .S({\timer[8]_i_2__0_n_0 ,\timer[8]_i_3__0_n_0 ,\timer[8]_i_4__0_n_0 ,\timer[8]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \timer_reg[9] 
       (.C(clk_40_p_s),
        .CE(\timer[0]_i_1_n_0 ),
        .CLR(ready_s_i_2_n_0),
        .D(\timer_reg[8]_i_1__0_n_6 ),
        .Q(timer_reg[9]));
endmodule

module ttc_encoder_data_gen
   (clk_out_160_p,
    D,
    data_out_n,
    reset_in_IBUF,
    clk_in_200_p,
    clk_in_200_n);
  output clk_out_160_p;
  output [0:0]D;
  output data_out_n;
  input reset_in_IBUF;
  input clk_in_200_p;
  input clk_in_200_n;

  wire [0:0]D;
  wire a_ch_data_s;
  wire [30:0]addr_data_s;
  wire [7:0]brc_data_s;
  wire clk_in_200_n;
  wire clk_in_200_p;
  wire clk_out_160_p;
  wire data_out_n;
  wire ins_ttc_n_2;
  wire ready_b_ch_in;
  wire reset_in_IBUF;
  wire valid_a_ch_data_s;
  wire valid_addr_data_s;
  wire valid_brc_data_s;

  ttc_enc_wrapper ins_ttc
       (.D(D),
        .a_ch_data_out(a_ch_data_s),
        .addr_data_out(addr_data_s),
        .brc_data_out(brc_data_s),
        .clk_in_200_n(clk_in_200_n),
        .clk_in_200_p(clk_in_200_p),
        .clk_out_160_p(clk_out_160_p),
        .data_out_n(data_out_n),
        .ready_a_ch_in(ins_ttc_n_2),
        .ready_b_ch_in(ready_b_ch_in),
        .reset_in_IBUF(reset_in_IBUF),
        .valid_a_ch_data_out(valid_a_ch_data_s),
        .valid_addr_data_out(valid_addr_data_s),
        .valid_brc_data_out(valid_brc_data_s));
  (* DONT_TOUCH *) 
  ttc_data_generation ins_ttc_data_generation
       (.a_ch_data_out(a_ch_data_s),
        .addr_data_out(addr_data_s),
        .brc_data_out(brc_data_s),
        .clk_in(clk_out_160_p),
        .ready_a_ch_in(ins_ttc_n_2),
        .ready_b_ch_in(ready_b_ch_in),
        .reset_in(reset_in_IBUF),
        .valid_a_ch_data_out(valid_a_ch_data_s),
        .valid_addr_data_out(valid_addr_data_s),
        .valid_brc_data_out(valid_brc_data_s));
endmodule

module ttc_fmc_wrapper
   (CLK_OUT1,
    div_nrst_OBUF,
    ttc_clk_gated_out_OBUF,
    single_bit_error_OBUF,
    double_bit_error_OBUF,
    communication_error_OBUF,
    l1a_out_OBUF,
    brc_strobe_out_OBUF,
    addr_strobe_out_OBUF,
    brc_e_out_OBUF,
    brc_b_out_OBUF,
    addr_e_out_OBUF,
    ready_OBUF,
    brc_t2_out_OBUF,
    brc_d4_out_OBUF,
    addr_a14_out_OBUF,
    addr_s8_out_OBUF,
    addr_d8_out_OBUF,
    CLK_IN1,
    RESET,
    D);
  output CLK_OUT1;
  output div_nrst_OBUF;
  output ttc_clk_gated_out_OBUF;
  output single_bit_error_OBUF;
  output double_bit_error_OBUF;
  output communication_error_OBUF;
  output l1a_out_OBUF;
  output brc_strobe_out_OBUF;
  output addr_strobe_out_OBUF;
  output brc_e_out_OBUF;
  output brc_b_out_OBUF;
  output addr_e_out_OBUF;
  output ready_OBUF;
  output [1:0]brc_t2_out_OBUF;
  output [3:0]brc_d4_out_OBUF;
  output [13:0]addr_a14_out_OBUF;
  output [7:0]addr_s8_out_OBUF;
  output [7:0]addr_d8_out_OBUF;
  input CLK_IN1;
  input RESET;
  input [0:0]D;

  wire CLK_IN1;
  wire CLK_OUT1;
  wire [0:0]D;
  wire RESET;
  wire [13:0]addr_a14_out_OBUF;
  wire [7:0]addr_d8_out_OBUF;
  wire addr_e_out_OBUF;
  wire [7:0]addr_s8_out_OBUF;
  wire addr_strobe_out_OBUF;
  wire brc_b_out_OBUF;
  wire [3:0]brc_d4_out_OBUF;
  wire brc_e_out_OBUF;
  wire brc_strobe_out_OBUF;
  wire [1:0]brc_t2_out_OBUF;
  wire communication_error_OBUF;
  wire div_nrst_OBUF;
  wire double_bit_error_OBUF;
  wire l1a_out_OBUF;
  wire pll_locked;
  wire ready_OBUF;
  wire single_bit_error_OBUF;
  wire ttc_clk_gated_out_OBUF;

  pll_160MHz pll
       (.CLK_IN1(CLK_IN1),
        .CLK_OUT1(CLK_OUT1),
        .LOCKED(pll_locked),
        .RESET(RESET));
  ttc_decoder_core ttc_dec
       (.CLK(CLK_OUT1),
        .D(D),
        .LOCKED(pll_locked),
        .addr_a14_out_OBUF(addr_a14_out_OBUF),
        .addr_d8_out_OBUF(addr_d8_out_OBUF),
        .addr_e_out_OBUF(addr_e_out_OBUF),
        .addr_s8_out_OBUF(addr_s8_out_OBUF),
        .addr_strobe_out_OBUF(addr_strobe_out_OBUF),
        .brc_b_out_OBUF(brc_b_out_OBUF),
        .brc_d4_out_OBUF(brc_d4_out_OBUF),
        .brc_e_out_OBUF(brc_e_out_OBUF),
        .brc_strobe_out_OBUF(brc_strobe_out_OBUF),
        .brc_t2_out_OBUF(brc_t2_out_OBUF),
        .communication_error_OBUF(communication_error_OBUF),
        .div_nrst_OBUF(div_nrst_OBUF),
        .double_bit_error_OBUF(double_bit_error_OBUF),
        .l1a_out_OBUF(l1a_out_OBUF),
        .ready_OBUF(ready_OBUF),
        .single_bit_error_OBUF(single_bit_error_OBUF),
        .ttc_clk_gated_out_OBUF(ttc_clk_gated_out_OBUF));
endmodule

module ttcvi_emulation
   (AR,
    b_ch_in,
    a_ch_in,
    valid_in,
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
  output [0:0]AR;
  output b_ch_in;
  output a_ch_in;
  output valid_in;
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

  wire [0:0]AR;
  wire \FSM_sequential_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire a_ch_data_out;
  wire a_ch_in;
  wire a_ch_out_i_1_n_0;
  wire a_ch_strobe_s;
  wire a_ch_strobe_s_i_1_n_0;
  wire [13:0]addr_a14_in;
  wire [30:0]addr_data_out;
  wire addr_e_in;
  wire [7:0]addr_s8_in;
  wire b_ch_addr_s;
  wire [30:0]b_ch_addr_s0_in;
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
  wire \b_ch_brc_s_reg_n_0_[0] ;
  wire b_ch_brc_valid_s;
  wire b_ch_brc_valid_s_i_2_n_0;
  wire b_ch_brc_valid_s_reg_n_0;
  wire b_ch_in;
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
  wire \counter_b_ch[5]_i_2_n_0 ;
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
  wire ready_s_reg;
  wire reset_in_IBUF;
  (* RTL_KEEP = "yes" *) wire [2:0]state;
  wire valid_a_ch_data_out;
  wire valid_addr_data_out;
  wire valid_brc_data_out;
  wire valid_in;

  LUT6 #(
    .INIT(64'hFFFFFFFF4FFF4444)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(state[2]),
        .I1(\FSM_sequential_state[2]_i_3_n_0 ),
        .I2(\counter_b_ch_reg_n_0_[2] ),
        .I3(\counter_b_ch_reg_n_0_[1] ),
        .I4(\FSM_sequential_state[0]_i_2_n_0 ),
        .I5(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(\FSM_sequential_state[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\counter_b_ch_reg_n_0_[4] ),
        .I4(\counter_b_ch_reg_n_0_[5] ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h44444F44)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(\counter_b_ch_reg_n_0_[3] ),
        .I1(\FSM_sequential_state[0]_i_2_n_0 ),
        .I2(state[0]),
        .I3(valid_brc_data_out),
        .I4(state[2]),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00FF62FFFF)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(valid_brc_data_out),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\FSM_sequential_state[1]_i_3_n_0 ),
        .I5(state[2]),
        .O(\FSM_sequential_state[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\counter_b_ch_reg_n_0_[2] ),
        .I1(\counter_b_ch_reg_n_0_[1] ),
        .I2(\counter_b_ch_reg_n_0_[0] ),
        .I3(\counter_b_ch_reg_n_0_[3] ),
        .I4(\counter_b_ch_reg_n_0_[5] ),
        .I5(\counter_b_ch[3]_i_5_n_0 ),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFDFF)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(state[0]),
        .I1(\counter_b_ch_reg_n_0_[4] ),
        .I2(\counter_b_ch_reg_n_0_[5] ),
        .I3(\counter_b_ch[5]_i_2_n_0 ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBAAAAAABFAAAAAA)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(\counter_b_ch_reg_n_0_[5] ),
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
        .CLR(AR),
        .D(\FSM_sequential_state[0]_i_1__0_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "s1_wait:001,s3_brc:011,s3_addr:100,s0_ready_rd:000,s2_start_data:010" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_out_40_p),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_state[1]_i_1__0_n_0 ),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "s1_wait:001,s3_brc:011,s3_addr:100,s0_ready_rd:000,s2_start_data:010" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk_out_40_p),
        .CE(1'b1),
        .CLR(AR),
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
        .CLR(AR),
        .D(a_ch_out_i_1_n_0),
        .Q(a_ch_in));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
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
    .INIT(64'h000B0000FFFFFFFF)) 
    \b_ch_addr_s[30]_i_1 
       (.I0(\counter_b_ch_reg_n_0_[4] ),
        .I1(b_ch_addr_valid_s_i_2_n_0),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\counter_b_ch_reg_n_0_[5] ),
        .I5(state[2]),
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
        .CLR(AR),
        .D(b_ch_addr_s0_in[0]),
        .Q(\b_ch_addr_s_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[10] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[10]),
        .Q(addr_s8_in[2]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[11] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[11]),
        .Q(addr_s8_in[3]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[12] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[12]),
        .Q(addr_s8_in[4]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[13] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[13]),
        .Q(addr_s8_in[5]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[14] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[14]),
        .Q(addr_s8_in[6]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[15] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[15]),
        .Q(addr_s8_in[7]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[16] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[16]),
        .Q(addr_e_in));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[17] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[17]),
        .Q(addr_a14_in[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[18] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[18]),
        .Q(addr_a14_in[1]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[19] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[19]),
        .Q(addr_a14_in[2]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[1] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[1]),
        .Q(\b_ch_addr_s_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[20] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[20]),
        .Q(addr_a14_in[3]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[21] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[21]),
        .Q(addr_a14_in[4]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[22] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[22]),
        .Q(addr_a14_in[5]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[23] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[23]),
        .Q(addr_a14_in[6]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[24] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[24]),
        .Q(addr_a14_in[7]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[25] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[25]),
        .Q(addr_a14_in[8]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[26] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[26]),
        .Q(addr_a14_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[27] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[27]),
        .Q(addr_a14_in[10]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[28] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[28]),
        .Q(addr_a14_in[11]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[29] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[29]),
        .Q(addr_a14_in[12]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[2] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[2]),
        .Q(\b_ch_addr_s_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[30] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[30]),
        .Q(addr_a14_in[13]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[3] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[3]),
        .Q(\b_ch_addr_s_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[4] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[4]),
        .Q(\b_ch_addr_s_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[5] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[5]),
        .Q(\b_ch_addr_s_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[6] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[6]),
        .Q(\b_ch_addr_s_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[7] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[7]),
        .Q(\b_ch_addr_s_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[8] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[8]),
        .Q(addr_s8_in[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_addr_s_reg[9] 
       (.C(clk_out_40_p),
        .CE(b_ch_addr_s),
        .CLR(AR),
        .D(b_ch_addr_s0_in[9]),
        .Q(addr_s8_in[1]));
  LUT6 #(
    .INIT(64'hBAAAFAAABAAABAAA)) 
    b_ch_addr_valid_s_i_1
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(\counter_b_ch_reg_n_0_[5] ),
        .I2(state[2]),
        .I3(\FSM_sequential_state[2]_i_3_n_0 ),
        .I4(\counter_b_ch_reg_n_0_[4] ),
        .I5(b_ch_addr_valid_s_i_2_n_0),
        .O(b_ch_addr_valid_s));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    b_ch_addr_valid_s_i_2
       (.I0(\counter_b_ch_reg_n_0_[0] ),
        .I1(\counter_b_ch_reg_n_0_[1] ),
        .I2(\counter_b_ch_reg_n_0_[2] ),
        .I3(\counter_b_ch_reg_n_0_[3] ),
        .O(b_ch_addr_valid_s_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    b_ch_addr_valid_s_reg
       (.C(clk_out_40_p),
        .CE(1'b1),
        .CLR(AR),
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
    .INIT(64'h3737371737373737)) 
    \b_ch_brc_s[7]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(\counter_b_ch_reg_n_0_[4] ),
        .I4(\counter_b_ch_reg_n_0_[5] ),
        .I5(\counter_b_ch[5]_i_2_n_0 ),
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
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_brc_s_reg[0] 
       (.C(clk_out_40_p),
        .CE(b_ch_brc_s),
        .CLR(AR),
        .D(b_ch_brc_s0_in[0]),
        .Q(\b_ch_brc_s_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_brc_s_reg[1] 
       (.C(clk_out_40_p),
        .CE(b_ch_brc_s),
        .CLR(AR),
        .D(b_ch_brc_s0_in[1]),
        .Q(brc_e_in));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_brc_s_reg[2] 
       (.C(clk_out_40_p),
        .CE(b_ch_brc_s),
        .CLR(AR),
        .D(b_ch_brc_s0_in[2]),
        .Q(brc_d4_in[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_brc_s_reg[3] 
       (.C(clk_out_40_p),
        .CE(b_ch_brc_s),
        .CLR(AR),
        .D(b_ch_brc_s0_in[3]),
        .Q(brc_d4_in[1]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_brc_s_reg[4] 
       (.C(clk_out_40_p),
        .CE(b_ch_brc_s),
        .CLR(AR),
        .D(b_ch_brc_s0_in[4]),
        .Q(brc_d4_in[2]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_brc_s_reg[5] 
       (.C(clk_out_40_p),
        .CE(b_ch_brc_s),
        .CLR(AR),
        .D(b_ch_brc_s0_in[5]),
        .Q(brc_d4_in[3]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_brc_s_reg[6] 
       (.C(clk_out_40_p),
        .CE(b_ch_brc_s),
        .CLR(AR),
        .D(b_ch_brc_s0_in[6]),
        .Q(brc_t2_in[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_brc_s_reg[7] 
       (.C(clk_out_40_p),
        .CE(b_ch_brc_s),
        .CLR(AR),
        .D(b_ch_brc_s0_in[7]),
        .Q(brc_t2_in[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFF0000)) 
    b_ch_brc_valid_s_i_1
       (.I0(\counter_b_ch_reg_n_0_[0] ),
        .I1(\counter_b_ch_reg_n_0_[1] ),
        .I2(\counter_b_ch_reg_n_0_[2] ),
        .I3(\counter_b_ch_reg_n_0_[3] ),
        .I4(\FSM_sequential_state[0]_i_2_n_0 ),
        .I5(b_ch_brc_valid_s_i_2_n_0),
        .O(b_ch_brc_valid_s));
  LUT4 #(
    .INIT(16'h0400)) 
    b_ch_brc_valid_s_i_2
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(valid_brc_data_out),
        .O(b_ch_brc_valid_s_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    b_ch_brc_valid_s_reg
       (.C(clk_out_40_p),
        .CE(1'b1),
        .CLR(AR),
        .D(b_ch_brc_valid_s),
        .Q(b_ch_brc_valid_s_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00FF0010)) 
    \counter_b_ch[0]_i_1 
       (.I0(\counter_b_ch_reg_n_0_[2] ),
        .I1(\counter_b_ch_reg_n_0_[1] ),
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
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \counter_b_ch[3]_i_2 
       (.I0(\counter_b_ch_reg_n_0_[2] ),
        .I1(\counter_b_ch_reg_n_0_[1] ),
        .I2(\counter_b_ch_reg_n_0_[0] ),
        .O(\counter_b_ch[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
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
    .INIT(64'h0000000000090000)) 
    \counter_b_ch[4]_i_1 
       (.I0(\counter_b_ch[5]_i_2_n_0 ),
        .I1(\counter_b_ch_reg_n_0_[4] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(\counter_b_ch_reg_n_0_[5] ),
        .O(counter_b_ch[4]));
  LUT6 #(
    .INIT(64'h0000800000C08000)) 
    \counter_b_ch[5]_i_1 
       (.I0(b_ch_addr_valid_s_i_2_n_0),
        .I1(state[2]),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(\counter_b_ch_reg_n_0_[5] ),
        .I4(\counter_b_ch_reg_n_0_[4] ),
        .I5(\counter_b_ch[5]_i_2_n_0 ),
        .O(counter_b_ch[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter_b_ch[5]_i_2 
       (.I0(\counter_b_ch_reg_n_0_[0] ),
        .I1(\counter_b_ch_reg_n_0_[1] ),
        .I2(\counter_b_ch_reg_n_0_[2] ),
        .I3(\counter_b_ch_reg_n_0_[3] ),
        .O(\counter_b_ch[5]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_b_ch_reg[0] 
       (.C(clk_out_40_p),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_b_ch[0]),
        .Q(\counter_b_ch_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_b_ch_reg[1] 
       (.C(clk_out_40_p),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_b_ch[1]),
        .Q(\counter_b_ch_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_b_ch_reg[2] 
       (.C(clk_out_40_p),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_b_ch[2]),
        .Q(\counter_b_ch_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_b_ch_reg[3] 
       (.C(clk_out_40_p),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_b_ch[3]),
        .Q(\counter_b_ch_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_b_ch_reg[4] 
       (.C(clk_out_40_p),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_b_ch[4]),
        .Q(\counter_b_ch_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_b_ch_reg[5] 
       (.C(clk_out_40_p),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_b_ch[5]),
        .Q(\counter_b_ch_reg_n_0_[5] ));
  ttcvi_encoder ins_chb_data
       (.AR(AR),
        .Q({addr_a14_in,addr_e_in,addr_s8_in,\b_ch_addr_s_reg_n_0_[7] ,\b_ch_addr_s_reg_n_0_[6] ,\b_ch_addr_s_reg_n_0_[5] ,\b_ch_addr_s_reg_n_0_[4] ,\b_ch_addr_s_reg_n_0_[3] ,\b_ch_addr_s_reg_n_0_[2] ,\b_ch_addr_s_reg_n_0_[1] ,\b_ch_addr_s_reg_n_0_[0] }),
        .a_ch_strobe_s(a_ch_strobe_s),
        .b_ch_addr_valid_s_reg(b_ch_addr_valid_s_reg_n_0),
        .\b_ch_brc_s_reg[7] ({brc_t2_in,brc_d4_in,brc_e_in,\b_ch_brc_s_reg_n_0_[0] }),
        .b_ch_brc_valid_s_reg(b_ch_brc_valid_s_reg_n_0),
        .b_ch_in(b_ch_in),
        .clk_out_40_p(clk_out_40_p),
        .ready_s_reg(ready_s_reg),
        .reset_in_IBUF(reset_in_IBUF),
        .valid_in(valid_in));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ins_ttc_data_generation_i_2
       (.I0(ready_rd_b_ch_out),
        .I1(ready_s_reg),
        .O(ready_b_ch_in));
  LUT6 #(
    .INIT(64'hAEAAAAAAAAAAAAAA)) 
    ready_rd_b_ch_s_i_1
       (.I0(ready_rd_b_ch_s_i_2_n_0),
        .I1(\FSM_sequential_state[0]_i_2_n_0 ),
        .I2(\counter_b_ch_reg_n_0_[1] ),
        .I3(\counter_b_ch_reg_n_0_[0] ),
        .I4(\counter_b_ch_reg_n_0_[3] ),
        .I5(\counter_b_ch_reg_n_0_[2] ),
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
  FDCE #(
    .INIT(1'b0)) 
    ready_rd_b_ch_s_reg
       (.C(clk_out_40_p),
        .CE(1'b1),
        .CLR(AR),
        .D(ready_rd_b_ch_s),
        .Q(ready_rd_b_ch_out));
endmodule

module ttcvi_encoder
   (b_ch_in,
    AR,
    valid_in,
    clk_out_40_p,
    a_ch_strobe_s,
    b_ch_addr_valid_s_reg,
    b_ch_brc_valid_s_reg,
    reset_in_IBUF,
    ready_s_reg,
    Q,
    \b_ch_brc_s_reg[7] );
  output b_ch_in;
  output [0:0]AR;
  output valid_in;
  input clk_out_40_p;
  input a_ch_strobe_s;
  input b_ch_addr_valid_s_reg;
  input b_ch_brc_valid_s_reg;
  input reset_in_IBUF;
  input ready_s_reg;
  input [30:0]Q;
  input [7:0]\b_ch_brc_s_reg[7] ;

  wire [0:0]AR;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire [30:0]Q;
  wire a_ch_strobe_s;
  wire b_ch_addr_valid_s_reg;
  wire [7:0]\b_ch_brc_s_reg[7] ;
  wire b_ch_brc_valid_s_reg;
  wire b_ch_in;
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
  (* RTL_KEEP = "yes" *) wire [1:0]state;
  wire valid_in;

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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFF1EE100)) 
    b_ch_out_i_4
       (.I0(counter_addr[1]),
        .I1(counter_addr[2]),
        .I2(counter_addr[3]),
        .I3(b_ch_out_reg_i_11_n_0),
        .I4(b_ch_out_reg_i_12_n_0),
        .O(b_ch_out_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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
        .Q(b_ch_in));
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
  LUT2 #(
    .INIT(4'hE)) 
    ins_ttcvx_i_1
       (.I0(a_ch_strobe_s),
        .I1(b_ch_strobe_out),
        .O(valid_in));
endmodule

module ttcvx_emulation
   (data_out_p,
    data_out_n,
    clk_in_40_p,
    clk_in_80_p,
    clk_in_80_n,
    clk_in_160_n,
    reset_in,
    valid_in,
    a_ch_in,
    b_ch_in);
  output data_out_p;
  output data_out_n;
  input clk_in_40_p;
  input clk_in_80_p;
  input clk_in_80_n;
  input clk_in_160_n;
  input reset_in;
  input valid_in;
  input a_ch_in;
  input b_ch_in;

  wire a_ch_in;
  wire b_ch_in;
  wire clk_in_160_n;
  wire clk_in_40_p;
  wire clk_in_80_n;
  wire clk_in_80_p;
  wire data_out_n;
  wire data_out_p;
  wire ins_dff_n_0;
  wire reset_in;
  wire valid_in;

  d_ff ins_dff
       (.a_ch_in(a_ch_in),
        .b_ch_in(b_ch_in),
        .clk_in_40_p(clk_in_40_p),
        .clk_in_80_n(clk_in_80_n),
        .clk_in_80_p(clk_in_80_p),
        .data_out_p(data_out_p),
        .jk_internal_reg(ins_dff_n_0),
        .reset_in(reset_in),
        .valid_in(valid_in));
  jk_ff ins_jk
       (.clk_in_160_n(clk_in_160_n),
        .d_internal_reg(ins_dff_n_0),
        .data_out_n(data_out_n),
        .data_out_p(data_out_p),
        .reset_in(reset_in));
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
