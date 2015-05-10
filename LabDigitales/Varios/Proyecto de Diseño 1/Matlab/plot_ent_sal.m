function plot_ent_sal()
%bajos
%Paso bajas 200Hz
a=[1 -1.96 0.9605];
b=[0.000199 0.0003979 0.000199];
%Paso altas 20Hz
a1=[1 -1.996 0.996];
b1=[0.998 -1.996 0.998];

F1=22.05e3;
F2=2*F1;
F3=100;
t1=[0:1/F2:3399/F1];
Entradat=sin(2*t1*pi*F3-pi/2);
%Entradat=sin(2*pi*F3*t1);
%y_b20_200=FiltroPrueba(a,b,Entradat);
y_b20_200=FiltroPrueba(a,b,FiltroPrueba(a1,b1,Entradat));
salida = fopen('monitorFiltro.txt','r');
entrada = fopen('Prueba_1Xilinx.txt','r');
formato = ['%c'];
[A,count1] = fscanf(entrada,formato);
[B,count2] = fscanf(salida,formato);
p=1;
m=23;
for i = 1:6797
    y(i)=pfijo2dec3(A(p:m),6,16);
    p=p+25;
    m=m+25;
end
p=1;
m=23;
%101998
for i = 1:101998
    z(i)=pfijo2dec3(B(p:m),6,16);    
    p=p+25;
    m=m+25;
end
fclose(salida);
fclose(entrada);
figure
subplot(2,2,1);
plot(y);
title('Entrada Filtro');

subplot(2,2,3);
plot(z);
title('Salida Filtro paso bajas 200Hz');

subplot(2,2,2);
plot(t1,Entradat);
title('Entrada Teórica')

subplot(2,2,4);
plot(t1,y_b20_200);
title('Paso bajas bajas: 200 Hz Teórica');
end
% %bajos
% %Paso bajas 200Hz
% a=[1 -1.96 0.9605];
% b=[0.000199 0.0003979 0.000199];
% %Paso altas 20Hz
% a1=[1 -1.996 0.996];
% b1=[0.998 -1.996 0.998];
%
% %medios
% %Paso bajas 5kHz
% a=[1 -1.035 0.3678];
% b=[0.08316 0.1663 0.08316];
% %Paso altas 200Hz
% a1=[1 -1.96 0.9605];
% b1=[1 -2 1];
% 
% %altas
% %*Paso bajas 20kHz
% a=[1 1.591 0.6617];
% b=[0.8132 1.626 0.8132];
% %Paso altas 20kHz
% a1=[1 -1.035 0.3678];
% b2=[0.6007 -1.201 0.6007];
