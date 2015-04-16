.main clear;

project compileall;

vsim -gui work.test_multiplicador;


add wave -position insertpoint -color "blue"\
sim:/test_multiplicador/a;

add wave -position insertpoint -color "green"\
sim:/test_multiplicador/b;

add wave -position insertpoint -color "blue"\
sim:/test_multiplicador/y1;

add wave -position insertpoint -color "white"\
sim:/test_multiplicador/y;

add wave -position insertpoint -color "white"\
sim:/test_multiplicador/overflow;

config wave -signalnamewidth 1;

run 1ms;

wave zoom full;
