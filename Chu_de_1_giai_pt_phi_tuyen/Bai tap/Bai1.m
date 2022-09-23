% Bisetion Method
clc;clear all;close all;
syms x;y=exp(-x)-sin(x);a=0;b=1;
fplot(char(y),[a b]);
f=inline(vectorize(y),'x');
c=(a+b)/2;k=1; tol=1e-9;
while abs(f(c))>tol
if f(c)==0;
break;
elseif f(a)*f(c)>0
a=c;
else
b=c;
end
c=(a+b)/2;k=k+1;
end
fprintf('Nghiem x = %12.10f \n',c);
fprintf('So vong lap k = %d \n',k);