clc;clear all;close all;
% Phuong trinh vi phan cap 2:
% x^2*y" - 6 y =0
% 2 <= x <= 6
dy=inline('[y(2);6*y(1)/x^2]','x','y');
% Dieu kien ban dau y(2)=1, y'(2)=5;
[x,y]=ode45(dy,[2 6],[1 5]);
figure(1); plot(x,y(:,1))
% Dieu kien bien y(2)=4, y(6)=3;
% Su dung phuong phap ban
dy0=-10:.5:5;
for k=1:length(dy0);
[x,y]=ode45(dy,[2 6],[4,dy0(k)]);
yend(k)=y(end,1)-3;
sp=spline(dy0,yend);
end;
f=@(sp,x) fnval(sp,x);
fnplt(sp,[min(dy0) max(dy0)]);
[x0 f0]=ginput;
dyn=fsolve(f,x0,[],sp);
[x,y]=ode45(dy,[2:.1:6],[4,dyn]);
figure;plot(x,y(:,1),x,y(:,2),'r');