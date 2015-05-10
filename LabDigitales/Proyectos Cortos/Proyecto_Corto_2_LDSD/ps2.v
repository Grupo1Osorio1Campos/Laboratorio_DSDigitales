`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:45:30 03/07/2015 
// Design Name: 
// Module Name:    ps2 
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
module ps2(clk_i,rst_i,ps2_data,ps2_clk,rx_en,rx_listo,data_o);
input wire clk_i,rst_i,ps2_data,ps2_clk,rx_en;
output wire [8:0] data_o;
output reg rx_listo;
//wire [7:0] data_o_o;

localparam
idle = 2'b00,
dps = 2'b01,
load = 2'b10;

reg [1:0] estado_actl,estado_sgt;
reg [7:0] filtro_reg;
wire [7:0] filtro_sgt;
reg f_ps2c_reg;
wire f_ps2c_sgt;
reg [3:0] n_reg, n_sgt;
reg [10:0] b_reg, b_sgt;
wire flanco;

always @(posedge clk_i, posedge rst_i)
	if (rst_i)
		begin
			filtro_reg <= 0;
			f_ps2c_reg <= 0;
		end
	else
		begin
			filtro_reg <= filtro_sgt;
			f_ps2c_reg <= f_ps2c_sgt;
		end

assign filtro_sgt = {ps2_clk, filtro_reg[7:1]};
assign f_ps2c_sgt = (filtro_reg==8'b11111111) ? 1'b1 :
						  (filtro_reg==8'b00000000) ? 1'b0 :
							f_ps2c_reg;
assign flanco = f_ps2c_reg & ~f_ps2c_sgt;

always@ (posedge clk_i, posedge rst_i)
	if (rst_i)
		begin
			estado_actl <= idle;
			n_reg <= 4'b0000;
			b_reg <= 4'b0000;
		end
	else
		begin
			estado_actl <= estado_sgt;
			n_reg <= n_sgt;
			b_reg <= b_sgt;
		end
always @*
	begin
		estado_sgt = estado_actl;
		rx_listo = 1'b0;
		n_sgt = n_reg;
		b_sgt = b_reg;
		case (estado_actl)
			idle: 
				if (flanco & rx_en)
					begin
						b_sgt = {ps2_data,b_reg[10:1]};
						n_sgt = 4'b1001;
						estado_sgt = dps;
					end
			dps: 
				if(flanco)
					begin
						b_sgt = {ps2_data, b_reg[10:1]};
						if (n_reg == 0)
							estado_sgt = load;
						else
							n_sgt = n_reg - 1'b1;
					end
			load:
				begin
					estado_sgt = idle;
					rx_listo = 1'b1;
				end
		endcase
	end
assign data_o[8:1] = b_reg[8:1];
assign data_o[0] = b_reg[0];
endmodule
