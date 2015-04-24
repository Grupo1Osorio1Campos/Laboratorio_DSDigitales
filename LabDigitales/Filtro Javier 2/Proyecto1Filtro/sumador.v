`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:20:46 04/15/2015 
// Design Name: 
// Module Name:    sumador 
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
module sumador#(parameter largo=24)(a,b,y2);
input signed [largo:0] a, b;
output signed [largo:0] y2;

reg [largo+1:0] y1;
reg signed [largo:0] y;
always @*
begin
	y1 = a + b;
	y=y1[largo:0];
//	if(y1[largo+1]==1)
//		begin
//		y={(largo+1){1'b1}};
//		end
	if(a[largo]==0 && a[largo]==0 && y1[largo]==1)
		begin
		y={1'b0,{(largo){1'b1}}};
		end
	if(a[largo]==1 && a[largo]==1 && y1[largo+1]==1)
		begin
		y={1'b1,{(largo-1){1'b0}},1'b1};
		end
end
assign y2[largo:0] = y [largo:0];

endmodule
