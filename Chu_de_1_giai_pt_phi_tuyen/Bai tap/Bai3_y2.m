% Newton-Raphson Method
clc;clear all;close all;
% Khoang [0; 1]
syms x;y=exp(-x)-sin(x);
dy=diff(y,'x');
a=0;b=1;
fplot(char(y),[a b]); hold on;
f=inline(vectorize(y),'x');
df=inline(vectorize(dy),'x');
tol=1e-9;
x0=0.5;
x1=x0-f(x0)/df(x0);k=1;
while abs(f(x1))>tol
x0=x1;
x1=x0-f(x0)/df(x0);k=k+1;
end
fprintf('Nghiem x = %12.10f \n',x1);
fprintf('So vong lap k = %d \n',k);
% Khoang [1; 10]
syms x;y=exp(-x)-sin(x);
dy=diff(y,'x');
a=1;b=10;
fplot(char(y),[a b]); hold on;
f=inline(vectorize(y),'x');
df=inline(vectorize(dy),'x');
tol=1e-9;
x0=7;
x1=x0-f(x0)/df(x0);k=1;
while abs(f(x1))>tol
x0=x1;
x1=x0-f(x0)/df(x0);k=k+1;
end
fprintf('Nghiem x = %12.10f \n',x1);
fprintf('So vong lap k = %d \n',k);