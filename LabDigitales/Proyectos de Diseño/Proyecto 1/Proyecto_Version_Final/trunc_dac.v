`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:53:49 04/28/2015 
// Design Name: 
// Module Name:    trunc_dac 
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
module trunc_dac #(parameter largo=20,largo_sal=11)(
	input wire signed [largo:0] a,b,
	output reg signed [largo_sal:0] y2
	);
wire o,u; //Overflow y Underflow
reg [largo:0] y3;
wire signed [largo+1:0] y1; //La suma genera un bit más que representa el signo
assign y1 = a + b;

assign o=(!a[largo] & !b[largo] & y1[largo]) ? 1'b1://Si el 'a' y 'b' es + y 'y' es -, Overflow
1'b0;
assign u=(a[largo] & b[largo] & !y1[largo]) ? 1'b1://Si el 'a' y 'b' es - y 'y' es +, Underflow
1'b0;

always@*
begin
y3 = o ? {1'b0,{(largo_sal){1'b1}}} : //Si hay Overflow, 'y2' es 01111111111111
u ? {1'b1,{(largo_sal){1'b0}}} : //Si hay Underflow, 'y2' es 10000000000000
y1[largo:0];//si no hay Overflow ni Underflow, resuelve la Suma.
y2 [largo_sal:0] = y3 [13:2]; // el dato de salida para el DAC se trunca a 12 bits como se necesita
end


endmodule
