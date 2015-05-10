`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:41:46 04/29/2015 
// Design Name: 
// Module Name:    multiplicador 
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
module multiplicador#(parameter largo=24,mag=8,pres=16)(
	input signed [largo:0] a, b,
	output reg signed [largo:0] y2
	);

wire signed [(2*largo+1):0] y1;
wire signed [largo:0] y;
wire o,u;
assign y1 = a * b;
assign y=y1[(2*pres+mag):pres];


assign o=(a=={(largo+1){1'b0}} || b=={(largo+1){1'b0}}) ? 1'b0:
(a[largo]==b[largo] && y[largo]) ? 1'b1 :
1'b0;

assign u=(a=={(largo+1){1'b0}} || b=={(largo+1){1'b0}}) ? 1'b0:
(a[largo]!=b[largo] && !y[largo]) ? 1'b1:
//(a[largo] && b[largo] && !y[largo]) ? 1'b1 :
1'b0;

always@*
y2 = o ? {1'b0,{(largo){1'b1}}} : 
u ? {1'b1,{(largo){1'b0}}} : 
y;
endmodule
