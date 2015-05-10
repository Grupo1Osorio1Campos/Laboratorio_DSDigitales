`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:03:16 04/29/2015 
// Design Name: 
// Module Name:    FiltroTop 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module FiltroTop#(parameter largo=22,mag=8,pres=14) (
	input signed [largo:0] data_i,
	input wire clk,
	input wire rst,
	output signed [largo:0] data_out_1,data_out_2,data_out_3
    );

wire signed [largo:0] data_out1,data_out2,data_out3;

//Filtros frecuencias Bajas (20Hz a 200Hz)
Filtro #(.largo(largo),.mag(mag),.pres(pres)) filtro_pa1(
//original.data_i(data_i), 
.data_i(data_out1), 
.clk(clk),
.rst(rst),
.a1(23'sh007FBE),
.a2(23'sh7FC042),
.b0(23'sh003FDF),
.b1(23'shFF8042),
.b2(23'sh003FDF),
//original.data_out(data_out1)
.data_out(data_out_1)
);

Filtro #(.largo(largo),.mag(mag),.pres(pres)) filtro_pb1(
//original.data_i(data_out1), 
.data_i(data_i), 
.clk(clk),
.rst(rst),
.a1(23'sh007D70),
.a2(23'sh7FC288),
.b0(23'sh000003),
.b1(23'sh000006),
.b2(23'sh000003),
//original.data_out(data_out_1)
.data_out(data_out1)
);

//Filtros frecuencias Medias (200Hz a 5kHz)
Filtro #(.largo(largo),.mag(mag),.pres(pres)) filtro_pa2(
.data_i(data_i), 
.clk(clk),
.rst(rst),
.a1(23'sh007D70),
.a2(23'sh7FC288),
.b0(23'sh004000),
.b1(23'sh7F8000),
.b2(23'sh004000),
.data_out(data_out2)
);

Filtro #(.largo(largo),.mag(mag),.pres(pres)) filtro_pb2(
.data_i(data_out2), 
.clk(clk),
.rst(rst),
.a1(23'sh00423D),
.a2(23'sh7FE876),
.b0(23'sh000552),
.b1(23'sh000AA4),
.b2(23'sh000552),
.data_out(data_out_2)
);

//Filtros frecuencias Altas (5kHz a 20kHz)
Filtro #(.largo(largo),.mag(mag),.pres(pres)) filtro_pa3(
.data_i(data_i), 
.clk(clk),
.rst(rst),
.a1(23'sh00423D),
.a2(23'sh7FE876),
.b0(23'sh002671),
.b1(23'sh7FB323),
.b2(23'sh002671),
.data_out(data_out3)
);

Filtro #(.largo(largo),.mag(mag),.pres(pres)) filtro_pb3(
.data_i(data_out3), 
.clk(clk),
.rst(rst),
.a1(23'sh7F9A2E),
.a2(23'sh7FD5A7),
.b0(23'sh00340B),
.b1(23'sh006810),
.b2(23'sh00340B),
.data_out(data_out_3)
);

endmodule
/* 8 magnitud y 14 precision
pa 20	
.a0(23'sh004000),
.a1(23'sh007FBE),
.a2(23'shFFC042),
.b0(23'sh003FDF),
.b1(23'shFF8042),
.b2(23'sh003FDF),
pb 200	
.a0(23'sh004000),
.a1(23'sh007D70),
.a2(23'shFFC288),
.b0(23'sh000003),
.b1(23'sh000006),
.b2(23'sh000003),
pa 200	
.a0(23'sh004000),
.a1(23'sh007D70),
.a2(23'shFFC288),
.b0(23'sh004000),
.b1(23'shFF8000),
.b2(23'sh004000),
pb 5k	
.a0(23'sh004000),
.a1(23'sh00423D),
.a2(23'shFFE876),
.b0(23'sh000552),
.b1(23'sh000AA4),
.b2(23'sh000552),
pa 5k	
.a0(23'sh004000),
.a1(23'sh00423D),
.a2(23'shFFE876),
.b0(23'sh002671),
.b1(23'shFFB323),
.b2(23'sh002671),
pb 20k	
.a0(23'sh004000),
.a1(23'shFF9A2E),
.a2(23'shFFD5A7),
.b0(23'sh00340B),
.b1(23'sh006810),
.b2(23'sh00340B),

*/




/*
pa 20	
.a0(23'sh010000),
.a1(23'shFE0107),
.a2(23'sh00FEF9),
.b0(23'sh00FF7C),
.b1(23'shFE0107),
.b2(23'sh00FF7C),
pb 200	
.a0(23'sh010000),
.a1(23'shFE0A3E),
.a2(23'sh00F5E3),
.b0(23'sh00000D),
.b1(23'sh00001A),
.b2(23'sh00000D),
pa 200	
.a0(23'sh010000),
.a1(23'shFE0A3E),
.a2(23'sh00F5E3),
.b0(23'sh010000),
.b1(23'shFE0000),
.b2(23'sh010000),
pb 5k	
.a0(23'sh010000),
.a1(23'shFEF70B),
.a2(23'sh005E28),
.b0(23'sh001549),
.b1(23'sh002A92),
.b2(23'sh001549),
pa 5k	
.a0(23'sh010000),
.a1(23'shFEF70B),
.a2(23'sh005E28),
.b0(23'sh0099C7),
.b1(23'shFECC8C),
.b2(23'sh0099C7),
pb 20k	
.a0(23'sh010000),
.a1(23'sh01974B),
.a2(23'sh00A965),
.b0(23'sh00D02D),
.b1(23'sh01A041),
.b2(23'sh00D02D),

opcion 2, suma sin negativos
pa 20	
.a0(23'sh010000),
.a1(23'sh01FEF9),
.a2(23'shFF0107),
.b0(23'sh00FF7C),
.b1(23'shFE0107),
.b2(23'sh00FF7C),
pb 200	
.a0(23'sh010000),
.a1(23'sh01F5C2),
.a2(23'shFF0A1D),
.b0(23'sh00000D),
.b1(23'sh00001A),
.b2(23'sh00000D),
pa 200	
.a0(23'sh010000),
.a1(23'sh01F5C2),
.a2(23'shFF0A1D),
.b0(23'sh010000),
.b1(23'sh7E0000),
.b2(23'sh010000),
pb 5k	
.a0(23'sh010000),
.a1(23'sh0108F5),
.a2(23'shFFA1D8),
.b0(23'sh001549),
.b1(23'sh002A92),
.b2(23'sh001549),
pa 5k	
.a0(23'sh010000),
.a1(23'sh0108F5),
.a2(23'shFFA1D8),
.b0(23'sh0099C7),
.b1(23'shFECC8C),
.b2(23'sh0099C7),
pb 20k	
.a0(23'sh010000),
.a1(23'shFE68B5),
.a2(23'shFF569B),
.b0(23'sh00D02D),
.b1(23'sh01A041),
.b2(23'sh00D02D),

*/