////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Proyecto_Corto_2_map.v
// /___/   /\     Timestamp: Wed Mar 18 12:26:06 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 2 -pcf Proyecto_Corto_2.pcf -sdf_anno true -sdf_path netgen/map -insert_glbl true -w -dir netgen/map -ofmt verilog -sim Proyecto_Corto_2_map.ncd Proyecto_Corto_2_map.v 
// Device	: 6slx16csg324-2 (PRODUCTION 1.23 2013-10-13)
// Input file	: Proyecto_Corto_2_map.ncd
// Output file	: C:\Users\Javier\Desktop\LabDigitales\Proyecto_Corto_2_Version_Final\netgen\map\Proyecto_Corto_2_map.v
// # of Modules	: 1
// Design Name	: Proyecto_Corto_2
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

module Proyecto_Corto_2 (
  clk_i, rst_i, ps2_data, ps2_clk, rx_en, Ing_o, Pres_o, data_o_o, anodos_o, codigo_o, Temp_o
);
  input clk_i;
  input rst_i;
  input ps2_data;
  input ps2_clk;
  input rx_en;
  output Ing_o;
  output Pres_o;
  output data_o_o;
  output [3 : 0] anodos_o;
  output [7 : 0] codigo_o;
  output [4 : 0] Temp_o;
  wire NlwRenamedSig_IO_ps2_data;
  wire NlwRenamedSig_IO_ps2_clk;
  wire \clk_i_BUFGP/IBUFG_0 ;
  wire clk_i_BUFGP;
  wire \ps2/estado_actl_FSM_FFd1_736 ;
  wire \ps2/n_reg_3_dpot_0 ;
  wire \ps2/estado_actl_FSM_FFd2_741 ;
  wire rx_en_IBUF_0;
  wire N48_0;
  wire N14;
  wire \Cargateclado/out2 ;
  wire rst_i_IBUF_0;
  wire N92;
  wire \CLK1k/clk_o_753 ;
  wire \FSM/EA_FSM_FFd1_754 ;
  wire \Cargateclado/Pres_i_755 ;
  wire \FSM/EA_FSM_FFd2_756 ;
  wire N6;
  wire N60;
  wire \SSFSM/EA_FSM_FFd1_767 ;
  wire \SSFSM/EA_FSM_FFd2_768 ;
  wire ps2_clk_IBUF_0;
  wire N10;
  wire N46;
  wire \ps2/Mmux_f_ps2c_sgt1 ;
  wire \ps2/f_ps2c_reg_780 ;
  wire N90;
  wire N88;
  wire \ps2/estado_actl_FSM_FFd1-In1_cepot_783 ;
  wire \ps2/estado_actl_FSM_FFd1-In1_rstpot_784 ;
  wire \CLK1k/counter[10]_PWR_4_o_equal_1_o_inv_786 ;
  wire N01;
  wire N30;
  wire N50;
  wire N28;
  wire N36;
  wire N82;
  wire data_o_o_OBUF_806;
  wire Alarm_o;
  wire codigo_o_6_OBUF_809;
  wire codigo_o_5_OBUF_0;
  wire N84;
  wire N86;
  wire ps2_data_IBUF_0;
  wire \Cargateclado/Ing_i_816 ;
  wire codigo_o_0_OBUF_817;
  wire codigo_o_4_OBUF_818;
  wire codigo_o_1_OBUF_0;
  wire N40;
  wire anodos_o_2_OBUF_821;
  wire anodos_o_3_OBUF_0;
  wire codigo_o_2_OBUF_823;
  wire codigo_o_3_OBUF_0;
  wire anodos_o_0_OBUF_825;
  wire anodos_o_1_OBUF_0;
  wire \CLK1k/Mcount_counter_cy[3] ;
  wire \CLK1k/Mcount_counter_cy[7] ;
  wire \ps2/n_reg_1_dpot_830 ;
  wire \ps2/n_reg_2_dpot_831 ;
  wire \ps2/n_reg_0_dpot_832 ;
  wire N58;
  wire N52;
  wire \ps2/Mmux_f_ps2c_sgt11_835 ;
  wire N56;
  wire N54;
  wire N42;
  wire N20;
  wire \Cargateclado/teclado_i[7]_PWR_5_o_Select_4_o11 ;
  wire N22;
  wire N18;
  wire N24;
  wire N26;
  wire N4;
  wire \CLK1k/Mcount_counter_lut<0>_rt_38 ;
  wire \CLK1k/Mcount_counter ;
  wire \CLK1k/Mcount_counter1 ;
  wire \CLK1k/Mcount_counter2 ;
  wire \CLK1k/Mcount_counter3 ;
  wire \CLK1k/Mcount_counter4 ;
  wire \CLK1k/Mcount_counter5 ;
  wire \CLK1k/Mcount_counter6 ;
  wire \CLK1k/Mcount_counter7 ;
  wire \CLK1k/Mcount_counter8 ;
  wire \CLK1k/Mcount_counter9 ;
  wire \CLK1k/Mcount_counter10 ;
  wire \clk_i_BUFGP/IBUFG_147 ;
  wire rx_en_IBUF_150;
  wire rst_i_IBUF_155;
  wire ps2_data_IBUF_162;
  wire ps2_clk_IBUF_171;
  wire N94;
  wire \ps2/n_reg_3_dpot_183 ;
  wire N95;
  wire \ps2/n_reg<2>_pack_11 ;
  wire \ps2/n_reg_2_dpot1_195 ;
  wire \ps2/n_reg_1_dpot1_193 ;
  wire \ps2/n_reg<0>_pack_5 ;
  wire \ps2/n_reg_0_dpot1_218 ;
  wire \ps2/n_reg<3>_pack_3 ;
  wire \ps2/n_reg_3_dpot1_240 ;
  wire \ps2/b_reg_7_rstpot_276 ;
  wire \ps2/b_reg_8_rstpot_264 ;
  wire \ps2/estado_actl_FSM_FFd2-In ;
  wire \ps2/estado_actl_FSM_FFd1-In_300 ;
  wire \ps2/f_ps2c_sgt ;
  wire \ps2/b_reg_10_rstpot_441 ;
  wire \ps2/b_reg_9_rstpot_428 ;
  wire N48;
  wire \ps2/b_reg_6_rstpot_472 ;
  wire \ps2/b_reg_5_rstpot_464 ;
  wire \ps2/b_reg_4_rstpot_456 ;
  wire \Cargateclado/teclado_i[7]_GND_4_o_select_22_OUT<2>_512 ;
  wire \Cargateclado/teclado_i[7]_GND_4_o_select_22_OUT<1>_503 ;
  wire \Cargateclado/teclado_i[7]_GND_4_o_select_22_OUT<0>_488 ;
  wire N42_pack_2;
  wire \CLK1k/clk_o_rstpot_527 ;
  wire \ps2/b_reg_3_rstpot_567 ;
  wire \ps2/b_reg_2_rstpot_558 ;
  wire \ps2/b_reg_1_rstpot_550 ;
  wire \ps2/b_reg_0_rstpot_542 ;
  wire \Cargateclado/teclado_i[7]_PWR_5_o_Select_9_o_591 ;
  wire N20_pack_11;
  wire \Cargateclado/teclado_i[7]_PWR_5_o_Select_4_o_576 ;
  wire \Cargateclado/teclado_i[7]_GND_4_o_select_22_OUT<4>_621 ;
  wire \Cargateclado/teclado_i[7]_GND_4_o_select_22_OUT<3>_607 ;
  wire codigo_o_5_OBUF_644;
  wire N26_pack_10;
  wire \FSM/EA_FSM_FFd2-In ;
  wire \FSM/EA_FSM_FFd1-In ;
  wire codigo_o_3_OBUF_680;
  wire \SSFSM/EA_FSM_FFd2-In ;
  wire \SSFSM/EA_FSM_FFd1-In ;
  wire anodos_o_3_OBUF_694;
  wire anodos_o_1_OBUF_699;
  wire codigo_o_1_OBUF_705;
  wire VCC;
  wire GND;
  wire \NLW_CLK1k/Mcount_counter_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_CLK1k/Mcount_counter_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_CLK1k/Mcount_counter_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N0.A5LUT_O_UNCONNECTED ;
  wire \NLW_CLK1k/Mcount_counter_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_CLK1k/Mcount_counter_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_CLK1k/Mcount_counter_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_CLK1k/Mcount_counter_xor<10>_CO[0]_UNCONNECTED ;
  wire \NLW_CLK1k/Mcount_counter_xor<10>_CO[1]_UNCONNECTED ;
  wire \NLW_CLK1k/Mcount_counter_xor<10>_CO[2]_UNCONNECTED ;
  wire \NLW_CLK1k/Mcount_counter_xor<10>_CO[3]_UNCONNECTED ;
  wire \NLW_CLK1k/Mcount_counter_xor<10>_DI[2]_UNCONNECTED ;
  wire \NLW_CLK1k/Mcount_counter_xor<10>_DI[3]_UNCONNECTED ;
  wire \NLW_CLK1k/Mcount_counter_xor<10>_O[3]_UNCONNECTED ;
  wire \NLW_CLK1k/Mcount_counter_xor<10>_S[3]_UNCONNECTED ;
  wire [3 : 0] \ps2/n_reg ;
  wire [10 : 0] \ps2/b_reg ;
  wire [4 : 0] \Cargateclado/Temp_i ;
  wire [7 : 0] \ps2/filtro_reg ;
  wire [10 : 0] \CLK1k/counter ;
  wire [10 : 0] \CLK1k/Mcount_counter_lut ;
  assign
    NlwRenamedSig_IO_ps2_data = ps2_data,
    NlwRenamedSig_IO_ps2_clk = ps2_clk;
  initial $sdf_annotate("netgen/map/proyecto_corto_2_map.sdf");
  X_CKBUF #(
    .LOC ( "BUFGMUX_X3Y13" ))
  \clk_i_BUFGP/BUFG  (
    .I(\clk_i_BUFGP/IBUFG_0 ),
    .O(clk_i_BUFGP)
  );
  X_FF #(
    .LOC ( "SLICE_X24Y9" ),
    .INIT ( 1'b0 ))
  \CLK1k/counter_3  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\CLK1k/Mcount_counter3 ),
    .O(\CLK1k/counter [3]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y9" ),
    .INIT ( 64'hFF00FF007F00FF00 ))
  \CLK1k/Mcount_counter_lut<3>  (
    .ADR0(\CLK1k/counter [9]),
    .ADR1(\CLK1k/counter [8]),
    .ADR2(\CLK1k/counter [7]),
    .ADR3(\CLK1k/counter [3]),
    .ADR4(N30),
    .ADR5(N01),
    .O(\CLK1k/Mcount_counter_lut [3])
  );
  X_FF #(
    .LOC ( "SLICE_X24Y9" ),
    .INIT ( 1'b0 ))
  \CLK1k/counter_2  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\CLK1k/Mcount_counter2 ),
    .O(\CLK1k/counter [2]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X24Y9" ))
  \CLK1k/Mcount_counter_cy<3>  (
    .CI(1'b0),
    .CYINIT(\CLK1k/counter[10]_PWR_4_o_equal_1_o_inv_786 ),
    .CO({\CLK1k/Mcount_counter_cy[3] , \NLW_CLK1k/Mcount_counter_cy<3>_CO[2]_UNCONNECTED , \NLW_CLK1k/Mcount_counter_cy<3>_CO[1]_UNCONNECTED , 
\NLW_CLK1k/Mcount_counter_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\CLK1k/Mcount_counter3 , \CLK1k/Mcount_counter2 , \CLK1k/Mcount_counter1 , \CLK1k/Mcount_counter }),
    .S({\CLK1k/Mcount_counter_lut [3], \CLK1k/Mcount_counter_lut [2], \CLK1k/Mcount_counter_lut [1], \CLK1k/Mcount_counter_lut<0>_rt_38 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y9" ),
    .INIT ( 64'hFF00FF007F00FF00 ))
  \CLK1k/Mcount_counter_lut<2>  (
    .ADR0(\CLK1k/counter [9]),
    .ADR1(\CLK1k/counter [8]),
    .ADR2(\CLK1k/counter [7]),
    .ADR3(\CLK1k/counter [2]),
    .ADR4(N30),
    .ADR5(N01),
    .O(\CLK1k/Mcount_counter_lut [2])
  );
  X_FF #(
    .LOC ( "SLICE_X24Y9" ),
    .INIT ( 1'b0 ))
  \CLK1k/counter_1  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\CLK1k/Mcount_counter1 ),
    .O(\CLK1k/counter [1]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y9" ),
    .INIT ( 64'hFF00FF007F00FF00 ))
  \CLK1k/Mcount_counter_lut<1>  (
    .ADR0(\CLK1k/counter [9]),
    .ADR1(\CLK1k/counter [8]),
    .ADR2(\CLK1k/counter [7]),
    .ADR3(\CLK1k/counter [1]),
    .ADR4(\CLK1k/counter [6]),
    .ADR5(N01),
    .O(\CLK1k/Mcount_counter_lut [1])
  );
  X_FF #(
    .LOC ( "SLICE_X24Y9" ),
    .INIT ( 1'b0 ))
  \CLK1k/counter_0  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\CLK1k/Mcount_counter ),
    .O(\CLK1k/counter [0]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y9" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \CLK1k/Mcount_counter_lut<0>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\CLK1k/Mcount_counter_lut [0]),
    .ADR5(1'b1),
    .O(\CLK1k/Mcount_counter_lut<0>_rt_38 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y9" ),
    .INIT ( 32'h00000000 ))
  \N0.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X24Y10" ),
    .INIT ( 1'b0 ))
  \CLK1k/counter_7  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\CLK1k/Mcount_counter7 ),
    .O(\CLK1k/counter [7]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y10" ),
    .INIT ( 64'hFF00FF007F00FF00 ))
  \CLK1k/Mcount_counter_lut<7>  (
    .ADR0(\CLK1k/counter [9]),
    .ADR1(\CLK1k/counter [8]),
    .ADR2(\CLK1k/counter [6]),
    .ADR3(\CLK1k/counter [7]),
    .ADR4(\CLK1k/counter [1]),
    .ADR5(N01),
    .O(\CLK1k/Mcount_counter_lut [7])
  );
  X_FF #(
    .LOC ( "SLICE_X24Y10" ),
    .INIT ( 1'b0 ))
  \CLK1k/counter_6  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\CLK1k/Mcount_counter6 ),
    .O(\CLK1k/counter [6]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X24Y10" ))
  \CLK1k/Mcount_counter_cy<7>  (
    .CI(\CLK1k/Mcount_counter_cy[3] ),
    .CYINIT(1'b0),
    .CO({\CLK1k/Mcount_counter_cy[7] , \NLW_CLK1k/Mcount_counter_cy<7>_CO[2]_UNCONNECTED , \NLW_CLK1k/Mcount_counter_cy<7>_CO[1]_UNCONNECTED , 
\NLW_CLK1k/Mcount_counter_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\CLK1k/Mcount_counter7 , \CLK1k/Mcount_counter6 , \CLK1k/Mcount_counter5 , \CLK1k/Mcount_counter4 }),
    .S({\CLK1k/Mcount_counter_lut [7], \CLK1k/Mcount_counter_lut [6], \CLK1k/Mcount_counter_lut [5], \CLK1k/Mcount_counter_lut [4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y10" ),
    .INIT ( 64'hFF00FF007F00FF00 ))
  \CLK1k/Mcount_counter_lut<6>  (
    .ADR0(\CLK1k/counter [9]),
    .ADR1(\CLK1k/counter [8]),
    .ADR2(\CLK1k/counter [7]),
    .ADR3(\CLK1k/counter [6]),
    .ADR4(\CLK1k/counter [1]),
    .ADR5(N01),
    .O(\CLK1k/Mcount_counter_lut [6])
  );
  X_FF #(
    .LOC ( "SLICE_X24Y10" ),
    .INIT ( 1'b0 ))
  \CLK1k/counter_5  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\CLK1k/Mcount_counter5 ),
    .O(\CLK1k/counter [5]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y10" ),
    .INIT ( 64'hFF00FF007F00FF00 ))
  \CLK1k/Mcount_counter_lut<5>  (
    .ADR0(\CLK1k/counter [6]),
    .ADR1(\CLK1k/counter [1]),
    .ADR2(\CLK1k/counter [9]),
    .ADR3(\CLK1k/counter [5]),
    .ADR4(N36),
    .ADR5(N01),
    .O(\CLK1k/Mcount_counter_lut [5])
  );
  X_FF #(
    .LOC ( "SLICE_X24Y10" ),
    .INIT ( 1'b0 ))
  \CLK1k/counter_4  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\CLK1k/Mcount_counter4 ),
    .O(\CLK1k/counter [4]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y10" ),
    .INIT ( 64'hFF00FF007F00FF00 ))
  \CLK1k/Mcount_counter_lut<4>  (
    .ADR0(\CLK1k/counter [6]),
    .ADR1(\CLK1k/counter [1]),
    .ADR2(\CLK1k/counter [9]),
    .ADR3(\CLK1k/counter [4]),
    .ADR4(N36),
    .ADR5(N01),
    .O(\CLK1k/Mcount_counter_lut [4])
  );
  X_FF #(
    .LOC ( "SLICE_X24Y11" ),
    .INIT ( 1'b0 ))
  \CLK1k/counter_10  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\CLK1k/Mcount_counter10 ),
    .O(\CLK1k/counter [10]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X24Y11" ))
  \CLK1k/Mcount_counter_xor<10>  (
    .CI(\CLK1k/Mcount_counter_cy[7] ),
    .CYINIT(1'b0),
    .CO({\NLW_CLK1k/Mcount_counter_xor<10>_CO[3]_UNCONNECTED , \NLW_CLK1k/Mcount_counter_xor<10>_CO[2]_UNCONNECTED , 
\NLW_CLK1k/Mcount_counter_xor<10>_CO[1]_UNCONNECTED , \NLW_CLK1k/Mcount_counter_xor<10>_CO[0]_UNCONNECTED }),
    .DI({\NLW_CLK1k/Mcount_counter_xor<10>_DI[3]_UNCONNECTED , \NLW_CLK1k/Mcount_counter_xor<10>_DI[2]_UNCONNECTED , 1'b0, 1'b0}),
    .O({\NLW_CLK1k/Mcount_counter_xor<10>_O[3]_UNCONNECTED , \CLK1k/Mcount_counter10 , \CLK1k/Mcount_counter9 , \CLK1k/Mcount_counter8 }),
    .S({\NLW_CLK1k/Mcount_counter_xor<10>_S[3]_UNCONNECTED , \CLK1k/Mcount_counter_lut [10], \CLK1k/Mcount_counter_lut [9], 
\CLK1k/Mcount_counter_lut [8]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y11" ),
    .INIT ( 64'hFF00FF007F00FF00 ))
  \CLK1k/Mcount_counter_lut<10>  (
    .ADR0(\CLK1k/counter [6]),
    .ADR1(\CLK1k/counter [1]),
    .ADR2(\CLK1k/counter [8]),
    .ADR3(\CLK1k/counter [10]),
    .ADR4(N40),
    .ADR5(N01),
    .O(\CLK1k/Mcount_counter_lut [10])
  );
  X_FF #(
    .LOC ( "SLICE_X24Y11" ),
    .INIT ( 1'b0 ))
  \CLK1k/counter_9  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\CLK1k/Mcount_counter9 ),
    .O(\CLK1k/counter [9]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y11" ),
    .INIT ( 64'hFF00FF007F00FF00 ))
  \CLK1k/Mcount_counter_lut<9>  (
    .ADR0(\CLK1k/counter [8]),
    .ADR1(\CLK1k/counter [7]),
    .ADR2(\CLK1k/counter [6]),
    .ADR3(\CLK1k/counter [9]),
    .ADR4(\CLK1k/counter [1]),
    .ADR5(N01),
    .O(\CLK1k/Mcount_counter_lut [9])
  );
  X_FF #(
    .LOC ( "SLICE_X24Y11" ),
    .INIT ( 1'b0 ))
  \CLK1k/counter_8  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\CLK1k/Mcount_counter8 ),
    .O(\CLK1k/counter [8]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y11" ),
    .INIT ( 64'hFF00FF007F00FF00 ))
  \CLK1k/Mcount_counter_lut<8>  (
    .ADR0(\CLK1k/counter [9]),
    .ADR1(\CLK1k/counter [7]),
    .ADR2(\CLK1k/counter [6]),
    .ADR3(\CLK1k/counter [8]),
    .ADR4(\CLK1k/counter [1]),
    .ADR5(N01),
    .O(\CLK1k/Mcount_counter_lut [8])
  );
  X_OPAD #(
    .LOC ( "PAD114" ))
  \codigo_o<1>  (
    .PAD(codigo_o[1])
  );
  X_OBUF #(
    .LOC ( "PAD114" ))
  codigo_o_1_OBUF (
    .I(codigo_o_1_OBUF_0),
    .O(codigo_o[1])
  );
  X_OPAD #(
    .LOC ( "PAD115" ))
  \codigo_o<2>  (
    .PAD(codigo_o[2])
  );
  X_OBUF #(
    .LOC ( "PAD115" ))
  codigo_o_2_OBUF (
    .I(codigo_o_2_OBUF_823),
    .O(codigo_o[2])
  );
  X_OPAD #(
    .LOC ( "PAD142" ))
  data_o_o_40 (
    .PAD(data_o_o)
  );
  X_OBUF #(
    .LOC ( "PAD142" ))
  data_o_o_OBUF (
    .I(data_o_o_OBUF_806),
    .O(data_o_o)
  );
  X_OPAD #(
    .LOC ( "PAD116" ))
  \codigo_o<3>  (
    .PAD(codigo_o[3])
  );
  X_OBUF #(
    .LOC ( "PAD116" ))
  codigo_o_3_OBUF (
    .I(codigo_o_3_OBUF_0),
    .O(codigo_o[3])
  );
  X_OPAD #(
    .LOC ( "PAD125" ))
  \Temp_o<0>  (
    .PAD(Temp_o[0])
  );
  X_OBUF #(
    .LOC ( "PAD125" ))
  Temp_o_0_OBUF (
    .I(\Cargateclado/Temp_i [0]),
    .O(Temp_o[0])
  );
  X_OPAD #(
    .LOC ( "PAD117" ))
  \codigo_o<4>  (
    .PAD(codigo_o[4])
  );
  X_OBUF #(
    .LOC ( "PAD117" ))
  codigo_o_4_OBUF (
    .I(codigo_o_4_OBUF_818),
    .O(codigo_o[4])
  );
  X_OPAD #(
    .LOC ( "PAD126" ))
  \Temp_o<1>  (
    .PAD(Temp_o[1])
  );
  X_OBUF #(
    .LOC ( "PAD126" ))
  Temp_o_1_OBUF (
    .I(\Cargateclado/Temp_i [1]),
    .O(Temp_o[1])
  );
  X_OPAD #(
    .LOC ( "PAD118" ))
  \codigo_o<5>  (
    .PAD(codigo_o[5])
  );
  X_OBUF #(
    .LOC ( "PAD118" ))
  codigo_o_5_OBUF (
    .I(codigo_o_5_OBUF_0),
    .O(codigo_o[5])
  );
  X_OPAD #(
    .LOC ( "PAD129" ))
  \Temp_o<2>  (
    .PAD(Temp_o[2])
  );
  X_OBUF #(
    .LOC ( "PAD129" ))
  Temp_o_2_OBUF (
    .I(\Cargateclado/Temp_i [2]),
    .O(Temp_o[2])
  );
  X_OPAD #(
    .LOC ( "PAD119" ))
  \codigo_o<6>  (
    .PAD(codigo_o[6])
  );
  X_OBUF #(
    .LOC ( "PAD119" ))
  codigo_o_6_OBUF (
    .I(codigo_o_6_OBUF_809),
    .O(codigo_o[6])
  );
  X_OPAD #(
    .LOC ( "PAD130" ))
  \Temp_o<3>  (
    .PAD(Temp_o[3])
  );
  X_OBUF #(
    .LOC ( "PAD130" ))
  Temp_o_3_OBUF (
    .I(\Cargateclado/Temp_i [3]),
    .O(Temp_o[3])
  );
  X_OPAD #(
    .LOC ( "PAD120" ))
  \codigo_o<7>  (
    .PAD(codigo_o[7])
  );
  X_OBUF #(
    .LOC ( "PAD120" ))
  codigo_o_7_OBUF (
    .I(1'b1),
    .O(codigo_o[7])
  );
  X_OPAD #(
    .LOC ( "PAD139" ))
  \Temp_o<4>  (
    .PAD(Temp_o[4])
  );
  X_OBUF #(
    .LOC ( "PAD139" ))
  Temp_o_4_OBUF (
    .I(\Cargateclado/Temp_i [4]),
    .O(Temp_o[4])
  );
  X_OPAD #(
    .LOC ( "PAD141" ))
  Ing_o_73 (
    .PAD(Ing_o)
  );
  X_OBUF #(
    .LOC ( "PAD141" ))
  Ing_o_OBUF (
    .I(\Cargateclado/Ing_i_816 ),
    .O(Ing_o)
  );
  X_IPAD #(
    .LOC ( "PAD156" ))
  clk_i_77 (
    .PAD(clk_i)
  );
  X_BUF #(
    .LOC ( "PAD156" ))
  \clk_i_BUFGP/IBUFG  (
    .O(\clk_i_BUFGP/IBUFG_147 ),
    .I(clk_i)
  );
  X_BUF #(
    .LOC ( "PAD156" ))
  \ProtoComp49.IMUX  (
    .I(\clk_i_BUFGP/IBUFG_147 ),
    .O(\clk_i_BUFGP/IBUFG_0 )
  );
  X_IPAD #(
    .LOC ( "PAD164" ))
  rx_en_81 (
    .PAD(rx_en)
  );
  X_BUF #(
    .LOC ( "PAD164" ))
  rx_en_IBUF (
    .O(rx_en_IBUF_150),
    .I(rx_en)
  );
  X_BUF #(
    .LOC ( "PAD164" ))
  \ProtoComp49.IMUX.1  (
    .I(rx_en_IBUF_150),
    .O(rx_en_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD113" ))
  \codigo_o<0>.PAD  (
    .PAD(codigo_o[0])
  );
  X_OBUF #(
    .LOC ( "PAD113" ))
  codigo_o_0_OBUF (
    .I(codigo_o_0_OBUF_817),
    .O(codigo_o[0])
  );
  X_IPAD #(
    .LOC ( "PAD178" ))
  rst_i_88 (
    .PAD(rst_i)
  );
  X_BUF #(
    .LOC ( "PAD178" ))
  rst_i_IBUF (
    .O(rst_i_IBUF_155),
    .I(rst_i)
  );
  X_BUF #(
    .LOC ( "PAD178" ))
  \ProtoComp49.IMUX.2  (
    .I(rst_i_IBUF_155),
    .O(rst_i_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD109" ))
  \anodos_o<0>  (
    .PAD(anodos_o[0])
  );
  X_OBUF #(
    .LOC ( "PAD109" ))
  anodos_o_0_OBUF (
    .I(anodos_o_0_OBUF_825),
    .O(anodos_o[0])
  );
  X_OPAD #(
    .LOC ( "PAD110" ))
  \anodos_o<1>  (
    .PAD(anodos_o[1])
  );
  X_OBUF #(
    .LOC ( "PAD110" ))
  anodos_o_1_OBUF (
    .I(anodos_o_1_OBUF_0),
    .O(anodos_o[1])
  );
  X_PU #(
    .LOC ( "PAD89" ))
  ps2_data_PULLUP (
    .O(NlwRenamedSig_IO_ps2_data)
  );
  X_IPAD #(
    .LOC ( "PAD89" ))
  ps2_data_98 (
    .PAD(NlwRenamedSig_IO_ps2_data)
  );
  X_BUF #(
    .LOC ( "PAD89" ))
  ps2_data_IBUF (
    .O(ps2_data_IBUF_162),
    .I(NlwRenamedSig_IO_ps2_data)
  );
  X_BUF #(
    .LOC ( "PAD89" ))
  \ProtoComp50.IMUX  (
    .I(ps2_data_IBUF_162),
    .O(ps2_data_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD111" ))
  \anodos_o<2>  (
    .PAD(anodos_o[2])
  );
  X_OBUF #(
    .LOC ( "PAD111" ))
  anodos_o_2_OBUF (
    .I(anodos_o_2_OBUF_821),
    .O(anodos_o[2])
  );
  X_OPAD #(
    .LOC ( "PAD112" ))
  \anodos_o<3>  (
    .PAD(anodos_o[3])
  );
  X_OBUF #(
    .LOC ( "PAD112" ))
  anodos_o_3_OBUF (
    .I(anodos_o_3_OBUF_0),
    .O(anodos_o[3])
  );
  X_OPAD #(
    .LOC ( "PAD140" ))
  Pres_o_108 (
    .PAD(Pres_o)
  );
  X_OBUF #(
    .LOC ( "PAD140" ))
  Pres_o_OBUF (
    .I(\Cargateclado/Pres_i_755 ),
    .O(Pres_o)
  );
  X_PU #(
    .LOC ( "PAD91" ))
  ps2_clk_PULLUP (
    .O(NlwRenamedSig_IO_ps2_clk)
  );
  X_IPAD #(
    .LOC ( "PAD91" ))
  ps2_clk_112 (
    .PAD(NlwRenamedSig_IO_ps2_clk)
  );
  X_BUF #(
    .LOC ( "PAD91" ))
  ps2_clk_IBUF (
    .O(ps2_clk_IBUF_171),
    .I(NlwRenamedSig_IO_ps2_clk)
  );
  X_BUF #(
    .LOC ( "PAD91" ))
  \ProtoComp50.IMUX.1  (
    .I(ps2_clk_IBUF_171),
    .O(ps2_clk_IBUF_0)
  );
  X_BUF   \ps2/n_reg_3_dpot/ps2/n_reg_3_dpot_CMUX_Delay  (
    .I(\ps2/n_reg_3_dpot_183 ),
    .O(\ps2/n_reg_3_dpot_0 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X18Y10" ))
  \ps2/n_reg_3_dpot  (
    .IA(N94),
    .IB(N95),
    .O(\ps2/n_reg_3_dpot_183 ),
    .SEL(\ps2/estado_actl_FSM_FFd2_741 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y10" ),
    .INIT ( 64'hFFFFFFFF0000FF00 ))
  \ps2/n_reg_3_dpot_F  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(rx_en_IBUF_0),
    .ADR4(\ps2/estado_actl_FSM_FFd1_736 ),
    .ADR5(\ps2/n_reg [3]),
    .O(N94)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y10" ),
    .INIT ( 64'hCCCCCCCCCCCCCCC0 ))
  \ps2/n_reg_3_dpot_G  (
    .ADR0(1'b1),
    .ADR1(\ps2/n_reg [3]),
    .ADR2(\ps2/estado_actl_FSM_FFd1_736 ),
    .ADR3(\ps2/n_reg [2]),
    .ADR4(\ps2/n_reg [0]),
    .ADR5(\ps2/n_reg [1]),
    .O(N95)
  );
  X_BUF   \ps2/n_reg<1>/ps2/n_reg<1>_CMUX_Delay  (
    .I(\ps2/n_reg<2>_pack_11 ),
    .O(\ps2/n_reg [2])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y10" ),
    .INIT ( 64'hFFFFFFFFFFFFFF00 ))
  \ps2/_n0071_inv_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\ps2/n_reg [2]),
    .ADR4(\ps2/n_reg [1]),
    .ADR5(\ps2/n_reg [0]),
    .O(N10)
  );
  X_FF #(
    .LOC ( "SLICE_X20Y10" ),
    .INIT ( 1'b0 ))
  \ps2/n_reg_1  (
    .CE(\ps2/estado_actl_FSM_FFd1-In1_cepot_783 ),
    .CLK(clk_i_BUFGP),
    .I(\ps2/n_reg_1_dpot1_193 ),
    .O(\ps2/n_reg [1]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y10" ),
    .INIT ( 64'hFFF00F00FFF00F00 ))
  \ps2/n_reg_1_dpot1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\ps2/estado_actl_FSM_FFd1-In1_rstpot_784 ),
    .ADR3(\ps2/n_reg [1]),
    .ADR4(\ps2/n_reg_1_dpot_830 ),
    .ADR5(1'b1),
    .O(\ps2/n_reg_1_dpot1_193 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y10" ),
    .INIT ( 32'hCACACACA ))
  \ps2/n_reg_2_dpot1  (
    .ADR0(\ps2/n_reg [2]),
    .ADR1(\ps2/n_reg_2_dpot_831 ),
    .ADR2(\ps2/estado_actl_FSM_FFd1-In1_rstpot_784 ),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\ps2/n_reg_2_dpot1_195 )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y10" ),
    .INIT ( 1'b0 ))
  \ps2/n_reg_2  (
    .CE(\ps2/estado_actl_FSM_FFd1-In1_cepot_783 ),
    .CLK(clk_i_BUFGP),
    .I(\ps2/n_reg_2_dpot1_195 ),
    .O(\ps2/n_reg<2>_pack_11 ),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y10" ),
    .INIT ( 64'hCCCCCC44CCCC3044 ))
  \ps2/n_reg_2_dpot  (
    .ADR0(rx_en_IBUF_0),
    .ADR1(\ps2/n_reg [2]),
    .ADR2(\ps2/n_reg [3]),
    .ADR3(\ps2/estado_actl_FSM_FFd2_741 ),
    .ADR4(\ps2/estado_actl_FSM_FFd1_736 ),
    .ADR5(N88),
    .O(\ps2/n_reg_2_dpot_831 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y10" ),
    .INIT ( 64'hAAAA84A6AAAA80A2 ))
  \ps2/n_reg_1_dpot  (
    .ADR0(\ps2/n_reg [1]),
    .ADR1(\ps2/estado_actl_FSM_FFd2_741 ),
    .ADR2(\ps2/n_reg [0]),
    .ADR3(rx_en_IBUF_0),
    .ADR4(\ps2/estado_actl_FSM_FFd1_736 ),
    .ADR5(N90),
    .O(\ps2/n_reg_1_dpot_830 )
  );
  X_BUF   \data_o_o_OBUF/data_o_o_OBUF_DMUX_Delay  (
    .I(\ps2/n_reg<0>_pack_5 ),
    .O(\ps2/n_reg [0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y10" ),
    .INIT ( 64'hFF000000FF000000 ))
  data_o_o1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\ps2/estado_actl_FSM_FFd1_736 ),
    .ADR4(\ps2/b_reg [0]),
    .ADR5(1'b1),
    .O(data_o_o_OBUF_806)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X21Y10" ),
    .INIT ( 32'hE4E4E4E4 ))
  \ps2/n_reg_0_dpot1  (
    .ADR0(\ps2/estado_actl_FSM_FFd1-In1_rstpot_784 ),
    .ADR1(\ps2/n_reg [0]),
    .ADR2(\ps2/n_reg_0_dpot_832 ),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\ps2/n_reg_0_dpot1_218 )
  );
  X_FF #(
    .LOC ( "SLICE_X21Y10" ),
    .INIT ( 1'b0 ))
  \ps2/n_reg_0  (
    .CE(\ps2/estado_actl_FSM_FFd1-In1_cepot_783 ),
    .CLK(clk_i_BUFGP),
    .I(\ps2/n_reg_0_dpot1_218 ),
    .O(\ps2/n_reg<0>_pack_5 ),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y10" ),
    .INIT ( 64'hF0F00FFAF0F03CFA ))
  \ps2/n_reg_0_dpot  (
    .ADR0(rx_en_IBUF_0),
    .ADR1(\ps2/n_reg [3]),
    .ADR2(\ps2/n_reg [0]),
    .ADR3(\ps2/estado_actl_FSM_FFd2_741 ),
    .ADR4(\ps2/estado_actl_FSM_FFd1_736 ),
    .ADR5(N10),
    .O(\ps2/n_reg_0_dpot_832 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y10" ),
    .INIT ( 64'hFFFFFFFFFFFF0000 ))
  \ps2/n_reg_2_dpot_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\ps2/n_reg [1]),
    .ADR5(\ps2/n_reg [0]),
    .O(N88)
  );
  X_BUF   \N28/N28_DMUX_Delay  (
    .I(\ps2/n_reg<3>_pack_3 ),
    .O(\ps2/n_reg [3])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y11" ),
    .INIT ( 64'hFFFF00FFFFFF00FF ))
  \ps2/estado_actl_FSM_FFd1-In_SW0_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\ps2/estado_actl_FSM_FFd2_741 ),
    .ADR4(\ps2/n_reg [3]),
    .ADR5(1'b1),
    .O(N28)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X21Y11" ),
    .INIT ( 32'hF3F3C0C0 ))
  \ps2/n_reg_3_dpot1  (
    .ADR0(1'b1),
    .ADR1(\ps2/estado_actl_FSM_FFd1-In1_rstpot_784 ),
    .ADR2(\ps2/n_reg_3_dpot_0 ),
    .ADR3(1'b1),
    .ADR4(\ps2/n_reg [3]),
    .O(\ps2/n_reg_3_dpot1_240 )
  );
  X_FF #(
    .LOC ( "SLICE_X21Y11" ),
    .INIT ( 1'b0 ))
  \ps2/n_reg_3  (
    .CE(\ps2/estado_actl_FSM_FFd1-In1_cepot_783 ),
    .CLK(clk_i_BUFGP),
    .I(\ps2/n_reg_3_dpot1_240 ),
    .O(\ps2/n_reg<3>_pack_3 ),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y11" ),
    .INIT ( 64'h000000000000000C ))
  \ps2/estado_actl_FSM_FFd1-In1_rstpot  (
    .ADR0(1'b1),
    .ADR1(\ps2/f_ps2c_reg_780 ),
    .ADR2(\ps2/filtro_reg [0]),
    .ADR3(\ps2/filtro_reg [1]),
    .ADR4(\ps2/filtro_reg [3]),
    .ADR5(\ps2/filtro_reg [2]),
    .O(\ps2/estado_actl_FSM_FFd1-In1_rstpot_784 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y11" ),
    .INIT ( 64'hFFFFFFFFFFFF0000 ))
  \ps2/n_reg_1_dpot_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\ps2/n_reg [2]),
    .ADR5(\ps2/n_reg [3]),
    .O(N90)
  );
  X_FF #(
    .LOC ( "SLICE_X22Y10" ),
    .INIT ( 1'b0 ))
  \ps2/b_reg_8  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\ps2/b_reg_8_rstpot_264 ),
    .O(\ps2/b_reg [8]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y10" ),
    .INIT ( 64'hFF00FF01FF00FE00 ))
  \ps2/b_reg_8_rstpot  (
    .ADR0(N6),
    .ADR1(\ps2/filtro_reg [3]),
    .ADR2(\ps2/filtro_reg [2]),
    .ADR3(\ps2/b_reg [8]),
    .ADR4(\ps2/filtro_reg [1]),
    .ADR5(N58),
    .O(\ps2/b_reg_8_rstpot_264 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y10" ),
    .INIT ( 64'hFFFF00FFFF000000 ))
  \ps2/estado_actl_FSM_FFd1-In1_SW51  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\ps2/filtro_reg [0]),
    .ADR4(\ps2/b_reg [8]),
    .ADR5(N86),
    .O(N58)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y10" ),
    .INIT ( 64'hFFFFFFFFFBFBFBFF ))
  \ps2/estado_actl_FSM_FFd1-In1_SW6  (
    .ADR0(\ps2/filtro_reg [0]),
    .ADR1(\ps2/f_ps2c_reg_780 ),
    .ADR2(\ps2/estado_actl_FSM_FFd1_736 ),
    .ADR3(\ps2/estado_actl_FSM_FFd2_741 ),
    .ADR4(rx_en_IBUF_0),
    .ADR5(\ps2/filtro_reg [1]),
    .O(N60)
  );
  X_FF #(
    .LOC ( "SLICE_X22Y10" ),
    .INIT ( 1'b0 ))
  \ps2/b_reg_7  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\ps2/b_reg_7_rstpot_276 ),
    .O(\ps2/b_reg [7]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y10" ),
    .INIT ( 64'hFF00FF00FF00FE02 ))
  \ps2/b_reg_7_rstpot  (
    .ADR0(\ps2/b_reg [8]),
    .ADR1(\ps2/filtro_reg [2]),
    .ADR2(\ps2/filtro_reg [3]),
    .ADR3(\ps2/b_reg [7]),
    .ADR4(N6),
    .ADR5(N60),
    .O(\ps2/b_reg_7_rstpot_276 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y11" ),
    .INIT ( 64'hFFFFCFDF0000C080 ))
  \ps2/estado_actl_FSM_FFd1-In1_SW5_F  (
    .ADR0(rx_en_IBUF_0),
    .ADR1(\ps2/b_reg [9]),
    .ADR2(\ps2/f_ps2c_reg_780 ),
    .ADR3(\ps2/estado_actl_FSM_FFd2_741 ),
    .ADR4(\ps2/estado_actl_FSM_FFd1_736 ),
    .ADR5(\ps2/b_reg [8]),
    .O(N86)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y12" ),
    .INIT ( 64'hFFFFFFFFFFFFFFF0 ))
  \ps2/estado_actl_FSM_FFd1-In1_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\ps2/filtro_reg [6]),
    .ADR3(\ps2/filtro_reg [5]),
    .ADR4(\ps2/filtro_reg [4]),
    .ADR5(\ps2/filtro_reg [7]),
    .O(N6)
  );
  X_FF #(
    .LOC ( "SLICE_X22Y12" ),
    .INIT ( 1'b0 ))
  \ps2/estado_actl_FSM_FFd2  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\ps2/estado_actl_FSM_FFd2-In ),
    .O(\ps2/estado_actl_FSM_FFd2_741 ),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y12" ),
    .INIT ( 64'h00000001FF00FF01 ))
  \ps2/estado_actl_FSM_FFd2-In1  (
    .ADR0(N50),
    .ADR1(N6),
    .ADR2(\ps2/filtro_reg [3]),
    .ADR3(\ps2/estado_actl_FSM_FFd2_741 ),
    .ADR4(\ps2/filtro_reg [2]),
    .ADR5(\ps2/estado_actl_FSM_FFd1_736 ),
    .O(\ps2/estado_actl_FSM_FFd2-In )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y12" ),
    .INIT ( 64'hFFFFFFFFFFFFFEFF ))
  \ps2/estado_actl_FSM_FFd1-In1_SW2  (
    .ADR0(\ps2/filtro_reg [0]),
    .ADR1(\ps2/filtro_reg [2]),
    .ADR2(\ps2/filtro_reg [1]),
    .ADR3(\ps2/f_ps2c_reg_780 ),
    .ADR4(\ps2/filtro_reg [3]),
    .ADR5(\ps2/estado_actl_FSM_FFd1_736 ),
    .O(N52)
  );
  X_FF #(
    .LOC ( "SLICE_X22Y12" ),
    .INIT ( 1'b0 ))
  \ps2/estado_actl_FSM_FFd1  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\ps2/estado_actl_FSM_FFd1-In_300 ),
    .O(\ps2/estado_actl_FSM_FFd1_736 ),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y12" ),
    .INIT ( 64'h0000000000000001 ))
  \ps2/estado_actl_FSM_FFd1-In  (
    .ADR0(\ps2/n_reg [1]),
    .ADR1(\ps2/n_reg [2]),
    .ADR2(\ps2/n_reg [0]),
    .ADR3(N28),
    .ADR4(N6),
    .ADR5(N52),
    .O(\ps2/estado_actl_FSM_FFd1-In_300 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y12" ),
    .INIT ( 64'hFFFFFFFFF0FFFFFF ))
  \ps2/estado_actl_FSM_FFd1-In1_SW1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\ps2/filtro_reg [1]),
    .ADR3(\ps2/f_ps2c_reg_780 ),
    .ADR4(rx_en_IBUF_0),
    .ADR5(\ps2/filtro_reg [0]),
    .O(N50)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y13" ),
    .INIT ( 64'h000000000000000F ))
  \ps2/estado_actl_FSM_FFd1-In1_cepot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\ps2/filtro_reg [6]),
    .ADR3(\ps2/filtro_reg [5]),
    .ADR4(\ps2/filtro_reg [4]),
    .ADR5(\ps2/filtro_reg [7]),
    .O(\ps2/estado_actl_FSM_FFd1-In1_cepot_783 )
  );
  X_FF #(
    .LOC ( "SLICE_X23Y14" ),
    .INIT ( 1'b0 ))
  \ps2/filtro_reg_3  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\ps2/filtro_reg [4]),
    .O(\ps2/filtro_reg [3]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X23Y14" ),
    .INIT ( 1'b0 ))
  \ps2/filtro_reg_2  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\ps2/filtro_reg [3]),
    .O(\ps2/filtro_reg [2]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X23Y14" ),
    .INIT ( 1'b0 ))
  \ps2/filtro_reg_1  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\ps2/filtro_reg [2]),
    .O(\ps2/filtro_reg [1]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X23Y14" ),
    .INIT ( 1'b0 ))
  \ps2/filtro_reg_0  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\ps2/filtro_reg [1]),
    .O(\ps2/filtro_reg [0]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y16" ),
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \ps2/Mmux_f_ps2c_sgt11  (
    .ADR0(\ps2/filtro_reg [4]),
    .ADR1(\ps2/filtro_reg [5]),
    .ADR2(\ps2/filtro_reg [2]),
    .ADR3(\ps2/filtro_reg [3]),
    .ADR4(\ps2/filtro_reg [0]),
    .ADR5(\ps2/filtro_reg [1]),
    .O(\ps2/Mmux_f_ps2c_sgt1 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y17" ),
    .INIT ( 64'hF0F0F0F0CCF0D8F0 ))
  \ps2/estado_actl_FSM_FFd1-In1_SW4_F  (
    .ADR0(rx_en_IBUF_0),
    .ADR1(\ps2/b_reg [10]),
    .ADR2(\ps2/b_reg [9]),
    .ADR3(\ps2/f_ps2c_reg_780 ),
    .ADR4(\ps2/estado_actl_FSM_FFd2_741 ),
    .ADR5(\ps2/estado_actl_FSM_FFd1_736 ),
    .O(N84)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y17" ),
    .INIT ( 64'hF0F0F0F0AAF0B8F0 ))
  \ps2/estado_actl_FSM_FFd1-In1_SW3_F  (
    .ADR0(ps2_data_IBUF_0),
    .ADR1(rx_en_IBUF_0),
    .ADR2(\ps2/b_reg [10]),
    .ADR3(\ps2/f_ps2c_reg_780 ),
    .ADR4(\ps2/estado_actl_FSM_FFd2_741 ),
    .ADR5(\ps2/estado_actl_FSM_FFd1_736 ),
    .O(N82)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y17" ),
    .INIT ( 64'h8000000000000000 ))
  \ps2/Mmux_f_ps2c_sgt12  (
    .ADR0(\ps2/filtro_reg [4]),
    .ADR1(\ps2/filtro_reg [5]),
    .ADR2(\ps2/filtro_reg [2]),
    .ADR3(\ps2/filtro_reg [3]),
    .ADR4(\ps2/filtro_reg [0]),
    .ADR5(\ps2/filtro_reg [1]),
    .O(\ps2/Mmux_f_ps2c_sgt11_835 )
  );
  X_FF #(
    .LOC ( "SLICE_X24Y17" ),
    .INIT ( 1'b0 ))
  \ps2/f_ps2c_reg  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\ps2/f_ps2c_sgt ),
    .O(\ps2/f_ps2c_reg_780 ),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y17" ),
    .INIT ( 64'hFFC0FCC0FF00FC00 ))
  \ps2/Mmux_f_ps2c_sgt13  (
    .ADR0(1'b1),
    .ADR1(\ps2/filtro_reg [6]),
    .ADR2(\ps2/filtro_reg [7]),
    .ADR3(\ps2/f_ps2c_reg_780 ),
    .ADR4(\ps2/Mmux_f_ps2c_sgt1 ),
    .ADR5(\ps2/Mmux_f_ps2c_sgt11_835 ),
    .O(\ps2/f_ps2c_sgt )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y9" ),
    .INIT ( 64'hFFFF000000000000 ))
  \CLK1k/counter[10]_PWR_4_o_equal_1_o<10>_SW1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\CLK1k/counter [6]),
    .ADR5(\CLK1k/counter [1]),
    .O(N30)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y9" ),
    .INIT ( 64'hAAAAAAAA2AAAAAAA ))
  \CLK1k/Mcount_counter_lut<0>  (
    .ADR0(\CLK1k/counter [0]),
    .ADR1(\CLK1k/counter [9]),
    .ADR2(\CLK1k/counter [8]),
    .ADR3(\CLK1k/counter [7]),
    .ADR4(N30),
    .ADR5(N01),
    .O(\CLK1k/Mcount_counter_lut [0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y9" ),
    .INIT ( 64'hFFFFDFFFFFFFFFFF ))
  \CLK1k/counter[10]_PWR_4_o_equal_1_o<10>_SW0  (
    .ADR0(\CLK1k/counter [10]),
    .ADR1(\CLK1k/counter [5]),
    .ADR2(\CLK1k/counter [0]),
    .ADR3(\CLK1k/counter [3]),
    .ADR4(\CLK1k/counter [4]),
    .ADR5(\CLK1k/counter [2]),
    .O(N01)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y9" ),
    .INIT ( 64'hFFFFFFFF7FFFFFFF ))
  \CLK1k/counter[10]_PWR_4_o_equal_1_o_inv  (
    .ADR0(\CLK1k/counter [1]),
    .ADR1(\CLK1k/counter [6]),
    .ADR2(\CLK1k/counter [7]),
    .ADR3(\CLK1k/counter [8]),
    .ADR4(\CLK1k/counter [9]),
    .ADR5(N01),
    .O(\CLK1k/counter[10]_PWR_4_o_equal_1_o_inv_786 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y10" ),
    .INIT ( 64'hFFFF000000000000 ))
  \CLK1k/counter[10]_PWR_4_o_equal_1_o<10>_SW4  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\CLK1k/counter [8]),
    .ADR5(\CLK1k/counter [7]),
    .O(N36)
  );
  X_FF #(
    .LOC ( "SLICE_X25Y16" ),
    .INIT ( 1'b0 ))
  \ps2/filtro_reg_7  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(ps2_clk_IBUF_0),
    .O(\ps2/filtro_reg [7]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X25Y16" ),
    .INIT ( 1'b0 ))
  \ps2/filtro_reg_6  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\ps2/filtro_reg [7]),
    .O(\ps2/filtro_reg [6]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X25Y16" ),
    .INIT ( 1'b0 ))
  \ps2/filtro_reg_5  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\ps2/filtro_reg [6]),
    .O(\ps2/filtro_reg [5]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X25Y16" ),
    .INIT ( 1'b0 ))
  \ps2/filtro_reg_4  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\ps2/filtro_reg [5]),
    .O(\ps2/filtro_reg [4]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X25Y17" ),
    .INIT ( 1'b0 ))
  \ps2/b_reg_10  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\ps2/b_reg_10_rstpot_441 ),
    .O(\ps2/b_reg [10]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y17" ),
    .INIT ( 64'hFF00FF01FF00FE00 ))
  \ps2/b_reg_10_rstpot  (
    .ADR0(N6),
    .ADR1(\ps2/filtro_reg [3]),
    .ADR2(\ps2/filtro_reg [2]),
    .ADR3(\ps2/b_reg [10]),
    .ADR4(\ps2/filtro_reg [1]),
    .ADR5(N54),
    .O(\ps2/b_reg_10_rstpot_441 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y17" ),
    .INIT ( 64'hFF00FFFFFF000000 ))
  \ps2/estado_actl_FSM_FFd1-In1_SW31  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\ps2/b_reg [10]),
    .ADR4(\ps2/filtro_reg [0]),
    .ADR5(N82),
    .O(N54)
  );
  X_FF #(
    .LOC ( "SLICE_X25Y17" ),
    .INIT ( 1'b0 ))
  \ps2/b_reg_9  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\ps2/b_reg_9_rstpot_428 ),
    .O(\ps2/b_reg [9]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y17" ),
    .INIT ( 64'hFF00FF01FF00FE00 ))
  \ps2/b_reg_9_rstpot  (
    .ADR0(N6),
    .ADR1(\ps2/filtro_reg [3]),
    .ADR2(\ps2/filtro_reg [2]),
    .ADR3(\ps2/b_reg [9]),
    .ADR4(\ps2/filtro_reg [1]),
    .ADR5(N56),
    .O(\ps2/b_reg_9_rstpot_428 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y17" ),
    .INIT ( 64'hFF00FFFFFF000000 ))
  \ps2/estado_actl_FSM_FFd1-In1_SW41  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\ps2/b_reg [9]),
    .ADR4(\ps2/filtro_reg [0]),
    .ADR5(N84),
    .O(N56)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y8" ),
    .INIT ( 64'h0000000000300000 ))
  \Cargateclado/teclado_i[7]_GND_4_o_select_22_OUT<0>_SW0  (
    .ADR0(1'b1),
    .ADR1(\ps2/b_reg [4]),
    .ADR2(\ps2/b_reg [2]),
    .ADR3(\ps2/b_reg [1]),
    .ADR4(\ps2/b_reg [3]),
    .ADR5(\ps2/b_reg [8]),
    .O(N14)
  );
  X_BUF   \ps2/b_reg<6>/ps2/b_reg<6>_DMUX_Delay  (
    .I(N48),
    .O(N48_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y9" ),
    .INIT ( 64'h0F000FF00F000FF0 ))
  \Cargateclado/out22_SW1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\ps2/b_reg [7]),
    .ADR3(\ps2/b_reg [6]),
    .ADR4(\ps2/b_reg [5]),
    .ADR5(1'b1),
    .O(N46)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X26Y9" ),
    .INIT ( 32'h000F00F0 ))
  \Cargateclado/out22_SW2  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\ps2/b_reg [7]),
    .ADR3(\ps2/b_reg [6]),
    .ADR4(\ps2/b_reg [5]),
    .O(N48)
  );
  X_FF #(
    .LOC ( "SLICE_X26Y9" ),
    .INIT ( 1'b0 ))
  \ps2/b_reg_6  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\ps2/b_reg_6_rstpot_472 ),
    .O(\ps2/b_reg [6]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y9" ),
    .INIT ( 64'hFF00FF00FF00FE02 ))
  \ps2/b_reg_6_rstpot  (
    .ADR0(\ps2/b_reg [7]),
    .ADR1(\ps2/filtro_reg [2]),
    .ADR2(\ps2/filtro_reg [3]),
    .ADR3(\ps2/b_reg [6]),
    .ADR4(N6),
    .ADR5(N60),
    .O(\ps2/b_reg_6_rstpot_472 )
  );
  X_FF #(
    .LOC ( "SLICE_X26Y9" ),
    .INIT ( 1'b0 ))
  \ps2/b_reg_5  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\ps2/b_reg_5_rstpot_464 ),
    .O(\ps2/b_reg [5]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y9" ),
    .INIT ( 64'hFF00FF00FF00FE02 ))
  \ps2/b_reg_5_rstpot  (
    .ADR0(\ps2/b_reg [6]),
    .ADR1(\ps2/filtro_reg [2]),
    .ADR2(\ps2/filtro_reg [3]),
    .ADR3(\ps2/b_reg [5]),
    .ADR4(N6),
    .ADR5(N60),
    .O(\ps2/b_reg_5_rstpot_464 )
  );
  X_FF #(
    .LOC ( "SLICE_X26Y9" ),
    .INIT ( 1'b0 ))
  \ps2/b_reg_4  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\ps2/b_reg_4_rstpot_456 ),
    .O(\ps2/b_reg [4]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y9" ),
    .INIT ( 64'hFF00FF00FF00FE02 ))
  \ps2/b_reg_4_rstpot  (
    .ADR0(\ps2/b_reg [5]),
    .ADR1(\ps2/filtro_reg [2]),
    .ADR2(\ps2/filtro_reg [3]),
    .ADR3(\ps2/b_reg [4]),
    .ADR4(N6),
    .ADR5(N60),
    .O(\ps2/b_reg_4_rstpot_456 )
  );
  X_SFF #(
    .LOC ( "SLICE_X27Y8" ),
    .INIT ( 1'b0 ))
  \Cargateclado/Temp_i_2  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\Cargateclado/teclado_i[7]_GND_4_o_select_22_OUT<2>_512 ),
    .O(\Cargateclado/Temp_i [2]),
    .SRST(rst_i_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y8" ),
    .INIT ( 64'hF300F704FF00FF04 ))
  \Cargateclado/teclado_i[7]_GND_4_o_select_22_OUT<2>  (
    .ADR0(\ps2/b_reg [1]),
    .ADR1(\ps2/b_reg [3]),
    .ADR2(\ps2/b_reg [8]),
    .ADR3(\Cargateclado/Temp_i [2]),
    .ADR4(N92),
    .ADR5(\Cargateclado/out2 ),
    .O(\Cargateclado/teclado_i[7]_GND_4_o_select_22_OUT<2>_512 )
  );
  X_SFF #(
    .LOC ( "SLICE_X27Y8" ),
    .INIT ( 1'b0 ))
  \Cargateclado/Temp_i_1  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\Cargateclado/teclado_i[7]_GND_4_o_select_22_OUT<1>_503 ),
    .O(\Cargateclado/Temp_i [1]),
    .SRST(rst_i_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y8" ),
    .INIT ( 64'hFDF0DD00FFF0FF00 ))
  \Cargateclado/teclado_i[7]_GND_4_o_select_22_OUT<1>  (
    .ADR0(\ps2/b_reg [3]),
    .ADR1(\ps2/b_reg [8]),
    .ADR2(N48_0),
    .ADR3(\Cargateclado/Temp_i [1]),
    .ADR4(N14),
    .ADR5(\Cargateclado/out2 ),
    .O(\Cargateclado/teclado_i[7]_GND_4_o_select_22_OUT<1>_503 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y8" ),
    .INIT ( 64'h000000142C1C0C00 ))
  \Cargateclado/out21  (
    .ADR0(\ps2/b_reg [4]),
    .ADR1(\ps2/b_reg [2]),
    .ADR2(\ps2/b_reg [1]),
    .ADR3(\ps2/b_reg [5]),
    .ADR4(\ps2/b_reg [6]),
    .ADR5(\ps2/b_reg [7]),
    .O(\Cargateclado/out2 )
  );
  X_SFF #(
    .LOC ( "SLICE_X27Y8" ),
    .INIT ( 1'b0 ))
  \Cargateclado/Temp_i_0  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\Cargateclado/teclado_i[7]_GND_4_o_select_22_OUT<0>_488 ),
    .O(\Cargateclado/Temp_i [0]),
    .SRST(rst_i_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y8" ),
    .INIT ( 64'hFDF0DD00FFF0FF00 ))
  \Cargateclado/teclado_i[7]_GND_4_o_select_22_OUT<0>  (
    .ADR0(\ps2/b_reg [3]),
    .ADR1(\ps2/b_reg [8]),
    .ADR2(N46),
    .ADR3(\Cargateclado/Temp_i [0]),
    .ADR4(N14),
    .ADR5(\Cargateclado/out2 ),
    .O(\Cargateclado/teclado_i[7]_GND_4_o_select_22_OUT<0>_488 )
  );
  X_BUF   \CLK1k/clk_o/CLK1k/clk_o_DMUX_Delay  (
    .I(N42_pack_2),
    .O(N42)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y9" ),
    .INIT ( 64'hFF000000FF000000 ))
  \CLK1k/counter[10]_PWR_4_o_equal_1_o<10>_SW6  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\CLK1k/counter [7]),
    .ADR4(\CLK1k/counter [9]),
    .ADR5(1'b1),
    .O(N40)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X27Y9" ),
    .INIT ( 32'h00FFFFFF ))
  \CLK1k/counter[10]_PWR_4_o_equal_1_o<10>_SW7  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\CLK1k/counter [7]),
    .ADR4(\CLK1k/counter [9]),
    .O(N42_pack_2)
  );
  X_FF #(
    .LOC ( "SLICE_X27Y9" ),
    .INIT ( 1'b0 ))
  \CLK1k/clk_o  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\CLK1k/clk_o_rstpot_527 ),
    .O(\CLK1k/clk_o_753 ),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y9" ),
    .INIT ( 64'hFF00FF00FF007F80 ))
  \CLK1k/clk_o_rstpot  (
    .ADR0(\CLK1k/counter [6]),
    .ADR1(\CLK1k/counter [1]),
    .ADR2(\CLK1k/counter [8]),
    .ADR3(\CLK1k/clk_o_753 ),
    .ADR4(N01),
    .ADR5(N42),
    .O(\CLK1k/clk_o_rstpot_527 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y9" ),
    .INIT ( 64'hFFFC0333FFFFFFFF ))
  \Cargateclado/teclado_i[7]_GND_4_o_select_22_OUT<2>_SW1  (
    .ADR0(1'b1),
    .ADR1(\ps2/b_reg [6]),
    .ADR2(\ps2/b_reg [5]),
    .ADR3(\ps2/b_reg [4]),
    .ADR4(\ps2/b_reg [7]),
    .ADR5(\ps2/b_reg [2]),
    .O(N92)
  );
  X_FF #(
    .LOC ( "SLICE_X27Y10" ),
    .INIT ( 1'b0 ))
  \ps2/b_reg_3  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\ps2/b_reg_3_rstpot_567 ),
    .O(\ps2/b_reg [3]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y10" ),
    .INIT ( 64'hFF00FF00FF00FE02 ))
  \ps2/b_reg_3_rstpot  (
    .ADR0(\ps2/b_reg [4]),
    .ADR1(\ps2/filtro_reg [2]),
    .ADR2(\ps2/filtro_reg [3]),
    .ADR3(\ps2/b_reg [3]),
    .ADR4(N6),
    .ADR5(N60),
    .O(\ps2/b_reg_3_rstpot_567 )
  );
  X_FF #(
    .LOC ( "SLICE_X27Y10" ),
    .INIT ( 1'b0 ))
  \ps2/b_reg_2  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\ps2/b_reg_2_rstpot_558 ),
    .O(\ps2/b_reg [2]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y10" ),
    .INIT ( 64'hFF00FF00FF00FE02 ))
  \ps2/b_reg_2_rstpot  (
    .ADR0(\ps2/b_reg [3]),
    .ADR1(\ps2/filtro_reg [2]),
    .ADR2(\ps2/filtro_reg [3]),
    .ADR3(\ps2/b_reg [2]),
    .ADR4(N6),
    .ADR5(N60),
    .O(\ps2/b_reg_2_rstpot_558 )
  );
  X_FF #(
    .LOC ( "SLICE_X27Y10" ),
    .INIT ( 1'b0 ))
  \ps2/b_reg_1  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\ps2/b_reg_1_rstpot_550 ),
    .O(\ps2/b_reg [1]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y10" ),
    .INIT ( 64'hFF00FF00FF00FE02 ))
  \ps2/b_reg_1_rstpot  (
    .ADR0(\ps2/b_reg [2]),
    .ADR1(\ps2/filtro_reg [2]),
    .ADR2(\ps2/filtro_reg [3]),
    .ADR3(\ps2/b_reg [1]),
    .ADR4(N6),
    .ADR5(N60),
    .O(\ps2/b_reg_1_rstpot_550 )
  );
  X_FF #(
    .LOC ( "SLICE_X27Y10" ),
    .INIT ( 1'b0 ))
  \ps2/b_reg_0  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\ps2/b_reg_0_rstpot_542 ),
    .O(\ps2/b_reg [0]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y10" ),
    .INIT ( 64'hFF00FF00FF00FE02 ))
  \ps2/b_reg_0_rstpot  (
    .ADR0(\ps2/b_reg [1]),
    .ADR1(\ps2/filtro_reg [2]),
    .ADR2(\ps2/filtro_reg [3]),
    .ADR3(\ps2/b_reg [0]),
    .ADR4(N6),
    .ADR5(N60),
    .O(\ps2/b_reg_0_rstpot_542 )
  );
  X_BUF   \Cargateclado/Pres_i/Cargateclado/Pres_i_BMUX_Delay  (
    .I(N20_pack_11),
    .O(N20)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y8" ),
    .INIT ( 64'h0000000000300000 ))
  \Cargateclado/teclado_i[7]_PWR_5_o_Select_9_o_SW0  (
    .ADR0(1'b1),
    .ADR1(\ps2/b_reg [6]),
    .ADR2(\ps2/b_reg [7]),
    .ADR3(\ps2/b_reg [5]),
    .ADR4(\ps2/b_reg [3]),
    .ADR5(\ps2/b_reg [8]),
    .O(N22)
  );
  X_SFF #(
    .LOC ( "SLICE_X28Y8" ),
    .INIT ( 1'b0 ))
  \Cargateclado/Pres_i  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\Cargateclado/teclado_i[7]_PWR_5_o_Select_9_o_591 ),
    .O(\Cargateclado/Pres_i_755 ),
    .SRST(rst_i_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y8" ),
    .INIT ( 64'hFF20BF20FF00BF00 ))
  \Cargateclado/teclado_i[7]_PWR_5_o_Select_9_o  (
    .ADR0(\ps2/b_reg [1]),
    .ADR1(\ps2/b_reg [2]),
    .ADR2(\ps2/b_reg [4]),
    .ADR3(\Cargateclado/Pres_i_755 ),
    .ADR4(\Cargateclado/teclado_i[7]_PWR_5_o_Select_4_o11 ),
    .ADR5(N22),
    .O(\Cargateclado/teclado_i[7]_PWR_5_o_Select_9_o_591 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y8" ),
    .INIT ( 64'hFFFFFFBFFFFFFFBF ))
  \Cargateclado/teclado_i[7]_PWR_5_o_Select_4_o111  (
    .ADR0(\ps2/b_reg [7]),
    .ADR1(\ps2/b_reg [6]),
    .ADR2(\ps2/b_reg [5]),
    .ADR3(\ps2/b_reg [3]),
    .ADR4(\ps2/b_reg [8]),
    .ADR5(1'b1),
    .O(\Cargateclado/teclado_i[7]_PWR_5_o_Select_4_o11 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y8" ),
    .INIT ( 32'h00000002 ))
  \Cargateclado/teclado_i[7]_PWR_5_o_Select_4_o_SW0  (
    .ADR0(\ps2/b_reg [7]),
    .ADR1(\ps2/b_reg [6]),
    .ADR2(\ps2/b_reg [5]),
    .ADR3(\ps2/b_reg [3]),
    .ADR4(\ps2/b_reg [8]),
    .O(N20_pack_11)
  );
  X_SFF #(
    .LOC ( "SLICE_X28Y8" ),
    .INIT ( 1'b1 ))
  \Cargateclado/Ing_i  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\Cargateclado/teclado_i[7]_PWR_5_o_Select_4_o_576 ),
    .O(\Cargateclado/Ing_i_816 ),
    .SSET(rst_i_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y8" ),
    .INIT ( 64'hFF40FF00FB40FB00 ))
  \Cargateclado/teclado_i[7]_PWR_5_o_Select_4_o  (
    .ADR0(\ps2/b_reg [4]),
    .ADR1(\ps2/b_reg [1]),
    .ADR2(\ps2/b_reg [2]),
    .ADR3(\Cargateclado/Ing_i_816 ),
    .ADR4(N20),
    .ADR5(\Cargateclado/teclado_i[7]_PWR_5_o_Select_4_o11 ),
    .O(\Cargateclado/teclado_i[7]_PWR_5_o_Select_4_o_576 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X29Y8" ),
    .INIT ( 64'h0000400040020000 ))
  \Cargateclado/teclado_i[7]_GND_4_o_select_22_OUT<4>_SW0  (
    .ADR0(\ps2/b_reg [7]),
    .ADR1(\ps2/b_reg [6]),
    .ADR2(\ps2/b_reg [5]),
    .ADR3(\ps2/b_reg [4]),
    .ADR4(\ps2/b_reg [2]),
    .ADR5(\ps2/b_reg [1]),
    .O(N24)
  );
  X_SFF #(
    .LOC ( "SLICE_X29Y8" ),
    .INIT ( 1'b0 ))
  \Cargateclado/Temp_i_4  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\Cargateclado/teclado_i[7]_GND_4_o_select_22_OUT<4>_621 ),
    .O(\Cargateclado/Temp_i [4]),
    .SRST(rst_i_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X29Y8" ),
    .INIT ( 64'hFF33FF00CF00FF00 ))
  \Cargateclado/teclado_i[7]_GND_4_o_select_22_OUT<4>  (
    .ADR0(1'b1),
    .ADR1(\ps2/b_reg [8]),
    .ADR2(\Cargateclado/out2 ),
    .ADR3(\Cargateclado/Temp_i [4]),
    .ADR4(\ps2/b_reg [3]),
    .ADR5(N24),
    .O(\Cargateclado/teclado_i[7]_GND_4_o_select_22_OUT<4>_621 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X29Y8" ),
    .INIT ( 64'h0040440000044200 ))
  \Cargateclado/teclado_i[7]_GND_4_o_select_22_OUT<3>_SW0  (
    .ADR0(\ps2/b_reg [7]),
    .ADR1(\ps2/b_reg [6]),
    .ADR2(\ps2/b_reg [4]),
    .ADR3(\ps2/b_reg [2]),
    .ADR4(\ps2/b_reg [1]),
    .ADR5(\ps2/b_reg [5]),
    .O(N18)
  );
  X_SFF #(
    .LOC ( "SLICE_X29Y8" ),
    .INIT ( 1'b0 ))
  \Cargateclado/Temp_i_3  (
    .CE(VCC),
    .CLK(clk_i_BUFGP),
    .I(\Cargateclado/teclado_i[7]_GND_4_o_select_22_OUT<3>_607 ),
    .O(\Cargateclado/Temp_i [3]),
    .SRST(rst_i_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X29Y8" ),
    .INIT ( 64'hFF33FF00CF00FF00 ))
  \Cargateclado/teclado_i[7]_GND_4_o_select_22_OUT<3>  (
    .ADR0(1'b1),
    .ADR1(\ps2/b_reg [8]),
    .ADR2(\Cargateclado/out2 ),
    .ADR3(\Cargateclado/Temp_i [3]),
    .ADR4(\ps2/b_reg [3]),
    .ADR5(N18),
    .O(\Cargateclado/teclado_i[7]_GND_4_o_select_22_OUT<3>_607 )
  );
  X_BUF   \codigo_o_6_OBUF/codigo_o_6_OBUF_BMUX_Delay  (
    .I(codigo_o_5_OBUF_644),
    .O(codigo_o_5_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y6" ),
    .INIT ( 64'hC0CCF0FCC0CCF0FC ))
  \SSFSM/Mram_SSegm61  (
    .ADR0(1'b1),
    .ADR1(\SSFSM/EA_FSM_FFd2_768 ),
    .ADR2(\SSFSM/EA_FSM_FFd1_767 ),
    .ADR3(\FSM/EA_FSM_FFd1_754 ),
    .ADR4(Alarm_o),
    .ADR5(1'b1),
    .O(codigo_o_6_OBUF_809)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y6" ),
    .INIT ( 32'h0C080C08 ))
  \codigo_o<5>1  (
    .ADR0(\FSM/EA_FSM_FFd2_756 ),
    .ADR1(\SSFSM/EA_FSM_FFd2_768 ),
    .ADR2(\SSFSM/EA_FSM_FFd1_767 ),
    .ADR3(\FSM/EA_FSM_FFd1_754 ),
    .ADR4(1'b1),
    .O(codigo_o_5_OBUF_644)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y6" ),
    .INIT ( 64'h8008800880080808 ))
  \FSM/Alarm_o11  (
    .ADR0(\FSM/EA_FSM_FFd1_754 ),
    .ADR1(\Cargateclado/Pres_i_755 ),
    .ADR2(\FSM/EA_FSM_FFd2_756 ),
    .ADR3(\Cargateclado/Temp_i [4]),
    .ADR4(\Cargateclado/Temp_i [2]),
    .ADR5(\Cargateclado/Temp_i [3]),
    .O(Alarm_o)
  );
  X_BUF   \FSM/EA_FSM_FFd2/FSM/EA_FSM_FFd2_DMUX_Delay  (
    .I(N26_pack_10),
    .O(N26)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y8" ),
    .INIT ( 64'hF0F0F000F0F0F000 ))
  \codigo_o<0>_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\Cargateclado/Temp_i [4]),
    .ADR3(\Cargateclado/Temp_i [3]),
    .ADR4(\Cargateclado/Temp_i [2]),
    .ADR5(1'b1),
    .O(N4)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y8" ),
    .INIT ( 32'hFFFFFF00 ))
  \FSM/EA_FSM_FFd2-In2_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\Cargateclado/Temp_i [3]),
    .ADR4(\Cargateclado/Temp_i [2]),
    .O(N26_pack_10)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y8" ),
    .INIT ( 64'h8008000800080008 ))
  \codigo_o<0>  (
    .ADR0(\SSFSM/EA_FSM_FFd2_768 ),
    .ADR1(\FSM/EA_FSM_FFd2_756 ),
    .ADR2(\FSM/EA_FSM_FFd1_754 ),
    .ADR3(\SSFSM/EA_FSM_FFd1_767 ),
    .ADR4(\Cargateclado/Pres_i_755 ),
    .ADR5(N4),
    .O(codigo_o_0_OBUF_817)
  );
  X_FF #(
    .LOC ( "SLICE_X34Y8" ),
    .INIT ( 1'b0 ))
  \FSM/EA_FSM_FFd2  (
    .CE(VCC),
    .CLK(\CLK1k/clk_o_753 ),
    .I(\FSM/EA_FSM_FFd2-In ),
    .O(\FSM/EA_FSM_FFd2_756 ),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y8" ),
    .INIT ( 64'hA2A22222A2F72277 ))
  \FSM/EA_FSM_FFd2-In2  (
    .ADR0(\FSM/EA_FSM_FFd1_754 ),
    .ADR1(\Cargateclado/Pres_i_755 ),
    .ADR2(\Cargateclado/Temp_i [4]),
    .ADR3(\FSM/EA_FSM_FFd2_756 ),
    .ADR4(N26),
    .ADR5(\Cargateclado/Ing_i_816 ),
    .O(\FSM/EA_FSM_FFd2-In )
  );
  X_FF #(
    .LOC ( "SLICE_X34Y8" ),
    .INIT ( 1'b0 ))
  \FSM/EA_FSM_FFd1  (
    .CE(VCC),
    .CLK(\CLK1k/clk_o_753 ),
    .I(\FSM/EA_FSM_FFd1-In ),
    .O(\FSM/EA_FSM_FFd1_754 ),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y8" ),
    .INIT ( 64'hFFFF0000FF000000 ))
  \FSM/EA_FSM_FFd1-In1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\FSM/EA_FSM_FFd1_754 ),
    .ADR4(\Cargateclado/Pres_i_755 ),
    .ADR5(\FSM/EA_FSM_FFd2_756 ),
    .O(\FSM/EA_FSM_FFd1-In )
  );
  X_BUF   \codigo_o_2_OBUF/codigo_o_2_OBUF_AMUX_Delay  (
    .I(codigo_o_3_OBUF_680),
    .O(codigo_o_3_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X35Y6" ),
    .INIT ( 64'h0300333303003333 ))
  \codigo_o<2>1  (
    .ADR0(1'b1),
    .ADR1(\SSFSM/EA_FSM_FFd1_767 ),
    .ADR2(\FSM/EA_FSM_FFd2_756 ),
    .ADR3(\FSM/EA_FSM_FFd1_754 ),
    .ADR4(\SSFSM/EA_FSM_FFd2_768 ),
    .ADR5(1'b1),
    .O(codigo_o_2_OBUF_823)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X35Y6" ),
    .INIT ( 32'h00308888 ))
  \codigo_o<3>1  (
    .ADR0(Alarm_o),
    .ADR1(\SSFSM/EA_FSM_FFd1_767 ),
    .ADR2(\FSM/EA_FSM_FFd2_756 ),
    .ADR3(\FSM/EA_FSM_FFd1_754 ),
    .ADR4(\SSFSM/EA_FSM_FFd2_768 ),
    .O(codigo_o_3_OBUF_680)
  );
  X_FF #(
    .LOC ( "SLICE_X35Y8" ),
    .INIT ( 1'b0 ))
  \SSFSM/EA_FSM_FFd2  (
    .CE(VCC),
    .CLK(\CLK1k/clk_o_753 ),
    .I(\SSFSM/EA_FSM_FFd2-In ),
    .O(\SSFSM/EA_FSM_FFd2_768 ),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X35Y8" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \SSFSM/EA_FSM_FFd2-In1_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\SSFSM/EA_FSM_FFd2_768 ),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\SSFSM/EA_FSM_FFd2-In )
  );
  X_FF #(
    .LOC ( "SLICE_X35Y8" ),
    .INIT ( 1'b0 ))
  \SSFSM/EA_FSM_FFd1  (
    .CE(VCC),
    .CLK(\CLK1k/clk_o_753 ),
    .I(\SSFSM/EA_FSM_FFd1-In ),
    .O(\SSFSM/EA_FSM_FFd1_767 ),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X35Y8" ),
    .INIT ( 64'h00FF00FFFF00FF00 ))
  \SSFSM/EA_FSM_FFd1-In1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\SSFSM/EA_FSM_FFd1_767 ),
    .ADR4(1'b1),
    .ADR5(\SSFSM/EA_FSM_FFd2_768 ),
    .O(\SSFSM/EA_FSM_FFd1-In )
  );
  X_BUF   \anodos_o_2_OBUF/anodos_o_2_OBUF_AMUX_Delay  (
    .I(anodos_o_3_OBUF_694),
    .O(anodos_o_3_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y11" ),
    .INIT ( 64'hFFFF00FFFFFF00FF ))
  \SSFSM/EA__n0031<2>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\SSFSM/EA_FSM_FFd1_767 ),
    .ADR4(\SSFSM/EA_FSM_FFd2_768 ),
    .ADR5(1'b1),
    .O(anodos_o_2_OBUF_821)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X36Y11" ),
    .INIT ( 32'h00FFFFFF ))
  \SSFSM/EA__n0031<1>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\SSFSM/EA_FSM_FFd1_767 ),
    .ADR4(\SSFSM/EA_FSM_FFd2_768 ),
    .O(anodos_o_3_OBUF_694)
  );
  X_BUF   \anodos_o_0_OBUF/anodos_o_0_OBUF_CMUX_Delay  (
    .I(anodos_o_1_OBUF_699),
    .O(anodos_o_1_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y14" ),
    .INIT ( 64'hFFFFFF00FFFFFF00 ))
  \SSFSM/EA__n0031<4>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\SSFSM/EA_FSM_FFd1_767 ),
    .ADR4(\SSFSM/EA_FSM_FFd2_768 ),
    .ADR5(1'b1),
    .O(anodos_o_0_OBUF_825)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X36Y14" ),
    .INIT ( 32'hFF00FFFF ))
  \SSFSM/EA__n0031<3>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\SSFSM/EA_FSM_FFd1_767 ),
    .ADR4(\SSFSM/EA_FSM_FFd2_768 ),
    .O(anodos_o_1_OBUF_699)
  );
  X_BUF   \codigo_o_4_OBUF/codigo_o_4_OBUF_AMUX_Delay  (
    .I(codigo_o_1_OBUF_705),
    .O(codigo_o_1_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X37Y8" ),
    .INIT ( 64'h00F0000000F00000 ))
  \SSFSM/Mram_SSegm41  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\SSFSM/EA_FSM_FFd2_768 ),
    .ADR3(\SSFSM/EA_FSM_FFd1_767 ),
    .ADR4(\FSM/EA_FSM_FFd2_756 ),
    .ADR5(1'b1),
    .O(codigo_o_4_OBUF_818)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X37Y8" ),
    .INIT ( 32'h000F000F ))
  \SSFSM/Mram_SSegm111  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\SSFSM/EA_FSM_FFd2_768 ),
    .ADR3(\SSFSM/EA_FSM_FFd1_767 ),
    .ADR4(1'b1),
    .O(codigo_o_1_OBUF_705)
  );
  X_ONE   NlwBlock_Proyecto_Corto_2_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_Proyecto_Corto_2_GND (
    .O(GND)
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

