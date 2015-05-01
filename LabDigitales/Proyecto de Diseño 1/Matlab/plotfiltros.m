function plotfiltros()
a=[1 -1.96 0.9605];
b=[0.000199 0.0003979 0.000199];
c=[1 -1.035 0.3678];
d=[0.08316 0.1663 0.08316];
e=[1 1.591 0.6617];
f=[0.8132 1.626 0.8132];
g=[1 -1.996 0.996];
h=[0.998 -1.996 0.998];
i=[1 -1.96 0.9605];
j=[1 -2 1];
k=[1 -1.035 0.3678];
l=[0.6007 -1.201 0.6007];
F1=22.05e3;
F2=2*F1;
F3=100;
%t=[0:1/F2:100*(1/F1)];
t=[0:1/F2:100*(1/F1)];
Entrada=sin(2*pi*F3*t);
%y_a=FiltroPrueba(g,h,FiltroPrueba(a,b,Entrada));
%y_b=FiltroPrueba(i,j,FiltroPrueba(c,d,Entrada));
%y_c=FiltroPrueba(k,l,FiltroPrueba(e,f,Entrada));
y_a=FiltroPrueba(a,b,FiltroPrueba(g,h,Entrada));
y_b=FiltroPrueba(c,d,FiltroPrueba(i,j,Entrada));
y_c=FiltroPrueba(e,f,FiltroPrueba(k,l,Entrada));
figure
subplot(4,1,1);
plot(t,y_a);
title('Frecuencias bajas: 20 Hz a 200 Hz');

subplot(4,1,2);
plot(t,y_b);
title('Frecuencias medias: 200 Hz a 5000 Hz')

subplot(4,1,3);
plot(t,y_c);
title('Frecuencias altas: 5000 Hz a 20000 Hz')

subplot(4,1,4);
plot(t,Entrada);
title('Entrada')

end