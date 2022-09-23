clc; clear all; close all;
% Giai pt vi phan
% Tim nghiem giai tich bang lenh dsolve
syms y
yt=dsolve('Dy=y*sin(x)','y(0)=5','x')
fplot(yt,[0 10]); hold on
% Phuong phap Euler
f=@(x,y)(y.*sin(x))
h=0.2;x=0:h:10;
y=5;
for k=1:length(x)-1
   y(k+1)=y(k)+f(x(k),y(k))*h;
end
plot(x,y,'r');
%Pp Heun
y1=5;
for k=1:length(x)-1
   yk1=y1(k)+f(x(k),y1(k))*h; % Predictor
   y1(k+1)=y1(k)+h*(f(x(k),y1(k))+f(x(k+1),yk1))/2; % Corrector
end
plot(x,y1,'m');
%Pp Midpoint - Diem giua
y2=5;
for k=1:length(x)-1
    y12=y2(k)+f(x(k),y2(k))*h/2;
    y2(k+1)=y2(k)+h*f(x(k)+h/2,y12); % Corrector
end
plot(x,y2,'g');
% Runge-Kutta bac 4
y=5;
for k=1:length(x)-1
    y1=f(x(k),y(k));
    y2=f(x(k)+h/2,y(k)+h/2*y1);
    y3=f(x(k)+h/2,y(k)+h/2*y2);
    y4=f(x(k)+h,y(k)+h*y3);
    y(k+1)=y(k)+(y1+2*y2+2*y3+y4)*h/6;
end
plot(x,y,'bl'); hold off