// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Fri Oct  5 10:39:32 2018
// Host        : DESKTOP-BBM9U27 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/hanie/Documents/project/2018_10_03_ttctx2ttcrx/vivado/encoder/encoder.sim/sim_1/impl/timing/xsim/tb_ttc_data_generation_time_impl.v
// Design      : ttc_data_generation
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "31242e05" *) 
(* NotValidForBitStream *)
module ttc_data_generation
   (clk_in,
    reset_in,
    ready_a_ch_in,
    ready_b_ch_in,
    valid_a_ch_data_out,
    brc_data_out,
    a_ch_data_out,
    valid_brc_data_out,
    addr_data_out,
    valid_addr_data_out);
  input clk_in;
  input reset_in;
  input ready_a_ch_in;
  input ready_b_ch_in;
  output valid_a_ch_data_out;
  output [7:0]brc_data_out;
  output a_ch_data_out;
  output valid_brc_data_out;
  output [30:0]addr_data_out;
  output valid_addr_data_out;

  wire [5:1]a_ch_counter;
  wire \a_ch_counter[0]_i_1_n_0 ;
  wire \a_ch_counter_reg_n_0_[0] ;
  wire \a_ch_counter_reg_n_0_[1] ;
  wire \a_ch_counter_reg_n_0_[2] ;
  wire \a_ch_counter_reg_n_0_[3] ;
  wire \a_ch_counter_reg_n_0_[4] ;
  wire \a_ch_counter_reg_n_0_[5] ;
  wire a_ch_data_out;
  wire a_ch_data_out_OBUF;
  wire a_ch_data_s_i_1_n_0;
  wire [30:0]addr_data_out;
  wire [30:30]addr_data_s;
  wire \addr_data_s_reg[30]_lopt_replica_1 ;
  wire \addr_data_s_reg[30]_lopt_replica_10_1 ;
  wire \addr_data_s_reg[30]_lopt_replica_11_1 ;
  wire \addr_data_s_reg[30]_lopt_replica_12_1 ;
  wire \addr_data_s_reg[30]_lopt_replica_13_1 ;
  wire \addr_data_s_reg[30]_lopt_replica_14_1 ;
  wire \addr_data_s_reg[30]_lopt_replica_15_1 ;
  wire \addr_data_s_reg[30]_lopt_replica_16_1 ;
  wire \addr_data_s_reg[30]_lopt_replica_2_1 ;
  wire \addr_data_s_reg[30]_lopt_replica_3_1 ;
  wire \addr_data_s_reg[30]_lopt_replica_4_1 ;
  wire \addr_data_s_reg[30]_lopt_replica_5_1 ;
  wire \addr_data_s_reg[30]_lopt_replica_6_1 ;
  wire \addr_data_s_reg[30]_lopt_replica_7_1 ;
  wire \addr_data_s_reg[30]_lopt_replica_8_1 ;
  wire \addr_data_s_reg[30]_lopt_replica_9_1 ;
  wire [7:0]b_ch_brc_counter_data;
  wire \b_ch_brc_counter_data[5]_i_1_n_0 ;
  wire \b_ch_brc_counter_data[6]_i_1_n_0 ;
  wire \b_ch_brc_counter_data[7]_i_1_n_0 ;
  wire \b_ch_brc_counter_data[7]_i_3_n_0 ;
  wire \b_ch_brc_counter_data_reg_n_0_[0] ;
  wire \b_ch_brc_counter_data_reg_n_0_[1] ;
  wire \b_ch_brc_counter_data_reg_n_0_[2] ;
  wire \b_ch_brc_counter_data_reg_n_0_[3] ;
  wire \b_ch_brc_counter_data_reg_n_0_[4] ;
  wire \b_ch_brc_counter_data_reg_n_0_[5] ;
  wire \b_ch_brc_counter_data_reg_n_0_[6] ;
  wire \b_ch_brc_counter_data_reg_n_0_[7] ;
  wire b_ch_flag2_out;
  wire b_ch_flag_reg_n_0;
  wire \b_flag_counter[0]_i_1_n_0 ;
  wire \b_flag_counter[10]_i_1_n_0 ;
  wire \b_flag_counter[10]_i_2_n_0 ;
  wire \b_flag_counter[10]_i_3_n_0 ;
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
  wire \b_flag_counter_reg_n_0_[0] ;
  wire \b_flag_counter_reg_n_0_[10] ;
  wire \b_flag_counter_reg_n_0_[1] ;
  wire \b_flag_counter_reg_n_0_[2] ;
  wire \b_flag_counter_reg_n_0_[3] ;
  wire \b_flag_counter_reg_n_0_[4] ;
  wire \b_flag_counter_reg_n_0_[5] ;
  wire \b_flag_counter_reg_n_0_[6] ;
  wire \b_flag_counter_reg_n_0_[7] ;
  wire \b_flag_counter_reg_n_0_[8] ;
  wire \b_flag_counter_reg_n_0_[9] ;
  wire b_sel_flag_i_1_n_0;
  wire b_sel_flag_i_2_n_0;
  wire b_sel_flag_i_3_n_0;
  wire b_sel_flag_reg_n_0;
  wire [7:0]brc_data_out;
  wire [7:0]brc_data_out_OBUF;
  wire \brc_data_s[0]_i_1_n_0 ;
  wire \brc_data_s[1]_i_1_n_0 ;
  wire \brc_data_s[2]_i_1_n_0 ;
  wire \brc_data_s[3]_i_1_n_0 ;
  wire \brc_data_s[4]_i_1_n_0 ;
  wire \brc_data_s[5]_i_1_n_0 ;
  wire \brc_data_s[6]_i_1_n_0 ;
  wire \brc_data_s[7]_i_1_n_0 ;
  wire clk_in;
  wire clk_in_IBUF;
  wire clk_in_IBUF_BUFG;
  wire ready_a_ch_in;
  wire ready_a_ch_in_IBUF;
  wire ready_b_ch_in;
  wire ready_b_ch_in_IBUF;
  wire reset_in;
  wire reset_in_IBUF;
  wire valid_a_ch_data_out;
  wire valid_a_ch_data_out_OBUF;
  wire valid_addr_data_out;
  wire valid_addr_data_out_OBUF;
  wire valid_brc_data_out;
  wire valid_brc_data_out_OBUF;
  wire valid_brc_data_s_i_1_n_0;

