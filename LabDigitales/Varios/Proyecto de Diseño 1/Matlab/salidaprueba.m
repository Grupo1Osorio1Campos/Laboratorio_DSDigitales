function salidaprueba()
bin = fopen('monitorFiltro9.txt','r');
%bin = fopen('Prueba_1Xilinx.txt','r');
formato = ['%c'];
[A,count] = fscanf(bin,formato);
p=1;
m=23;
for i = 1:(count/(m+2))
    y(i)=pfijo2dec3(A(p:m),6,16);
    p=p+25;
    m=m+25;
end
fclose(bin);
plot(y);
end