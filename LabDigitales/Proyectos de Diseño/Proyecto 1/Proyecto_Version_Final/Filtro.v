`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:40:55 04/29/2015 
// Design Name: 
// Module Name:    Filtro 
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
module Filtro#(parameter largo=24,mag=8,pres=16) (
	input signed [largo:0] data_i,
	input wire clk,
	input wire rst,
	input signed [largo:0] b0,b1,b2,a1,a2,
	output signed [largo:0] data_out
    );

wire signed [largo:0] data_n1,data_n2,data_n3,data_n4,data_n5,data_n6,data_n7,data_r1,data_r2,data_fk;

//suma de entrada del filtro
Suma #(.largo(largo)) Suma_in (
    .a(data_i), 
    .b(data_n7), 
    .y2(data_fk) 
    );

//suma en la etapa de salida del fitlro	
Suma #(.largo(largo)) Suma_out (
    .a(data_n1), 
    .b(data_n2), 
    .y2(data_out) 
    );
	
//suma de valores de la multiplicacion de las constantes -a1 y -a2 con
//el dato de entrada del filtro
Suma #(.largo(largo)) Suma_a (
    .a(data_n5), 
    .b(data_n6), 
    .y2(data_n7) 
    );
	 
//suma de los valores de la multiplicacion de las constantes b1 y b2 con 
//el dato de entrada del filtro	 
Suma #(.largo(largo)) Suma_b (
    .a(data_n3), 
    .b(data_n4), 
    .y2(data_n2) 
    );

//multiplicacion del dato de entrada con b0
multiplicador #(.largo(largo),.mag(mag),.pres(pres)) Multi_b0 (
    .a(data_fk), 
    .b(b0),  
    .y2(data_n1) 
    );

//multiplicacion del dato del registro R1 con b1
multiplicador #(.largo(largo),.mag(mag),.pres(pres)) Multi_b1 (
    .a(data_r1), 
    .b(b1),  
    .y2(data_n3) 
    );

//multiplicacion del dato del registro R1 con b2
multiplicador #(.largo(largo),.mag(mag),.pres(pres)) Multi_b2 (
    .a(data_r2), 
    .b(b2),  
    .y2(data_n4) 
    );

//multiplicacion del dato del registro R2 con a1
multiplicador #(.largo(largo),.mag(mag),.pres(pres)) Multi_a1 (
    .a(data_r1), 
    .b(a1),  
    .y2(data_n6) 
    );

//multiplicacion del dato del registro R2 con a2
multiplicador #(.largo(largo),.mag(mag),.pres(pres)) Multi_a2 (
    .a(data_r2), 
    .b(a2),  
    .y2(data_n5) 
    );
	 
//registro intermedio que contiene el dato a multiplicar con las constante a1 y b1
Registro #(.largo(largo)) R1 (
    .clk(clk), 
    .rst(rst), 
    .data_i(data_fk), 
    .data_o(data_r1)
    );	 

//registro intermedio que contiene el dato a multiplicar con las constante a2 y b2
Registro #(.largo(largo)) R2 (
    .clk(clk), 
    .rst(rst), 
    .data_i(data_r1), 
    .data_o(data_r2)
    );

endmodule
