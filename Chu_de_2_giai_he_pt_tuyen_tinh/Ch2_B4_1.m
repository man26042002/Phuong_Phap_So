clc;clear;close all;
A = [5 -2 3;-3 9 1;2 -1 -7];
b = [-1;2;3];
n=length(b);
x0=[0 0 0];
k = 0; tol = 1e-9; delta = 1;
while (sqrt(delta)> tol)
    for i = 1:n
        S = 0;
        for j = 1:n
            if j ~= i
                S = S + A(i,j)*x0(j);
            end
        end
        x1(i)=(b(i)-S)/A(i,i);
    end
    delta = 0;
    for i = 1:n
        delta = delta + (x1(i)-x0(i))*(x1(i)-x0(i));
    end
    x0 = x1;
    k=k+1;
end
format long
k,x0

        
        
        
        
        