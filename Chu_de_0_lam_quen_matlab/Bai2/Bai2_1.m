a = input('Nhap canh thu nhat :  ');
b = input('Nhap canh thu hai :  ');
c = input('Nhap canh thu ba :  ');
if (a>0)&(b>0)&(c>0)&(a+b>c)&(c+b>c)&(a+c>b)
    disp('Day la 3 canh tam giac !!!');
    p = (a+b+c)/2;
    dt = sqrt(p*(p-a)*(p-b)*(p-c));
    fprintf('Dien tich cua tam giac tren la :\t %6.2f\n',dt);
else
    disp('Day Khong phai 3 canh tam giac !!!');
end;