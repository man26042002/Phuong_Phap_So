% Giai cac phuong trinh vi phan bang dsolve:
clc;clear all;close all;
% x'(t)=-ax(t)
sol=dsolve('Dx = -a*x')
% x'(s)=-ax(s), x(0)=1
x = dsolve('Dx = -a*x','x(0) = 1','s')
% y(t)'^2+y^2=1
% y(0)=0
y = dsolve('(Dy)^2 + y^2 = 1','y(0) = 0')
% f(t)' = f(t) + g(t), g(t)' = -f(t) + g(t), f(0) = 1, g(0) = 2
S = dsolve('Df = f + g, Dg = -f + g','f(0) = 1,g(0) = 2')
f=S.f, g=S.g,
figure(1); ezplot(f,g,[-2 2])
% w''' = -w
% w(0)=1, w'(1)=2, w"(2)=3
w = dsolve('D3w = -w','w(0)=1, Dw(1)=2,D2w(2)=3')
figure(2);ezplot(w,[0 3])