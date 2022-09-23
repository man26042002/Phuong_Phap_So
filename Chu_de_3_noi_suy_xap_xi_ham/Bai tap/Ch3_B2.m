clc; clear all; close all;
X = [-4.2, -2.4, -1.1, 2.1, 4.9];
Y = [29.1456, -25.5744, 65.2761, 51.2001, -11.6679];
% Bac 3 (Xap xi)
pp=polyfit(X,Y,3)
xx=linspace(-5,5,200);
yy=polyval(pp,xx);
figure(1);
plot(xx,yy);hold on
plot(X,Y,'sr');hold off;
% Bac 4 (Noi suy)
pp=polyfit(X,Y,4)
xx=linspace(-5,5,200);
yy=polyval(pp,xx);
figure(2);
plot(xx,yy);hold on
plot(X,Y,'sr');hold off;
% Bac 5 (Noi suy)
pp=polyfit(X,Y,5)
xx=linspace(-5,5,200);
yy=polyval(pp,xx);
figure(3);
plot(xx,yy);hold on
plot(X,Y,'sr');hold off;