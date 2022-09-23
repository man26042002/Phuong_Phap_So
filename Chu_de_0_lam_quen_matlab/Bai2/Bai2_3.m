a = input('Nhap so a :  ');
b = input('Nhap so b :  ');
while a ~= b
    if a > b
        a = a - b;
    else
        b = b - a;
    end;
end;
fprintf('Uoc chung lon nhat la :  %.2f\n',a);
