function multip()
F1=22.05e3;
F2=2*F1;
F3=100;
F4=100;
t=[0:1/F2:3399/F1];
%Entrada=sin(2*pi*t*F3);
Entrada_a=sin(2*pi*F3*t-(pi/2));
Entrada_b=22*t;
in_a = fopen('in_a.txt','r');
in_b = fopen('in_b.txt','r');
mult = fopen('multi.txt','r');
formato = ['%c'];
[A,count1] = fscanf(in_a,formato);
[B,count2] = fscanf(in_b,formato);  
[M,count3] = fscanf(mult,formato);
p=1;
m=20;
%t3=min(count1,count2);
for i = 1:6798
    y(i)=pfijo2dec3(A(p:m),3,16);
    z(i)=pfijo2dec3(B(p:m),3,16);
    p=p+22;
    m=m+22;
end
p=1;
m=20;
for i = 1:115584
    w(i)=pfijo2dec3(M(p:m),3,16);
    p=p+22;
    m=m+22;
end
for u = 1:length(t)
    MultiAB(u)=Entrada_a(u)*Entrada_b(u);
end
fclose(in_a);
fclose(in_b);

figure
subplot(3,2,1);
plot(y);
title('A');

subplot(3,2,3);
plot(z);
title('B');

subplot(3,2,5);
plot(w);
title('A*B');

subplot(3,2,2);
plot(t,Entrada_a);
title('A teorica')

subplot(3,2,4);
plot(t,Entrada_b);
title('B teorica')

subplot(3,2,6);
plot(t,MultiAB);
title('A*B teorica')
end
