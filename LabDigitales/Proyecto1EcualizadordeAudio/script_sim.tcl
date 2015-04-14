.main clear;

project compileall;

vsim -gui work.Prueba_UA;


add wave -position insertpoint -color "blue"\
sim:/Prueba_UA/a;

add wave -position insertpoint -color "green"\
sim:/Prueba_UA/b;

add wave -position insertpoint -color "white"\
sim:/Prueba_UA/y;

add wave -position insertpoint -color "red"\
sim:/Prueba_UA/func;

add wave -position insertpoint -color "white"\
sim:/Prueba_UA/overflow;

add wave -position insertpoint -color "white"\
sim:/Prueba_UA/y1;

config wave -signalnamewidth 1;

run 1ms;

wave zoom full;
