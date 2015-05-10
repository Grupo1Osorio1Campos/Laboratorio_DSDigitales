`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:43:21 03/09/2015
// Design Name:   ps2
// Module Name:   C:/Users/Javier/Desktop/LabDigitales/Proyecto_Corto_2_LDSD/Prueba_PS2.v
// Project Name:  Proyecto_Corto_2_LDSD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ps2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Prueba_PS2;

	// Inputs
	reg clk_i;
	reg rst_i;
	reg ps2_data;
	reg ps2_clk;
	reg rx_en;

	// Outputs
	wire rx_listo;
	wire [8:0] data_o;

	// Instantiate the Unit Under Test (UUT)
	ps2 uut (
		.clk_i(clk_i), 
		.rst_i(rst_i), 
		.ps2_data(ps2_data), 
		.ps2_clk(ps2_clk), 
		.rx_en(rx_en), 
		.rx_listo(rx_listo), 
		.data_o(data_o)
	);

	initial begin
		// Initialize Inputs
		clk_i = 0;
		rst_i = 0;
		ps2_data = 11'b01010101010;
		ps2_clk = 0;
		rx_en = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
   initial forever #50 clk_i = ~clk_i;
	initial forever #100 ps2_clk = ~ps2_clk;
endmodule

