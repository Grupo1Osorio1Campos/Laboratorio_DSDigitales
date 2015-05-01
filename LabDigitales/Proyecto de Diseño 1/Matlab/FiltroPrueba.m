function y=FiltroPrueba(a,b,Entrada)
fNMenos1 = 0;
fNMenos2 = 0;
n=length(Entrada);
y=[];
for i=1:n
f=Entrada(i)-a(2)*fNMenos1-a(3)*fNMenos2;
y(i)=b(1)*f+b(2)*fNMenos1+b(3)*fNMenos2;
fNMenos2=fNMenos1;
fNMenos1=f;
end
%semilogx(y);
end