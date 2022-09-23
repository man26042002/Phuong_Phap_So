% Bisetion Method
clc;clear all;close all;
% Khoang [0; 1]
syms x;y=exp(-x)-sin(x);a=0;b=1;
fplot(char(y),[a b]);hold on;
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
fprintf('Nghiem x1 = %12.10f \n',c);
fprintf('So vong lap k = %d \n',k);
% Khoang [1; 6]
syms x;y=exp(-x)-sin(x);a=1;b=6;
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
fprintf('Nghiem x2 = %12.10f \n',c);
fprintf('So vong lap k = %d \n',k);
% Khoang [6; 9]
syms x;y=exp(-x)-sin(x);a=6;b=9;
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
fprintf('Nghiem x3 = %12.10f \n',c);
fprintf('So vong lap k = %d \n',k);
%Khoang [9; 10]
syms x;y=exp(-x)-sin(x);a=1;b=6;
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
fprintf('Nghiem x2 = %12.10f \n',c);
fprintf('So vong lap k = %d \n',k);
