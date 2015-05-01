function multi()
F1=22.05e3;
F2=2*F1;
F3=100;
F4=100;
t=[0:1/F2:3399/F1];
%Entrada=sin(2*pi*t*F3);
Entrada_a=sin(2*pi*F3*t-(pi/2));
Entrada_b=22*t;
fid_a = fopen('in_a.txt', 'wt');
fid_b = fopen('in_b.txt', 'wt');
for i = 1:length(Entrada_a)
    y_a=pfijo2(Entrada_a(i),3,16);
    fprintf(fid_a, '%s\n', y_a);
end
for i = 1:length(Entrada_a)
    y_b=pfijo2(Entrada_b(i),3,16);
    fprintf(fid_b, '%s\n', y_b);
end
fclose(fid_a);
fclose(fid_b);
end