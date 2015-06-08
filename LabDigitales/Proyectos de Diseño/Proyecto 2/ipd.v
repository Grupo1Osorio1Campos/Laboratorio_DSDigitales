`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:25:07 05/18/2015 
// Design Name: 
// Module Name:    ipd_try 
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
module ipd #(parameter largo=7)(
	input clk_i,rst_i,
	input signed [largo:0] R,Y_i,
	output signed [largo:0] IPD   
	);
	 
localparam 
KP = 25'sh00012,
KI = 25'sh00007,
KD = 25'sh00096;


//wire clk_o;
wire signed [largo:0] I1,I2,Y1,Y2,IPD1;
wire signed [largo:0] I,P,D,E,Y;

//Error
registro_nbits #(.largo(largo)) error_reg(
    .clk(clk_i), 
    .rst(rst_i), 
    .data_i(Y_i), 
    .data_o(Y)
    );
	 
Suma #(.largo(largo)) error (
    .a(R), 
    .b(~(Y)), 
    .y2(E)
    );

//Integrador
multiplicador #(.largo(largo))  integrador_mul(
    .a(KI), 
    .b(E), 
    .y2(I2)
    );

Suma #(.largo(largo)) integrador_sum (
    .a(I2), 
    .b(I1), 
    .y2(I)
    );

registro_nbits #(.largo(largo)) integrador_reg(
    .clk(clk_i), 
    .rst(rst_i), 
    .data_i(I), 
    .data_o(I1)
    );

//Proporcional
multiplicador #(.largo(largo))  proporcional_mul(
    .a(KP), 
    .b(Y), 
    .y2(P)
    );


//Derivador
Suma #(.largo(largo)) derivador_sum (
    .a(Y), 
    .b(~(Y1)), 
    .y2(Y2)
    );
	 
registro_nbits #(.largo(largo)) derivador_reg(
    .clk(clk_i), 
    .rst(rst_i), 
    .data_i(Y), 
    .data_o(Y1)
    );

multiplicador #(.largo(largo))  derivador_mul(
    .a(KD), 
    .b(Y2), 
    .y2(D)
    );
	 
//Suma del IPD
Suma #(.largo(largo)) sal_parc (
    .a(I), 
    .b(~(P)), 
    .y2(IPD1)
    );

Suma #(.largo(largo))  salida (
    .a(IPD1), 
    .b(~(D)), 
    .y2(IPD)
    );
	 
endmodule
