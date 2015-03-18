////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Prueba_1_synthesis.v
// /___/   /\     Timestamp: Sun Mar 15 14:47:10 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Prueba_1.ngc Prueba_1_synthesis.v 
// Device	: xc6slx16-2-csg324
// Input file	: Prueba_1.ngc
// Output file	: C:\Users\Javier\Desktop\LabDigitales\Proyecto_Corto_2_LDSD\netgen\synthesis\Prueba_1_synthesis.v
// # of Modules	: 1
// Design Name	: Prueba_1
// Xilinx        : F:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Prueba_1 (
  clk_i, rst_i, ps2_data, ps2_clk, rx_en, ps2_clk_o, ps2_data_o, clk_o, rx_en_o, rx_listo, data_o_o, anodos_o, codigo_o
);
  input clk_i;
  input rst_i;
  input ps2_data;
  input ps2_clk;
  input rx_en;
  output ps2_clk_o;
  output ps2_data_o;
  output clk_o;
  output rx_en_o;
  output rx_listo;
  output data_o_o;
  output [3 : 0] anodos_o;
  output [7 : 0] codigo_o;
  wire clk_i_BUFGP_0;
  wire rst_i_IBUF_1;
  wire ps2_data_o_OBUF_2;
  wire ps2_clk_o_OBUF_3;
  wire rx_en_o_OBUF_4;
  wire \A/estado_actl_FSM_FFd1_14 ;
  wire \D/clk_o_15 ;
  wire codigo_o_6_OBUF_16;
  wire codigo_o_5_OBUF_17;
  wire codigo_o_4_OBUF_18;
  wire codigo_o_3_OBUF_19;
  wire codigo_o_2_OBUF_20;
  wire codigo_o_1_OBUF_21;
  wire codigo_o_0_OBUF_22;
  wire anodos_o_3_OBUF_23;
  wire anodos_o_2_OBUF_24;
  wire anodos_o_1_OBUF_25;
  wire anodos_o_0_OBUF_26;
  wire N0;
  wire codigo_o_7_OBUF_28;
  wire \D/counter[15]_PWR_5_o_equal_1_o ;
  wire \D/Mcount_counter_eqn_0 ;
  wire \D/Mcount_counter_eqn_1 ;
  wire \D/Mcount_counter_eqn_2 ;
  wire \D/Mcount_counter_eqn_3 ;
  wire \D/Mcount_counter_eqn_4 ;
  wire \D/Mcount_counter_eqn_5 ;
  wire \D/Mcount_counter_eqn_6 ;
  wire \D/Mcount_counter_eqn_7 ;
  wire \D/Mcount_counter_eqn_8 ;
  wire \D/Mcount_counter_eqn_9 ;
  wire \D/Mcount_counter_eqn_10 ;
  wire \D/Mcount_counter_eqn_11 ;
  wire \D/Mcount_counter_eqn_12 ;
  wire \D/Mcount_counter_eqn_13 ;
  wire \D/Mcount_counter_eqn_14 ;
  wire \D/Mcount_counter_eqn_15 ;
  wire \A/estado_actl_FSM_FFd1-In1_94 ;
  wire \A/estado_actl_FSM_FFd2_95 ;
  wire \A/estado_actl_FSM_FFd1-In_96 ;
  wire \A/estado_actl_FSM_FFd2-In ;
  wire \A/f_ps2c_sgt ;
  wire \A/f_ps2c_reg_105 ;
  wire \B/codigo_o<4>3_114 ;
  wire \B/codigo_o<6>2_115 ;
  wire \B/codigo_o<2>11 ;
  wire \B/codigo_o<6>1_117 ;
  wire \B/codigo_o<5>2_118 ;
  wire \B/EA_FSM_FFd1_119 ;
  wire \B/EA_FSM_FFd2_120 ;
  wire \B/EA_FSM_FFd2-In ;
  wire \B/n0059 ;
  wire \D/counter[15]_PWR_5_o_equal_1_o<15>1 ;
  wire N3;
  wire N7;
  wire \A/Mmux_f_ps2c_sgt1 ;
  wire \A/Mmux_f_ps2c_sgt11_127 ;
  wire N9;
  wire N11;
  wire N13;
  wire N15;
  wire N17;
  wire N19;
  wire N21;
  wire \B/out1 ;
  wire \B/out11_137 ;
  wire \B/out12_138 ;
  wire \D/Mcount_counter_cy<1>_rt_162 ;
  wire \D/Mcount_counter_cy<2>_rt_163 ;
  wire \D/Mcount_counter_cy<3>_rt_164 ;
  wire \D/Mcount_counter_cy<4>_rt_165 ;
  wire \D/Mcount_counter_cy<5>_rt_166 ;
  wire \D/Mcount_counter_cy<6>_rt_167 ;
  wire \D/Mcount_counter_cy<7>_rt_168 ;
  wire \D/Mcount_counter_cy<8>_rt_169 ;
  wire \D/Mcount_counter_cy<9>_rt_170 ;
  wire \D/Mcount_counter_cy<10>_rt_171 ;
  wire \D/Mcount_counter_cy<11>_rt_172 ;
  wire \D/Mcount_counter_cy<12>_rt_173 ;
  wire \D/Mcount_counter_cy<13>_rt_174 ;
  wire \D/Mcount_counter_cy<14>_rt_175 ;
  wire \D/Mcount_counter_xor<15>_rt_176 ;
  wire \D/clk_o_rstpot_177 ;
  wire N23;
  wire N25;
  wire \A/n_reg_0_dpot_180 ;
  wire \A/n_reg_1_dpot_181 ;
  wire \A/n_reg_2_dpot_182 ;
  wire \A/n_reg_3_dpot_183 ;
  wire \A/b_reg_10_rstpot_184 ;
  wire \A/b_reg_9_rstpot_185 ;
  wire \A/b_reg_8_rstpot_186 ;
  wire \A/b_reg_7_rstpot_187 ;
  wire \A/b_reg_6_rstpot_188 ;
  wire \A/b_reg_5_rstpot_189 ;
  wire \A/b_reg_4_rstpot_190 ;
  wire \A/b_reg_3_rstpot_191 ;
  wire \A/b_reg_2_rstpot_192 ;
  wire \A/b_reg_1_rstpot_193 ;
  wire \A/b_reg_0_rstpot_194 ;
  wire N27;
  wire N29;
  wire N31;
  wire N33;
  wire N35;
  wire N37;
  wire N39;
  wire N41;
  wire N43;
  wire N45;
  wire N47;
  wire N49;
  wire N51;
  wire N59;
  wire N61;
  wire N63;
  wire N65;
  wire N67;
  wire N69;
  wire N71;
  wire N73;
  wire N75;
  wire N77;
  wire N79;
  wire N81;
  wire N83;
  wire N85;
  wire N86;
  wire [10 : 0] \A/b_reg ;
  wire [15 : 0] \D/counter ;
  wire [15 : 0] Result;
  wire [0 : 0] \D/Mcount_counter_lut ;
  wire [14 : 0] \D/Mcount_counter_cy ;
  wire [3 : 0] \A/n_reg ;
  wire [7 : 0] \A/filtro_reg ;
  wire [2 : 2] \B/codigo_o ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(codigo_o_7_OBUF_28)
  );
  FDC   \D/counter_0  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\D/Mcount_counter_eqn_0 ),
    .Q(\D/counter [0])
  );
  FDC   \D/counter_1  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\D/Mcount_counter_eqn_1 ),
    .Q(\D/counter [1])
  );
  FDC   \D/counter_2  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\D/Mcount_counter_eqn_2 ),
    .Q(\D/counter [2])
  );
  FDC   \D/counter_3  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\D/Mcount_counter_eqn_3 ),
    .Q(\D/counter [3])
  );
  FDC   \D/counter_4  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\D/Mcount_counter_eqn_4 ),
    .Q(\D/counter [4])
  );
  FDC   \D/counter_5  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\D/Mcount_counter_eqn_5 ),
    .Q(\D/counter [5])
  );
  FDC   \D/counter_6  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\D/Mcount_counter_eqn_6 ),
    .Q(\D/counter [6])
  );
  FDC   \D/counter_7  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\D/Mcount_counter_eqn_7 ),
    .Q(\D/counter [7])
  );
  FDC   \D/counter_8  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\D/Mcount_counter_eqn_8 ),
    .Q(\D/counter [8])
  );
  FDC   \D/counter_9  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\D/Mcount_counter_eqn_9 ),
    .Q(\D/counter [9])
  );
  FDC   \D/counter_10  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\D/Mcount_counter_eqn_10 ),
    .Q(\D/counter [10])
  );
  FDC   \D/counter_11  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\D/Mcount_counter_eqn_11 ),
    .Q(\D/counter [11])
  );
  FDC   \D/counter_12  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\D/Mcount_counter_eqn_12 ),
    .Q(\D/counter [12])
  );
  FDC   \D/counter_13  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\D/Mcount_counter_eqn_13 ),
    .Q(\D/counter [13])
  );
  FDC   \D/counter_14  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\D/Mcount_counter_eqn_14 ),
    .Q(\D/counter [14])
  );
  FDC   \D/counter_15  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\D/Mcount_counter_eqn_15 ),
    .Q(\D/counter [15])
  );
  MUXCY   \D/Mcount_counter_cy<0>  (
    .CI(N0),
    .DI(codigo_o_7_OBUF_28),
    .S(\D/Mcount_counter_lut [0]),
    .O(\D/Mcount_counter_cy [0])
  );
  XORCY   \D/Mcount_counter_xor<0>  (
    .CI(N0),
    .LI(\D/Mcount_counter_lut [0]),
    .O(Result[0])
  );
  MUXCY   \D/Mcount_counter_cy<1>  (
    .CI(\D/Mcount_counter_cy [0]),
    .DI(N0),
    .S(\D/Mcount_counter_cy<1>_rt_162 ),
    .O(\D/Mcount_counter_cy [1])
  );
  XORCY   \D/Mcount_counter_xor<1>  (
    .CI(\D/Mcount_counter_cy [0]),
    .LI(\D/Mcount_counter_cy<1>_rt_162 ),
    .O(Result[1])
  );
  MUXCY   \D/Mcount_counter_cy<2>  (
    .CI(\D/Mcount_counter_cy [1]),
    .DI(N0),
    .S(\D/Mcount_counter_cy<2>_rt_163 ),
    .O(\D/Mcount_counter_cy [2])
  );
  XORCY   \D/Mcount_counter_xor<2>  (
    .CI(\D/Mcount_counter_cy [1]),
    .LI(\D/Mcount_counter_cy<2>_rt_163 ),
    .O(Result[2])
  );
  MUXCY   \D/Mcount_counter_cy<3>  (
    .CI(\D/Mcount_counter_cy [2]),
    .DI(N0),
    .S(\D/Mcount_counter_cy<3>_rt_164 ),
    .O(\D/Mcount_counter_cy [3])
  );
  XORCY   \D/Mcount_counter_xor<3>  (
    .CI(\D/Mcount_counter_cy [2]),
    .LI(\D/Mcount_counter_cy<3>_rt_164 ),
    .O(Result[3])
  );
  MUXCY   \D/Mcount_counter_cy<4>  (
    .CI(\D/Mcount_counter_cy [3]),
    .DI(N0),
    .S(\D/Mcount_counter_cy<4>_rt_165 ),
    .O(\D/Mcount_counter_cy [4])
  );
  XORCY   \D/Mcount_counter_xor<4>  (
    .CI(\D/Mcount_counter_cy [3]),
    .LI(\D/Mcount_counter_cy<4>_rt_165 ),
    .O(Result[4])
  );
  MUXCY   \D/Mcount_counter_cy<5>  (
    .CI(\D/Mcount_counter_cy [4]),
    .DI(N0),
    .S(\D/Mcount_counter_cy<5>_rt_166 ),
    .O(\D/Mcount_counter_cy [5])
  );
  XORCY   \D/Mcount_counter_xor<5>  (
    .CI(\D/Mcount_counter_cy [4]),
    .LI(\D/Mcount_counter_cy<5>_rt_166 ),
    .O(Result[5])
  );
  MUXCY   \D/Mcount_counter_cy<6>  (
    .CI(\D/Mcount_counter_cy [5]),
    .DI(N0),
    .S(\D/Mcount_counter_cy<6>_rt_167 ),
    .O(\D/Mcount_counter_cy [6])
  );
  XORCY   \D/Mcount_counter_xor<6>  (
    .CI(\D/Mcount_counter_cy [5]),
    .LI(\D/Mcount_counter_cy<6>_rt_167 ),
    .O(Result[6])
  );
  MUXCY   \D/Mcount_counter_cy<7>  (
    .CI(\D/Mcount_counter_cy [6]),
    .DI(N0),
    .S(\D/Mcount_counter_cy<7>_rt_168 ),
    .O(\D/Mcount_counter_cy [7])
  );
  XORCY   \D/Mcount_counter_xor<7>  (
    .CI(\D/Mcount_counter_cy [6]),
    .LI(\D/Mcount_counter_cy<7>_rt_168 ),
    .O(Result[7])
  );
  MUXCY   \D/Mcount_counter_cy<8>  (
    .CI(\D/Mcount_counter_cy [7]),
    .DI(N0),
    .S(\D/Mcount_counter_cy<8>_rt_169 ),
    .O(\D/Mcount_counter_cy [8])
  );
  XORCY   \D/Mcount_counter_xor<8>  (
    .CI(\D/Mcount_counter_cy [7]),
    .LI(\D/Mcount_counter_cy<8>_rt_169 ),
    .O(Result[8])
  );
  MUXCY   \D/Mcount_counter_cy<9>  (
    .CI(\D/Mcount_counter_cy [8]),
    .DI(N0),
    .S(\D/Mcount_counter_cy<9>_rt_170 ),
    .O(\D/Mcount_counter_cy [9])
  );
  XORCY   \D/Mcount_counter_xor<9>  (
    .CI(\D/Mcount_counter_cy [8]),
    .LI(\D/Mcount_counter_cy<9>_rt_170 ),
    .O(Result[9])
  );
  MUXCY   \D/Mcount_counter_cy<10>  (
    .CI(\D/Mcount_counter_cy [9]),
    .DI(N0),
    .S(\D/Mcount_counter_cy<10>_rt_171 ),
    .O(\D/Mcount_counter_cy [10])
  );
  XORCY   \D/Mcount_counter_xor<10>  (
    .CI(\D/Mcount_counter_cy [9]),
    .LI(\D/Mcount_counter_cy<10>_rt_171 ),
    .O(Result[10])
  );
  MUXCY   \D/Mcount_counter_cy<11>  (
    .CI(\D/Mcount_counter_cy [10]),
    .DI(N0),
    .S(\D/Mcount_counter_cy<11>_rt_172 ),
    .O(\D/Mcount_counter_cy [11])
  );
  XORCY   \D/Mcount_counter_xor<11>  (
    .CI(\D/Mcount_counter_cy [10]),
    .LI(\D/Mcount_counter_cy<11>_rt_172 ),
    .O(Result[11])
  );
  MUXCY   \D/Mcount_counter_cy<12>  (
    .CI(\D/Mcount_counter_cy [11]),
    .DI(N0),
    .S(\D/Mcount_counter_cy<12>_rt_173 ),
    .O(\D/Mcount_counter_cy [12])
  );
  XORCY   \D/Mcount_counter_xor<12>  (
    .CI(\D/Mcount_counter_cy [11]),
    .LI(\D/Mcount_counter_cy<12>_rt_173 ),
    .O(Result[12])
  );
  MUXCY   \D/Mcount_counter_cy<13>  (
    .CI(\D/Mcount_counter_cy [12]),
    .DI(N0),
    .S(\D/Mcount_counter_cy<13>_rt_174 ),
    .O(\D/Mcount_counter_cy [13])
  );
  XORCY   \D/Mcount_counter_xor<13>  (
    .CI(\D/Mcount_counter_cy [12]),
    .LI(\D/Mcount_counter_cy<13>_rt_174 ),
    .O(Result[13])
  );
  MUXCY   \D/Mcount_counter_cy<14>  (
    .CI(\D/Mcount_counter_cy [13]),
    .DI(N0),
    .S(\D/Mcount_counter_cy<14>_rt_175 ),
    .O(\D/Mcount_counter_cy [14])
  );
  XORCY   \D/Mcount_counter_xor<14>  (
    .CI(\D/Mcount_counter_cy [13]),
    .LI(\D/Mcount_counter_cy<14>_rt_175 ),
    .O(Result[14])
  );
  XORCY   \D/Mcount_counter_xor<15>  (
    .CI(\D/Mcount_counter_cy [14]),
    .LI(\D/Mcount_counter_xor<15>_rt_176 ),
    .O(Result[15])
  );
  FDCE   \A/n_reg_3  (
    .C(clk_i_BUFGP_0),
    .CE(\A/estado_actl_FSM_FFd1-In1_94 ),
    .CLR(rst_i_IBUF_1),
    .D(\A/n_reg_3_dpot_183 ),
    .Q(\A/n_reg [3])
  );
  FDCE   \A/n_reg_2  (
    .C(clk_i_BUFGP_0),
    .CE(\A/estado_actl_FSM_FFd1-In1_94 ),
    .CLR(rst_i_IBUF_1),
    .D(\A/n_reg_2_dpot_182 ),
    .Q(\A/n_reg [2])
  );
  FDCE   \A/n_reg_1  (
    .C(clk_i_BUFGP_0),
    .CE(\A/estado_actl_FSM_FFd1-In1_94 ),
    .CLR(rst_i_IBUF_1),
    .D(\A/n_reg_1_dpot_181 ),
    .Q(\A/n_reg [1])
  );
  FDCE   \A/n_reg_0  (
    .C(clk_i_BUFGP_0),
    .CE(\A/estado_actl_FSM_FFd1-In1_94 ),
    .CLR(rst_i_IBUF_1),
    .D(\A/n_reg_0_dpot_180 ),
    .Q(\A/n_reg [0])
  );
  FDC   \A/estado_actl_FSM_FFd1  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/estado_actl_FSM_FFd1-In_96 ),
    .Q(\A/estado_actl_FSM_FFd1_14 )
  );
  FDC   \A/estado_actl_FSM_FFd2  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/estado_actl_FSM_FFd2-In ),
    .Q(\A/estado_actl_FSM_FFd2_95 )
  );
  FDC   \A/f_ps2c_reg  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/f_ps2c_sgt ),
    .Q(\A/f_ps2c_reg_105 )
  );
  FDC   \A/filtro_reg_7  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(ps2_clk_o_OBUF_3),
    .Q(\A/filtro_reg [7])
  );
  FDC   \A/filtro_reg_6  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/filtro_reg [7]),
    .Q(\A/filtro_reg [6])
  );
  FDC   \A/filtro_reg_5  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/filtro_reg [6]),
    .Q(\A/filtro_reg [5])
  );
  FDC   \A/filtro_reg_4  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/filtro_reg [5]),
    .Q(\A/filtro_reg [4])
  );
  FDC   \A/filtro_reg_3  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/filtro_reg [4]),
    .Q(\A/filtro_reg [3])
  );
  FDC   \A/filtro_reg_2  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/filtro_reg [3]),
    .Q(\A/filtro_reg [2])
  );
  FDC   \A/filtro_reg_1  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/filtro_reg [2]),
    .Q(\A/filtro_reg [1])
  );
  FDC   \A/filtro_reg_0  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/filtro_reg [1]),
    .Q(\A/filtro_reg [0])
  );
  FDC   \B/EA_FSM_FFd1  (
    .C(\D/clk_o_15 ),
    .CLR(rst_i_IBUF_1),
    .D(\B/EA_FSM_FFd2_120 ),
    .Q(\B/EA_FSM_FFd1_119 )
  );
  FDC   \B/EA_FSM_FFd2  (
    .C(\D/clk_o_15 ),
    .CLR(rst_i_IBUF_1),
    .D(\B/EA_FSM_FFd2-In ),
    .Q(\B/EA_FSM_FFd2_120 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \D/Mcount_counter_eqn_01  (
    .I0(Result[0]),
    .I1(\D/counter[15]_PWR_5_o_equal_1_o ),
    .O(\D/Mcount_counter_eqn_0 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \D/Mcount_counter_eqn_16  (
    .I0(Result[1]),
    .I1(\D/counter[15]_PWR_5_o_equal_1_o ),
    .O(\D/Mcount_counter_eqn_1 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \D/Mcount_counter_eqn_21  (
    .I0(Result[2]),
    .I1(\D/counter[15]_PWR_5_o_equal_1_o ),
    .O(\D/Mcount_counter_eqn_2 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \D/Mcount_counter_eqn_31  (
    .I0(Result[3]),
    .I1(\D/counter[15]_PWR_5_o_equal_1_o ),
    .O(\D/Mcount_counter_eqn_3 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \D/Mcount_counter_eqn_41  (
    .I0(Result[4]),
    .I1(\D/counter[15]_PWR_5_o_equal_1_o ),
    .O(\D/Mcount_counter_eqn_4 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \D/Mcount_counter_eqn_51  (
    .I0(Result[5]),
    .I1(\D/counter[15]_PWR_5_o_equal_1_o ),
    .O(\D/Mcount_counter_eqn_5 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \D/Mcount_counter_eqn_61  (
    .I0(Result[6]),
    .I1(\D/counter[15]_PWR_5_o_equal_1_o ),
    .O(\D/Mcount_counter_eqn_6 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \D/Mcount_counter_eqn_71  (
    .I0(Result[7]),
    .I1(\D/counter[15]_PWR_5_o_equal_1_o ),
    .O(\D/Mcount_counter_eqn_7 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \D/Mcount_counter_eqn_81  (
    .I0(Result[8]),
    .I1(\D/counter[15]_PWR_5_o_equal_1_o ),
    .O(\D/Mcount_counter_eqn_8 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \D/Mcount_counter_eqn_91  (
    .I0(Result[9]),
    .I1(\D/counter[15]_PWR_5_o_equal_1_o ),
    .O(\D/Mcount_counter_eqn_9 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \D/Mcount_counter_eqn_101  (
    .I0(Result[10]),
    .I1(\D/counter[15]_PWR_5_o_equal_1_o ),
    .O(\D/Mcount_counter_eqn_10 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \D/Mcount_counter_eqn_111  (
    .I0(Result[11]),
    .I1(\D/counter[15]_PWR_5_o_equal_1_o ),
    .O(\D/Mcount_counter_eqn_11 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \D/Mcount_counter_eqn_121  (
    .I0(Result[12]),
    .I1(\D/counter[15]_PWR_5_o_equal_1_o ),
    .O(\D/Mcount_counter_eqn_12 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \D/Mcount_counter_eqn_131  (
    .I0(Result[13]),
    .I1(\D/counter[15]_PWR_5_o_equal_1_o ),
    .O(\D/Mcount_counter_eqn_13 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \D/Mcount_counter_eqn_141  (
    .I0(Result[14]),
    .I1(\D/counter[15]_PWR_5_o_equal_1_o ),
    .O(\D/Mcount_counter_eqn_14 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \D/Mcount_counter_eqn_151  (
    .I0(Result[15]),
    .I1(\D/counter[15]_PWR_5_o_equal_1_o ),
    .O(\D/Mcount_counter_eqn_15 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF0040 ))
  \B/codigo_o<5>1  (
    .I0(\A/b_reg [2]),
    .I1(\B/codigo_o<2>11 ),
    .I2(\A/b_reg [4]),
    .I3(\A/b_reg [8]),
    .I4(\B/codigo_o<6>1_117 ),
    .I5(\B/codigo_o<4>3_114 ),
    .O(codigo_o_3_OBUF_19)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF4444E444 ))
  \B/codigo_o<6>3  (
    .I0(\A/b_reg [2]),
    .I1(\B/codigo_o<6>2_115 ),
    .I2(\B/codigo_o<2>11 ),
    .I3(\A/b_reg [4]),
    .I4(\A/b_reg [8]),
    .I5(\B/codigo_o<6>1_117 ),
    .O(codigo_o_2_OBUF_20)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF88A8FFFF ))
  \B/codigo_o<3>1  (
    .I0(\A/b_reg [2]),
    .I1(\B/codigo_o<6>2_115 ),
    .I2(\B/codigo_o<2>11 ),
    .I3(\A/b_reg [8]),
    .I4(\B/n0059 ),
    .I5(\B/codigo_o<5>2_118 ),
    .O(codigo_o_5_OBUF_17)
  );
  LUT5 #(
    .INIT ( 32'h01000000 ))
  \B/codigo_o<2>111  (
    .I0(\A/b_reg [1]),
    .I1(\A/b_reg [7]),
    .I2(\A/b_reg [6]),
    .I3(\A/b_reg [5]),
    .I4(\A/b_reg [3]),
    .O(\B/codigo_o<2>11 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \B/EA__n0079<1>1  (
    .I0(\B/EA_FSM_FFd1_119 ),
    .I1(\B/EA_FSM_FFd2_120 ),
    .O(anodos_o_3_OBUF_23)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \B/EA__n0079<2>1  (
    .I0(\B/EA_FSM_FFd2_120 ),
    .I1(\B/EA_FSM_FFd1_119 ),
    .O(anodos_o_2_OBUF_24)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \B/EA__n0079<3>1  (
    .I0(\B/EA_FSM_FFd2_120 ),
    .I1(\B/EA_FSM_FFd1_119 ),
    .O(anodos_o_1_OBUF_25)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \B/EA__n0079<4>1  (
    .I0(\B/EA_FSM_FFd1_119 ),
    .I1(\B/EA_FSM_FFd2_120 ),
    .O(anodos_o_0_OBUF_26)
  );
  LUT6 #(
    .INIT ( 64'h0001000000000000 ))
  \D/counter[15]_PWR_5_o_equal_1_o<15>2  (
    .I0(\D/counter [4]),
    .I1(\D/counter [5]),
    .I2(\D/counter [7]),
    .I3(\D/counter [10]),
    .I4(\D/counter [1]),
    .I5(\D/counter [0]),
    .O(\D/counter[15]_PWR_5_o_equal_1_o<15>1 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \A/estado_actl_FSM_FFd1-In1_SW0  (
    .I0(\A/filtro_reg [6]),
    .I1(\A/filtro_reg [5]),
    .I2(\A/filtro_reg [4]),
    .I3(\A/filtro_reg [7]),
    .O(N3)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000004 ))
  \A/estado_actl_FSM_FFd1-In1  (
    .I0(\A/filtro_reg [0]),
    .I1(\A/f_ps2c_reg_105 ),
    .I2(\A/filtro_reg [1]),
    .I3(\A/filtro_reg [3]),
    .I4(\A/filtro_reg [2]),
    .I5(N3),
    .O(\A/estado_actl_FSM_FFd1-In1_94 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \A/_n0071_inv_SW0  (
    .I0(\A/n_reg [2]),
    .I1(\A/n_reg [1]),
    .I2(\A/n_reg [0]),
    .O(N7)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \A/Mmux_f_ps2c_sgt11  (
    .I0(\A/filtro_reg [4]),
    .I1(\A/filtro_reg [5]),
    .I2(\A/filtro_reg [2]),
    .I3(\A/filtro_reg [3]),
    .I4(\A/filtro_reg [0]),
    .I5(\A/filtro_reg [1]),
    .O(\A/Mmux_f_ps2c_sgt1 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \A/Mmux_f_ps2c_sgt12  (
    .I0(\A/filtro_reg [4]),
    .I1(\A/filtro_reg [5]),
    .I2(\A/filtro_reg [2]),
    .I3(\A/filtro_reg [3]),
    .I4(\A/filtro_reg [0]),
    .I5(\A/filtro_reg [1]),
    .O(\A/Mmux_f_ps2c_sgt11_127 )
  );
  LUT5 #(
    .INIT ( 32'hEAE8AAA8 ))
  \A/Mmux_f_ps2c_sgt13  (
    .I0(\A/f_ps2c_reg_105 ),
    .I1(\A/filtro_reg [6]),
    .I2(\A/filtro_reg [7]),
    .I3(\A/Mmux_f_ps2c_sgt1 ),
    .I4(\A/Mmux_f_ps2c_sgt11_127 ),
    .O(\A/f_ps2c_sgt )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \B/codigo_o<6>2_SW0  (
    .I0(\A/b_reg [1]),
    .I1(\A/b_reg [3]),
    .O(N9)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000004 ))
  \B/codigo_o<6>2  (
    .I0(\A/b_reg [5]),
    .I1(\A/b_reg [6]),
    .I2(\A/b_reg [4]),
    .I3(\A/b_reg [7]),
    .I4(\A/b_reg [8]),
    .I5(N9),
    .O(\B/codigo_o<6>2_115 )
  );
  LUT5 #(
    .INIT ( 32'hEFBFF77F ))
  \B/codigo_o<8>_SW0  (
    .I0(\A/b_reg [5]),
    .I1(\A/b_reg [2]),
    .I2(\A/b_reg [6]),
    .I3(\A/b_reg [3]),
    .I4(\A/b_reg [1]),
    .O(N11)
  );
  LUT5 #(
    .INIT ( 32'h0001FFFF ))
  \B/codigo_o<8>  (
    .I0(N11),
    .I1(\A/b_reg [4]),
    .I2(\A/b_reg [7]),
    .I3(\A/b_reg [8]),
    .I4(\B/n0059 ),
    .O(codigo_o_0_OBUF_22)
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  \B/codigo_o<4>3_SW0  (
    .I0(\A/b_reg [7]),
    .I1(\A/b_reg [3]),
    .I2(\A/b_reg [4]),
    .I3(\A/b_reg [8]),
    .O(N13)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF00100400 ))
  \B/codigo_o<4>3  (
    .I0(N13),
    .I1(\A/b_reg [5]),
    .I2(\A/b_reg [1]),
    .I3(\A/b_reg [2]),
    .I4(\A/b_reg [6]),
    .I5(\B/codigo_o<5>2_118 ),
    .O(\B/codigo_o<4>3_114 )
  );
  LUT5 #(
    .INIT ( 32'hEFDEBFFB ))
  \B/codigo_o<7>_SW0  (
    .I0(\A/b_reg [5]),
    .I1(\A/b_reg [1]),
    .I2(\A/b_reg [2]),
    .I3(\A/b_reg [4]),
    .I4(\A/b_reg [3]),
    .O(N15)
  );
  LUT5 #(
    .INIT ( 32'h0002FFFF ))
  \B/codigo_o<7>  (
    .I0(\A/b_reg [6]),
    .I1(N15),
    .I2(\A/b_reg [7]),
    .I3(\A/b_reg [8]),
    .I4(\B/n0059 ),
    .O(codigo_o_1_OBUF_21)
  );
  LUT4 #(
    .INIT ( 16'hFDFF ))
  \B/codigo_o<6>1_SW0  (
    .I0(\A/b_reg [1]),
    .I1(\A/b_reg [8]),
    .I2(\A/b_reg [3]),
    .I3(\A/b_reg [2]),
    .O(N17)
  );
  LUT6 #(
    .INIT ( 64'h00000020FFFFFFFF ))
  \B/codigo_o<6>1  (
    .I0(\A/b_reg [4]),
    .I1(N17),
    .I2(\A/b_reg [6]),
    .I3(\A/b_reg [5]),
    .I4(\A/b_reg [7]),
    .I5(\B/n0059 ),
    .O(\B/codigo_o<6>1_117 )
  );
  LUT3 #(
    .INIT ( 8'hFD ))
  \B/codigo_o<5>2_SW0  (
    .I0(\A/b_reg [3]),
    .I1(\A/b_reg [2]),
    .I2(\A/b_reg [8]),
    .O(N19)
  );
  LUT6 #(
    .INIT ( 64'h0000000000800000 ))
  \B/codigo_o<5>2  (
    .I0(\A/b_reg [6]),
    .I1(\A/b_reg [5]),
    .I2(\A/b_reg [4]),
    .I3(\A/b_reg [7]),
    .I4(\A/b_reg [1]),
    .I5(N19),
    .O(\B/codigo_o<5>2_118 )
  );
  LUT6 #(
    .INIT ( 64'h0104000000000280 ))
  \B/codigo_o<2>1  (
    .I0(\A/b_reg [1]),
    .I1(\A/b_reg [3]),
    .I2(\A/b_reg [7]),
    .I3(\A/b_reg [6]),
    .I4(\A/b_reg [5]),
    .I5(\A/b_reg [2]),
    .O(\B/codigo_o [2])
  );
  LUT4 #(
    .INIT ( 16'hFF02 ))
  \B/codigo_o<2>2  (
    .I0(\B/codigo_o [2]),
    .I1(\A/b_reg [4]),
    .I2(\A/b_reg [8]),
    .I3(\B/codigo_o<5>2_118 ),
    .O(codigo_o_6_OBUF_16)
  );
  LUT5 #(
    .INIT ( 32'h01000000 ))
  \B/codigo_o<4>_SW0  (
    .I0(\A/b_reg [5]),
    .I1(\A/b_reg [1]),
    .I2(\A/b_reg [8]),
    .I3(\A/b_reg [3]),
    .I4(\A/b_reg [2]),
    .O(N21)
  );
  LUT6 #(
    .INIT ( 64'hFFFF0828FFFFFFFF ))
  \B/codigo_o<4>  (
    .I0(N21),
    .I1(\A/b_reg [6]),
    .I2(\A/b_reg [7]),
    .I3(\A/b_reg [4]),
    .I4(\B/codigo_o<4>3_114 ),
    .I5(\B/n0059 ),
    .O(codigo_o_4_OBUF_18)
  );
  LUT6 #(
    .INIT ( 64'h1133153311BE54CC ))
  \B/out11  (
    .I0(\A/b_reg [1]),
    .I1(\A/b_reg [7]),
    .I2(\A/b_reg [4]),
    .I3(\A/b_reg [2]),
    .I4(\A/b_reg [5]),
    .I5(\A/b_reg [6]),
    .O(\B/out1 )
  );
  LUT6 #(
    .INIT ( 64'h0020202088A8A8A8 ))
  \B/out12  (
    .I0(\A/b_reg [6]),
    .I1(\A/b_reg [2]),
    .I2(\A/b_reg [1]),
    .I3(\A/b_reg [5]),
    .I4(\A/b_reg [4]),
    .I5(\A/b_reg [3]),
    .O(\B/out11_137 )
  );
  LUT6 #(
    .INIT ( 64'h4444004050405040 ))
  \B/out13  (
    .I0(\A/b_reg [6]),
    .I1(\A/b_reg [2]),
    .I2(\A/b_reg [7]),
    .I3(\A/b_reg [1]),
    .I4(\A/b_reg [4]),
    .I5(\A/b_reg [5]),
    .O(\B/out12_138 )
  );
  LUT6 #(
    .INIT ( 64'h5555550404550404 ))
  \B/out14  (
    .I0(\A/b_reg [8]),
    .I1(\B/out11_137 ),
    .I2(\A/b_reg [7]),
    .I3(\A/b_reg [3]),
    .I4(\B/out12_138 ),
    .I5(\B/out1 ),
    .O(\B/n0059 )
  );
  IBUF   rst_i_IBUF (
    .I(rst_i),
    .O(rst_i_IBUF_1)
  );
  IBUF   ps2_data_IBUF (
    .I(ps2_data),
    .O(ps2_data_o_OBUF_2)
  );
  IBUF   ps2_clk_IBUF (
    .I(ps2_clk),
    .O(ps2_clk_o_OBUF_3)
  );
  IBUF   rx_en_IBUF (
    .I(rx_en),
    .O(rx_en_o_OBUF_4)
  );
  OBUF   anodos_o_3_OBUF (
    .I(anodos_o_3_OBUF_23),
    .O(anodos_o[3])
  );
  OBUF   anodos_o_2_OBUF (
    .I(anodos_o_2_OBUF_24),
    .O(anodos_o[2])
  );
  OBUF   anodos_o_1_OBUF (
    .I(anodos_o_1_OBUF_25),
    .O(anodos_o[1])
  );
  OBUF   anodos_o_0_OBUF (
    .I(anodos_o_0_OBUF_26),
    .O(anodos_o[0])
  );
  OBUF   codigo_o_7_OBUF (
    .I(codigo_o_7_OBUF_28),
    .O(codigo_o[7])
  );
  OBUF   codigo_o_6_OBUF (
    .I(codigo_o_6_OBUF_16),
    .O(codigo_o[6])
  );
  OBUF   codigo_o_5_OBUF (
    .I(codigo_o_5_OBUF_17),
    .O(codigo_o[5])
  );
  OBUF   codigo_o_4_OBUF (
    .I(codigo_o_4_OBUF_18),
    .O(codigo_o[4])
  );
  OBUF   codigo_o_3_OBUF (
    .I(codigo_o_3_OBUF_19),
    .O(codigo_o[3])
  );
  OBUF   codigo_o_2_OBUF (
    .I(codigo_o_2_OBUF_20),
    .O(codigo_o[2])
  );
  OBUF   codigo_o_1_OBUF (
    .I(codigo_o_1_OBUF_21),
    .O(codigo_o[1])
  );
  OBUF   codigo_o_0_OBUF (
    .I(codigo_o_0_OBUF_22),
    .O(codigo_o[0])
  );
  OBUF   ps2_clk_o_OBUF (
    .I(ps2_clk_o_OBUF_3),
    .O(ps2_clk_o)
  );
  OBUF   ps2_data_o_OBUF (
    .I(ps2_data_o_OBUF_2),
    .O(ps2_data_o)
  );
  OBUF   clk_o_OBUF (
    .I(\D/clk_o_15 ),
    .O(clk_o)
  );
  OBUF   rx_en_o_OBUF (
    .I(rx_en_o_OBUF_4),
    .O(rx_en_o)
  );
  OBUF   rx_listo_OBUF (
    .I(\A/estado_actl_FSM_FFd1_14 ),
    .O(rx_listo)
  );
  OBUF   data_o_o_OBUF (
    .I(\A/b_reg [0]),
    .O(data_o_o)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \D/Mcount_counter_cy<1>_rt  (
    .I0(\D/counter [1]),
    .O(\D/Mcount_counter_cy<1>_rt_162 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \D/Mcount_counter_cy<2>_rt  (
    .I0(\D/counter [2]),
    .O(\D/Mcount_counter_cy<2>_rt_163 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \D/Mcount_counter_cy<3>_rt  (
    .I0(\D/counter [3]),
    .O(\D/Mcount_counter_cy<3>_rt_164 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \D/Mcount_counter_cy<4>_rt  (
    .I0(\D/counter [4]),
    .O(\D/Mcount_counter_cy<4>_rt_165 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \D/Mcount_counter_cy<5>_rt  (
    .I0(\D/counter [5]),
    .O(\D/Mcount_counter_cy<5>_rt_166 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \D/Mcount_counter_cy<6>_rt  (
    .I0(\D/counter [6]),
    .O(\D/Mcount_counter_cy<6>_rt_167 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \D/Mcount_counter_cy<7>_rt  (
    .I0(\D/counter [7]),
    .O(\D/Mcount_counter_cy<7>_rt_168 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \D/Mcount_counter_cy<8>_rt  (
    .I0(\D/counter [8]),
    .O(\D/Mcount_counter_cy<8>_rt_169 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \D/Mcount_counter_cy<9>_rt  (
    .I0(\D/counter [9]),
    .O(\D/Mcount_counter_cy<9>_rt_170 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \D/Mcount_counter_cy<10>_rt  (
    .I0(\D/counter [10]),
    .O(\D/Mcount_counter_cy<10>_rt_171 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \D/Mcount_counter_cy<11>_rt  (
    .I0(\D/counter [11]),
    .O(\D/Mcount_counter_cy<11>_rt_172 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \D/Mcount_counter_cy<12>_rt  (
    .I0(\D/counter [12]),
    .O(\D/Mcount_counter_cy<12>_rt_173 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \D/Mcount_counter_cy<13>_rt  (
    .I0(\D/counter [13]),
    .O(\D/Mcount_counter_cy<13>_rt_174 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \D/Mcount_counter_cy<14>_rt  (
    .I0(\D/counter [14]),
    .O(\D/Mcount_counter_cy<14>_rt_175 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \D/Mcount_counter_xor<15>_rt  (
    .I0(\D/counter [15]),
    .O(\D/Mcount_counter_xor<15>_rt_176 )
  );
  FDC   \D/clk_o  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\D/clk_o_rstpot_177 ),
    .Q(\D/clk_o_15 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \A/estado_actl_FSM_FFd1-In_SW0_SW0  (
    .I0(\A/estado_actl_FSM_FFd2_95 ),
    .I1(\A/n_reg [3]),
    .O(N23)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \D/clk_o_rstpot  (
    .I0(\D/clk_o_15 ),
    .I1(\D/counter[15]_PWR_5_o_equal_1_o ),
    .O(\D/clk_o_rstpot_177 )
  );
  LUT6 #(
    .INIT ( 64'hFEFFFFFFFFFFFFFF ))
  \D/counter[15]_PWR_5_o_equal_1_o<15>4_SW0  (
    .I0(\D/counter [11]),
    .I1(\D/counter [13]),
    .I2(\D/counter [12]),
    .I3(\D/counter [14]),
    .I4(\D/counter [2]),
    .I5(\D/counter [3]),
    .O(N25)
  );
  LUT6 #(
    .INIT ( 64'h0000800000000000 ))
  \D/counter[15]_PWR_5_o_equal_1_o<15>4  (
    .I0(\D/counter [15]),
    .I1(\D/counter [6]),
    .I2(\D/counter [8]),
    .I3(\D/counter [9]),
    .I4(N25),
    .I5(\D/counter[15]_PWR_5_o_equal_1_o<15>1 ),
    .O(\D/counter[15]_PWR_5_o_equal_1_o )
  );
  FDC   \A/b_reg_10  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/b_reg_10_rstpot_184 ),
    .Q(\A/b_reg [10])
  );
  FDC   \A/b_reg_9  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/b_reg_9_rstpot_185 ),
    .Q(\A/b_reg [9])
  );
  FDC   \A/b_reg_8  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/b_reg_8_rstpot_186 ),
    .Q(\A/b_reg [8])
  );
  FDC   \A/b_reg_7  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/b_reg_7_rstpot_187 ),
    .Q(\A/b_reg [7])
  );
  FDC   \A/b_reg_6  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/b_reg_6_rstpot_188 ),
    .Q(\A/b_reg [6])
  );
  FDC   \A/b_reg_5  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/b_reg_5_rstpot_189 ),
    .Q(\A/b_reg [5])
  );
  FDC   \A/b_reg_4  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/b_reg_4_rstpot_190 ),
    .Q(\A/b_reg [4])
  );
  FDC   \A/b_reg_3  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/b_reg_3_rstpot_191 ),
    .Q(\A/b_reg [3])
  );
  FDC   \A/b_reg_2  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/b_reg_2_rstpot_192 ),
    .Q(\A/b_reg [2])
  );
  FDC   \A/b_reg_1  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/b_reg_1_rstpot_193 ),
    .Q(\A/b_reg [1])
  );
  FDC   \A/b_reg_0  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/b_reg_0_rstpot_194 ),
    .Q(\A/b_reg [0])
  );
  LUT4 #(
    .INIT ( 16'hFFF7 ))
  \A/estado_actl_FSM_FFd1-In1_SW1  (
    .I0(rx_en_o_OBUF_4),
    .I1(\A/f_ps2c_reg_105 ),
    .I2(\A/filtro_reg [0]),
    .I3(\A/filtro_reg [1]),
    .O(N27)
  );
  LUT6 #(
    .INIT ( 64'h00F000F000F001F1 ))
  \A/estado_actl_FSM_FFd2-In1  (
    .I0(\A/filtro_reg [2]),
    .I1(\A/filtro_reg [3]),
    .I2(\A/estado_actl_FSM_FFd2_95 ),
    .I3(\A/estado_actl_FSM_FFd1_14 ),
    .I4(N27),
    .I5(N3),
    .O(\A/estado_actl_FSM_FFd2-In )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFEFF ))
  \A/estado_actl_FSM_FFd1-In1_SW2  (
    .I0(\A/filtro_reg [0]),
    .I1(\A/filtro_reg [2]),
    .I2(\A/filtro_reg [1]),
    .I3(\A/f_ps2c_reg_105 ),
    .I4(\A/filtro_reg [3]),
    .I5(\A/estado_actl_FSM_FFd1_14 ),
    .O(N29)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \A/estado_actl_FSM_FFd1-In  (
    .I0(\A/n_reg [1]),
    .I1(\A/n_reg [2]),
    .I2(\A/n_reg [0]),
    .I3(N23),
    .I4(N3),
    .I5(N29),
    .O(\A/estado_actl_FSM_FFd1-In_96 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAABAAAAAAA8 ))
  \A/b_reg_10_rstpot  (
    .I0(\A/b_reg [10]),
    .I1(N3),
    .I2(\A/filtro_reg [3]),
    .I3(\A/filtro_reg [2]),
    .I4(\A/filtro_reg [1]),
    .I5(N31),
    .O(\A/b_reg_10_rstpot_184 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAABAAAAAAA8 ))
  \A/b_reg_9_rstpot  (
    .I0(\A/b_reg [9]),
    .I1(N3),
    .I2(\A/filtro_reg [3]),
    .I3(\A/filtro_reg [2]),
    .I4(\A/filtro_reg [1]),
    .I5(N33),
    .O(\A/b_reg_9_rstpot_185 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAABAAAAAAA8 ))
  \A/b_reg_8_rstpot  (
    .I0(\A/b_reg [8]),
    .I1(N3),
    .I2(\A/filtro_reg [3]),
    .I3(\A/filtro_reg [2]),
    .I4(\A/filtro_reg [1]),
    .I5(N35),
    .O(\A/b_reg_8_rstpot_186 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAABAAAAAAA8 ))
  \A/b_reg_7_rstpot  (
    .I0(\A/b_reg [7]),
    .I1(N3),
    .I2(\A/filtro_reg [3]),
    .I3(\A/filtro_reg [2]),
    .I4(\A/filtro_reg [1]),
    .I5(N37),
    .O(\A/b_reg_7_rstpot_187 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAABAAAAAAA8 ))
  \A/b_reg_6_rstpot  (
    .I0(\A/b_reg [6]),
    .I1(N3),
    .I2(\A/filtro_reg [3]),
    .I3(\A/filtro_reg [2]),
    .I4(\A/filtro_reg [1]),
    .I5(N39),
    .O(\A/b_reg_6_rstpot_188 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAABAAAAAAA8 ))
  \A/b_reg_5_rstpot  (
    .I0(\A/b_reg [5]),
    .I1(N3),
    .I2(\A/filtro_reg [3]),
    .I3(\A/filtro_reg [2]),
    .I4(\A/filtro_reg [1]),
    .I5(N41),
    .O(\A/b_reg_5_rstpot_189 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAABAAAAAAA8 ))
  \A/b_reg_4_rstpot  (
    .I0(\A/b_reg [4]),
    .I1(N3),
    .I2(\A/filtro_reg [3]),
    .I3(\A/filtro_reg [2]),
    .I4(\A/filtro_reg [1]),
    .I5(N43),
    .O(\A/b_reg_4_rstpot_190 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAABAAAAAAA8 ))
  \A/b_reg_3_rstpot  (
    .I0(\A/b_reg [3]),
    .I1(N3),
    .I2(\A/filtro_reg [3]),
    .I3(\A/filtro_reg [2]),
    .I4(\A/filtro_reg [1]),
    .I5(N45),
    .O(\A/b_reg_3_rstpot_191 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAABAAAAAAA8 ))
  \A/b_reg_2_rstpot  (
    .I0(\A/b_reg [2]),
    .I1(N3),
    .I2(\A/filtro_reg [3]),
    .I3(\A/filtro_reg [2]),
    .I4(\A/filtro_reg [1]),
    .I5(N47),
    .O(\A/b_reg_2_rstpot_192 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAABAAAAAAA8 ))
  \A/b_reg_1_rstpot  (
    .I0(\A/b_reg [1]),
    .I1(N3),
    .I2(\A/filtro_reg [3]),
    .I3(\A/filtro_reg [2]),
    .I4(\A/filtro_reg [1]),
    .I5(N49),
    .O(\A/b_reg_1_rstpot_193 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAABAAAAAAA8 ))
  \A/b_reg_0_rstpot  (
    .I0(\A/b_reg [0]),
    .I1(N3),
    .I2(\A/filtro_reg [3]),
    .I3(\A/filtro_reg [2]),
    .I4(\A/filtro_reg [1]),
    .I5(N51),
    .O(\A/b_reg_0_rstpot_194 )
  );
  LUT6 #(
    .INIT ( 64'hAAAA56FFAAAA56AA ))
  \A/n_reg_0_dpot  (
    .I0(\A/n_reg [0]),
    .I1(\A/n_reg [3]),
    .I2(N7),
    .I3(\A/estado_actl_FSM_FFd2_95 ),
    .I4(\A/estado_actl_FSM_FFd1_14 ),
    .I5(rx_en_o_OBUF_4),
    .O(\A/n_reg_0_dpot_180 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0F0AAF0B8F0 ))
  \A/estado_actl_FSM_FFd1-In1_SW3_F  (
    .I0(ps2_data_o_OBUF_2),
    .I1(rx_en_o_OBUF_4),
    .I2(\A/b_reg [10]),
    .I3(\A/f_ps2c_reg_105 ),
    .I4(\A/estado_actl_FSM_FFd2_95 ),
    .I5(\A/estado_actl_FSM_FFd1_14 ),
    .O(N59)
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0F0CCF0D8F0 ))
  \A/estado_actl_FSM_FFd1-In1_SW4_F  (
    .I0(rx_en_o_OBUF_4),
    .I1(\A/b_reg [10]),
    .I2(\A/b_reg [9]),
    .I3(\A/f_ps2c_reg_105 ),
    .I4(\A/estado_actl_FSM_FFd2_95 ),
    .I5(\A/estado_actl_FSM_FFd1_14 ),
    .O(N61)
  );
  LUT6 #(
    .INIT ( 64'hFF00FF00CFC0DF80 ))
  \A/estado_actl_FSM_FFd1-In1_SW5_F  (
    .I0(rx_en_o_OBUF_4),
    .I1(\A/b_reg [9]),
    .I2(\A/f_ps2c_reg_105 ),
    .I3(\A/b_reg [8]),
    .I4(\A/estado_actl_FSM_FFd2_95 ),
    .I5(\A/estado_actl_FSM_FFd1_14 ),
    .O(N63)
  );
  LUT6 #(
    .INIT ( 64'hFF00FF00F3C0F780 ))
  \A/estado_actl_FSM_FFd1-In1_SW6_F  (
    .I0(rx_en_o_OBUF_4),
    .I1(\A/f_ps2c_reg_105 ),
    .I2(\A/b_reg [8]),
    .I3(\A/b_reg [7]),
    .I4(\A/estado_actl_FSM_FFd2_95 ),
    .I5(\A/estado_actl_FSM_FFd1_14 ),
    .O(N65)
  );
  LUT6 #(
    .INIT ( 64'hFF00FF00F3C0F780 ))
  \A/estado_actl_FSM_FFd1-In1_SW7_F  (
    .I0(rx_en_o_OBUF_4),
    .I1(\A/f_ps2c_reg_105 ),
    .I2(\A/b_reg [7]),
    .I3(\A/b_reg [6]),
    .I4(\A/estado_actl_FSM_FFd2_95 ),
    .I5(\A/estado_actl_FSM_FFd1_14 ),
    .O(N67)
  );
  LUT6 #(
    .INIT ( 64'hFF00FF00F3C0F780 ))
  \A/estado_actl_FSM_FFd1-In1_SW8_F  (
    .I0(rx_en_o_OBUF_4),
    .I1(\A/f_ps2c_reg_105 ),
    .I2(\A/b_reg [6]),
    .I3(\A/b_reg [5]),
    .I4(\A/estado_actl_FSM_FFd2_95 ),
    .I5(\A/estado_actl_FSM_FFd1_14 ),
    .O(N69)
  );
  LUT6 #(
    .INIT ( 64'hFFFF0000F3F7C080 ))
  \A/estado_actl_FSM_FFd1-In1_SW9_F  (
    .I0(rx_en_o_OBUF_4),
    .I1(\A/f_ps2c_reg_105 ),
    .I2(\A/b_reg [5]),
    .I3(\A/estado_actl_FSM_FFd2_95 ),
    .I4(\A/b_reg [4]),
    .I5(\A/estado_actl_FSM_FFd1_14 ),
    .O(N71)
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0F0FC30F870 ))
  \A/estado_actl_FSM_FFd1-In1_SW10_F  (
    .I0(rx_en_o_OBUF_4),
    .I1(\A/f_ps2c_reg_105 ),
    .I2(\A/b_reg [3]),
    .I3(\A/b_reg [4]),
    .I4(\A/estado_actl_FSM_FFd2_95 ),
    .I5(\A/estado_actl_FSM_FFd1_14 ),
    .O(N73)
  );
  LUT6 #(
    .INIT ( 64'hFFFF0000CFDFC080 ))
  \A/estado_actl_FSM_FFd1-In1_SW11_F  (
    .I0(rx_en_o_OBUF_4),
    .I1(\A/b_reg [3]),
    .I2(\A/f_ps2c_reg_105 ),
    .I3(\A/estado_actl_FSM_FFd2_95 ),
    .I4(\A/b_reg [2]),
    .I5(\A/estado_actl_FSM_FFd1_14 ),
    .O(N75)
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0F0FC30F870 ))
  \A/estado_actl_FSM_FFd1-In1_SW12_F  (
    .I0(rx_en_o_OBUF_4),
    .I1(\A/f_ps2c_reg_105 ),
    .I2(\A/b_reg [1]),
    .I3(\A/b_reg [2]),
    .I4(\A/estado_actl_FSM_FFd2_95 ),
    .I5(\A/estado_actl_FSM_FFd1_14 ),
    .O(N77)
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCCCFC0CEC4C ))
  \A/estado_actl_FSM_FFd1-In1_SW13_F  (
    .I0(rx_en_o_OBUF_4),
    .I1(\A/b_reg [0]),
    .I2(\A/f_ps2c_reg_105 ),
    .I3(\A/b_reg [1]),
    .I4(\A/estado_actl_FSM_FFd2_95 ),
    .I5(\A/estado_actl_FSM_FFd1_14 ),
    .O(N79)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \A/n_reg_2_dpot_SW0  (
    .I0(\A/n_reg [0]),
    .I1(\A/n_reg [1]),
    .O(N81)
  );
  LUT6 #(
    .INIT ( 64'hAAAA84A6AAAA80A2 ))
  \A/n_reg_2_dpot  (
    .I0(\A/n_reg [2]),
    .I1(\A/estado_actl_FSM_FFd2_95 ),
    .I2(N81),
    .I3(rx_en_o_OBUF_4),
    .I4(\A/estado_actl_FSM_FFd1_14 ),
    .I5(\A/n_reg [3]),
    .O(\A/n_reg_2_dpot_182 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \A/n_reg_1_dpot_SW0  (
    .I0(\A/n_reg [2]),
    .I1(\A/n_reg [3]),
    .O(N83)
  );
  LUT6 #(
    .INIT ( 64'hAAAA84A6AAAA80A2 ))
  \A/n_reg_1_dpot  (
    .I0(\A/n_reg [1]),
    .I1(\A/estado_actl_FSM_FFd2_95 ),
    .I2(\A/n_reg [0]),
    .I3(rx_en_o_OBUF_4),
    .I4(\A/estado_actl_FSM_FFd1_14 ),
    .I5(N83),
    .O(\A/n_reg_1_dpot_181 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \A/estado_actl_FSM_FFd1-In1_SW31  (
    .I0(\A/b_reg [10]),
    .I1(\A/filtro_reg [0]),
    .I2(N59),
    .O(N31)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \A/estado_actl_FSM_FFd1-In1_SW41  (
    .I0(\A/b_reg [9]),
    .I1(\A/filtro_reg [0]),
    .I2(N61),
    .O(N33)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \A/estado_actl_FSM_FFd1-In1_SW51  (
    .I0(\A/b_reg [8]),
    .I1(\A/filtro_reg [0]),
    .I2(N63),
    .O(N35)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \A/estado_actl_FSM_FFd1-In1_SW61  (
    .I0(\A/b_reg [7]),
    .I1(\A/filtro_reg [0]),
    .I2(N65),
    .O(N37)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \A/estado_actl_FSM_FFd1-In1_SW71  (
    .I0(\A/b_reg [6]),
    .I1(\A/filtro_reg [0]),
    .I2(N67),
    .O(N39)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \A/estado_actl_FSM_FFd1-In1_SW81  (
    .I0(\A/b_reg [5]),
    .I1(\A/filtro_reg [0]),
    .I2(N69),
    .O(N41)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \A/estado_actl_FSM_FFd1-In1_SW91  (
    .I0(\A/filtro_reg [0]),
    .I1(\A/b_reg [4]),
    .I2(N71),
    .O(N43)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \A/estado_actl_FSM_FFd1-In1_SW101  (
    .I0(\A/b_reg [3]),
    .I1(\A/filtro_reg [0]),
    .I2(N73),
    .O(N45)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \A/estado_actl_FSM_FFd1-In1_SW111  (
    .I0(\A/filtro_reg [0]),
    .I1(\A/b_reg [2]),
    .I2(N75),
    .O(N47)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \A/estado_actl_FSM_FFd1-In1_SW121  (
    .I0(\A/b_reg [1]),
    .I1(\A/filtro_reg [0]),
    .I2(N77),
    .O(N49)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \A/estado_actl_FSM_FFd1-In1_SW131  (
    .I0(\A/b_reg [0]),
    .I1(\A/filtro_reg [0]),
    .I2(N79),
    .O(N51)
  );
  MUXF7   \A/n_reg_3_dpot  (
    .I0(N85),
    .I1(N86),
    .S(\A/estado_actl_FSM_FFd2_95 ),
    .O(\A/n_reg_3_dpot_183 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \A/n_reg_3_dpot_F  (
    .I0(rx_en_o_OBUF_4),
    .I1(\A/estado_actl_FSM_FFd1_14 ),
    .I2(\A/n_reg [3]),
    .O(N85)
  );
  LUT5 #(
    .INIT ( 32'hAAAAAAA8 ))
  \A/n_reg_3_dpot_G  (
    .I0(\A/n_reg [3]),
    .I1(\A/estado_actl_FSM_FFd1_14 ),
    .I2(\A/n_reg [2]),
    .I3(\A/n_reg [0]),
    .I4(\A/n_reg [1]),
    .O(N86)
  );
  BUFGP   clk_i_BUFGP (
    .I(clk_i),
    .O(clk_i_BUFGP_0)
  );
  INV   \D/Mcount_counter_lut<0>_INV_0  (
    .I(\D/counter [0]),
    .O(\D/Mcount_counter_lut [0])
  );
  INV   \B/EA_FSM_FFd2-In1_INV_0  (
    .I(\B/EA_FSM_FFd1_119 ),
    .O(\B/EA_FSM_FFd2-In )
  );
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

