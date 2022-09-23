% Phuong phap day cung
clc; clear all; close all;
syms x; y = x - sin(x) - 1; a = 0; b = 3;
fplot(char(y),[a b]);
f = inline(vectorize(y),'x');

c = ((a*f(b)-b*f(a))/(f(b)-f(a))); k=1; tol = 1e-9;
while abs(f(c)) > tol
    if f(c) == 0
        break;
    elseif f(a) * f(c)>0
        a = c;
    else
        b = c;
    end
        c = ((a*f(b)-b*f(a))/(f(b)-f(a)));
        k=k+1;
end
fprintf('Nghiem x = %12.10f \n',c);
fprintf('So vong lap k = %d \n',k);
