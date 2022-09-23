clc;   clear all;
tol = 1e-6;
k = 0; s = 0;
x = input('Nhap x (Radian) :  ');
t = 1;
while abs(t) > tol
    s = s + t;
    t = ((-1)^(k+1)).*(x.^((2*k)+1))./factorial((2*k)+1);
    k = k + 1;
end;
fprintf('sin(x) tinh theo Taylor :  %.6f\n',s);
fprintf('So vong lap :  %d',k);