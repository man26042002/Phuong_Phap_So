% Phuong phap cat tuyen
clc;clear all;close all;
syms x;y=x-sin(x)-1;
a=0;b=3;
fplot(char(y),[a b]);
f=inline(vectorize(y),'x');
tol=1e-9;
x0=2; x1 = 1.5;
dy=(x1-x0)/(f(x1)-f(x0));
df=inline(vectorize(dy),'x');
x2=x0-f(x0).*((x1 - x0)/(f(x1)-f(x0)));k=1;
while abs(f(x2))>tol
x0=x2;
x2=x0-f(x0).*((x1 - x0)/(f(x1)-f(x0)));k=k+1;
end
fprintf('Nghiem x = %12.10f \n',x2);
fprintf('So vong lap k = %d \n',k);