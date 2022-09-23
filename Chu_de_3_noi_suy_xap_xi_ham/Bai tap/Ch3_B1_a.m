clc; clear all; close all;
X = [-4.2, -2.4, -1.1, 2.1, 4.9];
Y = [29.1456, -25.5744, 65.2761, 51.2001, -11.6679];
n = length(X) - 1;
syms x; P = 0;
for i = 1 : n+1
    L = 1;
    for j = 1 : n+1
        if j ~= i
            L = L*(x-X(j))/(X(i)-X(j));
        end
    end
    P = P + L*Y(i);
end
P = simplify(P)
plot(X,Y,'-r*')
hold on
fplot(P,[-5 5])

