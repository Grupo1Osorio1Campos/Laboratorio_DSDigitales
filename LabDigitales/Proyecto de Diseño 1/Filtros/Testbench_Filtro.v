`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:37:26 04/18/2015 
// Design Name: 
// Module Name:    TB_filtro1 
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
module Testbench_Filtro;

	reg clk;
	reg rst;
	reg [22:0] data_i;

	// Outputs
	wire [22:0] data_out_1,data_out_2,data_out_3;
	wire clk_r;
	
	// Señales testbench Filtro
	integer index;
	reg [22:0] Array_IN [0:1000];
	integer contador;
	integer FileSaveData1;
	integer FileSaveData2;
	integer FileSaveData3;
	integer Cont_CLK;

	// Instantiate the Unit Under Test (UUT)
	FiltroTop uut (
		.data_i(data_i),
		.clk(clk),
		.rst(rst),
		.clk_r(clk_r),
		.data_out_1(data_out_1),
		.data_out_2(data_out_2),
		.data_out_3(data_out_3)
	);
	 
	initial forever #300clk = ~clk;
	 
	initial begin
		// Initialize Inputs
		data_i = 0;
		clk = 0;
		rst = 1;
		
		#600 rst = 0;
		
		// Abre el archivo testbench 
		FileSaveData1 = $fopen("Filtro1.txt","w");
		FileSaveData2 = $fopen("Filtro2.txt","w");
		FileSaveData3 = $fopen("Filtro3.txt","w");
		
		// Inicializa variables del testbench
		contador = 0;
		Cont_CLK = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	//**************************** Se lee el archivo txt y se almacena en un arrays***************************************************

	
	initial begin
		$readmemb("Entrada.txt", Array_IN);
	end
	
	//**************************** Transmision de datos de forma paralela **************************************************************
    
	always @(posedge clk) begin
		if(rst) begin
			contador = 0;
			Cont_CLK = 1;
		end
		else begin
			if (contador == 1000) begin
				$fclose(FileSaveData1);
				$fclose(FileSaveData2);
				$fclose(FileSaveData3);
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
			$fwrite(FileSaveData1,"%b\n",data_out_1); 
			$fwrite(FileSaveData2,"%b\n",data_out_2); 
			$fwrite(FileSaveData3,"%b\n",data_out_3); 
		end 
	end 
	
	//******************************* Se ejecuta el CLK ************************
	  
endmodule
