.main clear;

project compileall;

vsim -gui work.Prueba_ADC;

add wave -position insertpoint -color "yellow"\
sim:/Prueba_ADC/*;

config wave -signalnamewidth 1;

run 10ms;

wave zoom full;
