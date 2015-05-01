.main clear;

project compileall;

vsim -gui work.Testbench_Filtro;

add wave -position insertpoint -color "blue"\
sim:/Testbench_Filtro/data_i;

add wave -position insertpoint -color "yellow"\
sim:/Testbench_Filtro/data_out_1;

add wave -position insertpoint -color "yellow"\
sim:/Testbench_Filtro/data_out_2;

add wave -position insertpoint -color "yellow"\
sim:/Testbench_Filtro/data_out_3;

add wave -position insertpoint -color "white"\
sim:/Testbench_Filtro/clk;

add wave -position insertpoint -color "red"\
sim:/Testbench_Filtro/clk_r;

add wave -position insertpoint -color "red"\
sim:/Testbench_Filtro/rst;

config wave -signalnamewidth 1;

run 100ms;

wave zoom full;
