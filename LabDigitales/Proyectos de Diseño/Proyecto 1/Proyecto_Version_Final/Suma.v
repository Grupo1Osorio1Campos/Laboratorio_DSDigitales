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
wire o,u; //Overflow y Underflow
wire signed [largo+1:0] y1; //La suma genera un bit más que representa el signo
assign y1 = a + b;

assign o=(!a[largo] & !b[largo] & y1[largo]) ? 1'b1://Si el 'a' y 'b' es + y 'y' es -, Overflow
1'b0;
assign u=(a[largo] & b[largo] & !y1[largo]) ? 1'b1://Si el 'a' y 'b' es - y 'y' es +, Underflow
1'b0;

always@*
y2 = o ? {1'b0,{(largo){1'b1}}} : //Si hay Overflow, 'y2' es 01111111111111
u ? {1'b1,{(largo){1'b0}}} : //Si hay Underflow, 'y2' es 10000000000000
y1[largo:0];//si no hay Overflow ni Underflow, resuelve la Suma.

endmodule
/*
module Suma#(parameter largo=20)(
	input wire signed [largo:0] a,b,
	output reg signed [largo:0] y2
	);
wire [1:0] sum;
wire signed [largo+1:0] y1;
assign y1 = a + b;
assign sum=a[largo]|b[largo]|y1[largo];

always@*
begin
	case (sum)
			2'b01: begin//overflow
							y2 = {1'b0,{(largo){1'b1}}};
					  end
			2'b10: begin//overflow
							y2 = {1'b1,{(largo-1){1'b0}},1'b1};
					  end
			default: begin
							y2=y1[largo:0];
						end
	endcase
end
endmodule
*/