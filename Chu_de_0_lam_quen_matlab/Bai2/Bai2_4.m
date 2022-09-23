clc;    clear all;
a = input('Nhap so thu nhat :  ');
b = input('Nhap so thu hai :  ');
k = a*b;
while a ~= b
    if a > b
        a = a - b;
    else
        b = b - a;
    end;
end;
fprintf('Boi chung nho nhat cua 2 so a va b la : %.2f\n',k/a);