clc; clear all; close all;
X = [-4.2, -2.4, -1.1, 2.1, 4.9];
Y = [29.1456, -25.5744, 65.2761, 51.2001, -11.6679];
% Noi suy: Da thuc bac >=3
pp=polyfit(X,Y,3)
xx=linspace(-5,5,200);
yy=polyval(pp,xx);
figure(1);
plot(xx,yy);hold on
plot(X,Y,'sr');hold off;
% Xap xi: Da thuc bac <3
pp=polyfit(X,Y,2)
xx=linspace(-5,5,200);
yy=polyval(pp,xx);
figure(2);
plot(xx,yy);hold on;
plot(X,Y,'sr');hold off;