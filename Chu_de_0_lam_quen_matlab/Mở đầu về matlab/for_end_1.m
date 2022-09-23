% Vong lap for...end
% Tinh tong rieng khai trien ham y=cos(x) n+1 so hang
clc;close all; clear all;
N=10; % So lan lap
ak=1;fcos=0;
x=pi/4;
for k=1:N
fcos=fcos+ak;
ak=((-1)^k).*(x.^(2*k))./factorial(2*k);
end;
fcos,cos(x)% So sanh