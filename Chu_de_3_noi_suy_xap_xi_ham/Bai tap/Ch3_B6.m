clear all; close all;clc
% giai y = A + B/x^2 + C/x^4

x=[0.589, 0.550, 0.486, 0.443, 0.402];
y=[1.628, 1.640, 1.652, 1.668, 1.679];
plot(x,y,'+:')
% Tim gan dung---------------
X=1./(x.^2);Y=y;
pp=polyfit(X,Y,2);
a0 = pp(1); b0 = pp(2); c0 = pp(3);
% Chinh xac--------------------
f=inline('A(1)./(x.^4) + A(2)./(x.^2) + A(3)','A','x');
A0=[a0 b0 c0];
[An dAn]=lsqcurvefit(f,A0,x,y)
xx=linspace(0.4,0.6,300);yy=f(An,xx);
figure(2);
plot(xx,yy);hold on;
plot(x,y,'r*');hold off;