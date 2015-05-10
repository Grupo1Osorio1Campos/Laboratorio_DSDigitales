`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:50:31 02/19/2015 
// Design Name: 
// Module Name:    FlipFlop_D 
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
module FlipFlop_D(rst_i, clk_i,D_i,Q_o);

input rst_i, clk_i;
input D_i;
output Q_o;
reg Q_o;

always @(posedge clk_i or posedge rst_i)
      if (rst_i) begin
         Q_o <= 1'b0;
      end else begin
         Q_o <= D_i;
      end
endmodule
