.main clear;

project compileall;

vsim -gui work.Testbench_Proyecto_C_2;

add wave -position insertpoint -color "blue"\
sim:/Testbench_Proyecto_C_2/clk_i;

add wave -position insertpoint \
sim:/Testbench_Proyecto_C_2/rst_i;

add wave -position insertpoint \
sim:/Testbench_Proyecto_C_2/ps2_data;

add wave -position insertpoint \
sim:/Testbench_Proyecto_C_2/ps2_clk;

add wave -position insertpoint \
sim:/Testbench_Proyecto_C_2/rx_en;

add wave -position insertpoint \
sim:/Testbench_Proyecto_C_2/anodos_o;

add wave -position insertpoint \
sim:/Testbench_Proyecto_C_2/codigo_o;

add wave -position insertpoint -color "green"\
sim:/Testbench_Proyecto_C_2/Ing_o;

add wave -position insertpoint -color "green"\
sim:/Testbench_Proyecto_C_2/Pres_o;

add wave -position insertpoint -color "red"\
sim:/Testbench_Proyecto_C_2/Temp_o;

config wave -signalnamewidth 1;

run 1ms;

wave zoom full;
