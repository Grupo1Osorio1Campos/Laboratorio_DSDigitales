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
module multiplicador#(parameter largo=24,mag=8,pres=16)(a,b,y2);
input signed [largo:0] a, b;
output signed [largo:0] y2;

reg signed [(2*largo+1):0] y1;
reg signed [largo:0] y;
always @*
begin
	y1 = a * b;
	y=y1[(2*pres+mag):pres];
	if(a[largo]==1 && b[largo]==0  && y[largo]==0 && b!=={(largo+1){1'b0}})
		begin
		y={1'b0,{(largo){1'b1}}};
		end
	if(a[largo]==0 && b[largo]==1  && y[largo]==0 && a!=={(largo+1){1'b0}})
		begin
		y={1'b0,{(largo){1'b1}}};
		end
	if(a[largo]==0 && b[largo]==0  && y[largo]==1)
		begin
		y={1'b0,{(largo){1'b1}}};
		end
	if(a[largo]==1 && b[largo]==1  && y[largo]==0)
		begin
		y={1'b1,{(largo){1'b0}}};
		end
	
end

assign y2[largo:0] = y [largo:0];
endmodule

/*
module multiplicador#(parameter largo=24,mag=8,pres=16)(a,b,y);
	//Operandos
	input wire signed [largo:0] a;
	input wire signed [largo:0] b;
	//Resultado
	output reg signed [largo:0] y;
	//Multiplicación binaria 
	wire signed [2*largo+1:0] mult;
	assign mult = a*b;
	//Condición de overflow
	wire overflow, underflow;
	assign overflow = 	(a=={largo+1{1'b0}} | b=={largo+1{1'b0}})? 1'b0: //Caso con cero
				(a[largo]==b[largo]) ? (|mult[2*largo:(2*pres)+mag]) //Signo positivo
				: 1'b0 ;				//Overflow si no hay extensión de signo en el 2do bloque de magnitud
	assign underflow = 	(a=={largo+1{1'b0}} | b=={largo+1{1'b0}})? 1'b0 : //Caso con cero
				(a[largo]!=b[largo]) ? ~(&mult[2*largo:2*pres+mag]) : //Signo negativo
				1'b0 ;					//Underflow si no hay extensión de signo en el 2do bloque de magnitud

	always@*
		y = 	overflow 	? {1'b0,{(largo){1'b1}}} : //Si hay overflow se satura el resultado en 0111...
			underflow 	? {1'b1,{(largo){1'b0}}} : //Si hay underflow se satura el resultado en 1000...
			{mult[2*largo],mult[2*largo+1-3-mag:pres]};	   //en caso contrario se deja el mismo resultado de la multiplicación binaria

endmodule
*/
