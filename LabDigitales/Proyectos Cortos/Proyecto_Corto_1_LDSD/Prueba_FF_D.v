`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:36:36 02/23/2015
// Design Name:   FlipFlop_D
// Module Name:   C:/Users/Javier/Desktop/LabDigitales/Proyecto_Corto_1_LDSD/Prueba_FF_D.v
// Project Name:  Proyecto_Corto_1_LDSD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FlipFlop_D
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Prueba_FF_D;

	// Inputs
	reg rst_i;
	reg clk_i;
	reg D_i;

	// Outputs
	wire Q_o;

	// Instantiate the Unit Under Test (UUT)
	FlipFlop_D uut (
		.rst_i(rst_i), 
		.clk_i(clk_i), 
		.D_i(D_i), 
		.Q_o(Q_o)
	);

	initial begin
		// Initialize Inputs
		rst_i = 0;
		clk_i = 0;
		D_i = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
   initial forever #10 clk_i = !clk_i;
	initial forever #20 D_i = !D_i;   
endmodule

