function plot_filtros()
%bajos
%Paso bajas 200Hz
apb1=[1 -1.96 0.9605];
bpb1=[0.000199 0.0003979 0.000199];
%Paso altas 20Hz
apa1=[1 -1.996 0.996];
bpa1=[0.998 -1.996 0.998];

%medios
%Paso bajas 5kHz
apb2=[1 -1.035 0.3678];
bpb2=[0.08316 0.1663 0.08316];
%Paso altas 200Hz
apa2=[1 -1.96 0.9605];
bpa2=[1 -2 1];

%altas
%*Paso bajas 20kHz
apb3=[1 1.591 0.6617];
bpb3=[0.8132 1.626 0.8132];
%Paso altas 20kHz
apa3=[1 -1.035 0.3678];
bpa3=[0.6007 -1.201 0.6007];

F1=22.05e3;
F2=2*F1;
F3=100;
t1=[0:1/F2:3399/F1];
%Entradat=sin(2*t1*pi*F3-pi/2);
Entradat=22*t1;
fbajos = FiltroPrueba(apb1,bpb1,FiltroPrueba(apa1,bpa1,Entradat));
fmedios= FiltroPrueba(apb2,bpb2,FiltroPrueba(apa2,bpa2,Entradat));
faltos = FiltroPrueba(apb3,bpb3,FiltroPrueba(apa3,bpa3,Entradat));
entrada = fopen('Entrada.txt','r');
salida1 = fopen('Filtro1.txt','r');
salida2 = fopen('Filtro2.txt','r');
salida3 = fopen('Filtro3.txt','r');
formato = ['%c'];
[A,count1] = fscanf(entrada,formato);
[B,count2] = fscanf(salida1,formato);
[C,count3] = fscanf(salida2,formato);
[D,count4] = fscanf(salida3,formato);
p=1;
m=23;
for i = 1:6797
    y(i)=pfijo2dec3(A(p:m),8,14);
    p=p+25;
    m=m+25;
end
p=1;
m=23;
%101998
for i = 1:16998
    z1(i)=pfijo2dec3(B(p:m),8,14);
    z2(i)=pfijo2dec3(C(p:m),8,14);
    z3(i)=pfijo2dec3(D(p:m),8,14);
    p=p+25;
    m=m+25;
end
fclose(salida1);
fclose(salida2);
fclose(salida3);
fclose(entrada);
figure
subplot(4,2,1);
plot(y);
title('Entrada Filtro');

subplot(4,2,3);
plot(z1);
title('Salida Filtro paso bajas');

subplot(4,2,5);
plot(z2);
title('Salida Filtro paso medias');

subplot(4,2,7);
plot(z3);
title('Salida Filtro paso altas');

subplot(4,2,2);
plot(t1,Entradat);
title('Entrada Teórica')

subplot(4,2,4);
plot(t1,fbajos);
title('Filtro de bajas');

subplot(4,2,6);
plot(t1,fmedios);
title('Filtro Medias');

subplot(4,2,8);
plot(t1,faltos);
title('Filtro de Altas');

end