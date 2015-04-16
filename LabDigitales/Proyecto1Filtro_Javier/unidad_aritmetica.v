`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:22:30 04/12/2015 
// Design Name: 
// Module Name:    unidad_aritmetica 
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
module unidad_aritmetica#(parameter largo=24)(a,b,func,y,y1,overflow);
input signed [largo:0] a, b;
input signed [2:0] func;
output reg signed [largo:0] y;
output reg signed overflow;
output reg [(2*largo+1):0] y1;

localparam 
suma = 3'h1,
resta = 3'h2, 
multiplicacion = 3'h3;

always @*
begin
	case (func)
		suma: begin //suma
		y = a + b;
		end
		
		resta: begin //resta
		y = a - b;
		end
		
		multiplicacion: begin //multiplicacion
		y1 = a * b;
		y=y1[40:16];
			if(a[largo]==1 && b[largo]==1 && y[largo]==1)
				begin
				y=25'sb1_1111_1111_1111_1111_1111_1111;
				overflow=1'b1;
				end
			if(a[largo]==1 && b[largo]==0  && y[largo]==0)
				begin
				y=25'sb0_0000_0000_0000_0000_0000_0000;
				overflow=1'b1;
				end
			if(a[largo]==0 && b[largo]==1  && y[largo]==0)
				begin
				y=25'sb0_0000_0000_0000_0000_0000_0000;
				overflow=1'b1;
				end
			if(a[largo]==0 && b[largo]==0  && y[largo]==1)
				begin
				y=25'sb0_0000_0000_0000_0000_0000_0000;
				overflow=1'b1;
				end
		end
		default:
		y=25'sb1111_1111_1111_1111_1111_1111_1;
		endcase
end
endmodule
