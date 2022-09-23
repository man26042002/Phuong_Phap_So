clear all; close all;clc
% giai y = 1/(a*x + b)
x=[0, 0.2, 0.4, 0.6, 0.9, 1.2, 1.4, 1.8, 2];
y=[0.97, 0.69, 0.57, 0.46, 0.36, 0.31, 0.27, 0.21, 01.9];
plot(x,y,'+:')
% Tim gan dung---------------
X=x;Y=1./y;
pp=polyfit(X,Y,1);
a0=pp(1);a1=pp(2);
% Chinh xac--------------------
f=inline('1./(A(1)*x+A(2))','A','x');
A0=[a0 a1];
[An dAn]=lsqcurvefit(f,A0,x,y)
xx=linspace(0,2,300);yy=f(An,xx);
figure(2);
plot(xx,yy);hold on;
plot(x,y,'r*');hold off;