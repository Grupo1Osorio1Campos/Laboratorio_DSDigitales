////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Prueba_2_synthesis.v
// /___/   /\     Timestamp: Tue Mar 17 11:14:31 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Prueba_2.ngc Prueba_2_synthesis.v 
// Device	: xc6slx16-2-csg324
// Input file	: Prueba_2.ngc
// Output file	: C:\Users\Javier\Desktop\LabDigitales\Proyecto_Corto_2_LDSD\netgen\synthesis\Prueba_2_synthesis.v
// # of Modules	: 1
// Design Name	: Prueba_2
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

module Prueba_2 (
  clk_i, rst_i, ps2_data, ps2_clk, rx_en, Ing_o, Pres_o, Alarm_o, Elect_o, data_o_o, anodos_o, codigo_o, Temp_o
);
  input clk_i;
  input rst_i;
  input ps2_data;
  input ps2_clk;
  input rx_en;
  output Ing_o;
  output Pres_o;
  output Alarm_o;
  output Elect_o;
  output data_o_o;
  output [3 : 0] anodos_o;
  output [7 : 0] codigo_o;
  output [4 : 0] Temp_o;
  wire clk_i_BUFGP_0;
  wire rst_i_IBUF_1;
  wire ps2_data_IBUF_2;
  wire ps2_clk_IBUF_3;
  wire rx_en_IBUF_4;
  wire \A/estado_actl_FSM_FFd1_14 ;
  wire \C/clk_o_15 ;
  wire \D/Ing_i_21 ;
  wire \D/Pres_i_22 ;
  wire \F/EA_FSM_FFd1_23 ;
  wire \F/EA_FSM_FFd2_24 ;
  wire Alarm_o_OBUF_25;
  wire Elect_o_OBUF_26;
  wire codigo_o_7_OBUF_27;
  wire codigo_o_6_OBUF_28;
  wire codigo_o_5_OBUF_29;
  wire codigo_o_4_OBUF_30;
  wire codigo_o_3_OBUF_31;
  wire codigo_o_2_OBUF_32;
  wire codigo_o_1_OBUF_33;
  wire codigo_o_0_OBUF_34;
  wire anodos_o_3_OBUF_35;
  wire anodos_o_2_OBUF_36;
  wire anodos_o_1_OBUF_37;
  wire anodos_o_0_OBUF_38;
  wire data_o_o_OBUF_39;
  wire N0;
  wire \E/EA_FSM_FFd2_52 ;
  wire \E/EA_FSM_FFd1_53 ;
  wire \C/counter[10]_PWR_4_o_equal_1_o_inv_54 ;
  wire \C/Mcount_counter ;
  wire \C/Mcount_counter1 ;
  wire \C/Mcount_counter2 ;
  wire \C/Mcount_counter3 ;
  wire \C/Mcount_counter4 ;
  wire \C/Mcount_counter5 ;
  wire \C/Mcount_counter6 ;
  wire \C/Mcount_counter7 ;
  wire \C/Mcount_counter8 ;
  wire \C/Mcount_counter9 ;
  wire \C/Mcount_counter10 ;
  wire \E/EA_FSM_FFd2-In ;
  wire \E/EA_FSM_FFd1-In ;
  wire \A/estado_actl_FSM_FFd2_89 ;
  wire \A/estado_actl_FSM_FFd1-In_90 ;
  wire \A/estado_actl_FSM_FFd2-In ;
  wire \A/f_ps2c_sgt ;
  wire \A/f_ps2c_reg_99 ;
  wire \D/teclado_i[7]_PWR_5_o_Select_4_o11 ;
  wire \D/teclado_i[7]_GND_4_o_select_22_OUT<0>_109 ;
  wire \D/teclado_i[7]_GND_4_o_select_22_OUT<1>_110 ;
  wire \D/teclado_i[7]_GND_4_o_select_22_OUT<2>_111 ;
  wire \D/teclado_i[7]_GND_4_o_select_22_OUT<3>_112 ;
  wire \D/teclado_i[7]_GND_4_o_select_22_OUT<4>_113 ;
  wire \D/teclado_i[7]_PWR_5_o_Select_9_o_114 ;
  wire \D/teclado_i[7]_PWR_5_o_Select_4_o_115 ;
  wire \F/EA_FSM_FFd1-In ;
  wire \F/EA_FSM_FFd2-In ;
  wire N01;
  wire N4;
  wire N8;
  wire \A/Mmux_f_ps2c_sgt1 ;
  wire \A/Mmux_f_ps2c_sgt11_122 ;
  wire N12;
  wire N16;
  wire N18;
  wire N20;
  wire N22;
  wire \D/out2 ;
  wire N24;
  wire \C/clk_o_rstpot_157 ;
  wire N26;
  wire N28;
  wire N34;
  wire \A/n_reg_0_dpot_161 ;
  wire \A/n_reg_1_dpot_162 ;
  wire \A/n_reg_2_dpot_163 ;
  wire \A/n_reg_3_dpot_164 ;
  wire N38;
  wire \A/b_reg_10_rstpot_166 ;
  wire \A/b_reg_9_rstpot_167 ;
  wire \A/b_reg_8_rstpot_168 ;
  wire \A/b_reg_7_rstpot_169 ;
  wire \A/b_reg_6_rstpot_170 ;
  wire \A/b_reg_5_rstpot_171 ;
  wire \A/b_reg_4_rstpot_172 ;
  wire \A/b_reg_3_rstpot_173 ;
  wire \A/b_reg_2_rstpot_174 ;
  wire \A/b_reg_1_rstpot_175 ;
  wire \A/b_reg_0_rstpot_176 ;
  wire N40;
  wire N44;
  wire N46;
  wire N48;
  wire N50;
  wire N52;
  wire N54;
  wire N56;
  wire N58;
  wire N80;
  wire N82;
  wire N84;
  wire N86;
  wire N88;
  wire N90;
  wire \A/estado_actl_FSM_FFd1-In1_rstpot_192 ;
  wire \A/estado_actl_FSM_FFd1-In1_cepot_193 ;
  wire \A/n_reg_0_dpot1_194 ;
  wire \A/n_reg_1_dpot1_195 ;
  wire \A/n_reg_2_dpot1_196 ;
  wire \A/n_reg_3_dpot1_197 ;
  wire N92;
  wire N93;
  wire [10 : 0] \A/b_reg ;
  wire [4 : 0] \D/Temp_i ;
  wire [10 : 0] \C/counter ;
  wire [10 : 0] \C/Mcount_counter_lut ;
  wire [9 : 0] \C/Mcount_counter_cy ;
  wire [3 : 0] \A/n_reg ;
  wire [7 : 0] \A/filtro_reg ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(codigo_o_7_OBUF_27)
  );
  MUXCY   \C/Mcount_counter_cy<0>  (
    .CI(\C/counter[10]_PWR_4_o_equal_1_o_inv_54 ),
    .DI(N0),
    .S(\C/Mcount_counter_lut [0]),
    .O(\C/Mcount_counter_cy [0])
  );
  XORCY   \C/Mcount_counter_xor<0>  (
    .CI(\C/counter[10]_PWR_4_o_equal_1_o_inv_54 ),
    .LI(\C/Mcount_counter_lut [0]),
    .O(\C/Mcount_counter )
  );
  MUXCY   \C/Mcount_counter_cy<1>  (
    .CI(\C/Mcount_counter_cy [0]),
    .DI(N0),
    .S(\C/Mcount_counter_lut [1]),
    .O(\C/Mcount_counter_cy [1])
  );
  XORCY   \C/Mcount_counter_xor<1>  (
    .CI(\C/Mcount_counter_cy [0]),
    .LI(\C/Mcount_counter_lut [1]),
    .O(\C/Mcount_counter1 )
  );
  MUXCY   \C/Mcount_counter_cy<2>  (
    .CI(\C/Mcount_counter_cy [1]),
    .DI(N0),
    .S(\C/Mcount_counter_lut [2]),
    .O(\C/Mcount_counter_cy [2])
  );
  XORCY   \C/Mcount_counter_xor<2>  (
    .CI(\C/Mcount_counter_cy [1]),
    .LI(\C/Mcount_counter_lut [2]),
    .O(\C/Mcount_counter2 )
  );
  MUXCY   \C/Mcount_counter_cy<3>  (
    .CI(\C/Mcount_counter_cy [2]),
    .DI(N0),
    .S(\C/Mcount_counter_lut [3]),
    .O(\C/Mcount_counter_cy [3])
  );
  XORCY   \C/Mcount_counter_xor<3>  (
    .CI(\C/Mcount_counter_cy [2]),
    .LI(\C/Mcount_counter_lut [3]),
    .O(\C/Mcount_counter3 )
  );
  MUXCY   \C/Mcount_counter_cy<4>  (
    .CI(\C/Mcount_counter_cy [3]),
    .DI(N0),
    .S(\C/Mcount_counter_lut [4]),
    .O(\C/Mcount_counter_cy [4])
  );
  XORCY   \C/Mcount_counter_xor<4>  (
    .CI(\C/Mcount_counter_cy [3]),
    .LI(\C/Mcount_counter_lut [4]),
    .O(\C/Mcount_counter4 )
  );
  MUXCY   \C/Mcount_counter_cy<5>  (
    .CI(\C/Mcount_counter_cy [4]),
    .DI(N0),
    .S(\C/Mcount_counter_lut [5]),
    .O(\C/Mcount_counter_cy [5])
  );
  XORCY   \C/Mcount_counter_xor<5>  (
    .CI(\C/Mcount_counter_cy [4]),
    .LI(\C/Mcount_counter_lut [5]),
    .O(\C/Mcount_counter5 )
  );
  MUXCY   \C/Mcount_counter_cy<6>  (
    .CI(\C/Mcount_counter_cy [5]),
    .DI(N0),
    .S(\C/Mcount_counter_lut [6]),
    .O(\C/Mcount_counter_cy [6])
  );
  XORCY   \C/Mcount_counter_xor<6>  (
    .CI(\C/Mcount_counter_cy [5]),
    .LI(\C/Mcount_counter_lut [6]),
    .O(\C/Mcount_counter6 )
  );
  MUXCY   \C/Mcount_counter_cy<7>  (
    .CI(\C/Mcount_counter_cy [6]),
    .DI(N0),
    .S(\C/Mcount_counter_lut [7]),
    .O(\C/Mcount_counter_cy [7])
  );
  XORCY   \C/Mcount_counter_xor<7>  (
    .CI(\C/Mcount_counter_cy [6]),
    .LI(\C/Mcount_counter_lut [7]),
    .O(\C/Mcount_counter7 )
  );
  MUXCY   \C/Mcount_counter_cy<8>  (
    .CI(\C/Mcount_counter_cy [7]),
    .DI(N0),
    .S(\C/Mcount_counter_lut [8]),
    .O(\C/Mcount_counter_cy [8])
  );
  XORCY   \C/Mcount_counter_xor<8>  (
    .CI(\C/Mcount_counter_cy [7]),
    .LI(\C/Mcount_counter_lut [8]),
    .O(\C/Mcount_counter8 )
  );
  MUXCY   \C/Mcount_counter_cy<9>  (
    .CI(\C/Mcount_counter_cy [8]),
    .DI(N0),
    .S(\C/Mcount_counter_lut [9]),
    .O(\C/Mcount_counter_cy [9])
  );
  XORCY   \C/Mcount_counter_xor<9>  (
    .CI(\C/Mcount_counter_cy [8]),
    .LI(\C/Mcount_counter_lut [9]),
    .O(\C/Mcount_counter9 )
  );
  XORCY   \C/Mcount_counter_xor<10>  (
    .CI(\C/Mcount_counter_cy [9]),
    .LI(\C/Mcount_counter_lut [10]),
    .O(\C/Mcount_counter10 )
  );
  FDC   \E/EA_FSM_FFd1  (
    .C(\C/clk_o_15 ),
    .CLR(rst_i_IBUF_1),
    .D(\E/EA_FSM_FFd1-In ),
    .Q(\E/EA_FSM_FFd1_53 )
  );
  FDC   \C/counter_0  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\C/Mcount_counter ),
    .Q(\C/counter [0])
  );
  FDC   \C/counter_1  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\C/Mcount_counter1 ),
    .Q(\C/counter [1])
  );
  FDC   \C/counter_2  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\C/Mcount_counter2 ),
    .Q(\C/counter [2])
  );
  FDC   \C/counter_3  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\C/Mcount_counter3 ),
    .Q(\C/counter [3])
  );
  FDC   \C/counter_4  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\C/Mcount_counter4 ),
    .Q(\C/counter [4])
  );
  FDC   \C/counter_5  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\C/Mcount_counter5 ),
    .Q(\C/counter [5])
  );
  FDC   \C/counter_6  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\C/Mcount_counter6 ),
    .Q(\C/counter [6])
  );
  FDC   \C/counter_7  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\C/Mcount_counter7 ),
    .Q(\C/counter [7])
  );
  FDC   \C/counter_8  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\C/Mcount_counter8 ),
    .Q(\C/counter [8])
  );
  FDC   \C/counter_9  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\C/Mcount_counter9 ),
    .Q(\C/counter [9])
  );
  FDC   \C/counter_10  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\C/Mcount_counter10 ),
    .Q(\C/counter [10])
  );
  FDC   \E/EA_FSM_FFd2  (
    .C(\C/clk_o_15 ),
    .CLR(rst_i_IBUF_1),
    .D(\E/EA_FSM_FFd2-In ),
    .Q(\E/EA_FSM_FFd2_52 )
  );
  FDCE   \A/n_reg_3  (
    .C(clk_i_BUFGP_0),
    .CE(\A/estado_actl_FSM_FFd1-In1_cepot_193 ),
    .CLR(rst_i_IBUF_1),
    .D(\A/n_reg_3_dpot1_197 ),
    .Q(\A/n_reg [3])
  );
  FDCE   \A/n_reg_2  (
    .C(clk_i_BUFGP_0),
    .CE(\A/estado_actl_FSM_FFd1-In1_cepot_193 ),
    .CLR(rst_i_IBUF_1),
    .D(\A/n_reg_2_dpot1_196 ),
    .Q(\A/n_reg [2])
  );
  FDCE   \A/n_reg_1  (
    .C(clk_i_BUFGP_0),
    .CE(\A/estado_actl_FSM_FFd1-In1_cepot_193 ),
    .CLR(rst_i_IBUF_1),
    .D(\A/n_reg_1_dpot1_195 ),
    .Q(\A/n_reg [1])
  );
  FDCE   \A/n_reg_0  (
    .C(clk_i_BUFGP_0),
    .CE(\A/estado_actl_FSM_FFd1-In1_cepot_193 ),
    .CLR(rst_i_IBUF_1),
    .D(\A/n_reg_0_dpot1_194 ),
    .Q(\A/n_reg [0])
  );
  FDC   \A/estado_actl_FSM_FFd1  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/estado_actl_FSM_FFd1-In_90 ),
    .Q(\A/estado_actl_FSM_FFd1_14 )
  );
  FDC   \A/estado_actl_FSM_FFd2  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/estado_actl_FSM_FFd2-In ),
    .Q(\A/estado_actl_FSM_FFd2_89 )
  );
  FDC   \A/f_ps2c_reg  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/f_ps2c_sgt ),
    .Q(\A/f_ps2c_reg_99 )
  );
  FDC   \A/filtro_reg_7  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(ps2_clk_IBUF_3),
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
  FD   \D/Temp_i_4  (
    .C(clk_i_BUFGP_0),
    .D(\D/teclado_i[7]_GND_4_o_select_22_OUT<4>_113 ),
    .Q(\D/Temp_i [4])
  );
  FD   \D/Temp_i_3  (
    .C(clk_i_BUFGP_0),
    .D(\D/teclado_i[7]_GND_4_o_select_22_OUT<3>_112 ),
    .Q(\D/Temp_i [3])
  );
  FD   \D/Temp_i_2  (
    .C(clk_i_BUFGP_0),
    .D(\D/teclado_i[7]_GND_4_o_select_22_OUT<2>_111 ),
    .Q(\D/Temp_i [2])
  );
  FD   \D/Temp_i_1  (
    .C(clk_i_BUFGP_0),
    .D(\D/teclado_i[7]_GND_4_o_select_22_OUT<1>_110 ),
    .Q(\D/Temp_i [1])
  );
  FD   \D/Temp_i_0  (
    .C(clk_i_BUFGP_0),
    .D(\D/teclado_i[7]_GND_4_o_select_22_OUT<0>_109 ),
    .Q(\D/Temp_i [0])
  );
  FD   \D/Pres_i  (
    .C(clk_i_BUFGP_0),
    .D(\D/teclado_i[7]_PWR_5_o_Select_9_o_114 ),
    .Q(\D/Pres_i_22 )
  );
  FD   \D/Ing_i  (
    .C(clk_i_BUFGP_0),
    .D(\D/teclado_i[7]_PWR_5_o_Select_4_o_115 ),
    .Q(\D/Ing_i_21 )
  );
  FDC   \F/EA_FSM_FFd2  (
    .C(\C/clk_o_15 ),
    .CLR(rst_i_IBUF_1),
    .D(\F/EA_FSM_FFd2-In ),
    .Q(\F/EA_FSM_FFd2_24 )
  );
  FDC   \F/EA_FSM_FFd1  (
    .C(\C/clk_o_15 ),
    .CLR(rst_i_IBUF_1),
    .D(\F/EA_FSM_FFd1-In ),
    .Q(\F/EA_FSM_FFd1_23 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  data_o_o1 (
    .I0(\A/estado_actl_FSM_FFd1_14 ),
    .I1(\A/b_reg [0]),
    .O(data_o_o_OBUF_39)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \E/EA_FSM_FFd1-In1  (
    .I0(\E/EA_FSM_FFd2_52 ),
    .I1(\E/EA_FSM_FFd1_53 ),
    .O(\E/EA_FSM_FFd1-In )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \E/EA__n0031<4>1  (
    .I0(\E/EA_FSM_FFd1_53 ),
    .I1(\E/EA_FSM_FFd2_52 ),
    .O(anodos_o_0_OBUF_38)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \E/EA__n0031<3>1  (
    .I0(\E/EA_FSM_FFd2_52 ),
    .I1(\E/EA_FSM_FFd1_53 ),
    .O(anodos_o_1_OBUF_37)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \E/EA__n0031<2>1  (
    .I0(\E/EA_FSM_FFd1_53 ),
    .I1(\E/EA_FSM_FFd2_52 ),
    .O(anodos_o_2_OBUF_36)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \E/EA__n0031<1>1  (
    .I0(\E/EA_FSM_FFd2_52 ),
    .I1(\E/EA_FSM_FFd1_53 ),
    .O(anodos_o_3_OBUF_35)
  );
  LUT4 #(
    .INIT ( 16'h8ACE ))
  \E/Mram_SSegm61  (
    .I0(\E/EA_FSM_FFd2_52 ),
    .I1(\E/EA_FSM_FFd1_53 ),
    .I2(\F/EA_FSM_FFd1_23 ),
    .I3(Alarm_o_OBUF_25),
    .O(codigo_o_6_OBUF_28)
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \E/Mram_SSegm41  (
    .I0(\E/EA_FSM_FFd2_52 ),
    .I1(\E/EA_FSM_FFd1_53 ),
    .I2(\F/EA_FSM_FFd2_24 ),
    .O(codigo_o_4_OBUF_30)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \E/Mram_SSegm111  (
    .I0(\E/EA_FSM_FFd1_53 ),
    .I1(\E/EA_FSM_FFd2_52 ),
    .O(codigo_o_1_OBUF_33)
  );
  LUT4 #(
    .INIT ( 16'h4440 ))
  \codigo_o<5>1  (
    .I0(\E/EA_FSM_FFd1_53 ),
    .I1(\E/EA_FSM_FFd2_52 ),
    .I2(\F/EA_FSM_FFd2_24 ),
    .I3(\F/EA_FSM_FFd1_23 ),
    .O(codigo_o_5_OBUF_29)
  );
  LUT4 #(
    .INIT ( 16'h1055 ))
  \codigo_o<2>1  (
    .I0(\E/EA_FSM_FFd1_53 ),
    .I1(\F/EA_FSM_FFd2_24 ),
    .I2(\F/EA_FSM_FFd1_23 ),
    .I3(\E/EA_FSM_FFd2_52 ),
    .O(codigo_o_2_OBUF_32)
  );
  LUT5 #(
    .INIT ( 32'h46440200 ))
  \codigo_o<3>1  (
    .I0(\E/EA_FSM_FFd2_52 ),
    .I1(\E/EA_FSM_FFd1_53 ),
    .I2(\F/EA_FSM_FFd1_23 ),
    .I3(\F/EA_FSM_FFd2_24 ),
    .I4(Alarm_o_OBUF_25),
    .O(codigo_o_3_OBUF_31)
  );
  LUT5 #(
    .INIT ( 32'h8A880200 ))
  \codigo_o<0>1  (
    .I0(\E/EA_FSM_FFd2_52 ),
    .I1(\E/EA_FSM_FFd1_53 ),
    .I2(\F/EA_FSM_FFd1_23 ),
    .I3(\F/EA_FSM_FFd2_24 ),
    .I4(Elect_o_OBUF_26),
    .O(codigo_o_0_OBUF_34)
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFBF ))
  \D/teclado_i[7]_PWR_5_o_Select_4_o111  (
    .I0(\A/b_reg [7]),
    .I1(\A/b_reg [6]),
    .I2(\A/b_reg [5]),
    .I3(\A/b_reg [3]),
    .I4(\A/b_reg [8]),
    .O(\D/teclado_i[7]_PWR_5_o_Select_4_o11 )
  );
  LUT6 #(
    .INIT ( 64'h8008800880080808 ))
  \F/Alarm_o1  (
    .I0(\F/EA_FSM_FFd1_23 ),
    .I1(\D/Pres_i_22 ),
    .I2(\F/EA_FSM_FFd2_24 ),
    .I3(\D/Temp_i [4]),
    .I4(\D/Temp_i [2]),
    .I5(\D/Temp_i [3]),
    .O(Alarm_o_OBUF_25)
  );
  LUT6 #(
    .INIT ( 64'h8000800080000000 ))
  \F/Elect_o1  (
    .I0(\F/EA_FSM_FFd1_23 ),
    .I1(\D/Pres_i_22 ),
    .I2(\F/EA_FSM_FFd2_24 ),
    .I3(\D/Temp_i [4]),
    .I4(\D/Temp_i [2]),
    .I5(\D/Temp_i [3]),
    .O(Elect_o_OBUF_26)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \F/EA_FSM_FFd1-In1  (
    .I0(\D/Pres_i_22 ),
    .I1(\F/EA_FSM_FFd2_24 ),
    .I2(\F/EA_FSM_FFd1_23 ),
    .O(\F/EA_FSM_FFd1-In )
  );
  LUT6 #(
    .INIT ( 64'hFFFFDFFFFFFFFFFF ))
  \C/counter[10]_PWR_4_o_equal_1_o<10>_SW0  (
    .I0(\C/counter [10]),
    .I1(\C/counter [5]),
    .I2(\C/counter [0]),
    .I3(\C/counter [3]),
    .I4(\C/counter [4]),
    .I5(\C/counter [2]),
    .O(N01)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF7FFFFFFF ))
  \C/counter[10]_PWR_4_o_equal_1_o_inv  (
    .I0(\C/counter [1]),
    .I1(\C/counter [6]),
    .I2(\C/counter [7]),
    .I3(\C/counter [8]),
    .I4(\C/counter [9]),
    .I5(N01),
    .O(\C/counter[10]_PWR_4_o_equal_1_o_inv_54 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \A/estado_actl_FSM_FFd1-In1_SW0  (
    .I0(\A/filtro_reg [6]),
    .I1(\A/filtro_reg [5]),
    .I2(\A/filtro_reg [4]),
    .I3(\A/filtro_reg [7]),
    .O(N4)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \A/_n0071_inv_SW0  (
    .I0(\A/n_reg [2]),
    .I1(\A/n_reg [1]),
    .I2(\A/n_reg [0]),
    .O(N8)
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
    .O(\A/Mmux_f_ps2c_sgt11_122 )
  );
  LUT5 #(
    .INIT ( 32'hEAE8AAA8 ))
  \A/Mmux_f_ps2c_sgt13  (
    .I0(\A/f_ps2c_reg_99 ),
    .I1(\A/filtro_reg [6]),
    .I2(\A/filtro_reg [7]),
    .I3(\A/Mmux_f_ps2c_sgt1 ),
    .I4(\A/Mmux_f_ps2c_sgt11_122 ),
    .O(\A/f_ps2c_sgt )
  );
  LUT5 #(
    .INIT ( 32'h00000400 ))
  \D/teclado_i[7]_GND_4_o_select_22_OUT<0>_SW0  (
    .I0(\A/b_reg [4]),
    .I1(\A/b_reg [2]),
    .I2(\A/b_reg [1]),
    .I3(\A/b_reg [3]),
    .I4(\A/b_reg [8]),
    .O(N12)
  );
  LUT6 #(
    .INIT ( 64'h0040440000044200 ))
  \D/teclado_i[7]_GND_4_o_select_22_OUT<3>_SW0  (
    .I0(\A/b_reg [7]),
    .I1(\A/b_reg [6]),
    .I2(\A/b_reg [4]),
    .I3(\A/b_reg [2]),
    .I4(\A/b_reg [1]),
    .I5(\A/b_reg [5]),
    .O(N16)
  );
  LUT5 #(
    .INIT ( 32'h00000002 ))
  \D/teclado_i[7]_PWR_5_o_Select_4_o_SW0  (
    .I0(\A/b_reg [7]),
    .I1(\A/b_reg [6]),
    .I2(\A/b_reg [5]),
    .I3(\A/b_reg [3]),
    .I4(\A/b_reg [8]),
    .O(N18)
  );
  LUT6 #(
    .INIT ( 64'hBAAAAAAABA8AAA8A ))
  \D/teclado_i[7]_PWR_5_o_Select_4_o  (
    .I0(\D/Ing_i_21 ),
    .I1(\A/b_reg [4]),
    .I2(\A/b_reg [1]),
    .I3(\A/b_reg [2]),
    .I4(N18),
    .I5(\D/teclado_i[7]_PWR_5_o_Select_4_o11 ),
    .O(\D/teclado_i[7]_PWR_5_o_Select_4_o_115 )
  );
  LUT5 #(
    .INIT ( 32'h00000400 ))
  \D/teclado_i[7]_PWR_5_o_Select_9_o_SW0  (
    .I0(\A/b_reg [6]),
    .I1(\A/b_reg [7]),
    .I2(\A/b_reg [5]),
    .I3(\A/b_reg [3]),
    .I4(\A/b_reg [8]),
    .O(N20)
  );
  LUT6 #(
    .INIT ( 64'hAEAA8EAAAAAA8AAA ))
  \D/teclado_i[7]_PWR_5_o_Select_9_o  (
    .I0(\D/Pres_i_22 ),
    .I1(\A/b_reg [1]),
    .I2(\A/b_reg [2]),
    .I3(\A/b_reg [4]),
    .I4(\D/teclado_i[7]_PWR_5_o_Select_4_o11 ),
    .I5(N20),
    .O(\D/teclado_i[7]_PWR_5_o_Select_9_o_114 )
  );
  LUT6 #(
    .INIT ( 64'h0000400040020000 ))
  \D/teclado_i[7]_GND_4_o_select_22_OUT<4>_SW0  (
    .I0(\A/b_reg [7]),
    .I1(\A/b_reg [6]),
    .I2(\A/b_reg [5]),
    .I3(\A/b_reg [4]),
    .I4(\A/b_reg [2]),
    .I5(\A/b_reg [1]),
    .O(N22)
  );
  LUT6 #(
    .INIT ( 64'h000000142C1C0C00 ))
  \D/out21  (
    .I0(\A/b_reg [4]),
    .I1(\A/b_reg [2]),
    .I2(\A/b_reg [1]),
    .I3(\A/b_reg [5]),
    .I4(\A/b_reg [6]),
    .I5(\A/b_reg [7]),
    .O(\D/out2 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \F/EA_FSM_FFd2-In2_SW0  (
    .I0(\D/Temp_i [2]),
    .I1(\D/Temp_i [3]),
    .O(N24)
  );
  LUT6 #(
    .INIT ( 64'h80AA80AA80AAD5FF ))
  \F/EA_FSM_FFd2-In2  (
    .I0(\F/EA_FSM_FFd1_23 ),
    .I1(N24),
    .I2(\D/Temp_i [4]),
    .I3(\D/Pres_i_22 ),
    .I4(\F/EA_FSM_FFd2_24 ),
    .I5(\D/Ing_i_21 ),
    .O(\F/EA_FSM_FFd2-In )
  );
  IBUF   rst_i_IBUF (
    .I(rst_i),
    .O(rst_i_IBUF_1)
  );
  IBUF   ps2_data_IBUF (
    .I(ps2_data),
    .O(ps2_data_IBUF_2)
  );
  IBUF   ps2_clk_IBUF (
    .I(ps2_clk),
    .O(ps2_clk_IBUF_3)
  );
  IBUF   rx_en_IBUF (
    .I(rx_en),
    .O(rx_en_IBUF_4)
  );
  OBUF   anodos_o_3_OBUF (
    .I(anodos_o_3_OBUF_35),
    .O(anodos_o[3])
  );
  OBUF   anodos_o_2_OBUF (
    .I(anodos_o_2_OBUF_36),
    .O(anodos_o[2])
  );
  OBUF   anodos_o_1_OBUF (
    .I(anodos_o_1_OBUF_37),
    .O(anodos_o[1])
  );
  OBUF   anodos_o_0_OBUF (
    .I(anodos_o_0_OBUF_38),
    .O(anodos_o[0])
  );
  OBUF   codigo_o_7_OBUF (
    .I(codigo_o_7_OBUF_27),
    .O(codigo_o[7])
  );
  OBUF   codigo_o_6_OBUF (
    .I(codigo_o_6_OBUF_28),
    .O(codigo_o[6])
  );
  OBUF   codigo_o_5_OBUF (
    .I(codigo_o_5_OBUF_29),
    .O(codigo_o[5])
  );
  OBUF   codigo_o_4_OBUF (
    .I(codigo_o_4_OBUF_30),
    .O(codigo_o[4])
  );
  OBUF   codigo_o_3_OBUF (
    .I(codigo_o_3_OBUF_31),
    .O(codigo_o[3])
  );
  OBUF   codigo_o_2_OBUF (
    .I(codigo_o_2_OBUF_32),
    .O(codigo_o[2])
  );
  OBUF   codigo_o_1_OBUF (
    .I(codigo_o_1_OBUF_33),
    .O(codigo_o[1])
  );
  OBUF   codigo_o_0_OBUF (
    .I(codigo_o_0_OBUF_34),
    .O(codigo_o[0])
  );
  OBUF   Temp_o_4_OBUF (
    .I(\D/Temp_i [4]),
    .O(Temp_o[4])
  );
  OBUF   Temp_o_3_OBUF (
    .I(\D/Temp_i [3]),
    .O(Temp_o[3])
  );
  OBUF   Temp_o_2_OBUF (
    .I(\D/Temp_i [2]),
    .O(Temp_o[2])
  );
  OBUF   Temp_o_1_OBUF (
    .I(\D/Temp_i [1]),
    .O(Temp_o[1])
  );
  OBUF   Temp_o_0_OBUF (
    .I(\D/Temp_i [0]),
    .O(Temp_o[0])
  );
  OBUF   Ing_o_OBUF (
    .I(\D/Ing_i_21 ),
    .O(Ing_o)
  );
  OBUF   Pres_o_OBUF (
    .I(\D/Pres_i_22 ),
    .O(Pres_o)
  );
  OBUF   Alarm_o_OBUF (
    .I(Alarm_o_OBUF_25),
    .O(Alarm_o)
  );
  OBUF   Elect_o_OBUF (
    .I(Elect_o_OBUF_26),
    .O(Elect_o)
  );
  OBUF   data_o_o_OBUF (
    .I(data_o_o_OBUF_39),
    .O(data_o_o)
  );
  FDC   \C/clk_o  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\C/clk_o_rstpot_157 ),
    .Q(\C/clk_o_15 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \A/estado_actl_FSM_FFd1-In_SW0_SW0  (
    .I0(\A/estado_actl_FSM_FFd2_89 ),
    .I1(\A/n_reg [3]),
    .O(N26)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA2AAAAAAA ))
  \C/Mcount_counter_lut<1>  (
    .I0(\C/counter [1]),
    .I1(\C/counter [9]),
    .I2(\C/counter [8]),
    .I3(\C/counter [7]),
    .I4(\C/counter [6]),
    .I5(N01),
    .O(\C/Mcount_counter_lut [1])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA2AAAAAAA ))
  \C/Mcount_counter_lut<6>  (
    .I0(\C/counter [6]),
    .I1(\C/counter [9]),
    .I2(\C/counter [8]),
    .I3(\C/counter [7]),
    .I4(\C/counter [1]),
    .I5(N01),
    .O(\C/Mcount_counter_lut [6])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA2AAAAAAA ))
  \C/Mcount_counter_lut<7>  (
    .I0(\C/counter [7]),
    .I1(\C/counter [9]),
    .I2(\C/counter [8]),
    .I3(\C/counter [6]),
    .I4(\C/counter [1]),
    .I5(N01),
    .O(\C/Mcount_counter_lut [7])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA2AAAAAAA ))
  \C/Mcount_counter_lut<8>  (
    .I0(\C/counter [8]),
    .I1(\C/counter [9]),
    .I2(\C/counter [7]),
    .I3(\C/counter [6]),
    .I4(\C/counter [1]),
    .I5(N01),
    .O(\C/Mcount_counter_lut [8])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA2AAAAAAA ))
  \C/Mcount_counter_lut<9>  (
    .I0(\C/counter [9]),
    .I1(\C/counter [8]),
    .I2(\C/counter [7]),
    .I3(\C/counter [6]),
    .I4(\C/counter [1]),
    .I5(N01),
    .O(\C/Mcount_counter_lut [9])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \C/counter[10]_PWR_4_o_equal_1_o<10>_SW1  (
    .I0(\C/counter [6]),
    .I1(\C/counter [1]),
    .O(N28)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA2AAAAAAA ))
  \C/Mcount_counter_lut<0>  (
    .I0(\C/counter [0]),
    .I1(\C/counter [9]),
    .I2(\C/counter [8]),
    .I3(\C/counter [7]),
    .I4(N28),
    .I5(N01),
    .O(\C/Mcount_counter_lut [0])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA2AAAAAAA ))
  \C/Mcount_counter_lut<2>  (
    .I0(\C/counter [2]),
    .I1(\C/counter [9]),
    .I2(\C/counter [8]),
    .I3(\C/counter [7]),
    .I4(N28),
    .I5(N01),
    .O(\C/Mcount_counter_lut [2])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA2AAAAAAA ))
  \C/Mcount_counter_lut<3>  (
    .I0(\C/counter [3]),
    .I1(\C/counter [9]),
    .I2(\C/counter [8]),
    .I3(\C/counter [7]),
    .I4(N28),
    .I5(N01),
    .O(\C/Mcount_counter_lut [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \C/counter[10]_PWR_4_o_equal_1_o<10>_SW4  (
    .I0(\C/counter [8]),
    .I1(\C/counter [7]),
    .O(N34)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA2AAAAAAA ))
  \C/Mcount_counter_lut<4>  (
    .I0(\C/counter [4]),
    .I1(\C/counter [6]),
    .I2(\C/counter [1]),
    .I3(\C/counter [9]),
    .I4(N34),
    .I5(N01),
    .O(\C/Mcount_counter_lut [4])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA2AAAAAAA ))
  \C/Mcount_counter_lut<5>  (
    .I0(\C/counter [5]),
    .I1(\C/counter [6]),
    .I2(\C/counter [1]),
    .I3(\C/counter [9]),
    .I4(N34),
    .I5(N01),
    .O(\C/Mcount_counter_lut [5])
  );
  LUT5 #(
    .INIT ( 32'hBBAA8AAA ))
  \D/teclado_i[7]_GND_4_o_select_22_OUT<3>  (
    .I0(\D/Temp_i [3]),
    .I1(\A/b_reg [8]),
    .I2(\D/out2 ),
    .I3(\A/b_reg [3]),
    .I4(N16),
    .O(\D/teclado_i[7]_GND_4_o_select_22_OUT<3>_112 )
  );
  LUT5 #(
    .INIT ( 32'hBBAA8AAA ))
  \D/teclado_i[7]_GND_4_o_select_22_OUT<4>  (
    .I0(\D/Temp_i [4]),
    .I1(\A/b_reg [8]),
    .I2(\D/out2 ),
    .I3(\A/b_reg [3]),
    .I4(N22),
    .O(\D/teclado_i[7]_GND_4_o_select_22_OUT<4>_113 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \C/counter[10]_PWR_4_o_equal_1_o<10>_SW6  (
    .I0(\C/counter [7]),
    .I1(\C/counter [9]),
    .O(N38)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA2AAAAAAA ))
  \C/Mcount_counter_lut<10>  (
    .I0(\C/counter [10]),
    .I1(\C/counter [6]),
    .I2(\C/counter [1]),
    .I3(\C/counter [8]),
    .I4(N38),
    .I5(N01),
    .O(\C/Mcount_counter_lut [10])
  );
  FDC   \A/b_reg_10  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/b_reg_10_rstpot_166 ),
    .Q(\A/b_reg [10])
  );
  FDC   \A/b_reg_9  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/b_reg_9_rstpot_167 ),
    .Q(\A/b_reg [9])
  );
  FDC   \A/b_reg_8  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/b_reg_8_rstpot_168 ),
    .Q(\A/b_reg [8])
  );
  FDC   \A/b_reg_7  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/b_reg_7_rstpot_169 ),
    .Q(\A/b_reg [7])
  );
  FDC   \A/b_reg_6  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/b_reg_6_rstpot_170 ),
    .Q(\A/b_reg [6])
  );
  FDC   \A/b_reg_5  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/b_reg_5_rstpot_171 ),
    .Q(\A/b_reg [5])
  );
  FDC   \A/b_reg_4  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/b_reg_4_rstpot_172 ),
    .Q(\A/b_reg [4])
  );
  FDC   \A/b_reg_3  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/b_reg_3_rstpot_173 ),
    .Q(\A/b_reg [3])
  );
  FDC   \A/b_reg_2  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/b_reg_2_rstpot_174 ),
    .Q(\A/b_reg [2])
  );
  FDC   \A/b_reg_1  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/b_reg_1_rstpot_175 ),
    .Q(\A/b_reg [1])
  );
  FDC   \A/b_reg_0  (
    .C(clk_i_BUFGP_0),
    .CLR(rst_i_IBUF_1),
    .D(\A/b_reg_0_rstpot_176 ),
    .Q(\A/b_reg [0])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \C/counter[10]_PWR_4_o_equal_1_o<10>_SW7  (
    .I0(\C/counter [7]),
    .I1(\C/counter [9]),
    .O(N40)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAA6AAA ))
  \C/clk_o_rstpot  (
    .I0(\C/clk_o_15 ),
    .I1(\C/counter [6]),
    .I2(\C/counter [1]),
    .I3(\C/counter [8]),
    .I4(N01),
    .I5(N40),
    .O(\C/clk_o_rstpot_157 )
  );
  LUT3 #(
    .INIT ( 8'h46 ))
  \D/out22_SW1  (
    .I0(\A/b_reg [7]),
    .I1(\A/b_reg [6]),
    .I2(\A/b_reg [5]),
    .O(N44)
  );
  LUT6 #(
    .INIT ( 64'hFFA2A2A2FFAAAAAA ))
  \D/teclado_i[7]_GND_4_o_select_22_OUT<0>  (
    .I0(\D/Temp_i [0]),
    .I1(\A/b_reg [3]),
    .I2(\A/b_reg [8]),
    .I3(N44),
    .I4(N12),
    .I5(\D/out2 ),
    .O(\D/teclado_i[7]_GND_4_o_select_22_OUT<0>_109 )
  );
  LUT3 #(
    .INIT ( 8'h14 ))
  \D/out22_SW2  (
    .I0(\A/b_reg [6]),
    .I1(\A/b_reg [7]),
    .I2(\A/b_reg [5]),
    .O(N46)
  );
  LUT6 #(
    .INIT ( 64'hFFA2A2A2FFAAAAAA ))
  \D/teclado_i[7]_GND_4_o_select_22_OUT<1>  (
    .I0(\D/Temp_i [1]),
    .I1(\A/b_reg [3]),
    .I2(\A/b_reg [8]),
    .I3(N46),
    .I4(N12),
    .I5(\D/out2 ),
    .O(\D/teclado_i[7]_GND_4_o_select_22_OUT<1>_110 )
  );
  LUT4 #(
    .INIT ( 16'hFFBF ))
  \A/estado_actl_FSM_FFd1-In1_SW1  (
    .I0(\A/filtro_reg [1]),
    .I1(\A/f_ps2c_reg_99 ),
    .I2(rx_en_IBUF_4),
    .I3(\A/filtro_reg [0]),
    .O(N48)
  );
  LUT6 #(
    .INIT ( 64'h00000001CCCCCCCD ))
  \A/estado_actl_FSM_FFd2-In1  (
    .I0(N48),
    .I1(\A/estado_actl_FSM_FFd2_89 ),
    .I2(N4),
    .I3(\A/filtro_reg [3]),
    .I4(\A/filtro_reg [2]),
    .I5(\A/estado_actl_FSM_FFd1_14 ),
    .O(\A/estado_actl_FSM_FFd2-In )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFEFF ))
  \A/estado_actl_FSM_FFd1-In1_SW2  (
    .I0(\A/filtro_reg [0]),
    .I1(\A/filtro_reg [2]),
    .I2(\A/filtro_reg [1]),
    .I3(\A/f_ps2c_reg_99 ),
    .I4(\A/filtro_reg [3]),
    .I5(\A/estado_actl_FSM_FFd1_14 ),
    .O(N50)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \A/estado_actl_FSM_FFd1-In  (
    .I0(\A/n_reg [1]),
    .I1(\A/n_reg [2]),
    .I2(\A/n_reg [0]),
    .I3(N26),
    .I4(N4),
    .I5(N50),
    .O(\A/estado_actl_FSM_FFd1-In_90 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAABAAAAAAA8 ))
  \A/b_reg_10_rstpot  (
    .I0(\A/b_reg [10]),
    .I1(N4),
    .I2(\A/filtro_reg [3]),
    .I3(\A/filtro_reg [2]),
    .I4(\A/filtro_reg [1]),
    .I5(N52),
    .O(\A/b_reg_10_rstpot_166 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAABAAAAAAA8 ))
  \A/b_reg_9_rstpot  (
    .I0(\A/b_reg [9]),
    .I1(N4),
    .I2(\A/filtro_reg [3]),
    .I3(\A/filtro_reg [2]),
    .I4(\A/filtro_reg [1]),
    .I5(N54),
    .O(\A/b_reg_9_rstpot_167 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAABAAAAAAA8 ))
  \A/b_reg_8_rstpot  (
    .I0(\A/b_reg [8]),
    .I1(N4),
    .I2(\A/filtro_reg [3]),
    .I3(\A/filtro_reg [2]),
    .I4(\A/filtro_reg [1]),
    .I5(N56),
    .O(\A/b_reg_8_rstpot_168 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFBFBFBFF ))
  \A/estado_actl_FSM_FFd1-In1_SW6  (
    .I0(\A/filtro_reg [0]),
    .I1(\A/f_ps2c_reg_99 ),
    .I2(\A/estado_actl_FSM_FFd1_14 ),
    .I3(\A/estado_actl_FSM_FFd2_89 ),
    .I4(rx_en_IBUF_4),
    .I5(\A/filtro_reg [1]),
    .O(N58)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAC ))
  \A/b_reg_7_rstpot  (
    .I0(\A/b_reg [7]),
    .I1(\A/b_reg [8]),
    .I2(\A/filtro_reg [2]),
    .I3(\A/filtro_reg [3]),
    .I4(N4),
    .I5(N58),
    .O(\A/b_reg_7_rstpot_169 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCCCCCCCCCCA ))
  \A/b_reg_6_rstpot  (
    .I0(\A/b_reg [7]),
    .I1(\A/b_reg [6]),
    .I2(\A/filtro_reg [2]),
    .I3(\A/filtro_reg [3]),
    .I4(N4),
    .I5(N58),
    .O(\A/b_reg_6_rstpot_170 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCCCCCCCCCCA ))
  \A/b_reg_5_rstpot  (
    .I0(\A/b_reg [6]),
    .I1(\A/b_reg [5]),
    .I2(\A/filtro_reg [2]),
    .I3(\A/filtro_reg [3]),
    .I4(N4),
    .I5(N58),
    .O(\A/b_reg_5_rstpot_171 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAC ))
  \A/b_reg_4_rstpot  (
    .I0(\A/b_reg [4]),
    .I1(\A/b_reg [5]),
    .I2(\A/filtro_reg [2]),
    .I3(\A/filtro_reg [3]),
    .I4(N4),
    .I5(N58),
    .O(\A/b_reg_4_rstpot_172 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCCCCCCCCCCA ))
  \A/b_reg_3_rstpot  (
    .I0(\A/b_reg [4]),
    .I1(\A/b_reg [3]),
    .I2(\A/filtro_reg [2]),
    .I3(\A/filtro_reg [3]),
    .I4(N4),
    .I5(N58),
    .O(\A/b_reg_3_rstpot_173 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAC ))
  \A/b_reg_2_rstpot  (
    .I0(\A/b_reg [2]),
    .I1(\A/b_reg [3]),
    .I2(\A/filtro_reg [2]),
    .I3(\A/filtro_reg [3]),
    .I4(N4),
    .I5(N58),
    .O(\A/b_reg_2_rstpot_174 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCCCCCCCCCCA ))
  \A/b_reg_1_rstpot  (
    .I0(\A/b_reg [2]),
    .I1(\A/b_reg [1]),
    .I2(\A/filtro_reg [2]),
    .I3(\A/filtro_reg [3]),
    .I4(N4),
    .I5(N58),
    .O(\A/b_reg_1_rstpot_175 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAC ))
  \A/b_reg_0_rstpot  (
    .I0(\A/b_reg [0]),
    .I1(\A/b_reg [1]),
    .I2(\A/filtro_reg [2]),
    .I3(\A/filtro_reg [3]),
    .I4(N4),
    .I5(N58),
    .O(\A/b_reg_0_rstpot_176 )
  );
  LUT6 #(
    .INIT ( 64'hF0F00FFAF0F03CFA ))
  \A/n_reg_0_dpot  (
    .I0(rx_en_IBUF_4),
    .I1(\A/n_reg [3]),
    .I2(\A/n_reg [0]),
    .I3(\A/estado_actl_FSM_FFd2_89 ),
    .I4(\A/estado_actl_FSM_FFd1_14 ),
    .I5(N8),
    .O(\A/n_reg_0_dpot_161 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0F0AAF0B8F0 ))
  \A/estado_actl_FSM_FFd1-In1_SW3_F  (
    .I0(ps2_data_IBUF_2),
    .I1(rx_en_IBUF_4),
    .I2(\A/b_reg [10]),
    .I3(\A/f_ps2c_reg_99 ),
    .I4(\A/estado_actl_FSM_FFd2_89 ),
    .I5(\A/estado_actl_FSM_FFd1_14 ),
    .O(N80)
  );
  LUT6 #(
    .INIT ( 64'hF0F0F0F0CCF0D8F0 ))
  \A/estado_actl_FSM_FFd1-In1_SW4_F  (
    .I0(rx_en_IBUF_4),
    .I1(\A/b_reg [10]),
    .I2(\A/b_reg [9]),
    .I3(\A/f_ps2c_reg_99 ),
    .I4(\A/estado_actl_FSM_FFd2_89 ),
    .I5(\A/estado_actl_FSM_FFd1_14 ),
    .O(N82)
  );
  LUT6 #(
    .INIT ( 64'hFFFFCFDF0000C080 ))
  \A/estado_actl_FSM_FFd1-In1_SW5_F  (
    .I0(rx_en_IBUF_4),
    .I1(\A/b_reg [9]),
    .I2(\A/f_ps2c_reg_99 ),
    .I3(\A/estado_actl_FSM_FFd2_89 ),
    .I4(\A/estado_actl_FSM_FFd1_14 ),
    .I5(\A/b_reg [8]),
    .O(N84)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \A/n_reg_2_dpot_SW0  (
    .I0(\A/n_reg [1]),
    .I1(\A/n_reg [0]),
    .O(N86)
  );
  LUT6 #(
    .INIT ( 64'hCCCCCC44CCCC3044 ))
  \A/n_reg_2_dpot  (
    .I0(rx_en_IBUF_4),
    .I1(\A/n_reg [2]),
    .I2(\A/n_reg [3]),
    .I3(\A/estado_actl_FSM_FFd2_89 ),
    .I4(\A/estado_actl_FSM_FFd1_14 ),
    .I5(N86),
    .O(\A/n_reg_2_dpot_163 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \A/n_reg_1_dpot_SW0  (
    .I0(\A/n_reg [2]),
    .I1(\A/n_reg [3]),
    .O(N88)
  );
  LUT6 #(
    .INIT ( 64'hAAAA84A6AAAA80A2 ))
  \A/n_reg_1_dpot  (
    .I0(\A/n_reg [1]),
    .I1(\A/estado_actl_FSM_FFd2_89 ),
    .I2(\A/n_reg [0]),
    .I3(rx_en_IBUF_4),
    .I4(\A/estado_actl_FSM_FFd1_14 ),
    .I5(N88),
    .O(\A/n_reg_1_dpot_162 )
  );
  LUT5 #(
    .INIT ( 32'hFE15FFFF ))
  \D/teclado_i[7]_GND_4_o_select_22_OUT<2>_SW1  (
    .I0(\A/b_reg [6]),
    .I1(\A/b_reg [5]),
    .I2(\A/b_reg [4]),
    .I3(\A/b_reg [7]),
    .I4(\A/b_reg [2]),
    .O(N90)
  );
  LUT6 #(
    .INIT ( 64'hAA0AAA3AAAAAAABA ))
  \D/teclado_i[7]_GND_4_o_select_22_OUT<2>  (
    .I0(\D/Temp_i [2]),
    .I1(\A/b_reg [1]),
    .I2(\A/b_reg [3]),
    .I3(\A/b_reg [8]),
    .I4(N90),
    .I5(\D/out2 ),
    .O(\D/teclado_i[7]_GND_4_o_select_22_OUT<2>_111 )
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \A/estado_actl_FSM_FFd1-In1_SW31  (
    .I0(\A/b_reg [10]),
    .I1(\A/filtro_reg [0]),
    .I2(N80),
    .O(N52)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \A/estado_actl_FSM_FFd1-In1_SW41  (
    .I0(\A/b_reg [9]),
    .I1(\A/filtro_reg [0]),
    .I2(N82),
    .O(N54)
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \A/estado_actl_FSM_FFd1-In1_SW51  (
    .I0(\A/filtro_reg [0]),
    .I1(\A/b_reg [8]),
    .I2(N84),
    .O(N56)
  );
  LUT5 #(
    .INIT ( 32'h00000002 ))
  \A/estado_actl_FSM_FFd1-In1_rstpot  (
    .I0(\A/f_ps2c_reg_99 ),
    .I1(\A/filtro_reg [0]),
    .I2(\A/filtro_reg [1]),
    .I3(\A/filtro_reg [3]),
    .I4(\A/filtro_reg [2]),
    .O(\A/estado_actl_FSM_FFd1-In1_rstpot_192 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \A/estado_actl_FSM_FFd1-In1_cepot  (
    .I0(\A/filtro_reg [6]),
    .I1(\A/filtro_reg [5]),
    .I2(\A/filtro_reg [4]),
    .I3(\A/filtro_reg [7]),
    .O(\A/estado_actl_FSM_FFd1-In1_cepot_193 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \A/n_reg_0_dpot1  (
    .I0(\A/estado_actl_FSM_FFd1-In1_rstpot_192 ),
    .I1(\A/n_reg [0]),
    .I2(\A/n_reg_0_dpot_161 ),
    .O(\A/n_reg_0_dpot1_194 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \A/n_reg_1_dpot1  (
    .I0(\A/estado_actl_FSM_FFd1-In1_rstpot_192 ),
    .I1(\A/n_reg [1]),
    .I2(\A/n_reg_1_dpot_162 ),
    .O(\A/n_reg_1_dpot1_195 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \A/n_reg_2_dpot1  (
    .I0(\A/estado_actl_FSM_FFd1-In1_rstpot_192 ),
    .I1(\A/n_reg [2]),
    .I2(\A/n_reg_2_dpot_163 ),
    .O(\A/n_reg_2_dpot1_196 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \A/n_reg_3_dpot1  (
    .I0(\A/estado_actl_FSM_FFd1-In1_rstpot_192 ),
    .I1(\A/n_reg [3]),
    .I2(\A/n_reg_3_dpot_164 ),
    .O(\A/n_reg_3_dpot1_197 )
  );
  MUXF7   \A/n_reg_3_dpot  (
    .I0(N92),
    .I1(N93),
    .S(\A/estado_actl_FSM_FFd2_89 ),
    .O(\A/n_reg_3_dpot_164 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \A/n_reg_3_dpot_F  (
    .I0(rx_en_IBUF_4),
    .I1(\A/estado_actl_FSM_FFd1_14 ),
    .I2(\A/n_reg [3]),
    .O(N92)
  );
  LUT5 #(
    .INIT ( 32'hAAAAAAA8 ))
  \A/n_reg_3_dpot_G  (
    .I0(\A/n_reg [3]),
    .I1(\A/estado_actl_FSM_FFd1_14 ),
    .I2(\A/n_reg [2]),
    .I3(\A/n_reg [0]),
    .I4(\A/n_reg [1]),
    .O(N93)
  );
  BUFGP   clk_i_BUFGP (
    .I(clk_i),
    .O(clk_i_BUFGP_0)
  );
  INV   \E/EA_FSM_FFd2-In1_INV_0  (
    .I(\E/EA_FSM_FFd2_52 ),
    .O(\E/EA_FSM_FFd2-In )
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

