function dec = pfijo2dec3(bin,mag,pres)
if bin(1)=='1';
    dec2=-1;
    for n = length(bin):-1:2
        if bin(n)=='1';
            for l = (n-1):-1:1;
                if bin(l)=='0';
                    bin(l)=dec2bin(1);
                elseif bin(l)=='1';
                    bin(l)=dec2bin(0);
                end
            end
            break
        end
    end
else
    dec2=1;
end
%bin1;
%bin2;
for m = 1:mag
    bin1(m)=bin(m+1);
end
k=mag;
for s = 1:pres
    bin2(s)=bin(k+2);
    k=k+1;
end
%bin1=[bin(1),bin(2),bin(3),bin(4),bin(5),bin(6),bin(7),bin(8),bin(9)];
%bin2=[bin(10),bin(11),bin(12),bin(13),bin(14),bin(15),bin(16),bin(17),bin(18),bin(19),bin(20),bin(21),bin(22),bin(23),bin(24),bin(25)];
%disp(bin(17));
dec1=0;
for p = 1:pres
    dec1=dec1+(bin2dec(bin2(p))/(2^p));
end
dec3=bin2dec(bin1);
dec=(dec1+dec3)*dec2;
%disp(bin(2));
%disp(bin1);
%disp(bin2);
end