% Newton-Raphson Method
clc;clear all;close all;
syms x;y=exp(-x)-sin(x);
dy=diff(y,'x');
a=0;b=1;
fplot(char(y),[a b]);
f=inline(vectorize(y),'x');
df=inline(vectorize(dy),'x');
tol=1e-9;
x0=1;
x1=x0-f(x0)/df(x0);k=1;
while abs(f(x1))>tol
x0=x1;
x1=x0-f(x0)/df(x0);k=k+1;
end
fprintf('Nghiem x = %12.10f \n',x1);
fprintf('So vong lap k = %d \n',k);