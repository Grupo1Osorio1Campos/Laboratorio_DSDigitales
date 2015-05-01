function PuntoFijo(n)
a=num2str(n);
f=str2num(a(3));
num=n*2^f;
num=round(num);
b=dec2bin(num);
bin=b;
x=num*(1/2^f);
error=100*(n-x);
disp('Valor PF:')
disp(x);
disp('Binario:')
disp(bin);
disp('Error:')
disp(error);
end