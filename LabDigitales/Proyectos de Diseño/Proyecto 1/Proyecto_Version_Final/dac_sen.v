`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:50:04 05/10/2015 
// Design Name: 
// Module Name:    dac_sen 
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
module dac_sen#(parameter ext=11)(
input wire clk_dac,
input wire clk_i,rst_i, 
input wire [ext:0] data_i,
input wire start,
output wire sync_o,
output wire data_o
);
 
// se definen los estados de la maquina 

localparam [1:0]
                Begin = 2'b00,
					 Wait = 2'b01,
					 Done  = 2'b10;
// variables de logica de la maquina 
					 
reg  data_act,data_next;
reg  [3:0] cont_pos_ac, cont_pos_sgt;
reg  sync_o_act , sync_o_sgt; 
reg  [1:0] estado_act,estado_sgt;
reg  [3:0]q_act,q_sgt; 
reg  ready; 
reg  [1:0] val_ac;
wire [1:0] val_sgt; 
reg  clk_in_act;
wire clk_in_sgt;

//detector de flancos para el dac
//el dato se envia en el fall_edge del clock 
always @(posedge clk_i, posedge rst_i)
  if (rst_i)
     begin 
	        val_ac <= 0 ;
			  clk_in_act <= 0 ;
	  end   
  else 
     begin 
	       val_ac <= val_sgt ;
			 clk_in_act <= clk_in_sgt ;
			end 
	assign val_sgt =  {clk_dac,val_ac[1]};
   assign clk_in_sgt =  (val_ac==2'b11) ? 1'b1 :
		                   (val_ac==2'b00) ? 1'b0 :
								  clk_in_act;
								  
	assign fall_edge = clk_in_act & ~ clk_in_sgt ; 

//variables maquina actualizacion
always@(negedge clk_i, posedge rst_i)
       begin 
		      if(rst_i)
				   begin
				   data_act <= 0;
               sync_o_act <= 1;
					estado_act <= 0;
					q_act <= 0;
					cont_pos_ac <= 0;
				   end
            else 
				   begin 
				   data_act <= data_next;
					sync_o_act <= sync_o_sgt;
					estado_act <= estado_sgt;
					q_act <= q_sgt;
					cont_pos_ac <= cont_pos_sgt;
					end 
			end 
			
//maquina de estados para el envio del dato 
always @*
      begin 
		data_next = data_act;
		sync_o_sgt =sync_o_act;
		estado_sgt = estado_act;
		q_sgt = q_act;
		cont_pos_sgt = cont_pos_ac; 
		case (estado_act)
				Begin :  
				//estado inicial se aplican los valores iniciales de las diferentes señales
				//depende del detector deflancos y el sync en alto
							if(start && sync_o_sgt && fall_edge)
				             begin
				             sync_o_sgt = 1'b0;
								 cont_pos_sgt = 4'd11; 
								 q_sgt = 4'd0;

							    estado_sgt = Wait;
							    end 
							 else 
							    estado_sgt = Begin;
		    Wait :  
			//estado de espera se enviaran inicialmente 4 ceros 
			//luego se envia el dato utiliznado contadores para las posiciones
			//del dato y para controlar cunato datos se llevan 
			//cuando el contador llegue a 16 se pasara la siguiente estado
							if(fall_edge)
			              begin
			               if (q_sgt == 15)
						          begin
								    estado_sgt = Done;
                            end 
						  
						      else if (q_sgt >= 3)
							        begin 
							        data_next = data_i [cont_pos_sgt] ;
							        cont_pos_sgt = cont_pos_sgt - 1'b1 ;
							        q_sgt = q_sgt + 1'b1 ;
							        end
							    else 
							        begin 
								     data_next = 1'b0;
								     q_sgt = q_sgt + 1'b1;
								     end 
								end 
			 Done :
			 //estado final el dato esta listo y fue enviado
			 //despues de 17 pulsos el sync regresa a alto
			            begin
						   data_next = 1'b0;
							sync_o_sgt = 1'b1;
							estado_sgt = Begin;
							end 
							
			default :   estado_sgt = Begin;
			endcase
			end 

//salidas
assign sync_o = sync_o_act;
assign data_o= data_act;

endmodule 
