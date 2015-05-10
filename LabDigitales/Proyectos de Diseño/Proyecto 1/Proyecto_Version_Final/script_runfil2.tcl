.main clear;

project compileall;

vsim -gui work.Testbench_Filtro;

add wave -position insertpoint -color "yellow"\
sim:/Testbench_Filtro/*;

config wave -signalnamewidth 1;

run 10ms;

wave zoom full;
