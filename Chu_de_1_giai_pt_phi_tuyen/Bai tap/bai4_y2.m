% Phuong phap cat tuyen
clc;clear all;close all;
% Khoang [0; 1]
syms x;y=exp(-x)-sin(x);
a=0;b=1;
fplot(char(y),[a b]);
f=inline(vectorize(y),'x');
tol=1e-9;
x0=0.7; x1 = 0.5;
dy=(x1-x0)/(f(x1)-f(x0));
df=inline(vectorize(dy),'x');
x2=x0-f(x0).*((x1 - x0)/(f(x1)-f(x0)));k=1;
while abs(f(x2))>tol
x0=x2;
x2=x0-f(x0).*((x1 - x0)/(f(x1)-f(x0)));k=k+1;
end
fprintf('Nghiem x1 = %12.10f \n',x2);
fprintf('So vong lap k = %d \n',k);
% Khoang [1; 10]
syms x;y=exp(-x)-sin(x);
a=0;b=1;
fplot(char(y),[a b]);
f=inline(vectorize(y),'x');
tol=1e-9;
x0=9; x1 = 5;
dy=(x1-x0)/(f(x1)-f(x0));
df=inline(vectorize(dy),'x');
x2=x0-f(x0).*((x1 - x0)/(f(x1)-f(x0)));k=1;
while abs(f(x2))>tol
x0=x1; x1 = x2;
x2=x0-f(x0).*((x1 - x0)/(f(x1)-f(x0)));k=k+1;
end
fprintf('Nghiem x2 = %12.10f \n',x2);
fprintf('So vong lap k = %d \n',k);