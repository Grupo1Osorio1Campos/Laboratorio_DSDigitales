function bin = pfijo(ivalue)
if ivalue==0
    value='0.0';
else
    value=num2str(ivalue);
end
if length(value)<3
    s1(1)=value;
    s1(2)='0';
else
s1=strsplit(value,'.');
end
mag=str2double(s1(1));
if ivalue<0;
    mag=dec2bin(abs(mag),8);
    sgn=dec2bin(1);
else
    mag=dec2bin(mag,8);
    sgn=dec2bin(0);
end
frac=['0','.',s1(2)];
frac=strcat(frac(1),frac(2),frac(3));
frac3=char(frac);
frac2=str2double(frac3);
b=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
for i = 1:16
    if (rem(frac2(1),(2^-i))==0) && (frac2(1) ~= 0);
        b(i)=dec2bin(1);
        frac2=0;
    elseif frac2 == 0;
            b(i)=dec2bin(0);
            frac2=0;
    elseif (rem(frac2(1),(2^-i))==frac2(1)) && (frac2(1) ~= 0);
            b(i)=dec2bin(0);
    elseif (rem(frac2(1),(2^-i))<frac2(1)) && (frac2(1) ~= 0);
            b(i)=dec2bin(1);
            frac2=rem(frac2(1),(2^-i));
    end
end
bin2=[sgn mag b];
if ivalue<0
    for p = length(bin2):-1:2
        if bin2(p)=='1';
            for l = (p-1):-1:2;
                if bin2(l)=='0';
                    bin2(l)=dec2bin(1);
                elseif bin2(l)=='1';
                    bin2(l)=dec2bin(0);
                end
            end
            break
        end
    end
end
bin=bin2;
end