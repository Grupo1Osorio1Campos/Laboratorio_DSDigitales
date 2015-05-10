`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:20:01 03/09/2015 
// Design Name: 
// Module Name:    desplazamiento_bits 
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
module desplazamiento_bits(clk_i,rst_i,ps2_data,flanco,cuenta,dato_listo,data_o);
input wire clk_i,rst_i,ps2_data,flanco,cuenta;
output reg [7:0] data_o;
output reg dato_listo;
reg [7:0] dato_reg;
reg [10:0] bit; 

always @ (posedge clk_i)
begin
	if (flanco)
		begin
			for(i=10; i>0; i=i-1)
				bit[i] = bit[i-1];
			bit[0] = ps2d;
		
			if (cuenta == 4'd10)
				begin
					data_o = bit[9:2];
					dato_listo = 1'b1;
				end
			else
				begin
					data_o = 8'b0;
					dato_listo = 1'b0;
				end
		end
end

endmodule
