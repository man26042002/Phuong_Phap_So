clc;    clear all;
n = input('Nhap vao mot so nguyen duong bat ki :  ');
k = 1; % Bien kiem tra
for i = 2: n-1
    if rem(n,i)==0
        k = k+1;
    end;
end;
if k == 1
    disp('Day la so nguyen to !!!');
else
    disp('Day khong phai so nguyen to !!!');
end;