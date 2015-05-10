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
module filter_1#(parameter l=24,m=8,p=16) (
	input  signed [l:0] data_i,
	input wire clk,
	input wire rst,
	input wire [l:0] b0,b1,b2,a1,a2,
	output signed [l:0] data_out
    );
	 
wire signed [l:0] data_n1;
wire signed [l:0] data_n2;
wire signed [l:0] data_n3;
wire signed [l:0] data_n4;
wire signed [l:0] data_n5;
wire signed [l:0] data_n6;
wire signed [l:0] data_n7;
wire signed [l:0] data_r1;
wire signed [l:0] data_r2;
wire signed [l:0] data_fk;

sumador #(.l(l)) Suma_in (
    .a(data_i), 
    .b(data_n7), 
    .y2(data_fk) 
    );
	
sumador #(.l(l)) Suma_out (
    .a(data_n1), 
    .b(data_n2), 
    .y2(data_out) 
    );
	 
sumador #(.l(l)) Suma_a (
    .a(data_n5), 
    .b(data_n6), 
    .y2(data_n7) 
    );
	 
sumador #(.l(l)) Suma_b (
    .a(data_n3), 
    .b(data_n4), 
    .y2(data_n2) 
    );

multiplicador #(.l(l),.m(m),.p(p)) Multi_b0 (
    .a(data_fk), 
    .b(b0),  
    .y2(data_n1) 
    );

multiplicador #(.l(l),.m(m),.p(p)) Multi_b1 (
    .a(data_r1), 
    .b(b1),  
    .y2(data_n3) 
    );

multiplicador #(.l(l),.m(m),.p(p)) Multi_b2 (
    .a(data_r2), 
    .b(b2),  
    .y2(data_n4) 
    );

multiplicador #(.l(l),.m(m),.p(p)) Multi_a1 (
    .a(data_r1), 
    .b(-a1),  
    .y2(data_n6) 
    );

multiplicador #(.l(l),.m(m),.p(p)) Multi_a2 (
    .a(data_r2), 
    .b(-a2),  
    .y2(data_n5) 
    );
	 
resgister_fil #(.l(l)) R1 (
    .clk(clk), 
    .rst(rst), 
    .data_i(data_fk), 
    .data_o(data_r1)
    );	 

resgister_fil #(.l(l)) R2 (
    .clk(clk), 
    .rst(rst), 
    .data_i(data_r1), 
    .data_o(data_r2)
    );
	 
endmodule
