`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:08:27 04/29/2015
// Design Name:   FiltroTop
// Module Name:   C:/Users/javier/Documents/Proyectos Xilinx/LabDigitales/Filtros/Testbench_Filtro.v
// Project Name:  Filtros
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FiltroTop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module Testbench_Filtro;
	// Inputs
	reg clk;
	reg rst;
	reg [19:0] data_i;

	// Outputs
	wire [19:0] data_out;
	wire clk_r;
	
	// Señales testbench Filtro
	integer index;
	reg [19:0] Array_IN [0:400];
	integer contador;
	integer FileSaveData;
	integer Cont_CLK;

	// Instantiate the Unit Under Test (UUT)
	FiltroTop uut (
		.data_i(data_i), 
		.clk(clk), 
		.rst(rst), 
		.clk_r(clk_r), 
		.data_out(data_out)
	);
	 
	initial forever #200clk = ~clk;
	 
	initial begin
		// Initialize Inputs
		data_i = 0;
		clk = 0;
		rst = 1;
		
		#200rst = 0;
		
		// Abre el archivo testbench 
		FileSaveData = $fopen("monitorFiltro.txt","w");
		
		// Inicializa variables del testbench
		contador = 0;
		Cont_CLK = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	//**************************** Se lee el archivo txt y se almacena en un arrays***************************************************

	
	initial begin
		$readmemb("Prueba_1Xilinx.txt", Array_IN);
	end
	
	//**************************** Transmision de datos de forma paralela **************************************************************
    
	always @(posedge clk) begin
		if(rst) begin
			contador = 0;
			Cont_CLK = 1;
		end
		else begin
			if (contador == 400) begin
				$fclose(FileSaveData);
				$finish;
			end 
			else begin
				if(Cont_CLK ==1) begin
					data_i = Array_IN[contador];
					Cont_CLK = Cont_CLK + 1;
				end
				else if(Cont_CLK ==15) begin
					contador = contador + 1;
					Cont_CLK = Cont_CLK + 1;
				end
				else if(Cont_CLK ==17) begin
					Cont_CLK = 1;
				end
				else begin
					Cont_CLK = Cont_CLK + 1;
				end
			end	
		end
	end
	
	
	// Recepción de datos y almacenamiento en archivo*************
	always @(posedge clk) begin
		if(rst == 0) begin 
			$fwrite(FileSaveData,"%b\n",data_out); 


		end 
	end 
	
	//******************************* Se ejecuta el CLK ************************
	
endmodule
