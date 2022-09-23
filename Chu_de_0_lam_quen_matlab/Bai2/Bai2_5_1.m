clc;   clear all;
tol = 1e-6;
k = 1; t = 1; s = 0;
x = input('Nhap vao x :  ');
while abs(t) > tol
    s = s + t;
    t = (x.^k)./factorial(k);
    k = k+1;
end
fprintf('e^x sai so 1e-6 theo Taylor la  %.6f\n',s);