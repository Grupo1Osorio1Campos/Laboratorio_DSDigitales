////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Proyecto_Corto_2_timesim.v
// /___/   /\     Timestamp: Wed Mar 18 12:14:30 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 2 -pcf Proyecto_Corto_2.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim Proyecto_Corto_2.ncd Proyecto_Corto_2_timesim.v 
// Device	: 6slx16csg324-2 (PRODUCTION 1.23 2013-10-13)
// Input file	: Proyecto_Corto_2.ncd
// Output file	: C:\Users\Javier\Desktop\LabDigitales\Proyecto_Corto_2_Version_Final\netgen\par\Proyecto_Corto_2_timesim.v
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
  wire \A/estado_actl_FSM_FFd1_736 ;
  wire \A/n_reg_3_dpot_0 ;
  wire \A/estado_actl_FSM_FFd2_741 ;
  wire rx_en_IBUF_0;
  wire N6;
  wire N60;
  wire rst_i_IBUF_0;
  wire \B/clk_o_756 ;
  wire \D/EA_FSM_FFd1_757 ;
  wire \C/Pres_i_758 ;
  wire \D/EA_FSM_FFd2_759 ;
  wire N48_0;
  wire N14;
  wire \C/out2 ;
  wire N92;
  wire \E/EA_FSM_FFd1_767 ;
  wire \E/EA_FSM_FFd2_768 ;
  wire \A/f_ps2c_reg_770 ;
  wire N90;
  wire N88;
  wire \A/estado_actl_FSM_FFd1-In1_cepot_774 ;
  wire \A/estado_actl_FSM_FFd1-In1_rstpot_775 ;
  wire N82;
  wire ps2_data_IBUF_0;
  wire N84;
  wire N86;
  wire N46;
  wire N10;
  wire \B/counter[10]_PWR_4_o_equal_1_o_inv_786 ;
  wire N01;
  wire N30;
  wire data_o_o_OBUF_800;
  wire N36;
  wire Alarm_o;
  wire codigo_o_6_OBUF_805;
  wire codigo_o_5_OBUF_0;
  wire \A/Mmux_f_ps2c_sgt1 ;
  wire N28;
  wire N50;
  wire ps2_clk_IBUF_0;
  wire \C/Ing_i_816 ;
  wire codigo_o_0_OBUF_817;
  wire N40;
  wire anodos_o_2_OBUF_819;
  wire anodos_o_3_OBUF_0;
  wire codigo_o_4_OBUF_821;
  wire codigo_o_1_OBUF_0;
  wire anodos_o_0_OBUF_823;
  wire anodos_o_1_OBUF_0;
  wire codigo_o_2_OBUF_825;
  wire codigo_o_3_OBUF_0;
  wire \B/Mcount_counter_cy[3] ;
  wire \B/Mcount_counter_cy[7] ;
  wire \A/n_reg_1_dpot_830 ;
  wire \A/n_reg_2_dpot_831 ;
  wire \A/n_reg_0_dpot_832 ;
  wire N58;
  wire N52;
  wire \A/Mmux_f_ps2c_sgt11_835 ;
  wire N56;
  wire N54;
  wire N42;
  wire N20;
  wire \C/teclado_i[7]_PWR_5_o_Select_4_o11 ;
  wire N22;
  wire N18;
  wire N24;
  wire N26;
  wire N4;
  wire \B/Mcount_counter_lut<0>_rt_38 ;
  wire \B/Mcount_counter ;
  wire \B/Mcount_counter1 ;
  wire \B/Mcount_counter2 ;
  wire \B/Mcount_counter3 ;
  wire \B/Mcount_counter4 ;
  wire \B/Mcount_counter5 ;
  wire \B/Mcount_counter6 ;
  wire \B/Mcount_counter7 ;
  wire \B/Mcount_counter8 ;
  wire \B/Mcount_counter9 ;
  wire \B/Mcount_counter10 ;
  wire \clk_i_BUFGP/IBUFG_147 ;
  wire rx_en_IBUF_150;
  wire rst_i_IBUF_155;
  wire ps2_data_IBUF_162;
  wire ps2_clk_IBUF_171;
  wire \A/n_reg_3_dpot_178 ;
  wire N94;
  wire N95;
  wire \A/n_reg<2>_pack_11 ;
  wire \A/n_reg_2_dpot1_203 ;
  wire \A/n_reg_1_dpot1_195 ;
  wire \A/n_reg_0_dpot1_234 ;
  wire \A/n_reg<0>_pack_5 ;
  wire \A/n_reg_3_dpot1_254 ;
  wire \A/n_reg<3>_pack_3 ;
  wire \A/b_reg_8_rstpot_284 ;
  wire \A/b_reg_7_rstpot_264 ;
  wire \A/estado_actl_FSM_FFd2-In ;
  wire \A/estado_actl_FSM_FFd1-In_300 ;
  wire \A/f_ps2c_sgt ;
  wire \A/b_reg_10_rstpot_441 ;
  wire \A/b_reg_9_rstpot_428 ;
  wire N48;
  wire \A/b_reg_6_rstpot_472 ;
  wire \A/b_reg_5_rstpot_464 ;
  wire \A/b_reg_4_rstpot_456 ;
  wire \C/teclado_i[7]_GND_4_o_select_22_OUT<2>_512 ;
  wire \C/teclado_i[7]_GND_4_o_select_22_OUT<1>_503 ;
  wire \C/teclado_i[7]_GND_4_o_select_22_OUT<0>_488 ;
  wire N42_pack_2;
  wire \B/clk_o_rstpot_520 ;
  wire \A/b_reg_0_rstpot_562 ;
  wire \A/b_reg_1_rstpot_554 ;
  wire \A/b_reg_2_rstpot_552 ;
  wire \A/b_reg_3_rstpot_538 ;
  wire \C/teclado_i[7]_PWR_5_o_Select_9_o_599 ;
  wire N20_pack_11;
  wire \C/teclado_i[7]_PWR_5_o_Select_4_o_575 ;
  wire \C/teclado_i[7]_GND_4_o_select_22_OUT<3>_627 ;
  wire \C/teclado_i[7]_GND_4_o_select_22_OUT<4>_613 ;
  wire codigo_o_5_OBUF_636;
  wire N26_pack_10;
  wire \D/EA_FSM_FFd1-In ;
  wire \D/EA_FSM_FFd2-In ;
  wire codigo_o_3_OBUF_680;
  wire \E/EA_FSM_FFd2-In ;
  wire \E/EA_FSM_FFd1-In ;
  wire anodos_o_3_OBUF_694;
  wire anodos_o_1_OBUF_698;
  wire codigo_o_1_OBUF_702;
  wire \NlwBufferSignal_clk_i_BUFGP/BUFG/IN ;
  wire \NlwBufferSignal_B/counter_3/CLK ;
  wire \NlwBufferSignal_B/counter_2/CLK ;
  wire \NlwBufferSignal_B/counter_1/CLK ;
  wire \NlwBufferSignal_B/counter_0/CLK ;
  wire \NlwBufferSignal_B/counter_7/CLK ;
  wire \NlwBufferSignal_B/counter_6/CLK ;
  wire \NlwBufferSignal_B/counter_5/CLK ;
  wire \NlwBufferSignal_B/counter_4/CLK ;
  wire \NlwBufferSignal_B/counter_10/CLK ;
  wire \NlwBufferSignal_B/counter_9/CLK ;
  wire \NlwBufferSignal_B/counter_8/CLK ;
  wire \NlwBufferSignal_codigo_o_1_OBUF/I ;
  wire \NlwBufferSignal_codigo_o_2_OBUF/I ;
  wire \NlwBufferSignal_data_o_o_OBUF/I ;
  wire \NlwBufferSignal_codigo_o_3_OBUF/I ;
  wire \NlwBufferSignal_Temp_o_0_OBUF/I ;
  wire \NlwBufferSignal_codigo_o_4_OBUF/I ;
  wire \NlwBufferSignal_Temp_o_1_OBUF/I ;
  wire \NlwBufferSignal_codigo_o_5_OBUF/I ;
  wire \NlwBufferSignal_Temp_o_2_OBUF/I ;
  wire \NlwBufferSignal_codigo_o_6_OBUF/I ;
  wire \NlwBufferSignal_Temp_o_3_OBUF/I ;
  wire \NlwBufferSignal_Temp_o_4_OBUF/I ;
  wire \NlwBufferSignal_Ing_o_OBUF/I ;
  wire \NlwBufferSignal_codigo_o_0_OBUF/I ;
  wire \NlwBufferSignal_anodos_o_0_OBUF/I ;
  wire \NlwBufferSignal_anodos_o_1_OBUF/I ;
  wire \NlwBufferSignal_anodos_o_2_OBUF/I ;
  wire \NlwBufferSignal_anodos_o_3_OBUF/I ;
  wire \NlwBufferSignal_Pres_o_OBUF/I ;
  wire \NlwBufferSignal_A/n_reg_1/CLK ;
  wire \NlwBufferSignal_A/n_reg_2/CLK ;
  wire \NlwBufferSignal_A/n_reg_0/CLK ;
  wire \NlwBufferSignal_A/n_reg_3/CLK ;
  wire \NlwBufferSignal_A/b_reg_8/CLK ;
  wire \NlwBufferSignal_A/b_reg_7/CLK ;
  wire \NlwBufferSignal_A/estado_actl_FSM_FFd2/CLK ;
  wire \NlwBufferSignal_A/estado_actl_FSM_FFd1/CLK ;
  wire \NlwBufferSignal_A/filtro_reg_3/CLK ;
  wire \NlwBufferSignal_A/filtro_reg_3/IN ;
  wire \NlwBufferSignal_A/filtro_reg_2/CLK ;
  wire \NlwBufferSignal_A/filtro_reg_2/IN ;
  wire \NlwBufferSignal_A/filtro_reg_1/CLK ;
  wire \NlwBufferSignal_A/filtro_reg_1/IN ;
  wire \NlwBufferSignal_A/filtro_reg_0/CLK ;
  wire \NlwBufferSignal_A/filtro_reg_0/IN ;
  wire \NlwBufferSignal_A/f_ps2c_reg/CLK ;
  wire \NlwBufferSignal_A/filtro_reg_7/CLK ;
  wire \NlwBufferSignal_A/filtro_reg_7/IN ;
  wire \NlwBufferSignal_A/filtro_reg_6/CLK ;
  wire \NlwBufferSignal_A/filtro_reg_6/IN ;
  wire \NlwBufferSignal_A/filtro_reg_5/CLK ;
  wire \NlwBufferSignal_A/filtro_reg_5/IN ;
  wire \NlwBufferSignal_A/filtro_reg_4/CLK ;
  wire \NlwBufferSignal_A/filtro_reg_4/IN ;
  wire \NlwBufferSignal_A/b_reg_10/CLK ;
  wire \NlwBufferSignal_A/b_reg_9/CLK ;
  wire \NlwBufferSignal_A/b_reg_6/CLK ;
  wire \NlwBufferSignal_A/b_reg_5/CLK ;
  wire \NlwBufferSignal_A/b_reg_4/CLK ;
  wire \NlwBufferSignal_C/Temp_i_2/CLK ;
  wire \NlwBufferSignal_C/Temp_i_1/CLK ;
  wire \NlwBufferSignal_C/Temp_i_0/CLK ;
  wire \NlwBufferSignal_B/clk_o/CLK ;
  wire \NlwBufferSignal_A/b_reg_3/CLK ;
  wire \NlwBufferSignal_A/b_reg_2/CLK ;
  wire \NlwBufferSignal_A/b_reg_1/CLK ;
  wire \NlwBufferSignal_A/b_reg_0/CLK ;
  wire \NlwBufferSignal_C/Pres_i/CLK ;
  wire \NlwBufferSignal_C/Ing_i/CLK ;
  wire \NlwBufferSignal_C/Temp_i_4/CLK ;
  wire \NlwBufferSignal_C/Temp_i_3/CLK ;
  wire \NlwBufferSignal_D/EA_FSM_FFd2/CLK ;
  wire \NlwBufferSignal_D/EA_FSM_FFd1/CLK ;
  wire \NlwBufferSignal_E/EA_FSM_FFd2/CLK ;
  wire \NlwBufferSignal_E/EA_FSM_FFd1/CLK ;
  wire VCC;
  wire GND;
  wire \NLW_B/Mcount_counter_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_B/Mcount_counter_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_B/Mcount_counter_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N0.A5LUT_O_UNCONNECTED ;
  wire \NLW_B/Mcount_counter_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_B/Mcount_counter_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_B/Mcount_counter_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_B/Mcount_counter_xor<10>_CO[0]_UNCONNECTED ;
  wire \NLW_B/Mcount_counter_xor<10>_CO[1]_UNCONNECTED ;
  wire \NLW_B/Mcount_counter_xor<10>_CO[2]_UNCONNECTED ;
  wire \NLW_B/Mcount_counter_xor<10>_CO[3]_UNCONNECTED ;
  wire \NLW_B/Mcount_counter_xor<10>_DI[2]_UNCONNECTED ;
  wire \NLW_B/Mcount_counter_xor<10>_DI[3]_UNCONNECTED ;
  wire \NLW_B/Mcount_counter_xor<10>_O[3]_UNCONNECTED ;
  wire \NLW_B/Mcount_counter_xor<10>_S[3]_UNCONNECTED ;
  wire [3 : 0] \A/n_reg ;
  wire [10 : 0] \A/b_reg ;
  wire [7 : 0] \A/filtro_reg ;
  wire [4 : 0] \C/Temp_i ;
  wire [10 : 0] \B/counter ;
  wire [10 : 0] \B/Mcount_counter_lut ;
  assign
    NlwRenamedSig_IO_ps2_data = ps2_data,
    NlwRenamedSig_IO_ps2_clk = ps2_clk;
  initial $sdf_annotate("netgen/par/proyecto_corto_2_timesim.sdf");
  X_CKBUF #(
    .LOC ( "BUFGMUX_X3Y13" ))
  \clk_i_BUFGP/BUFG  (
    .I(\NlwBufferSignal_clk_i_BUFGP/BUFG/IN ),
    .O(clk_i_BUFGP)
  );
  X_FF #(
    .LOC ( "SLICE_X24Y9" ),
    .INIT ( 1'b0 ))
  \B/counter_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_B/counter_3/CLK ),
    .I(\B/Mcount_counter3 ),
    .O(\B/counter [3]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y9" ),
    .INIT ( 64'hFF7FFFFF00000000 ))
  \B/Mcount_counter_lut<3>  (
    .ADR0(\B/counter [9]),
    .ADR1(\B/counter [8]),
    .ADR2(\B/counter [7]),
    .ADR5(\B/counter [3]),
    .ADR4(N30),
    .ADR3(N01),
    .O(\B/Mcount_counter_lut [3])
  );
  X_FF #(
    .LOC ( "SLICE_X24Y9" ),
    .INIT ( 1'b0 ))
  \B/counter_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_B/counter_2/CLK ),
    .I(\B/Mcount_counter2 ),
    .O(\B/counter [2]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X24Y9" ))
  \B/Mcount_counter_cy<3>  (
    .CI(1'b0),
    .CYINIT(\B/counter[10]_PWR_4_o_equal_1_o_inv_786 ),
    .CO({\B/Mcount_counter_cy[3] , \NLW_B/Mcount_counter_cy<3>_CO[2]_UNCONNECTED , \NLW_B/Mcount_counter_cy<3>_CO[1]_UNCONNECTED , 
\NLW_B/Mcount_counter_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\B/Mcount_counter3 , \B/Mcount_counter2 , \B/Mcount_counter1 , \B/Mcount_counter }),
    .S({\B/Mcount_counter_lut [3], \B/Mcount_counter_lut [2], \B/Mcount_counter_lut [1], \B/Mcount_counter_lut<0>_rt_38 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y9" ),
    .INIT ( 64'hFFFF00007FFF0000 ))
  \B/Mcount_counter_lut<2>  (
    .ADR3(\B/counter [9]),
    .ADR2(\B/counter [8]),
    .ADR0(\B/counter [7]),
    .ADR4(\B/counter [2]),
    .ADR1(N30),
    .ADR5(N01),
    .O(\B/Mcount_counter_lut [2])
  );
  X_FF #(
    .LOC ( "SLICE_X24Y9" ),
    .INIT ( 1'b0 ))
  \B/counter_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_B/counter_1/CLK ),
    .I(\B/Mcount_counter1 ),
    .O(\B/counter [1]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y9" ),
    .INIT ( 64'hBFFF0000FFFF0000 ))
  \B/Mcount_counter_lut<1>  (
    .ADR2(\B/counter [9]),
    .ADR5(\B/counter [8]),
    .ADR1(\B/counter [7]),
    .ADR4(\B/counter [1]),
    .ADR3(\B/counter [6]),
    .ADR0(N01),
    .O(\B/Mcount_counter_lut [1])
  );
  X_FF #(
    .LOC ( "SLICE_X24Y9" ),
    .INIT ( 1'b0 ))
  \B/counter_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_B/counter_0/CLK ),
    .I(\B/Mcount_counter ),
    .O(\B/counter [0]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y9" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \B/Mcount_counter_lut<0>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\B/Mcount_counter_lut [0]),
    .ADR5(1'b1),
    .O(\B/Mcount_counter_lut<0>_rt_38 )
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
  \B/counter_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_B/counter_7/CLK ),
    .I(\B/Mcount_counter7 ),
    .O(\B/counter [7]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y10" ),
    .INIT ( 64'hFF7FFFFF00000000 ))
  \B/Mcount_counter_lut<7>  (
    .ADR0(\B/counter [9]),
    .ADR2(\B/counter [8]),
    .ADR1(\B/counter [6]),
    .ADR5(\B/counter [7]),
    .ADR4(\B/counter [1]),
    .ADR3(N01),
    .O(\B/Mcount_counter_lut [7])
  );
  X_FF #(
    .LOC ( "SLICE_X24Y10" ),
    .INIT ( 1'b0 ))
  \B/counter_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_B/counter_6/CLK ),
    .I(\B/Mcount_counter6 ),
    .O(\B/counter [6]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X24Y10" ))
  \B/Mcount_counter_cy<7>  (
    .CI(\B/Mcount_counter_cy[3] ),
    .CYINIT(1'b0),
    .CO({\B/Mcount_counter_cy[7] , \NLW_B/Mcount_counter_cy<7>_CO[2]_UNCONNECTED , \NLW_B/Mcount_counter_cy<7>_CO[1]_UNCONNECTED , 
\NLW_B/Mcount_counter_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\B/Mcount_counter7 , \B/Mcount_counter6 , \B/Mcount_counter5 , \B/Mcount_counter4 }),
    .S({\B/Mcount_counter_lut [7], \B/Mcount_counter_lut [6], \B/Mcount_counter_lut [5], \B/Mcount_counter_lut [4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y10" ),
    .INIT ( 64'hAA2AAAAAAAAAAAAA ))
  \B/Mcount_counter_lut<6>  (
    .ADR5(\B/counter [9]),
    .ADR2(\B/counter [8]),
    .ADR1(\B/counter [7]),
    .ADR0(\B/counter [6]),
    .ADR4(\B/counter [1]),
    .ADR3(N01),
    .O(\B/Mcount_counter_lut [6])
  );
  X_FF #(
    .LOC ( "SLICE_X24Y10" ),
    .INIT ( 1'b0 ))
  \B/counter_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_B/counter_5/CLK ),
    .I(\B/Mcount_counter5 ),
    .O(\B/counter [5]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y10" ),
    .INIT ( 64'hAAAA2AAAAAAAAAAA ))
  \B/Mcount_counter_lut<5>  (
    .ADR5(\B/counter [6]),
    .ADR3(\B/counter [1]),
    .ADR2(\B/counter [9]),
    .ADR0(\B/counter [5]),
    .ADR1(N36),
    .ADR4(N01),
    .O(\B/Mcount_counter_lut [5])
  );
  X_FF #(
    .LOC ( "SLICE_X24Y10" ),
    .INIT ( 1'b0 ))
  \B/counter_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_B/counter_4/CLK ),
    .I(\B/Mcount_counter4 ),
    .O(\B/counter [4]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y10" ),
    .INIT ( 64'hF0F070F0F0F0F0F0 ))
  \B/Mcount_counter_lut<4>  (
    .ADR3(\B/counter [6]),
    .ADR0(\B/counter [1]),
    .ADR1(\B/counter [9]),
    .ADR2(\B/counter [4]),
    .ADR5(N36),
    .ADR4(N01),
    .O(\B/Mcount_counter_lut [4])
  );
  X_FF #(
    .LOC ( "SLICE_X24Y11" ),
    .INIT ( 1'b0 ))
  \B/counter_10  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_B/counter_10/CLK ),
    .I(\B/Mcount_counter10 ),
    .O(\B/counter [10]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X24Y11" ))
  \B/Mcount_counter_xor<10>  (
    .CI(\B/Mcount_counter_cy[7] ),
    .CYINIT(1'b0),
    .CO({\NLW_B/Mcount_counter_xor<10>_CO[3]_UNCONNECTED , \NLW_B/Mcount_counter_xor<10>_CO[2]_UNCONNECTED , 
\NLW_B/Mcount_counter_xor<10>_CO[1]_UNCONNECTED , \NLW_B/Mcount_counter_xor<10>_CO[0]_UNCONNECTED }),
    .DI({\NLW_B/Mcount_counter_xor<10>_DI[3]_UNCONNECTED , \NLW_B/Mcount_counter_xor<10>_DI[2]_UNCONNECTED , 1'b0, 1'b0}),
    .O({\NLW_B/Mcount_counter_xor<10>_O[3]_UNCONNECTED , \B/Mcount_counter10 , \B/Mcount_counter9 , \B/Mcount_counter8 }),
    .S({\NLW_B/Mcount_counter_xor<10>_S[3]_UNCONNECTED , \B/Mcount_counter_lut [10], \B/Mcount_counter_lut [9], \B/Mcount_counter_lut [8]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y11" ),
    .INIT ( 64'hFF7F0000FFFF0000 ))
  \B/Mcount_counter_lut<10>  (
    .ADR5(\B/counter [6]),
    .ADR0(\B/counter [1]),
    .ADR2(\B/counter [8]),
    .ADR4(\B/counter [10]),
    .ADR1(N40),
    .ADR3(N01),
    .O(\B/Mcount_counter_lut [10])
  );
  X_FF #(
    .LOC ( "SLICE_X24Y11" ),
    .INIT ( 1'b0 ))
  \B/counter_9  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_B/counter_9/CLK ),
    .I(\B/Mcount_counter9 ),
    .O(\B/counter [9]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y11" ),
    .INIT ( 64'hAAAA2AAAAAAAAAAA ))
  \B/Mcount_counter_lut<9>  (
    .ADR1(\B/counter [8]),
    .ADR2(\B/counter [7]),
    .ADR3(\B/counter [6]),
    .ADR0(\B/counter [9]),
    .ADR5(\B/counter [1]),
    .ADR4(N01),
    .O(\B/Mcount_counter_lut [9])
  );
  X_FF #(
    .LOC ( "SLICE_X24Y11" ),
    .INIT ( 1'b0 ))
  \B/counter_8  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_B/counter_8/CLK ),
    .I(\B/Mcount_counter8 ),
    .O(\B/counter [8]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y11" ),
    .INIT ( 64'hDFFFFFFF00000000 ))
  \B/Mcount_counter_lut<8>  (
    .ADR2(\B/counter [9]),
    .ADR4(\B/counter [7]),
    .ADR3(\B/counter [6]),
    .ADR5(\B/counter [8]),
    .ADR0(\B/counter [1]),
    .ADR1(N01),
    .O(\B/Mcount_counter_lut [8])
  );
  X_OPAD #(
    .LOC ( "PAD114" ))
  \codigo_o<1>  (
    .PAD(codigo_o[1])
  );
  X_OBUF #(
    .LOC ( "PAD114" ))
  codigo_o_1_OBUF (
    .I(\NlwBufferSignal_codigo_o_1_OBUF/I ),
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
    .I(\NlwBufferSignal_codigo_o_2_OBUF/I ),
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
    .I(\NlwBufferSignal_data_o_o_OBUF/I ),
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
    .I(\NlwBufferSignal_codigo_o_3_OBUF/I ),
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
    .I(\NlwBufferSignal_Temp_o_0_OBUF/I ),
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
    .I(\NlwBufferSignal_codigo_o_4_OBUF/I ),
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
    .I(\NlwBufferSignal_Temp_o_1_OBUF/I ),
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
    .I(\NlwBufferSignal_codigo_o_5_OBUF/I ),
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
    .I(\NlwBufferSignal_Temp_o_2_OBUF/I ),
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
    .I(\NlwBufferSignal_codigo_o_6_OBUF/I ),
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
    .I(\NlwBufferSignal_Temp_o_3_OBUF/I ),
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
    .I(\NlwBufferSignal_Temp_o_4_OBUF/I ),
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
    .I(\NlwBufferSignal_Ing_o_OBUF/I ),
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
    .I(\NlwBufferSignal_codigo_o_0_OBUF/I ),
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
    .I(\NlwBufferSignal_anodos_o_0_OBUF/I ),
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
    .I(\NlwBufferSignal_anodos_o_1_OBUF/I ),
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
    .I(\NlwBufferSignal_anodos_o_2_OBUF/I ),
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
    .I(\NlwBufferSignal_anodos_o_3_OBUF/I ),
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
    .I(\NlwBufferSignal_Pres_o_OBUF/I ),
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
  X_BUF   \A/n_reg_3_dpot/A/n_reg_3_dpot_CMUX_Delay  (
    .I(\A/n_reg_3_dpot_178 ),
    .O(\A/n_reg_3_dpot_0 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X18Y10" ))
  \A/n_reg_3_dpot  (
    .IA(N94),
    .IB(N95),
    .O(\A/n_reg_3_dpot_178 ),
    .SEL(\A/estado_actl_FSM_FFd2_741 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y10" ),
    .INIT ( 64'hFFFF0000FFFFF0F0 ))
  \A/n_reg_3_dpot_F  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(rx_en_IBUF_0),
    .ADR5(\A/estado_actl_FSM_FFd1_736 ),
    .ADR4(\A/n_reg [3]),
    .O(N94)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y10" ),
    .INIT ( 64'hFF00FF00FF00FC00 ))
  \A/n_reg_3_dpot_G  (
    .ADR0(1'b1),
    .ADR3(\A/n_reg [3]),
    .ADR5(\A/estado_actl_FSM_FFd1_736 ),
    .ADR1(\A/n_reg [2]),
    .ADR2(\A/n_reg [0]),
    .ADR4(\A/n_reg [1]),
    .O(N95)
  );
  X_BUF   \A/n_reg<1>/A/n_reg<1>_CMUX_Delay  (
    .I(\A/n_reg<2>_pack_11 ),
    .O(\A/n_reg [2])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y10" ),
    .INIT ( 64'hFFFFFFF0FFFFFFF0 ))
  \A/_n0071_inv_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR4(\A/n_reg [2]),
    .ADR2(\A/n_reg [1]),
    .ADR3(\A/n_reg [0]),
    .O(N10)
  );
  X_FF #(
    .LOC ( "SLICE_X20Y10" ),
    .INIT ( 1'b0 ))
  \A/n_reg_1  (
    .CE(\A/estado_actl_FSM_FFd1-In1_cepot_774 ),
    .CLK(\NlwBufferSignal_A/n_reg_1/CLK ),
    .I(\A/n_reg_1_dpot1_195 ),
    .O(\A/n_reg [1]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y10" ),
    .INIT ( 64'hAAAAF0F0AAAAF0F0 ))
  \A/n_reg_1_dpot1  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR4(\A/estado_actl_FSM_FFd1-In1_rstpot_775 ),
    .ADR2(\A/n_reg [1]),
    .ADR0(\A/n_reg_1_dpot_830 ),
    .ADR5(1'b1),
    .O(\A/n_reg_1_dpot1_195 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y10" ),
    .INIT ( 32'hFF00CCCC ))
  \A/n_reg_2_dpot1  (
    .ADR1(\A/n_reg [2]),
    .ADR3(\A/n_reg_2_dpot_831 ),
    .ADR4(\A/estado_actl_FSM_FFd1-In1_rstpot_775 ),
    .ADR0(1'b1),
    .ADR2(1'b1),
    .O(\A/n_reg_2_dpot1_203 )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y10" ),
    .INIT ( 1'b0 ))
  \A/n_reg_2  (
    .CE(\A/estado_actl_FSM_FFd1-In1_cepot_774 ),
    .CLK(\NlwBufferSignal_A/n_reg_2/CLK ),
    .I(\A/n_reg_2_dpot1_203 ),
    .O(\A/n_reg<2>_pack_11 ),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y10" ),
    .INIT ( 64'hFCF5FCF503000000 ))
  \A/n_reg_2_dpot  (
    .ADR0(rx_en_IBUF_0),
    .ADR5(\A/n_reg [2]),
    .ADR4(\A/n_reg [3]),
    .ADR3(\A/estado_actl_FSM_FFd2_741 ),
    .ADR2(\A/estado_actl_FSM_FFd1_736 ),
    .ADR1(N88),
    .O(\A/n_reg_2_dpot_831 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y10" ),
    .INIT ( 64'hFC03F500FC00F500 ))
  \A/n_reg_1_dpot  (
    .ADR3(\A/n_reg [1]),
    .ADR4(\A/estado_actl_FSM_FFd2_741 ),
    .ADR1(\A/n_reg [0]),
    .ADR0(rx_en_IBUF_0),
    .ADR2(\A/estado_actl_FSM_FFd1_736 ),
    .ADR5(N90),
    .O(\A/n_reg_1_dpot_830 )
  );
  X_BUF   \data_o_o_OBUF/data_o_o_OBUF_DMUX_Delay  (
    .I(\A/n_reg<0>_pack_5 ),
    .O(\A/n_reg [0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y10" ),
    .INIT ( 64'hA0A0A0A0A0A0A0A0 ))
  data_o_o1 (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR0(\A/estado_actl_FSM_FFd1_736 ),
    .ADR2(\A/b_reg [0]),
    .ADR5(1'b1),
    .O(data_o_o_OBUF_800)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X21Y10" ),
    .INIT ( 32'hFFCC00CC ))
  \A/n_reg_0_dpot1  (
    .ADR3(\A/estado_actl_FSM_FFd1-In1_rstpot_775 ),
    .ADR1(\A/n_reg [0]),
    .ADR4(\A/n_reg_0_dpot_832 ),
    .ADR0(1'b1),
    .ADR2(1'b1),
    .O(\A/n_reg_0_dpot1_234 )
  );
  X_FF #(
    .LOC ( "SLICE_X21Y10" ),
    .INIT ( 1'b0 ))
  \A/n_reg_0  (
    .CE(\A/estado_actl_FSM_FFd1-In1_cepot_774 ),
    .CLK(\NlwBufferSignal_A/n_reg_0/CLK ),
    .I(\A/n_reg_0_dpot1_234 ),
    .O(\A/n_reg<0>_pack_5 ),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y10" ),
    .INIT ( 64'hFF000FFCFF005FAC ))
  \A/n_reg_0_dpot  (
    .ADR1(rx_en_IBUF_0),
    .ADR5(\A/n_reg [3]),
    .ADR3(\A/n_reg [0]),
    .ADR2(\A/estado_actl_FSM_FFd2_741 ),
    .ADR4(\A/estado_actl_FSM_FFd1_736 ),
    .ADR0(N10),
    .O(\A/n_reg_0_dpot_832 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y10" ),
    .INIT ( 64'hFFFFFFFFFFFF0000 ))
  \A/n_reg_2_dpot_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR5(\A/n_reg [1]),
    .ADR4(\A/n_reg [0]),
    .O(N88)
  );
  X_BUF   \N28/N28_DMUX_Delay  (
    .I(\A/n_reg<3>_pack_3 ),
    .O(\A/n_reg [3])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y11" ),
    .INIT ( 64'hDDDDDDDDDDDDDDDD ))
  \A/estado_actl_FSM_FFd1-In_SW0_SW0  (
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR0(\A/estado_actl_FSM_FFd2_741 ),
    .ADR1(\A/n_reg [3]),
    .ADR5(1'b1),
    .O(N28)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X21Y11" ),
    .INIT ( 32'hFFCC00CC ))
  \A/n_reg_3_dpot1  (
    .ADR0(1'b1),
    .ADR3(\A/estado_actl_FSM_FFd1-In1_rstpot_775 ),
    .ADR4(\A/n_reg_3_dpot_0 ),
    .ADR2(1'b1),
    .ADR1(\A/n_reg [3]),
    .O(\A/n_reg_3_dpot1_254 )
  );
  X_FF #(
    .LOC ( "SLICE_X21Y11" ),
    .INIT ( 1'b0 ))
  \A/n_reg_3  (
    .CE(\A/estado_actl_FSM_FFd1-In1_cepot_774 ),
    .CLK(\NlwBufferSignal_A/n_reg_3/CLK ),
    .I(\A/n_reg_3_dpot1_254 ),
    .O(\A/n_reg<3>_pack_3 ),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y11" ),
    .INIT ( 64'h0000000300000000 ))
  \A/estado_actl_FSM_FFd1-In1_rstpot  (
    .ADR0(1'b1),
    .ADR5(\A/f_ps2c_reg_770 ),
    .ADR1(\A/filtro_reg [0]),
    .ADR4(\A/filtro_reg [1]),
    .ADR2(\A/filtro_reg [3]),
    .ADR3(\A/filtro_reg [2]),
    .O(\A/estado_actl_FSM_FFd1-In1_rstpot_775 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y11" ),
    .INIT ( 64'hFFFFFFFFFFFF0000 ))
  \A/n_reg_1_dpot_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR5(\A/n_reg [2]),
    .ADR4(\A/n_reg [3]),
    .O(N90)
  );
  X_FF #(
    .LOC ( "SLICE_X22Y10" ),
    .INIT ( 1'b0 ))
  \A/b_reg_8  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_A/b_reg_8/CLK ),
    .I(\A/b_reg_8_rstpot_284 ),
    .O(\A/b_reg [8]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y10" ),
    .INIT ( 64'hCCCCCCCCCCCDCCC8 ))
  \A/b_reg_8_rstpot  (
    .ADR5(N6),
    .ADR3(\A/filtro_reg [3]),
    .ADR2(\A/filtro_reg [2]),
    .ADR1(\A/b_reg [8]),
    .ADR0(\A/filtro_reg [1]),
    .ADR4(N58),
    .O(\A/b_reg_8_rstpot_284 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y10" ),
    .INIT ( 64'hCCCCFFFFCCCC0000 ))
  \A/estado_actl_FSM_FFd1-In1_SW51  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR4(\A/filtro_reg [0]),
    .ADR1(\A/b_reg [8]),
    .ADR5(N86),
    .O(N58)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y10" ),
    .INIT ( 64'hFFFFFFCDFFFFFFFF ))
  \A/estado_actl_FSM_FFd1-In1_SW6  (
    .ADR3(\A/filtro_reg [0]),
    .ADR5(\A/f_ps2c_reg_770 ),
    .ADR1(\A/estado_actl_FSM_FFd1_736 ),
    .ADR2(\A/estado_actl_FSM_FFd2_741 ),
    .ADR0(rx_en_IBUF_0),
    .ADR4(\A/filtro_reg [1]),
    .O(N60)
  );
  X_FF #(
    .LOC ( "SLICE_X22Y10" ),
    .INIT ( 1'b0 ))
  \A/b_reg_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_A/b_reg_7/CLK ),
    .I(\A/b_reg_7_rstpot_264 ),
    .O(\A/b_reg [7]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y10" ),
    .INIT ( 64'hFFFFFFFE00000002 ))
  \A/b_reg_7_rstpot  (
    .ADR0(\A/b_reg [8]),
    .ADR3(\A/filtro_reg [2]),
    .ADR1(\A/filtro_reg [3]),
    .ADR5(\A/b_reg [7]),
    .ADR2(N6),
    .ADR4(N60),
    .O(\A/b_reg_7_rstpot_264 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y11" ),
    .INIT ( 64'hCCFECC04CCCCCCCC ))
  \A/estado_actl_FSM_FFd1-In1_SW5_F  (
    .ADR0(rx_en_IBUF_0),
    .ADR4(\A/b_reg [9]),
    .ADR5(\A/f_ps2c_reg_770 ),
    .ADR2(\A/estado_actl_FSM_FFd2_741 ),
    .ADR3(\A/estado_actl_FSM_FFd1_736 ),
    .ADR1(\A/b_reg [8]),
    .O(N86)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y12" ),
    .INIT ( 64'hFFFFFFFFFFFFFFF0 ))
  \A/estado_actl_FSM_FFd1-In1_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\A/filtro_reg [6]),
    .ADR3(\A/filtro_reg [5]),
    .ADR5(\A/filtro_reg [4]),
    .ADR2(\A/filtro_reg [7]),
    .O(N6)
  );
  X_FF #(
    .LOC ( "SLICE_X22Y12" ),
    .INIT ( 1'b0 ))
  \A/estado_actl_FSM_FFd2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_A/estado_actl_FSM_FFd2/CLK ),
    .I(\A/estado_actl_FSM_FFd2-In ),
    .O(\A/estado_actl_FSM_FFd2_741 ),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y12" ),
    .INIT ( 64'h5555000055550003 ))
  \A/estado_actl_FSM_FFd2-In1  (
    .ADR2(N50),
    .ADR5(N6),
    .ADR1(\A/filtro_reg [3]),
    .ADR4(\A/estado_actl_FSM_FFd2_741 ),
    .ADR3(\A/filtro_reg [2]),
    .ADR0(\A/estado_actl_FSM_FFd1_736 ),
    .O(\A/estado_actl_FSM_FFd2-In )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y12" ),
    .INIT ( 64'hFFFFFFFEFFFFFFFF ))
  \A/estado_actl_FSM_FFd1-In1_SW2  (
    .ADR3(\A/filtro_reg [0]),
    .ADR0(\A/filtro_reg [2]),
    .ADR4(\A/filtro_reg [1]),
    .ADR5(\A/f_ps2c_reg_770 ),
    .ADR2(\A/filtro_reg [3]),
    .ADR1(\A/estado_actl_FSM_FFd1_736 ),
    .O(N52)
  );
  X_FF #(
    .LOC ( "SLICE_X22Y12" ),
    .INIT ( 1'b0 ))
  \A/estado_actl_FSM_FFd1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_A/estado_actl_FSM_FFd1/CLK ),
    .I(\A/estado_actl_FSM_FFd1-In_300 ),
    .O(\A/estado_actl_FSM_FFd1_736 ),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y12" ),
    .INIT ( 64'h0000000000000001 ))
  \A/estado_actl_FSM_FFd1-In  (
    .ADR0(\A/n_reg [1]),
    .ADR5(\A/n_reg [2]),
    .ADR1(\A/n_reg [0]),
    .ADR3(N28),
    .ADR2(N6),
    .ADR4(N52),
    .O(\A/estado_actl_FSM_FFd1-In_300 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y12" ),
    .INIT ( 64'hFFFFFF0FFFFFFFFF ))
  \A/estado_actl_FSM_FFd1-In1_SW1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\A/filtro_reg [1]),
    .ADR5(\A/f_ps2c_reg_770 ),
    .ADR2(rx_en_IBUF_0),
    .ADR3(\A/filtro_reg [0]),
    .O(N50)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y13" ),
    .INIT ( 64'h000000000000000F ))
  \A/estado_actl_FSM_FFd1-In1_cepot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\A/filtro_reg [6]),
    .ADR4(\A/filtro_reg [5]),
    .ADR5(\A/filtro_reg [4]),
    .ADR2(\A/filtro_reg [7]),
    .O(\A/estado_actl_FSM_FFd1-In1_cepot_774 )
  );
  X_FF #(
    .LOC ( "SLICE_X23Y14" ),
    .INIT ( 1'b0 ))
  \A/filtro_reg_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_A/filtro_reg_3/CLK ),
    .I(\NlwBufferSignal_A/filtro_reg_3/IN ),
    .O(\A/filtro_reg [3]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X23Y14" ),
    .INIT ( 1'b0 ))
  \A/filtro_reg_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_A/filtro_reg_2/CLK ),
    .I(\NlwBufferSignal_A/filtro_reg_2/IN ),
    .O(\A/filtro_reg [2]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X23Y14" ),
    .INIT ( 1'b0 ))
  \A/filtro_reg_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_A/filtro_reg_1/CLK ),
    .I(\NlwBufferSignal_A/filtro_reg_1/IN ),
    .O(\A/filtro_reg [1]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X23Y14" ),
    .INIT ( 1'b0 ))
  \A/filtro_reg_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_A/filtro_reg_0/CLK ),
    .I(\NlwBufferSignal_A/filtro_reg_0/IN ),
    .O(\A/filtro_reg [0]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y16" ),
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \A/Mmux_f_ps2c_sgt11  (
    .ADR4(\A/filtro_reg [4]),
    .ADR1(\A/filtro_reg [5]),
    .ADR5(\A/filtro_reg [2]),
    .ADR0(\A/filtro_reg [3]),
    .ADR3(\A/filtro_reg [0]),
    .ADR2(\A/filtro_reg [1]),
    .O(\A/Mmux_f_ps2c_sgt1 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y17" ),
    .INIT ( 64'hAAAAAAAAEE22EA2A ))
  \A/estado_actl_FSM_FFd1-In1_SW4_F  (
    .ADR2(rx_en_IBUF_0),
    .ADR3(\A/b_reg [10]),
    .ADR0(\A/b_reg [9]),
    .ADR1(\A/f_ps2c_reg_770 ),
    .ADR4(\A/estado_actl_FSM_FFd2_741 ),
    .ADR5(\A/estado_actl_FSM_FFd1_736 ),
    .O(N84)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y17" ),
    .INIT ( 64'hFF00FF00CFC0DF80 ))
  \A/estado_actl_FSM_FFd1-In1_SW3_F  (
    .ADR1(ps2_data_IBUF_0),
    .ADR0(rx_en_IBUF_0),
    .ADR3(\A/b_reg [10]),
    .ADR2(\A/f_ps2c_reg_770 ),
    .ADR4(\A/estado_actl_FSM_FFd2_741 ),
    .ADR5(\A/estado_actl_FSM_FFd1_736 ),
    .O(N82)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y17" ),
    .INIT ( 64'h8000000000000000 ))
  \A/Mmux_f_ps2c_sgt12  (
    .ADR2(\A/filtro_reg [4]),
    .ADR5(\A/filtro_reg [5]),
    .ADR3(\A/filtro_reg [2]),
    .ADR4(\A/filtro_reg [3]),
    .ADR0(\A/filtro_reg [0]),
    .ADR1(\A/filtro_reg [1]),
    .O(\A/Mmux_f_ps2c_sgt11_835 )
  );
  X_FF #(
    .LOC ( "SLICE_X24Y17" ),
    .INIT ( 1'b0 ))
  \A/f_ps2c_reg  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_A/f_ps2c_reg/CLK ),
    .I(\A/f_ps2c_sgt ),
    .O(\A/f_ps2c_reg_770 ),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y17" ),
    .INIT ( 64'hFFFAFFFAAA000000 ))
  \A/Mmux_f_ps2c_sgt13  (
    .ADR1(1'b1),
    .ADR3(\A/filtro_reg [6]),
    .ADR0(\A/filtro_reg [7]),
    .ADR5(\A/f_ps2c_reg_770 ),
    .ADR2(\A/Mmux_f_ps2c_sgt1 ),
    .ADR4(\A/Mmux_f_ps2c_sgt11_835 ),
    .O(\A/f_ps2c_sgt )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y9" ),
    .INIT ( 64'hFFFF000000000000 ))
  \B/counter[10]_PWR_4_o_equal_1_o<10>_SW1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\B/counter [6]),
    .ADR5(\B/counter [1]),
    .O(N30)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y9" ),
    .INIT ( 64'hCC4CCCCCCCCCCCCC ))
  \B/Mcount_counter_lut<0>  (
    .ADR1(\B/counter [0]),
    .ADR4(\B/counter [9]),
    .ADR0(\B/counter [8]),
    .ADR2(\B/counter [7]),
    .ADR5(N30),
    .ADR3(N01),
    .O(\B/Mcount_counter_lut [0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y9" ),
    .INIT ( 64'hFFFFF7FFFFFFFFFF ))
  \B/counter[10]_PWR_4_o_equal_1_o<10>_SW0  (
    .ADR3(\B/counter [10]),
    .ADR4(\B/counter [5]),
    .ADR5(\B/counter [0]),
    .ADR1(\B/counter [3]),
    .ADR2(\B/counter [4]),
    .ADR0(\B/counter [2]),
    .O(N01)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y9" ),
    .INIT ( 64'hFFFF7FFFFFFFFFFF ))
  \B/counter[10]_PWR_4_o_equal_1_o_inv  (
    .ADR1(\B/counter [1]),
    .ADR3(\B/counter [6]),
    .ADR2(\B/counter [7]),
    .ADR5(\B/counter [8]),
    .ADR0(\B/counter [9]),
    .ADR4(N01),
    .O(\B/counter[10]_PWR_4_o_equal_1_o_inv_786 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y10" ),
    .INIT ( 64'hF0F0F0F000000000 ))
  \B/counter[10]_PWR_4_o_equal_1_o<10>_SW4  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR5(\B/counter [8]),
    .ADR2(\B/counter [7]),
    .O(N36)
  );
  X_FF #(
    .LOC ( "SLICE_X25Y16" ),
    .INIT ( 1'b0 ))
  \A/filtro_reg_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_A/filtro_reg_7/CLK ),
    .I(\NlwBufferSignal_A/filtro_reg_7/IN ),
    .O(\A/filtro_reg [7]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X25Y16" ),
    .INIT ( 1'b0 ))
  \A/filtro_reg_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_A/filtro_reg_6/CLK ),
    .I(\NlwBufferSignal_A/filtro_reg_6/IN ),
    .O(\A/filtro_reg [6]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X25Y16" ),
    .INIT ( 1'b0 ))
  \A/filtro_reg_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_A/filtro_reg_5/CLK ),
    .I(\NlwBufferSignal_A/filtro_reg_5/IN ),
    .O(\A/filtro_reg [5]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X25Y16" ),
    .INIT ( 1'b0 ))
  \A/filtro_reg_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_A/filtro_reg_4/CLK ),
    .I(\NlwBufferSignal_A/filtro_reg_4/IN ),
    .O(\A/filtro_reg [4]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X25Y17" ),
    .INIT ( 1'b0 ))
  \A/b_reg_10  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_A/b_reg_10/CLK ),
    .I(\A/b_reg_10_rstpot_441 ),
    .O(\A/b_reg [10]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y17" ),
    .INIT ( 64'hCCCCCCCCCCCDCCC8 ))
  \A/b_reg_10_rstpot  (
    .ADR5(N6),
    .ADR2(\A/filtro_reg [3]),
    .ADR0(\A/filtro_reg [2]),
    .ADR1(\A/b_reg [10]),
    .ADR3(\A/filtro_reg [1]),
    .ADR4(N54),
    .O(\A/b_reg_10_rstpot_441 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y17" ),
    .INIT ( 64'hAAAAAAAAFFFF0000 ))
  \A/estado_actl_FSM_FFd1-In1_SW31  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR0(\A/b_reg [10]),
    .ADR5(\A/filtro_reg [0]),
    .ADR4(N82),
    .O(N54)
  );
  X_FF #(
    .LOC ( "SLICE_X25Y17" ),
    .INIT ( 1'b0 ))
  \A/b_reg_9  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_A/b_reg_9/CLK ),
    .I(\A/b_reg_9_rstpot_428 ),
    .O(\A/b_reg [9]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y17" ),
    .INIT ( 64'hFFFF0001FFFE0000 ))
  \A/b_reg_9_rstpot  (
    .ADR3(N6),
    .ADR1(\A/filtro_reg [3]),
    .ADR2(\A/filtro_reg [2]),
    .ADR4(\A/b_reg [9]),
    .ADR0(\A/filtro_reg [1]),
    .ADR5(N56),
    .O(\A/b_reg_9_rstpot_428 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y17" ),
    .INIT ( 64'hAAAAFFFFAAAA0000 ))
  \A/estado_actl_FSM_FFd1-In1_SW41  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR0(\A/b_reg [9]),
    .ADR4(\A/filtro_reg [0]),
    .ADR5(N84),
    .O(N56)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y8" ),
    .INIT ( 64'h0000000000000C00 ))
  \C/teclado_i[7]_GND_4_o_select_22_OUT<0>_SW0  (
    .ADR0(1'b1),
    .ADR2(\A/b_reg [4]),
    .ADR1(\A/b_reg [2]),
    .ADR4(\A/b_reg [1]),
    .ADR3(\A/b_reg [3]),
    .ADR5(\A/b_reg [8]),
    .O(N14)
  );
  X_BUF   \A/b_reg<6>/A/b_reg<6>_DMUX_Delay  (
    .I(N48),
    .O(N48_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y9" ),
    .INIT ( 64'h000FF0F0000FF0F0 ))
  \C/out22_SW1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\A/b_reg [7]),
    .ADR2(\A/b_reg [6]),
    .ADR3(\A/b_reg [5]),
    .ADR5(1'b1),
    .O(N46)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X26Y9" ),
    .INIT ( 32'h000F0F00 ))
  \C/out22_SW2  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\A/b_reg [7]),
    .ADR2(\A/b_reg [6]),
    .ADR3(\A/b_reg [5]),
    .O(N48)
  );
  X_FF #(
    .LOC ( "SLICE_X26Y9" ),
    .INIT ( 1'b0 ))
  \A/b_reg_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_A/b_reg_6/CLK ),
    .I(\A/b_reg_6_rstpot_472 ),
    .O(\A/b_reg [6]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y9" ),
    .INIT ( 64'hAAAAAAAAAAAAAAAC ))
  \A/b_reg_6_rstpot  (
    .ADR1(\A/b_reg [7]),
    .ADR3(\A/filtro_reg [2]),
    .ADR2(\A/filtro_reg [3]),
    .ADR0(\A/b_reg [6]),
    .ADR5(N6),
    .ADR4(N60),
    .O(\A/b_reg_6_rstpot_472 )
  );
  X_FF #(
    .LOC ( "SLICE_X26Y9" ),
    .INIT ( 1'b0 ))
  \A/b_reg_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_A/b_reg_5/CLK ),
    .I(\A/b_reg_5_rstpot_464 ),
    .O(\A/b_reg [5]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y9" ),
    .INIT ( 64'hAAAAAAAAAAAAAAAC ))
  \A/b_reg_5_rstpot  (
    .ADR1(\A/b_reg [6]),
    .ADR3(\A/filtro_reg [2]),
    .ADR2(\A/filtro_reg [3]),
    .ADR0(\A/b_reg [5]),
    .ADR5(N6),
    .ADR4(N60),
    .O(\A/b_reg_5_rstpot_464 )
  );
  X_FF #(
    .LOC ( "SLICE_X26Y9" ),
    .INIT ( 1'b0 ))
  \A/b_reg_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_A/b_reg_4/CLK ),
    .I(\A/b_reg_4_rstpot_456 ),
    .O(\A/b_reg [4]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y9" ),
    .INIT ( 64'hF0F0F0F0F0F0F0E4 ))
  \A/b_reg_4_rstpot  (
    .ADR1(\A/b_reg [5]),
    .ADR0(\A/filtro_reg [2]),
    .ADR4(\A/filtro_reg [3]),
    .ADR2(\A/b_reg [4]),
    .ADR5(N6),
    .ADR3(N60),
    .O(\A/b_reg_4_rstpot_456 )
  );
  X_SFF #(
    .LOC ( "SLICE_X27Y8" ),
    .INIT ( 1'b0 ))
  \C/Temp_i_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_C/Temp_i_2/CLK ),
    .I(\C/teclado_i[7]_GND_4_o_select_22_OUT<2>_512 ),
    .O(\C/Temp_i [2]),
    .SRST(rst_i_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y8" ),
    .INIT ( 64'hDDDFFFFF00030000 ))
  \C/teclado_i[7]_GND_4_o_select_22_OUT<2>  (
    .ADR2(\A/b_reg [1]),
    .ADR4(\A/b_reg [3]),
    .ADR1(\A/b_reg [8]),
    .ADR5(\C/Temp_i [2]),
    .ADR3(N92),
    .ADR0(\C/out2 ),
    .O(\C/teclado_i[7]_GND_4_o_select_22_OUT<2>_512 )
  );
  X_SFF #(
    .LOC ( "SLICE_X27Y8" ),
    .INIT ( 1'b0 ))
  \C/Temp_i_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_C/Temp_i_1/CLK ),
    .I(\C/teclado_i[7]_GND_4_o_select_22_OUT<1>_503 ),
    .O(\C/Temp_i [1]),
    .SRST(rst_i_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y8" ),
    .INIT ( 64'hFABAFAFAF030F0F0 ))
  \C/teclado_i[7]_GND_4_o_select_22_OUT<1>  (
    .ADR1(\A/b_reg [3]),
    .ADR3(\A/b_reg [8]),
    .ADR5(N48_0),
    .ADR2(\C/Temp_i [1]),
    .ADR0(N14),
    .ADR4(\C/out2 ),
    .O(\C/teclado_i[7]_GND_4_o_select_22_OUT<1>_503 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y8" ),
    .INIT ( 64'h1140100011001248 ))
  \C/out21  (
    .ADR5(\A/b_reg [4]),
    .ADR3(\A/b_reg [2]),
    .ADR1(\A/b_reg [1]),
    .ADR4(\A/b_reg [5]),
    .ADR2(\A/b_reg [6]),
    .ADR0(\A/b_reg [7]),
    .O(\C/out2 )
  );
  X_SFF #(
    .LOC ( "SLICE_X27Y8" ),
    .INIT ( 1'b0 ))
  \C/Temp_i_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_C/Temp_i_0/CLK ),
    .I(\C/teclado_i[7]_GND_4_o_select_22_OUT<0>_488 ),
    .O(\C/Temp_i [0]),
    .SRST(rst_i_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y8" ),
    .INIT ( 64'hFFB3FFFFA0A0A0A0 ))
  \C/teclado_i[7]_GND_4_o_select_22_OUT<0>  (
    .ADR1(\A/b_reg [3]),
    .ADR3(\A/b_reg [8]),
    .ADR2(N46),
    .ADR5(\C/Temp_i [0]),
    .ADR0(N14),
    .ADR4(\C/out2 ),
    .O(\C/teclado_i[7]_GND_4_o_select_22_OUT<0>_488 )
  );
  X_BUF   \B/clk_o/B/clk_o_DMUX_Delay  (
    .I(N42_pack_2),
    .O(N42)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y9" ),
    .INIT ( 64'hC0C0C0C0C0C0C0C0 ))
  \B/counter[10]_PWR_4_o_equal_1_o<10>_SW6  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR1(\B/counter [7]),
    .ADR2(\B/counter [9]),
    .ADR5(1'b1),
    .O(N40)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X27Y9" ),
    .INIT ( 32'h3F3F3F3F ))
  \B/counter[10]_PWR_4_o_equal_1_o<10>_SW7  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR1(\B/counter [7]),
    .ADR2(\B/counter [9]),
    .O(N42_pack_2)
  );
  X_FF #(
    .LOC ( "SLICE_X27Y9" ),
    .INIT ( 1'b0 ))
  \B/clk_o  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_B/clk_o/CLK ),
    .I(\B/clk_o_rstpot_520 ),
    .O(\B/clk_o_756 ),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y9" ),
    .INIT ( 64'hFFFF0000BFFF4000 ))
  \B/clk_o_rstpot  (
    .ADR3(\B/counter [6]),
    .ADR2(\B/counter [1]),
    .ADR1(\B/counter [8]),
    .ADR4(\B/clk_o_756 ),
    .ADR0(N01),
    .ADR5(N42),
    .O(\B/clk_o_rstpot_520 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y9" ),
    .INIT ( 64'hF1FFE5FFF1FFE5FF ))
  \C/teclado_i[7]_GND_4_o_select_22_OUT<2>_SW1  (
    .ADR5(1'b1),
    .ADR0(\A/b_reg [6]),
    .ADR4(\A/b_reg [5]),
    .ADR1(\A/b_reg [4]),
    .ADR2(\A/b_reg [7]),
    .ADR3(\A/b_reg [2]),
    .O(N92)
  );
  X_FF #(
    .LOC ( "SLICE_X27Y10" ),
    .INIT ( 1'b0 ))
  \A/b_reg_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_A/b_reg_3/CLK ),
    .I(\A/b_reg_3_rstpot_538 ),
    .O(\A/b_reg [3]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y10" ),
    .INIT ( 64'hF0F0F0F0F0F1F0E0 ))
  \A/b_reg_3_rstpot  (
    .ADR4(\A/b_reg [4]),
    .ADR0(\A/filtro_reg [2]),
    .ADR1(\A/filtro_reg [3]),
    .ADR2(\A/b_reg [3]),
    .ADR5(N6),
    .ADR3(N60),
    .O(\A/b_reg_3_rstpot_538 )
  );
  X_FF #(
    .LOC ( "SLICE_X27Y10" ),
    .INIT ( 1'b0 ))
  \A/b_reg_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_A/b_reg_2/CLK ),
    .I(\A/b_reg_2_rstpot_552 ),
    .O(\A/b_reg [2]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y10" ),
    .INIT ( 64'hFFFF0000FFFE0002 ))
  \A/b_reg_2_rstpot  (
    .ADR0(\A/b_reg [3]),
    .ADR2(\A/filtro_reg [2]),
    .ADR1(\A/filtro_reg [3]),
    .ADR4(\A/b_reg [2]),
    .ADR5(N6),
    .ADR3(N60),
    .O(\A/b_reg_2_rstpot_552 )
  );
  X_FF #(
    .LOC ( "SLICE_X27Y10" ),
    .INIT ( 1'b0 ))
  \A/b_reg_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_A/b_reg_1/CLK ),
    .I(\A/b_reg_1_rstpot_554 ),
    .O(\A/b_reg [1]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y10" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCA ))
  \A/b_reg_1_rstpot  (
    .ADR0(\A/b_reg [2]),
    .ADR3(\A/filtro_reg [2]),
    .ADR2(\A/filtro_reg [3]),
    .ADR1(\A/b_reg [1]),
    .ADR5(N6),
    .ADR4(N60),
    .O(\A/b_reg_1_rstpot_554 )
  );
  X_FF #(
    .LOC ( "SLICE_X27Y10" ),
    .INIT ( 1'b0 ))
  \A/b_reg_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_A/b_reg_0/CLK ),
    .I(\A/b_reg_0_rstpot_562 ),
    .O(\A/b_reg [0]),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X27Y10" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCA ))
  \A/b_reg_0_rstpot  (
    .ADR0(\A/b_reg [1]),
    .ADR3(\A/filtro_reg [2]),
    .ADR2(\A/filtro_reg [3]),
    .ADR1(\A/b_reg [0]),
    .ADR5(N6),
    .ADR4(N60),
    .O(\A/b_reg_0_rstpot_562 )
  );
  X_BUF   \C/Pres_i/C/Pres_i_BMUX_Delay  (
    .I(N20_pack_11),
    .O(N20)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y8" ),
    .INIT ( 64'h0000002200000000 ))
  \C/teclado_i[7]_PWR_5_o_Select_9_o_SW0  (
    .ADR2(1'b1),
    .ADR4(\A/b_reg [6]),
    .ADR0(\A/b_reg [7]),
    .ADR3(\A/b_reg [5]),
    .ADR5(\A/b_reg [3]),
    .ADR1(\A/b_reg [8]),
    .O(N22)
  );
  X_SFF #(
    .LOC ( "SLICE_X28Y8" ),
    .INIT ( 1'b0 ))
  \C/Pres_i  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_C/Pres_i/CLK ),
    .I(\C/teclado_i[7]_PWR_5_o_Select_9_o_599 ),
    .O(\C/Pres_i_758 ),
    .SRST(rst_i_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y8" ),
    .INIT ( 64'hAA8AEAEAAA8AAAAA ))
  \C/teclado_i[7]_PWR_5_o_Select_9_o  (
    .ADR1(\A/b_reg [1]),
    .ADR4(\A/b_reg [2]),
    .ADR2(\A/b_reg [4]),
    .ADR0(\C/Pres_i_758 ),
    .ADR3(\C/teclado_i[7]_PWR_5_o_Select_4_o11 ),
    .ADR5(N22),
    .O(\C/teclado_i[7]_PWR_5_o_Select_9_o_599 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y8" ),
    .INIT ( 64'hFFFFFDFFFFFFFDFF ))
  \C/teclado_i[7]_PWR_5_o_Select_4_o111  (
    .ADR4(\A/b_reg [7]),
    .ADR3(\A/b_reg [6]),
    .ADR0(\A/b_reg [5]),
    .ADR2(\A/b_reg [3]),
    .ADR1(\A/b_reg [8]),
    .ADR5(1'b1),
    .O(\C/teclado_i[7]_PWR_5_o_Select_4_o11 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y8" ),
    .INIT ( 32'h00010000 ))
  \C/teclado_i[7]_PWR_5_o_Select_4_o_SW0  (
    .ADR4(\A/b_reg [7]),
    .ADR3(\A/b_reg [6]),
    .ADR0(\A/b_reg [5]),
    .ADR2(\A/b_reg [3]),
    .ADR1(\A/b_reg [8]),
    .O(N20_pack_11)
  );
  X_SFF #(
    .LOC ( "SLICE_X28Y8" ),
    .INIT ( 1'b1 ))
  \C/Ing_i  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_C/Ing_i/CLK ),
    .I(\C/teclado_i[7]_PWR_5_o_Select_4_o_575 ),
    .O(\C/Ing_i_816 ),
    .SSET(rst_i_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y8" ),
    .INIT ( 64'hFFFFFFBB40004000 ))
  \C/teclado_i[7]_PWR_5_o_Select_4_o  (
    .ADR0(\A/b_reg [4]),
    .ADR1(\A/b_reg [1]),
    .ADR3(\A/b_reg [2]),
    .ADR5(\C/Ing_i_816 ),
    .ADR2(N20),
    .ADR4(\C/teclado_i[7]_PWR_5_o_Select_4_o11 ),
    .O(\C/teclado_i[7]_PWR_5_o_Select_4_o_575 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X29Y8" ),
    .INIT ( 64'h0400001008000000 ))
  \C/teclado_i[7]_GND_4_o_select_22_OUT<4>_SW0  (
    .ADR2(\A/b_reg [7]),
    .ADR4(\A/b_reg [6]),
    .ADR3(\A/b_reg [5]),
    .ADR1(\A/b_reg [4]),
    .ADR5(\A/b_reg [2]),
    .ADR0(\A/b_reg [1]),
    .O(N24)
  );
  X_SFF #(
    .LOC ( "SLICE_X29Y8" ),
    .INIT ( 1'b0 ))
  \C/Temp_i_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_C/Temp_i_4/CLK ),
    .I(\C/teclado_i[7]_GND_4_o_select_22_OUT<4>_613 ),
    .O(\C/Temp_i [4]),
    .SRST(rst_i_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X29Y8" ),
    .INIT ( 64'hF0FAF050F0FAF0F0 ))
  \C/teclado_i[7]_GND_4_o_select_22_OUT<4>  (
    .ADR1(1'b1),
    .ADR3(\A/b_reg [8]),
    .ADR5(\C/out2 ),
    .ADR2(\C/Temp_i [4]),
    .ADR0(\A/b_reg [3]),
    .ADR4(N24),
    .O(\C/teclado_i[7]_GND_4_o_select_22_OUT<4>_613 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X29Y8" ),
    .INIT ( 64'h0000001038002400 ))
  \C/teclado_i[7]_GND_4_o_select_22_OUT<3>_SW0  (
    .ADR5(\A/b_reg [7]),
    .ADR3(\A/b_reg [6]),
    .ADR0(\A/b_reg [4]),
    .ADR2(\A/b_reg [2]),
    .ADR1(\A/b_reg [1]),
    .ADR4(\A/b_reg [5]),
    .O(N18)
  );
  X_SFF #(
    .LOC ( "SLICE_X29Y8" ),
    .INIT ( 1'b0 ))
  \C/Temp_i_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_C/Temp_i_3/CLK ),
    .I(\C/teclado_i[7]_GND_4_o_select_22_OUT<3>_627 ),
    .O(\C/Temp_i [3]),
    .SRST(rst_i_IBUF_0),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X29Y8" ),
    .INIT ( 64'hFFFFCFFF30300000 ))
  \C/teclado_i[7]_GND_4_o_select_22_OUT<3>  (
    .ADR0(1'b1),
    .ADR1(\A/b_reg [8]),
    .ADR3(\C/out2 ),
    .ADR5(\C/Temp_i [3]),
    .ADR2(\A/b_reg [3]),
    .ADR4(N18),
    .O(\C/teclado_i[7]_GND_4_o_select_22_OUT<3>_627 )
  );
  X_BUF   \codigo_o_6_OBUF/codigo_o_6_OBUF_BMUX_Delay  (
    .I(codigo_o_5_OBUF_636),
    .O(codigo_o_5_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y6" ),
    .INIT ( 64'hA2F2A2F2A2F2A2F2 ))
  \E/Mram_SSegm61  (
    .ADR4(1'b1),
    .ADR0(\E/EA_FSM_FFd2_768 ),
    .ADR2(\E/EA_FSM_FFd1_767 ),
    .ADR1(\D/EA_FSM_FFd1_757 ),
    .ADR3(Alarm_o),
    .ADR5(1'b1),
    .O(codigo_o_6_OBUF_805)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y6" ),
    .INIT ( 32'h0A0A0808 ))
  \codigo_o<5>1  (
    .ADR4(\D/EA_FSM_FFd2_759 ),
    .ADR0(\E/EA_FSM_FFd2_768 ),
    .ADR2(\E/EA_FSM_FFd1_767 ),
    .ADR1(\D/EA_FSM_FFd1_757 ),
    .ADR3(1'b1),
    .O(codigo_o_5_OBUF_636)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y6" ),
    .INIT ( 64'h8884444400000000 ))
  \D/Alarm_o11  (
    .ADR1(\D/EA_FSM_FFd1_757 ),
    .ADR5(\C/Pres_i_758 ),
    .ADR0(\D/EA_FSM_FFd2_759 ),
    .ADR4(\C/Temp_i [4]),
    .ADR2(\C/Temp_i [2]),
    .ADR3(\C/Temp_i [3]),
    .O(Alarm_o)
  );
  X_BUF   \D/EA_FSM_FFd2/D/EA_FSM_FFd2_DMUX_Delay  (
    .I(N26_pack_10),
    .O(N26)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y8" ),
    .INIT ( 64'hF0C0F0C0F0C0F0C0 ))
  \codigo_o<0>_SW0  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(\C/Temp_i [4]),
    .ADR1(\C/Temp_i [3]),
    .ADR3(\C/Temp_i [2]),
    .ADR5(1'b1),
    .O(N4)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X34Y8" ),
    .INIT ( 32'hFFCCFFCC ))
  \D/EA_FSM_FFd2-In2_SW0  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR1(\C/Temp_i [3]),
    .ADR3(\C/Temp_i [2]),
    .O(N26_pack_10)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y8" ),
    .INIT ( 64'h8500050000000000 ))
  \codigo_o<0>  (
    .ADR3(\E/EA_FSM_FFd2_768 ),
    .ADR5(\D/EA_FSM_FFd2_759 ),
    .ADR2(\D/EA_FSM_FFd1_757 ),
    .ADR0(\E/EA_FSM_FFd1_767 ),
    .ADR1(\C/Pres_i_758 ),
    .ADR4(N4),
    .O(codigo_o_0_OBUF_817)
  );
  X_FF #(
    .LOC ( "SLICE_X34Y8" ),
    .INIT ( 1'b0 ))
  \D/EA_FSM_FFd2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D/EA_FSM_FFd2/CLK ),
    .I(\D/EA_FSM_FFd2-In ),
    .O(\D/EA_FSM_FFd2_759 ),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y8" ),
    .INIT ( 64'h8C0C8C0C8C0CBF3F ))
  \D/EA_FSM_FFd2-In2  (
    .ADR1(\D/EA_FSM_FFd1_757 ),
    .ADR2(\C/Pres_i_758 ),
    .ADR3(\C/Temp_i [4]),
    .ADR4(\D/EA_FSM_FFd2_759 ),
    .ADR0(N26),
    .ADR5(\C/Ing_i_816 ),
    .O(\D/EA_FSM_FFd2-In )
  );
  X_FF #(
    .LOC ( "SLICE_X34Y8" ),
    .INIT ( 1'b0 ))
  \D/EA_FSM_FFd1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_D/EA_FSM_FFd1/CLK ),
    .I(\D/EA_FSM_FFd1-In ),
    .O(\D/EA_FSM_FFd1_757 ),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X34Y8" ),
    .INIT ( 64'hF0F0F0F0C0C0C0C0 ))
  \D/EA_FSM_FFd1-In1  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR5(\D/EA_FSM_FFd1_757 ),
    .ADR2(\C/Pres_i_758 ),
    .ADR1(\D/EA_FSM_FFd2_759 ),
    .O(\D/EA_FSM_FFd1-In )
  );
  X_BUF   \codigo_o_2_OBUF/codigo_o_2_OBUF_AMUX_Delay  (
    .I(codigo_o_3_OBUF_680),
    .O(codigo_o_3_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X35Y6" ),
    .INIT ( 64'h03030B0B03030B0B ))
  \codigo_o<2>1  (
    .ADR3(1'b1),
    .ADR2(\E/EA_FSM_FFd1_767 ),
    .ADR4(\D/EA_FSM_FFd2_759 ),
    .ADR0(\D/EA_FSM_FFd1_757 ),
    .ADR1(\E/EA_FSM_FFd2_768 ),
    .ADR5(1'b1),
    .O(codigo_o_2_OBUF_825)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X35Y6" ),
    .INIT ( 32'h34043000 ))
  \codigo_o<3>1  (
    .ADR3(Alarm_o),
    .ADR2(\E/EA_FSM_FFd1_767 ),
    .ADR4(\D/EA_FSM_FFd2_759 ),
    .ADR0(\D/EA_FSM_FFd1_757 ),
    .ADR1(\E/EA_FSM_FFd2_768 ),
    .O(codigo_o_3_OBUF_680)
  );
  X_FF #(
    .LOC ( "SLICE_X35Y8" ),
    .INIT ( 1'b0 ))
  \E/EA_FSM_FFd2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_E/EA_FSM_FFd2/CLK ),
    .I(\E/EA_FSM_FFd2-In ),
    .O(\E/EA_FSM_FFd2_768 ),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X35Y8" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \E/EA_FSM_FFd2-In1_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\E/EA_FSM_FFd2_768 ),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\E/EA_FSM_FFd2-In )
  );
  X_FF #(
    .LOC ( "SLICE_X35Y8" ),
    .INIT ( 1'b0 ))
  \E/EA_FSM_FFd1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_E/EA_FSM_FFd1/CLK ),
    .I(\E/EA_FSM_FFd1-In ),
    .O(\E/EA_FSM_FFd1_767 ),
    .RST(rst_i_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X35Y8" ),
    .INIT ( 64'h55555555AAAAAAAA ))
  \E/EA_FSM_FFd1-In1  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\E/EA_FSM_FFd1_767 ),
    .ADR4(1'b1),
    .ADR0(\E/EA_FSM_FFd2_768 ),
    .O(\E/EA_FSM_FFd1-In )
  );
  X_BUF   \anodos_o_2_OBUF/anodos_o_2_OBUF_AMUX_Delay  (
    .I(anodos_o_3_OBUF_694),
    .O(anodos_o_3_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y11" ),
    .INIT ( 64'hF0FFF0FFF0FFF0FF ))
  \E/EA__n0031<2>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(\E/EA_FSM_FFd1_767 ),
    .ADR2(\E/EA_FSM_FFd2_768 ),
    .ADR5(1'b1),
    .O(anodos_o_2_OBUF_819)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X36Y11" ),
    .INIT ( 32'h0FFF0FFF ))
  \E/EA__n0031<1>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(\E/EA_FSM_FFd1_767 ),
    .ADR2(\E/EA_FSM_FFd2_768 ),
    .O(anodos_o_3_OBUF_694)
  );
  X_BUF   \anodos_o_0_OBUF/anodos_o_0_OBUF_CMUX_Delay  (
    .I(anodos_o_1_OBUF_698),
    .O(anodos_o_1_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X36Y14" ),
    .INIT ( 64'hFCFCFCFCFCFCFCFC ))
  \E/EA__n0031<4>1  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR1(\E/EA_FSM_FFd1_767 ),
    .ADR2(\E/EA_FSM_FFd2_768 ),
    .ADR5(1'b1),
    .O(anodos_o_0_OBUF_823)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X36Y14" ),
    .INIT ( 32'hCFCFCFCF ))
  \E/EA__n0031<3>1  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR1(\E/EA_FSM_FFd1_767 ),
    .ADR2(\E/EA_FSM_FFd2_768 ),
    .O(anodos_o_1_OBUF_698)
  );
  X_BUF   \codigo_o_4_OBUF/codigo_o_4_OBUF_AMUX_Delay  (
    .I(codigo_o_1_OBUF_702),
    .O(codigo_o_1_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X37Y8" ),
    .INIT ( 64'h0000CC000000CC00 ))
  \E/Mram_SSegm41  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(\E/EA_FSM_FFd2_768 ),
    .ADR4(\E/EA_FSM_FFd1_767 ),
    .ADR3(\D/EA_FSM_FFd2_759 ),
    .ADR5(1'b1),
    .O(codigo_o_4_OBUF_821)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X37Y8" ),
    .INIT ( 32'h00003333 ))
  \E/Mram_SSegm111  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(\E/EA_FSM_FFd2_768 ),
    .ADR4(\E/EA_FSM_FFd1_767 ),
    .ADR3(1'b1),
    .O(codigo_o_1_OBUF_702)
  );
  X_BUF   \NlwBufferBlock_clk_i_BUFGP/BUFG/IN  (
    .I(\clk_i_BUFGP/IBUFG_0 ),
    .O(\NlwBufferSignal_clk_i_BUFGP/BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_B/counter_3/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_B/counter_3/CLK )
  );
  X_BUF   \NlwBufferBlock_B/counter_2/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_B/counter_2/CLK )
  );
  X_BUF   \NlwBufferBlock_B/counter_1/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_B/counter_1/CLK )
  );
  X_BUF   \NlwBufferBlock_B/counter_0/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_B/counter_0/CLK )
  );
  X_BUF   \NlwBufferBlock_B/counter_7/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_B/counter_7/CLK )
  );
  X_BUF   \NlwBufferBlock_B/counter_6/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_B/counter_6/CLK )
  );
  X_BUF   \NlwBufferBlock_B/counter_5/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_B/counter_5/CLK )
  );
  X_BUF   \NlwBufferBlock_B/counter_4/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_B/counter_4/CLK )
  );
  X_BUF   \NlwBufferBlock_B/counter_10/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_B/counter_10/CLK )
  );
  X_BUF   \NlwBufferBlock_B/counter_9/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_B/counter_9/CLK )
  );
  X_BUF   \NlwBufferBlock_B/counter_8/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_B/counter_8/CLK )
  );
  X_BUF   \NlwBufferBlock_codigo_o_1_OBUF/I  (
    .I(codigo_o_1_OBUF_0),
    .O(\NlwBufferSignal_codigo_o_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_codigo_o_2_OBUF/I  (
    .I(codigo_o_2_OBUF_825),
    .O(\NlwBufferSignal_codigo_o_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_data_o_o_OBUF/I  (
    .I(data_o_o_OBUF_800),
    .O(\NlwBufferSignal_data_o_o_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_codigo_o_3_OBUF/I  (
    .I(codigo_o_3_OBUF_0),
    .O(\NlwBufferSignal_codigo_o_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Temp_o_0_OBUF/I  (
    .I(\C/Temp_i [0]),
    .O(\NlwBufferSignal_Temp_o_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_codigo_o_4_OBUF/I  (
    .I(codigo_o_4_OBUF_821),
    .O(\NlwBufferSignal_codigo_o_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Temp_o_1_OBUF/I  (
    .I(\C/Temp_i [1]),
    .O(\NlwBufferSignal_Temp_o_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_codigo_o_5_OBUF/I  (
    .I(codigo_o_5_OBUF_0),
    .O(\NlwBufferSignal_codigo_o_5_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Temp_o_2_OBUF/I  (
    .I(\C/Temp_i [2]),
    .O(\NlwBufferSignal_Temp_o_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_codigo_o_6_OBUF/I  (
    .I(codigo_o_6_OBUF_805),
    .O(\NlwBufferSignal_codigo_o_6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Temp_o_3_OBUF/I  (
    .I(\C/Temp_i [3]),
    .O(\NlwBufferSignal_Temp_o_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Temp_o_4_OBUF/I  (
    .I(\C/Temp_i [4]),
    .O(\NlwBufferSignal_Temp_o_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Ing_o_OBUF/I  (
    .I(\C/Ing_i_816 ),
    .O(\NlwBufferSignal_Ing_o_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_codigo_o_0_OBUF/I  (
    .I(codigo_o_0_OBUF_817),
    .O(\NlwBufferSignal_codigo_o_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_anodos_o_0_OBUF/I  (
    .I(anodos_o_0_OBUF_823),
    .O(\NlwBufferSignal_anodos_o_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_anodos_o_1_OBUF/I  (
    .I(anodos_o_1_OBUF_0),
    .O(\NlwBufferSignal_anodos_o_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_anodos_o_2_OBUF/I  (
    .I(anodos_o_2_OBUF_819),
    .O(\NlwBufferSignal_anodos_o_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_anodos_o_3_OBUF/I  (
    .I(anodos_o_3_OBUF_0),
    .O(\NlwBufferSignal_anodos_o_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Pres_o_OBUF/I  (
    .I(\C/Pres_i_758 ),
    .O(\NlwBufferSignal_Pres_o_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_A/n_reg_1/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_A/n_reg_1/CLK )
  );
  X_BUF   \NlwBufferBlock_A/n_reg_2/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_A/n_reg_2/CLK )
  );
  X_BUF   \NlwBufferBlock_A/n_reg_0/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_A/n_reg_0/CLK )
  );
  X_BUF   \NlwBufferBlock_A/n_reg_3/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_A/n_reg_3/CLK )
  );
  X_BUF   \NlwBufferBlock_A/b_reg_8/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_A/b_reg_8/CLK )
  );
  X_BUF   \NlwBufferBlock_A/b_reg_7/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_A/b_reg_7/CLK )
  );
  X_BUF   \NlwBufferBlock_A/estado_actl_FSM_FFd2/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_A/estado_actl_FSM_FFd2/CLK )
  );
  X_BUF   \NlwBufferBlock_A/estado_actl_FSM_FFd1/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_A/estado_actl_FSM_FFd1/CLK )
  );
  X_BUF   \NlwBufferBlock_A/filtro_reg_3/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_A/filtro_reg_3/CLK )
  );
  X_BUF   \NlwBufferBlock_A/filtro_reg_3/IN  (
    .I(\A/filtro_reg [4]),
    .O(\NlwBufferSignal_A/filtro_reg_3/IN )
  );
  X_BUF   \NlwBufferBlock_A/filtro_reg_2/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_A/filtro_reg_2/CLK )
  );
  X_BUF   \NlwBufferBlock_A/filtro_reg_2/IN  (
    .I(\A/filtro_reg [3]),
    .O(\NlwBufferSignal_A/filtro_reg_2/IN )
  );
  X_BUF   \NlwBufferBlock_A/filtro_reg_1/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_A/filtro_reg_1/CLK )
  );
  X_BUF   \NlwBufferBlock_A/filtro_reg_1/IN  (
    .I(\A/filtro_reg [2]),
    .O(\NlwBufferSignal_A/filtro_reg_1/IN )
  );
  X_BUF   \NlwBufferBlock_A/filtro_reg_0/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_A/filtro_reg_0/CLK )
  );
  X_BUF   \NlwBufferBlock_A/filtro_reg_0/IN  (
    .I(\A/filtro_reg [1]),
    .O(\NlwBufferSignal_A/filtro_reg_0/IN )
  );
  X_BUF   \NlwBufferBlock_A/f_ps2c_reg/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_A/f_ps2c_reg/CLK )
  );
  X_BUF   \NlwBufferBlock_A/filtro_reg_7/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_A/filtro_reg_7/CLK )
  );
  X_BUF   \NlwBufferBlock_A/filtro_reg_7/IN  (
    .I(ps2_clk_IBUF_0),
    .O(\NlwBufferSignal_A/filtro_reg_7/IN )
  );
  X_BUF   \NlwBufferBlock_A/filtro_reg_6/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_A/filtro_reg_6/CLK )
  );
  X_BUF   \NlwBufferBlock_A/filtro_reg_6/IN  (
    .I(\A/filtro_reg [7]),
    .O(\NlwBufferSignal_A/filtro_reg_6/IN )
  );
  X_BUF   \NlwBufferBlock_A/filtro_reg_5/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_A/filtro_reg_5/CLK )
  );
  X_BUF   \NlwBufferBlock_A/filtro_reg_5/IN  (
    .I(\A/filtro_reg [6]),
    .O(\NlwBufferSignal_A/filtro_reg_5/IN )
  );
  X_BUF   \NlwBufferBlock_A/filtro_reg_4/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_A/filtro_reg_4/CLK )
  );
  X_BUF   \NlwBufferBlock_A/filtro_reg_4/IN  (
    .I(\A/filtro_reg [5]),
    .O(\NlwBufferSignal_A/filtro_reg_4/IN )
  );
  X_BUF   \NlwBufferBlock_A/b_reg_10/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_A/b_reg_10/CLK )
  );
  X_BUF   \NlwBufferBlock_A/b_reg_9/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_A/b_reg_9/CLK )
  );
  X_BUF   \NlwBufferBlock_A/b_reg_6/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_A/b_reg_6/CLK )
  );
  X_BUF   \NlwBufferBlock_A/b_reg_5/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_A/b_reg_5/CLK )
  );
  X_BUF   \NlwBufferBlock_A/b_reg_4/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_A/b_reg_4/CLK )
  );
  X_BUF   \NlwBufferBlock_C/Temp_i_2/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_C/Temp_i_2/CLK )
  );
  X_BUF   \NlwBufferBlock_C/Temp_i_1/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_C/Temp_i_1/CLK )
  );
  X_BUF   \NlwBufferBlock_C/Temp_i_0/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_C/Temp_i_0/CLK )
  );
  X_BUF   \NlwBufferBlock_B/clk_o/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_B/clk_o/CLK )
  );
  X_BUF   \NlwBufferBlock_A/b_reg_3/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_A/b_reg_3/CLK )
  );
  X_BUF   \NlwBufferBlock_A/b_reg_2/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_A/b_reg_2/CLK )
  );
  X_BUF   \NlwBufferBlock_A/b_reg_1/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_A/b_reg_1/CLK )
  );
  X_BUF   \NlwBufferBlock_A/b_reg_0/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_A/b_reg_0/CLK )
  );
  X_BUF   \NlwBufferBlock_C/Pres_i/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_C/Pres_i/CLK )
  );
  X_BUF   \NlwBufferBlock_C/Ing_i/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_C/Ing_i/CLK )
  );
  X_BUF   \NlwBufferBlock_C/Temp_i_4/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_C/Temp_i_4/CLK )
  );
  X_BUF   \NlwBufferBlock_C/Temp_i_3/CLK  (
    .I(clk_i_BUFGP),
    .O(\NlwBufferSignal_C/Temp_i_3/CLK )
  );
  X_BUF   \NlwBufferBlock_D/EA_FSM_FFd2/CLK  (
    .I(\B/clk_o_756 ),
    .O(\NlwBufferSignal_D/EA_FSM_FFd2/CLK )
  );
  X_BUF   \NlwBufferBlock_D/EA_FSM_FFd1/CLK  (
    .I(\B/clk_o_756 ),
    .O(\NlwBufferSignal_D/EA_FSM_FFd1/CLK )
  );
  X_BUF   \NlwBufferBlock_E/EA_FSM_FFd2/CLK  (
    .I(\B/clk_o_756 ),
    .O(\NlwBufferSignal_E/EA_FSM_FFd2/CLK )
  );
  X_BUF   \NlwBufferBlock_E/EA_FSM_FFd1/CLK  (
    .I(\B/clk_o_756 ),
    .O(\NlwBufferSignal_E/EA_FSM_FFd1/CLK )
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

