`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:15:22 04/19/2015
// Design Name:   filter_opt_top
// Module Name:   C:/Users/Javier/Desktop/LabDigitales/Proyecto1Filtro/TB_Filtro.v
// Project Name:  Proyecto1Filtro
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: filter_opt_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_Filtro;

	// Inputs
	reg [24:0] data_i;
	reg clk;
	reg rst;

	// Outputs
	wire [24:0] dato_o;

	// Instantiate the Unit Under Test (UUT)
	filter_opt_top uut (
		.data_i(data_i), 
		.clk(clk), 
		.rst(rst), 
		.dato_o(dato_o)
	);

	initial begin
		// Initialize Inputs
		data_i = 0;
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

