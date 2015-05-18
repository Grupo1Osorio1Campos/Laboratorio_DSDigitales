`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:58:29 05/18/2015
// Design Name:   PWM
// Module Name:   C:/Users/javier/Documents/Proyectos Xilinx/Proyecto 2/Proyecto2/Prueba.v
// Project Name:  Proyecto2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PWM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Prueba;

	// Inputs
	reg clk_i;
	reg rst_i;
	reg [7:0] vin_i;

	// Outputs
	wire vout_o;

	// Instantiate the Unit Under Test (UUT)
	PWM uut (
		.clk_i(clk_i), 
		.rst_i(rst_i), 
		.vin_i(vin_i), 
		.vout_o(vout_o)
	);

	initial begin
		// Initialize Inputs
		clk_i = 0;
		rst_i = 0;
		vin_i = 8'h00;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	initial begin
	#100 forever #100 clk_i = !clk_i;
	end
	
	always @(posedge clk_i) begin
		#100000 vin_i <=vin_i+1;
	end
	
endmodule

