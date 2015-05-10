`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:41:45 04/13/2015 
// Design Name: 
// Module Name:    filter_1 
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
module filter_pb5000#(parameter largo=24,mag=8,pres=16) (
	input  signed [largo:0] data_i,
	input wire clk,
	input wire rst,
	output signed [largo:0] data_out
    );
	 
wire signed [largo:0] data_n1,data_n2,data_n3,data_n4,data_n5,data_n6,data_n7,data_r1,data_r2,data_fk;

localparam
a1=23'sh7EF70B,
a2=23'sh005E28,
b0=23'sh001549,
b1=23'sh002A92,
b2=23'sh001549;

sumador #(.largo(largo)) Suma_in (
    .a(data_i), 
    .b(data_n7), 
    .y2(data_fk) 
    );
	
sumador #(.largo(largo)) Suma_out (
    .a(data_n1), 
    .b(data_n2), 
    .y2(data_out) 
    );
	 
sumador #(.largo(largo)) Suma_a (
    .a(data_n5), 
    .b(data_n6), 
    .y2(data_n7) 
    );
	 
sumador #(.largo(largo)) Suma_b (
    .a(data_n3), 
    .b(data_n4), 
    .y2(data_n2) 
    );

multiplicador #(.largo(largo),.mag(mag),.pres(pres)) Multi_b0 (
    .a(data_fk), 
    .b(b0),  
    .y2(data_n1) 
    );

multiplicador #(.largo(largo),.mag(mag),.pres(pres)) Multi_b1 (
    .a(data_r1), 
    .b(b1),  
    .y2(data_n3) 
    );

multiplicador #(.largo(largo),.mag(mag),.pres(pres)) Multi_b2 (
    .a(data_r2), 
    .b(b2),  
    .y2(data_n4) 
    );

multiplicador #(.largo(largo),.mag(mag),.pres(pres)) Multi_a1 (
    .a(data_r1), 
    .b(-a1),  
    .y2(data_n6) 
    );

multiplicador #(.largo(largo),.mag(mag),.pres(pres)) Multi_a2 (
    .a(data_r2), 
    .b(-a2),  
    .y2(data_n5) 
    );
	 
resgister_fil #(.largo(largo)) R1 (
    .clk(clk), 
    .rst(rst), 
    .data_i(data_fk), 
    .data_o(data_r1)
    );	 

resgister_fil #(.largo(largo)) R2 (
    .clk(clk), 
    .rst(rst), 
    .data_i(data_r1), 
    .data_o(data_r2)
    );
	 
endmodule
