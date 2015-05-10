.main clear;

project compileall;

vsim -gui work.Testbench_Filtro;

add wave -position insertpoint -color "blue"\
sim:/Testbench_Filtro/rst_i;

add wave -position insertpoint -color "blue"\
sim:/Testbench_Filtro/clk_i;

add wave -position insertpoint -color "blue"\
sim:/Testbench_Filtro/data_i;

add wave -position insertpoint -color "blue"\
sim:/Testbench_Filtro/data_fil;

add wave -position insertpoint -color "blue"\
sim:/Testbench_Filtro/sal_fil;

add wave -position insertpoint -color "blue"\
sim:/Testbench_Filtro/garg1;

add wave -position insertpoint -color "blue"\
sim:/Testbench_Filtro/garg;

add wave -position insertpoint -color "blue"\
sim:/Testbench_Filtro/data_ps2;

config wave -signalnamewidth 1;

run 1000ms;

wave zoom full;
