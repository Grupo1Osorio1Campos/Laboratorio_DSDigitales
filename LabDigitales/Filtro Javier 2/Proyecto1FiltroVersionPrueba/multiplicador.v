`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:20:27 04/15/2015 
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
// additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module multiplicador#(parameter l=24,m=8,p=16)(a,b,y2);
input signed [l:0] a, b;
output reg signed [l:0] y2;

wire signed [(2*l+1):0] y1;
wire signed [l:0] y;
wire o,u;
assign y1 = a * b;
assign y=y1[(2*p+m):p];

assign o=(a[l]==!b[l] && y[l]==0 && a!=={(l+1){1'b0}} && b!=={(l+1){1'b0}}) ? 1'b1:
(a[l]==0 && b[l]==0  && y[l]==1) ? 1'b1:
1'b0;
assign u=(a[l]==1 && b[l]==1  && y[l]==0) ? 1'b1 : 
1'b0;

always@*
y2=(o==1) ? {1'b0,{(l){1'b1}}} : 
(u==1) ? {1'b1,{(l){1'b0}}} : 
y1[(2*p+m):p];

endmodule
