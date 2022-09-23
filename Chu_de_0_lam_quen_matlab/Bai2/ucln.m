function [k] = ucln(a,b)
a = input('Nhap so a :  ');
b = input('Nhap so b :  ');
while a ~= b
    if a > b
        a = a - b;
    else
        b = b - a;
    end;
end;
k = a;