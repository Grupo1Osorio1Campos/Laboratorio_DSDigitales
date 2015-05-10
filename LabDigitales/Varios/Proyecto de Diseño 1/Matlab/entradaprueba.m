function entradaprueba()
F1=22.05e3;
F2=2*F1;
F3=100;
t=[0:1/F2:3399/F1];
%Entrada=sin(2*t*pi*F3-pi/2);
Entrada=22*t;
fid = fopen('Entrada.txt', 'wt');
for i = 1:length(Entrada)
    y=pfijo2(Entrada(i),8,14);
    fprintf(fid, '%s\n', y);
end
fclose(fid);
end