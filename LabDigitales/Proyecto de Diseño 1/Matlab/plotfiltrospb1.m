function plotfiltrospb1()
a=[1 -1.96 0.9605];
b=[0.000199 0.0003979 0.000199];
F1=22.05e3;
F2=2*F1;
F3=100;
t=[0:1/F2:1000*(1/F1)];
Entrada=sin(2*pi*F3*t);
%t=[0:1/F2:1000*(1/F1)];
%Entrada=t;
y_a=FiltroPrueba(a,b,Entrada);
figure
subplot(2,1,1);
plot(t,y_a);
title('Paso bajas bajas: 200 Hz');

subplot(2,1,2);
plot(t,Entrada);
title('Entrada')

end