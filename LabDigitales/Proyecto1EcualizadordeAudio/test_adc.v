`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:27:38 04/10/2015 
// Design Name: 
// Module Name:    test_adc 
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
module test_adc;
   // Inputs
	reg clk_i;
	reg rst_i;
	reg data_i;

	// Outputs
	wire cs_sng;
	wire clk_o;
	wire [3:0] garg;
	wire [11:0]data_o;

	// Instantiate the Unit Under Test (UUT)
	adc_top uut (
    .clk_i(clk_i), 
    .rst_i(rst_i),
    .data_i(data_i), 
    .cs_sng(cs_sng), 
    .clk_o(clk_o), 
    .garg(garg), 
    .data_o(data_o)
    );
	 
	initial 
		begin
			clk_i = 0;
			rst_i = 1;
			data_i = 0;
			#10
			rst_i = 0;
		end
		
	initial forever
		#10 clk_i = ~clk_i;
		
	initial begin
			#10;
			@(negedge clk_o);
			data_i = 1; // 0
			@(negedge clk_o);
			data_i = 0; // 1
			@(negedge clk_o);
			data_i = 1; // 2
			@(negedge clk_o);
			data_i = 0; // 3
			@(negedge clk_o);
			data_i = 1; // 4
			@(negedge clk_o);
			data_i = 0; // 5
			@(negedge clk_o);
			data_i = 1; // 6
			@(negedge clk_o);
			data_i = 0; // 7
			@(negedge clk_o);
			data_i = 1; // 9
			@(negedge clk_o);
			data_i = 0; // 10
			@(negedge clk_o);
			data_i = 1; // 11 
			@(negedge clk_o);
			data_i = 0; //12
			
			#100;
			@(negedge clk_o);
			data_i = 1; // 0
			@(negedge clk_o);
			data_i = 0; // 1
			@(negedge clk_o);
			data_i = 1; // 2
			@(negedge clk_o);
			data_i = 0; // 3
			@(negedge clk_o);
			data_i = 1; // 4
			@(negedge clk_o);
			data_i = 0; // 5
			@(negedge clk_o);
			data_i = 1; // 6
			@(negedge clk_o);
			data_i = 0; // 7
			@(negedge clk_o);
			data_i = 1; // 9
			@(negedge clk_o);
			data_i = 0; // 10
			@(negedge clk_o);
			data_i = 1; // 11 
			@(negedge clk_o);
			data_i = 1;
			
		$stop;
		end

endmodule
