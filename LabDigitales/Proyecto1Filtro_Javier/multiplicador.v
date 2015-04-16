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
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module multiplicador#(parameter largo=24,mag=8,pres=16)(a,b,y,y1,overflow);
input signed [largo:0] a, b;
output reg signed [largo:0] y;
output reg signed overflow;
output reg [(2*largo+1):0] y1;

always @*
begin
	y1 = a * b;
	overflow=1'b0;
	y=y1[(2*pres+mag):pres];
	if(a[largo]==1 && b[largo]==0  && y[largo]==0 && b!=={(largo+1){1'b0}})
		begin
		y={(largo+1){1'b0}};
		overflow=1'b1;
		end
	if(a[largo]==0 && b[largo]==1  && y[largo]==0 && a!=={(largo+1){1'b0}})
		begin
		y={(largo+1){1'b0}};
		overflow=1'b1;
		end
	if(a[largo]==0 && b[largo]==0  && y[largo]==1)
		begin
		y={(largo+1){1'b1}};
		overflow=1'b1;
		end
end
endmodule
