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
module multiplicador#(parameter largo=24)(
	input signed [largo:0] a, b,
	output reg signed [largo:0] y2
	);

localparam
max=25'sh0FFFFF;

wire signed [(2*largo+1):0] y1;
wire signed [largo:0] y;
wire [1:0] ou;
assign y1 = a * b;
assign y=y1[largo:0]; //La multiplicación genera un resultado del doble del tamaño.

assign ou = (a=={(largo+1){1'b0}} || b=={(largo+1){1'b0}}) ? 2'h0: //Si 'a' y 'b' son ceros 
				(y1>max) ? 2'h1 ://overflow.
				(y1<~(max)) ? 2'h2: //underflow.
				((y1<=max) && (y1>=~(max))) ? 2'h3: //se resuelve la multiplicación
				2'h0;

always@*
y2 = (ou==2'h0) ? {(largo+1){1'b0}} : //Si hay multiplicacion por ceros
		(ou==2'h1) ? {1'b0,{(largo){1'b1}}} : //Si hay Overflow, 'y2' es 0111 1111
		(ou==2'h2) ? {1'b1,{(largo-1){1'b0}},1'b1} : //Si hay Underflow, 'y2' es 1000 0001
		(ou==2'h3) ? y:
		{(largo+1){1'b0}};
		//y;
	
endmodule


/*module multiplicador#(parameter largo=24)(
	input signed [largo:0] a, b,
	output reg signed [largo:0] y2,
	output reg signed [(2*largo+1):0] y1	
	);

//wire signed [(2*largo+1):0] y1;
reg signed [largo:0] y;
reg [1:0] ou;
//assign y1 = a * b;
//assign y=y1[largo:0]; //La multiplicación genera un resultado del doble del tamaño.

always@(a or b)
y1 = a * b;
if(a=={(largo+1){1'b0}} || b=={(largo+1){1'b0}})
	assign ou=2'h0;
else if (y1>{{(largo+1){1'b0}},{(largo+1){1'b1}}}) begin
	ou = 2'h1; end
else if (y1<{{(largo+1){1'b1}},{(largo+1){1'b0}}}) begin
	ou = 2'h2; end 
else if (y1<={{(largo+1){1'b0}},{(largo+1){1'b1}}} && y1>={{(largo+1){1'b1}},{(largo+1){1'b0}}}) begin
	ou = 2'h3; end

always@*
y=y1[largo:0];
	case(ou)
		2'h0: assign y2 = {1'b0,{(largo){1'b1}}}; //Si hay Overflow, 'y2' es 0111 1111
		2'h1: assign y2 = {1'b1,{(largo-1){1'b0}},1'b1}; //Si hay Underflow, 'y2' es 1000 0001
		2'h2: assign y2 = y; //si no hay Overflow ni Underflow, resuelve la multiplicacion.
		2'h3: assign y2 = {{(largo+1){1'b0}}}; //si hay multiplicacion por cero.
		default: assign y2 = {{(largo+1){1'b0}}};
	endcase
endmodule
*/
//{{(largo+1){1'b0}},{(largo+1){1'b1}}}
//{{(largo+1){1'b1}},{(largo+1){1'b0}}}
/*
module multiplicador#(parameter largo=24)(
	input signed [largo:0] a, b,
	output reg signed [largo:0] y2
	);

wire signed [(2*largo+1):0] y1;
wire signed [largo:0] y;
wire o,u;
assign y1 = a * b;
assign y=y1[largo:0]; //La multiplicación genera un resultado del doble del tamaño.


assign o=(a=={(largo+1){1'b0}} || b=={(largo+1){1'b0}}) ? 1'b0: //Si 'a' y 'b' son ceros, se resuelve la multiplicación
(a[largo]==b[largo] && y[largo]) ? 1'b1 ://Si 'a' y 'b' son del mismo signo, y 'y' es negativo, overflow.
1'b0;

assign u=(a=={(largo+1){1'b0}} || b=={(largo+1){1'b0}}) ? 1'b0: //Si 'a' y 'b' son ceros, se resuelve la multiplicación
(a[largo]!=b[largo] && !y[largo]) ? 1'b1: //Si 'a' y 'b' son signos opuestos, y 'y' es positivo, underflow.
//(a[largo] && b[largo] && !y[largo]) ? 1'b1 :
1'b0;

always@*
y2 = o ? {1'b0,{(largo){1'b1}}} : //Si hay Overflow, 'y2' es 01111111111111
u ? {1'b1,{(largo-1){1'b0}},1'b1} : //Si hay Underflow, 'y2' es 10000000000000
y; //si no hay Overflow ni Underflow, resuelve la multiplicacion.
endmodule

*/