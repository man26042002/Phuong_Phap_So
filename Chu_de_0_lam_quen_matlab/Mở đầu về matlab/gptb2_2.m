% Nhap/xuat du lieu: input, disp, fprintf
clc;clear all;close all;
disp('---Chuong trinh giai phuong trinh bac 2---');
a=input('Nhap a= ');
b=input('Nhap b= ');
c=input('Nhap c= ');
% [a b c]=input('Nhap [a b c]= ');
d=sqrt(b^2-4*a*c); % Tinh can biet thuc
fprintf('Nghiem x1=\t %6.2f \n',(-b-d)/(2*a)); % Nghiem thu 1
fprintf('Nghiem x2=\t %6.2f \n',(-b+d)/(2*a)); % Nghiem thu 2