initial begin
 $sdf_annotate("tb_ttc_data_generation_time_impl.sdf",,,,"tool_control");
end
  LUT1 #(
    .INIT(2'h1)) 
    \a_ch_counter[0]_i_1 
       (.I0(\a_ch_counter_reg_n_0_[0] ),
        .O(\a_ch_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_ch_counter[1]_i_1 
       (.I0(\a_ch_counter_reg_n_0_[0] ),
        .I1(\a_ch_counter_reg_n_0_[1] ),
        .O(a_ch_counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \a_ch_counter[2]_i_1 
       (.I0(\a_ch_counter_reg_n_0_[2] ),
        .I1(\a_ch_counter_reg_n_0_[0] ),
        .I2(\a_ch_counter_reg_n_0_[1] ),
        .O(a_ch_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \a_ch_counter[3]_i_1 
       (.I0(\a_ch_counter_reg_n_0_[2] ),
        .I1(\a_ch_counter_reg_n_0_[3] ),
        .I2(\a_ch_counter_reg_n_0_[0] ),
        .I3(\a_ch_counter_reg_n_0_[1] ),
        .O(a_ch_counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_a_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(\a_ch_counter[0]_i_1_n_0 ),
        .Q(\a_ch_counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_ch_counter_reg[1] 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_a_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(a_ch_counter[1]),
        .Q(\a_ch_counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_ch_counter_reg[2] 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_a_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(a_ch_counter[2]),
        .Q(\a_ch_counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_ch_counter_reg[3] 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_a_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(a_ch_counter[3]),
        .Q(\a_ch_counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_ch_counter_reg[4] 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_a_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(a_ch_counter[4]),
        .Q(\a_ch_counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \a_ch_counter_reg[5] 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_a_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(a_ch_counter[5]),
        .Q(\a_ch_counter_reg_n_0_[5] ));
  OBUF a_ch_data_out_OBUF_inst
       (.I(a_ch_data_out_OBUF),
        .O(a_ch_data_out));
  LUT5 #(
    .INIT(32'h00017FFF)) 
    a_ch_data_s_i_1
       (.I0(\a_ch_counter_reg_n_0_[5] ),
        .I1(\a_ch_counter_reg_n_0_[4] ),
        .I2(\a_ch_counter_reg_n_0_[3] ),
        .I3(\a_ch_counter_reg_n_0_[2] ),
        .I4(\a_ch_counter_reg_n_0_[1] ),
        .O(a_ch_data_s_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    a_ch_data_s_reg
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_a_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(a_ch_data_s_i_1_n_0),
        .Q(a_ch_data_out_OBUF));
  OBUF \addr_data_out_OBUF[0]_inst 
       (.I(1'b0),
        .O(addr_data_out[0]));
  OBUF \addr_data_out_OBUF[10]_inst 
       (.I(\addr_data_s_reg[30]_lopt_replica_1 ),
        .O(addr_data_out[10]));
  OBUF \addr_data_out_OBUF[11]_inst 
       (.I(1'b0),
        .O(addr_data_out[11]));
  OBUF \addr_data_out_OBUF[12]_inst 
       (.I(1'b0),
        .O(addr_data_out[12]));
  OBUF \addr_data_out_OBUF[13]_inst 
       (.I(\addr_data_s_reg[30]_lopt_replica_2_1 ),
        .O(addr_data_out[13]));
  OBUF \addr_data_out_OBUF[14]_inst 
       (.I(\addr_data_s_reg[30]_lopt_replica_3_1 ),
        .O(addr_data_out[14]));
  OBUF \addr_data_out_OBUF[15]_inst 
       (.I(1'b0),
        .O(addr_data_out[15]));
  OBUF \addr_data_out_OBUF[16]_inst 
       (.I(1'b0),
        .O(addr_data_out[16]));
  OBUF \addr_data_out_OBUF[17]_inst 
       (.I(\addr_data_s_reg[30]_lopt_replica_4_1 ),
        .O(addr_data_out[17]));
  OBUF \addr_data_out_OBUF[18]_inst 
       (.I(\addr_data_s_reg[30]_lopt_replica_5_1 ),
        .O(addr_data_out[18]));
  OBUF \addr_data_out_OBUF[19]_inst 
       (.I(1'b0),
        .O(addr_data_out[19]));
  OBUF \addr_data_out_OBUF[1]_inst 
       (.I(1'b0),
        .O(addr_data_out[1]));
  OBUF \addr_data_out_OBUF[20]_inst 
       (.I(1'b0),
        .O(addr_data_out[20]));
  OBUF \addr_data_out_OBUF[21]_inst 
       (.I(\addr_data_s_reg[30]_lopt_replica_6_1 ),
        .O(addr_data_out[21]));
  OBUF \addr_data_out_OBUF[22]_inst 
       (.I(\addr_data_s_reg[30]_lopt_replica_7_1 ),
        .O(addr_data_out[22]));
  OBUF \addr_data_out_OBUF[23]_inst 
       (.I(1'b0),
        .O(addr_data_out[23]));
  OBUF \addr_data_out_OBUF[24]_inst 
       (.I(1'b0),
        .O(addr_data_out[24]));
  OBUF \addr_data_out_OBUF[25]_inst 
       (.I(\addr_data_s_reg[30]_lopt_replica_8_1 ),
        .O(addr_data_out[25]));
  OBUF \addr_data_out_OBUF[26]_inst 
       (.I(\addr_data_s_reg[30]_lopt_replica_9_1 ),
        .O(addr_data_out[26]));
  OBUF \addr_data_out_OBUF[27]_inst 
       (.I(\addr_data_s_reg[30]_lopt_replica_10_1 ),
        .O(addr_data_out[27]));
  OBUF \addr_data_out_OBUF[28]_inst 
       (.I(\addr_data_s_reg[30]_lopt_replica_11_1 ),
        .O(addr_data_out[28]));
  OBUF \addr_data_out_OBUF[29]_inst 
       (.I(\addr_data_s_reg[30]_lopt_replica_12_1 ),
        .O(addr_data_out[29]));
  OBUF \addr_data_out_OBUF[2]_inst 
       (.I(1'b0),
        .O(addr_data_out[2]));
  OBUF \addr_data_out_OBUF[30]_inst 
       (.I(\addr_data_s_reg[30]_lopt_replica_13_1 ),
        .O(addr_data_out[30]));
  OBUF \addr_data_out_OBUF[3]_inst 
       (.I(1'b0),
        .O(addr_data_out[3]));
  OBUF \addr_data_out_OBUF[4]_inst 
       (.I(1'b0),
        .O(addr_data_out[4]));
  OBUF \addr_data_out_OBUF[5]_inst 
       (.I(\addr_data_s_reg[30]_lopt_replica_14_1 ),
        .O(addr_data_out[5]));
  OBUF \addr_data_out_OBUF[6]_inst 
       (.I(\addr_data_s_reg[30]_lopt_replica_15_1 ),
        .O(addr_data_out[6]));
  OBUF \addr_data_out_OBUF[7]_inst 
       (.I(1'b0),
        .O(addr_data_out[7]));
  OBUF \addr_data_out_OBUF[8]_inst 
       (.I(1'b0),
        .O(addr_data_out[8]));
  OBUF \addr_data_out_OBUF[9]_inst 
       (.I(\addr_data_s_reg[30]_lopt_replica_16_1 ),
        .O(addr_data_out[9]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \addr_data_s[30]_i_1 
       (.I0(b_ch_flag_reg_n_0),
        .I1(b_sel_flag_reg_n_0),
        .O(addr_data_s));
  FDCE #(
    .INIT(1'b0)) 
    \addr_data_s_reg[30] 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(addr_data_s),
        .Q(valid_addr_data_out_OBUF));
  (* OPT_INSERTED_REPDRIVER *) 
  FDCE #(
    .INIT(1'b0)) 
    \addr_data_s_reg[30]_lopt_replica 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(addr_data_s),
        .Q(\addr_data_s_reg[30]_lopt_replica_1 ));
  (* OPT_INSERTED_REPDRIVER *) 
  FDCE #(
    .INIT(1'b0)) 
    \addr_data_s_reg[30]_lopt_replica_10 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(addr_data_s),
        .Q(\addr_data_s_reg[30]_lopt_replica_10_1 ));
  (* OPT_INSERTED_REPDRIVER *) 
  FDCE #(
    .INIT(1'b0)) 
    \addr_data_s_reg[30]_lopt_replica_11 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(addr_data_s),
        .Q(\addr_data_s_reg[30]_lopt_replica_11_1 ));
  (* OPT_INSERTED_REPDRIVER *) 
  FDCE #(
    .INIT(1'b0)) 
    \addr_data_s_reg[30]_lopt_replica_12 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(addr_data_s),
        .Q(\addr_data_s_reg[30]_lopt_replica_12_1 ));
  (* OPT_INSERTED_REPDRIVER *) 
  FDCE #(
    .INIT(1'b0)) 
    \addr_data_s_reg[30]_lopt_replica_13 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(addr_data_s),
        .Q(\addr_data_s_reg[30]_lopt_replica_13_1 ));
  (* OPT_INSERTED_REPDRIVER *) 
  FDCE #(
    .INIT(1'b0)) 
    \addr_data_s_reg[30]_lopt_replica_14 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(addr_data_s),
        .Q(\addr_data_s_reg[30]_lopt_replica_14_1 ));
  (* OPT_INSERTED_REPDRIVER *) 
  FDCE #(
    .INIT(1'b0)) 
    \addr_data_s_reg[30]_lopt_replica_15 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(addr_data_s),
        .Q(\addr_data_s_reg[30]_lopt_replica_15_1 ));
  (* OPT_INSERTED_REPDRIVER *) 
  FDCE #(
    .INIT(1'b0)) 
    \addr_data_s_reg[30]_lopt_replica_16 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(addr_data_s),
        .Q(\addr_data_s_reg[30]_lopt_replica_16_1 ));
  (* OPT_INSERTED_REPDRIVER *) 
  FDCE #(
    .INIT(1'b0)) 
    \addr_data_s_reg[30]_lopt_replica_2 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(addr_data_s),
        .Q(\addr_data_s_reg[30]_lopt_replica_2_1 ));
  (* OPT_INSERTED_REPDRIVER *) 
  FDCE #(
    .INIT(1'b0)) 
    \addr_data_s_reg[30]_lopt_replica_3 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(addr_data_s),
        .Q(\addr_data_s_reg[30]_lopt_replica_3_1 ));
  (* OPT_INSERTED_REPDRIVER *) 
  FDCE #(
    .INIT(1'b0)) 
    \addr_data_s_reg[30]_lopt_replica_4 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(addr_data_s),
        .Q(\addr_data_s_reg[30]_lopt_replica_4_1 ));
  (* OPT_INSERTED_REPDRIVER *) 
  FDCE #(
    .INIT(1'b0)) 
    \addr_data_s_reg[30]_lopt_replica_5 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(addr_data_s),
        .Q(\addr_data_s_reg[30]_lopt_replica_5_1 ));
  (* OPT_INSERTED_REPDRIVER *) 
  FDCE #(
    .INIT(1'b0)) 
    \addr_data_s_reg[30]_lopt_replica_6 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(addr_data_s),
        .Q(\addr_data_s_reg[30]_lopt_replica_6_1 ));
  (* OPT_INSERTED_REPDRIVER *) 
  FDCE #(
    .INIT(1'b0)) 
    \addr_data_s_reg[30]_lopt_replica_7 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(addr_data_s),
        .Q(\addr_data_s_reg[30]_lopt_replica_7_1 ));
  (* OPT_INSERTED_REPDRIVER *) 
  FDCE #(
    .INIT(1'b0)) 
    \addr_data_s_reg[30]_lopt_replica_8 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(addr_data_s),
        .Q(\addr_data_s_reg[30]_lopt_replica_8_1 ));
  (* OPT_INSERTED_REPDRIVER *) 
  FDCE #(
    .INIT(1'b0)) 
    \addr_data_s_reg[30]_lopt_replica_9 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(addr_data_s),
        .Q(\addr_data_s_reg[30]_lopt_replica_9_1 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \b_ch_brc_counter_data[0]_i_1 
       (.I0(\b_ch_brc_counter_data_reg_n_0_[0] ),
        .O(b_ch_brc_counter_data[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b_ch_brc_counter_data[1]_i_1 
       (.I0(\b_ch_brc_counter_data_reg_n_0_[0] ),
        .I1(\b_ch_brc_counter_data_reg_n_0_[1] ),
        .O(b_ch_brc_counter_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \b_ch_brc_counter_data[2]_i_1 
       (.I0(\b_ch_brc_counter_data_reg_n_0_[2] ),
        .I1(\b_ch_brc_counter_data_reg_n_0_[0] ),
        .I2(\b_ch_brc_counter_data_reg_n_0_[1] ),
        .O(b_ch_brc_counter_data[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \b_ch_brc_counter_data[3]_i_1 
       (.I0(\b_ch_brc_counter_data_reg_n_0_[1] ),
        .I1(\b_ch_brc_counter_data_reg_n_0_[0] ),
        .I2(\b_ch_brc_counter_data_reg_n_0_[2] ),
        .I3(\b_ch_brc_counter_data_reg_n_0_[3] ),
        .O(b_ch_brc_counter_data[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \b_ch_brc_counter_data[4]_i_1 
       (.I0(\b_ch_brc_counter_data_reg_n_0_[4] ),
        .I1(\b_ch_brc_counter_data_reg_n_0_[1] ),
        .I2(\b_ch_brc_counter_data_reg_n_0_[0] ),
        .I3(\b_ch_brc_counter_data_reg_n_0_[2] ),
        .I4(\b_ch_brc_counter_data_reg_n_0_[3] ),
        .O(b_ch_brc_counter_data[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \b_ch_brc_counter_data[5]_i_1 
       (.I0(\b_ch_brc_counter_data_reg_n_0_[5] ),
        .I1(\b_ch_brc_counter_data_reg_n_0_[3] ),
        .I2(\b_ch_brc_counter_data_reg_n_0_[2] ),
        .I3(\b_ch_brc_counter_data_reg_n_0_[0] ),
        .I4(\b_ch_brc_counter_data_reg_n_0_[1] ),
        .I5(\b_ch_brc_counter_data_reg_n_0_[4] ),
        .O(\b_ch_brc_counter_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \b_ch_brc_counter_data[6]_i_1 
       (.I0(\b_ch_brc_counter_data_reg_n_0_[6] ),
        .I1(\b_ch_brc_counter_data_reg_n_0_[5] ),
        .I2(\b_ch_brc_counter_data_reg_n_0_[4] ),
        .I3(\b_ch_brc_counter_data[7]_i_3_n_0 ),
        .O(\b_ch_brc_counter_data[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b_ch_brc_counter_data[7]_i_1 
       (.I0(ready_b_ch_in_IBUF),
        .I1(b_sel_flag_reg_n_0),
        .O(\b_ch_brc_counter_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \b_ch_brc_counter_data[7]_i_2 
       (.I0(\b_ch_brc_counter_data_reg_n_0_[7] ),
        .I1(\b_ch_brc_counter_data[7]_i_3_n_0 ),
        .I2(\b_ch_brc_counter_data_reg_n_0_[4] ),
        .I3(\b_ch_brc_counter_data_reg_n_0_[5] ),
        .I4(\b_ch_brc_counter_data_reg_n_0_[6] ),
        .O(b_ch_brc_counter_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \b_ch_brc_counter_data[7]_i_3 
       (.I0(\b_ch_brc_counter_data_reg_n_0_[3] ),
        .I1(\b_ch_brc_counter_data_reg_n_0_[2] ),
        .I2(\b_ch_brc_counter_data_reg_n_0_[0] ),
        .I3(\b_ch_brc_counter_data_reg_n_0_[1] ),
        .O(\b_ch_brc_counter_data[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_brc_counter_data_reg[0] 
       (.C(clk_in_IBUF_BUFG),
        .CE(\b_ch_brc_counter_data[7]_i_1_n_0 ),
        .CLR(reset_in_IBUF),
        .D(b_ch_brc_counter_data[0]),
        .Q(\b_ch_brc_counter_data_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_brc_counter_data_reg[1] 
       (.C(clk_in_IBUF_BUFG),
        .CE(\b_ch_brc_counter_data[7]_i_1_n_0 ),
        .CLR(reset_in_IBUF),
        .D(b_ch_brc_counter_data[1]),
        .Q(\b_ch_brc_counter_data_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_brc_counter_data_reg[2] 
       (.C(clk_in_IBUF_BUFG),
        .CE(\b_ch_brc_counter_data[7]_i_1_n_0 ),
        .CLR(reset_in_IBUF),
        .D(b_ch_brc_counter_data[2]),
        .Q(\b_ch_brc_counter_data_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_brc_counter_data_reg[3] 
       (.C(clk_in_IBUF_BUFG),
        .CE(\b_ch_brc_counter_data[7]_i_1_n_0 ),
        .CLR(reset_in_IBUF),
        .D(b_ch_brc_counter_data[3]),
        .Q(\b_ch_brc_counter_data_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_brc_counter_data_reg[4] 
       (.C(clk_in_IBUF_BUFG),
        .CE(\b_ch_brc_counter_data[7]_i_1_n_0 ),
        .CLR(reset_in_IBUF),
        .D(b_ch_brc_counter_data[4]),
        .Q(\b_ch_brc_counter_data_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_brc_counter_data_reg[5] 
       (.C(clk_in_IBUF_BUFG),
        .CE(\b_ch_brc_counter_data[7]_i_1_n_0 ),
        .CLR(reset_in_IBUF),
        .D(\b_ch_brc_counter_data[5]_i_1_n_0 ),
        .Q(\b_ch_brc_counter_data_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_brc_counter_data_reg[6] 
       (.C(clk_in_IBUF_BUFG),
        .CE(\b_ch_brc_counter_data[7]_i_1_n_0 ),
        .CLR(reset_in_IBUF),
        .D(\b_ch_brc_counter_data[6]_i_1_n_0 ),
        .Q(\b_ch_brc_counter_data_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_ch_brc_counter_data_reg[7] 
       (.C(clk_in_IBUF_BUFG),
        .CE(\b_ch_brc_counter_data[7]_i_1_n_0 ),
        .CLR(reset_in_IBUF),
        .D(b_ch_brc_counter_data[7]),
        .Q(\b_ch_brc_counter_data_reg_n_0_[7] ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    b_ch_flag_i_1
       (.I0(\b_flag_counter[10]_i_2_n_0 ),
        .I1(\b_flag_counter_reg_n_0_[9] ),
        .I2(\b_flag_counter_reg_n_0_[2] ),
        .I3(\b_flag_counter_reg_n_0_[6] ),
        .I4(\b_flag_counter_reg_n_0_[4] ),
        .I5(b_sel_flag_i_2_n_0),
        .O(b_ch_flag2_out));
  FDCE #(
    .INIT(1'b0)) 
    b_ch_flag_reg
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(b_ch_flag2_out),
        .Q(b_ch_flag_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \b_flag_counter[0]_i_1 
       (.I0(\b_flag_counter_reg_n_0_[10] ),
        .I1(b_sel_flag_reg_n_0),
        .I2(\b_flag_counter_reg_n_0_[0] ),
        .O(\b_flag_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \b_flag_counter[10]_i_1 
       (.I0(\b_flag_counter[10]_i_2_n_0 ),
        .I1(\b_flag_counter_reg_n_0_[9] ),
        .I2(\b_flag_counter_reg_n_0_[7] ),
        .I3(\b_flag_counter[10]_i_3_n_0 ),
        .I4(\b_flag_counter_reg_n_0_[6] ),
        .I5(\b_flag_counter_reg_n_0_[8] ),
        .O(\b_flag_counter[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \b_flag_counter[10]_i_2 
       (.I0(b_sel_flag_reg_n_0),
        .I1(\b_flag_counter_reg_n_0_[10] ),
        .O(\b_flag_counter[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \b_flag_counter[10]_i_3 
       (.I0(\b_flag_counter_reg_n_0_[4] ),
        .I1(\b_flag_counter_reg_n_0_[2] ),
        .I2(\b_flag_counter_reg_n_0_[1] ),
        .I3(\b_flag_counter_reg_n_0_[0] ),
        .I4(\b_flag_counter_reg_n_0_[3] ),
        .I5(\b_flag_counter_reg_n_0_[5] ),
        .O(\b_flag_counter[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \b_flag_counter[1]_i_1 
       (.I0(\b_flag_counter_reg_n_0_[10] ),
        .I1(b_sel_flag_reg_n_0),
        .I2(\b_flag_counter_reg_n_0_[0] ),
        .I3(\b_flag_counter_reg_n_0_[1] ),
        .O(\b_flag_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h02222000)) 
    \b_flag_counter[2]_i_1 
       (.I0(b_sel_flag_reg_n_0),
        .I1(\b_flag_counter_reg_n_0_[10] ),
        .I2(\b_flag_counter_reg_n_0_[0] ),
        .I3(\b_flag_counter_reg_n_0_[1] ),
        .I4(\b_flag_counter_reg_n_0_[2] ),
        .O(\b_flag_counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0222222220000000)) 
    \b_flag_counter[3]_i_1 
       (.I0(b_sel_flag_reg_n_0),
        .I1(\b_flag_counter_reg_n_0_[10] ),
        .I2(\b_flag_counter_reg_n_0_[2] ),
        .I3(\b_flag_counter_reg_n_0_[1] ),
        .I4(\b_flag_counter_reg_n_0_[0] ),
        .I5(\b_flag_counter_reg_n_0_[3] ),
        .O(\b_flag_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \b_flag_counter[4]_i_1 
       (.I0(\b_flag_counter[10]_i_2_n_0 ),
        .I1(\b_flag_counter_reg_n_0_[3] ),
        .I2(\b_flag_counter_reg_n_0_[0] ),
        .I3(\b_flag_counter_reg_n_0_[1] ),
        .I4(\b_flag_counter_reg_n_0_[2] ),
        .I5(\b_flag_counter_reg_n_0_[4] ),
        .O(\b_flag_counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2002)) 
    \b_flag_counter[5]_i_1 
       (.I0(b_sel_flag_reg_n_0),
        .I1(\b_flag_counter_reg_n_0_[10] ),
        .I2(\b_flag_counter[5]_i_2_n_0 ),
        .I3(\b_flag_counter_reg_n_0_[5] ),
        .O(\b_flag_counter[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \b_flag_counter[5]_i_2 
       (.I0(\b_flag_counter_reg_n_0_[3] ),
        .I1(\b_flag_counter_reg_n_0_[0] ),
        .I2(\b_flag_counter_reg_n_0_[1] ),
        .I3(\b_flag_counter_reg_n_0_[2] ),
        .I4(\b_flag_counter_reg_n_0_[4] ),
        .O(\b_flag_counter[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2002)) 
    \b_flag_counter[6]_i_1 
       (.I0(b_sel_flag_reg_n_0),
        .I1(\b_flag_counter_reg_n_0_[10] ),
        .I2(\b_flag_counter[10]_i_3_n_0 ),
        .I3(\b_flag_counter_reg_n_0_[6] ),
        .O(\b_flag_counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h22020020)) 
    \b_flag_counter[7]_i_1 
       (.I0(b_sel_flag_reg_n_0),
        .I1(\b_flag_counter_reg_n_0_[10] ),
        .I2(\b_flag_counter_reg_n_0_[6] ),
        .I3(\b_flag_counter[10]_i_3_n_0 ),
        .I4(\b_flag_counter_reg_n_0_[7] ),
        .O(\b_flag_counter[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2202222200200000)) 
    \b_flag_counter[8]_i_1 
       (.I0(b_sel_flag_reg_n_0),
        .I1(\b_flag_counter_reg_n_0_[10] ),
        .I2(\b_flag_counter_reg_n_0_[7] ),
        .I3(\b_flag_counter[10]_i_3_n_0 ),
        .I4(\b_flag_counter_reg_n_0_[6] ),
        .I5(\b_flag_counter_reg_n_0_[8] ),
        .O(\b_flag_counter[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA2AAAAA00800000)) 
    \b_flag_counter[9]_i_1 
       (.I0(\b_flag_counter[10]_i_2_n_0 ),
        .I1(\b_flag_counter_reg_n_0_[8] ),
        .I2(\b_flag_counter_reg_n_0_[6] ),
        .I3(\b_flag_counter[10]_i_3_n_0 ),
        .I4(\b_flag_counter_reg_n_0_[7] ),
        .I5(\b_flag_counter_reg_n_0_[9] ),
        .O(\b_flag_counter[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \b_flag_counter_reg[0] 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(\b_flag_counter[0]_i_1_n_0 ),
        .Q(\b_flag_counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_flag_counter_reg[10] 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(\b_flag_counter[10]_i_1_n_0 ),
        .Q(\b_flag_counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_flag_counter_reg[1] 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(\b_flag_counter[1]_i_1_n_0 ),
        .Q(\b_flag_counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_flag_counter_reg[2] 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(\b_flag_counter[2]_i_1_n_0 ),
        .Q(\b_flag_counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_flag_counter_reg[3] 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(\b_flag_counter[3]_i_1_n_0 ),
        .Q(\b_flag_counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_flag_counter_reg[4] 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(\b_flag_counter[4]_i_1_n_0 ),
        .Q(\b_flag_counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_flag_counter_reg[5] 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(\b_flag_counter[5]_i_1_n_0 ),
        .Q(\b_flag_counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_flag_counter_reg[6] 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(\b_flag_counter[6]_i_1_n_0 ),
        .Q(\b_flag_counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_flag_counter_reg[7] 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(\b_flag_counter[7]_i_1_n_0 ),
        .Q(\b_flag_counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_flag_counter_reg[8] 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(\b_flag_counter[8]_i_1_n_0 ),
        .Q(\b_flag_counter_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_flag_counter_reg[9] 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(\b_flag_counter[9]_i_1_n_0 ),
        .Q(\b_flag_counter_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    b_sel_flag_i_1
       (.I0(b_sel_flag_i_2_n_0),
        .I1(\b_flag_counter_reg_n_0_[4] ),
        .I2(\b_flag_counter_reg_n_0_[6] ),
        .I3(\b_flag_counter_reg_n_0_[2] ),
        .I4(b_sel_flag_i_3_n_0),
        .O(b_sel_flag_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    b_sel_flag_i_2
       (.I0(\b_flag_counter_reg_n_0_[0] ),
        .I1(\b_flag_counter_reg_n_0_[1] ),
        .I2(\b_flag_counter_reg_n_0_[7] ),
        .I3(\b_flag_counter_reg_n_0_[8] ),
        .I4(\b_flag_counter_reg_n_0_[3] ),
        .I5(\b_flag_counter_reg_n_0_[5] ),
        .O(b_sel_flag_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    b_sel_flag_i_3
       (.I0(\b_flag_counter_reg_n_0_[10] ),
        .I1(\b_flag_counter_reg_n_0_[9] ),
        .I2(b_sel_flag_reg_n_0),
        .O(b_sel_flag_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    b_sel_flag_reg
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(b_sel_flag_i_1_n_0),
        .Q(b_sel_flag_reg_n_0));
  OBUF \brc_data_out_OBUF[0]_inst 
       (.I(brc_data_out_OBUF[0]),
        .O(brc_data_out[0]));
  OBUF \brc_data_out_OBUF[1]_inst 
       (.I(brc_data_out_OBUF[1]),
        .O(brc_data_out[1]));
  OBUF \brc_data_out_OBUF[2]_inst 
       (.I(brc_data_out_OBUF[2]),
        .O(brc_data_out[2]));
  OBUF \brc_data_out_OBUF[3]_inst 
       (.I(brc_data_out_OBUF[3]),
        .O(brc_data_out[3]));
  OBUF \brc_data_out_OBUF[4]_inst 
       (.I(brc_data_out_OBUF[4]),
        .O(brc_data_out[4]));
  OBUF \brc_data_out_OBUF[5]_inst 
       (.I(brc_data_out_OBUF[5]),
        .O(brc_data_out[5]));
  OBUF \brc_data_out_OBUF[6]_inst 
       (.I(brc_data_out_OBUF[6]),
        .O(brc_data_out[6]));
  OBUF \brc_data_out_OBUF[7]_inst 
       (.I(brc_data_out_OBUF[7]),
        .O(brc_data_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \brc_data_s[0]_i_1 
       (.I0(\b_ch_brc_counter_data_reg_n_0_[0] ),
        .I1(b_sel_flag_reg_n_0),
        .O(\brc_data_s[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \brc_data_s[1]_i_1 
       (.I0(\b_ch_brc_counter_data_reg_n_0_[1] ),
        .I1(b_sel_flag_reg_n_0),
        .O(\brc_data_s[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \brc_data_s[2]_i_1 
       (.I0(\b_ch_brc_counter_data_reg_n_0_[2] ),
        .I1(b_sel_flag_reg_n_0),
        .O(\brc_data_s[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \brc_data_s[3]_i_1 
       (.I0(\b_ch_brc_counter_data_reg_n_0_[3] ),
        .I1(b_sel_flag_reg_n_0),
        .O(\brc_data_s[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \brc_data_s[4]_i_1 
       (.I0(\b_ch_brc_counter_data_reg_n_0_[4] ),
        .I1(b_sel_flag_reg_n_0),
        .O(\brc_data_s[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \brc_data_s[5]_i_1 
       (.I0(\b_ch_brc_counter_data_reg_n_0_[5] ),
        .I1(b_sel_flag_reg_n_0),
        .O(\brc_data_s[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \brc_data_s[6]_i_1 
       (.I0(\b_ch_brc_counter_data_reg_n_0_[6] ),
        .I1(b_sel_flag_reg_n_0),
        .O(\brc_data_s[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \brc_data_s[7]_i_1 
       (.I0(\b_ch_brc_counter_data_reg_n_0_[7] ),
        .I1(b_sel_flag_reg_n_0),
        .O(\brc_data_s[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \brc_data_s_reg[0] 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(\brc_data_s[0]_i_1_n_0 ),
        .Q(brc_data_out_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \brc_data_s_reg[1] 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(\brc_data_s[1]_i_1_n_0 ),
        .Q(brc_data_out_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \brc_data_s_reg[2] 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(\brc_data_s[2]_i_1_n_0 ),
        .Q(brc_data_out_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \brc_data_s_reg[3] 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(\brc_data_s[3]_i_1_n_0 ),
        .Q(brc_data_out_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \brc_data_s_reg[4] 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(\brc_data_s[4]_i_1_n_0 ),
        .Q(brc_data_out_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \brc_data_s_reg[5] 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(\brc_data_s[5]_i_1_n_0 ),
        .Q(brc_data_out_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \brc_data_s_reg[6] 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(\brc_data_s[6]_i_1_n_0 ),
        .Q(brc_data_out_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \brc_data_s_reg[7] 
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(\brc_data_s[7]_i_1_n_0 ),
        .Q(brc_data_out_OBUF[7]));
  BUFG clk_in_IBUF_BUFG_inst
       (.I(clk_in_IBUF),
        .O(clk_in_IBUF_BUFG));
  IBUF clk_in_IBUF_inst
       (.I(clk_in),
        .O(clk_in_IBUF));
  IBUF ready_a_ch_in_IBUF_inst
       (.I(ready_a_ch_in),
        .O(ready_a_ch_in_IBUF));
  IBUF ready_b_ch_in_IBUF_inst
       (.I(ready_b_ch_in),
        .O(ready_b_ch_in_IBUF));
  IBUF reset_in_IBUF_inst
       (.I(reset_in),
        .O(reset_in_IBUF));
  OBUF valid_a_ch_data_out_OBUF_inst
       (.I(valid_a_ch_data_out_OBUF),
        .O(valid_a_ch_data_out));
  FDCE #(
    .INIT(1'b0)) 
    valid_a_ch_data_s_reg
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_a_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(ready_a_ch_in_IBUF),
        .Q(valid_a_ch_data_out_OBUF));
  OBUF valid_addr_data_out_OBUF_inst
       (.I(valid_addr_data_out_OBUF),
        .O(valid_addr_data_out));
  OBUF valid_brc_data_out_OBUF_inst
       (.I(valid_brc_data_out_OBUF),
        .O(valid_brc_data_out));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    valid_brc_data_s_i_1
       (.I0(b_sel_flag_reg_n_0),
        .O(valid_brc_data_s_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    valid_brc_data_s_reg
       (.C(clk_in_IBUF_BUFG),
        .CE(ready_b_ch_in_IBUF),
        .CLR(reset_in_IBUF),
        .D(valid_brc_data_s_i_1_n_0),
        .Q(valid_brc_data_out_OBUF));
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
