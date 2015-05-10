.main clear;

project compileall;

vsim -gui work.test_sumador;


add wave -position insertpoint -color "blue"\
sim:/test_sumador/a;

add wave -position insertpoint -color "green"\
sim:/test_sumador/b;

add wave -position insertpoint -color "white"\
sim:/test_sumador/y1;

add wave -position insertpoint -color "white"\
sim:/test_sumador/y;

add wave -position insertpoint -color "white"\
sim:/test_sumador/overflow;

config wave -signalnamewidth 1;

run 1ms;

wave zoom full;
