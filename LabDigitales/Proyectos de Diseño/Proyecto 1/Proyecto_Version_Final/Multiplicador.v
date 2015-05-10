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
assign y=y1[(2*pres+mag):pres]; //La multiplicación genera un resultado del doble del tamaño.


assign o=(a=={(largo+1){1'b0}} || b=={(largo+1){1'b0}}) ? 1'b0: //Si 'a' y 'b' son ceros, se resuelve la multiplicación
(a[largo]==b[largo] && y[largo]) ? 1'b1 ://Si 'a' y 'b' son del mismo signo, y 'y' es negativo, overflow.
1'b0;

assign u=(a=={(largo+1){1'b0}} || b=={(largo+1){1'b0}}) ? 1'b0: //Si 'a' y 'b' son ceros, se resuelve la multiplicación
(a[largo]!=b[largo] && !y[largo]) ? 1'b1: //Si 'a' y 'b' son signos opuestos, y 'y' es positivo, underflow.
//(a[largo] && b[largo] && !y[largo]) ? 1'b1 :
1'b0;

always@*
y2 = o ? {1'b0,{(largo){1'b1}}} : //Si hay Overflow, 'y2' es 01111111111111
u ? {1'b1,{(largo){1'b0}}} : //Si hay Underflow, 'y2' es 10000000000000
y; //si no hay Overflow ni Underflow, resuelve la multiplicacion.
endmodule
