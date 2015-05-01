`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:41:17 04/29/2015 
// Design Name: 
// Module Name:    Suma 
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
module Suma#(parameter largo=20)(
	input wire signed [largo:0] a,b,
	output reg signed [largo:0] y2
	);
wire o,u;
wire signed [largo+1:0] y1;
assign y1 = a + b;

assign o=(!a[largo] & !b[largo] & y1[largo]) ? 1'b1:
1'b0;
assign u=(a[largo] & b[largo] & !y1[largo]) ? 1'b1:
1'b0;

always@*
y2 = o ? {1'b0,{(largo){1'b1}}} : 
u ? {1'b1,{(largo){1'b0}}} : 
y1[largo:0];

endmodule
