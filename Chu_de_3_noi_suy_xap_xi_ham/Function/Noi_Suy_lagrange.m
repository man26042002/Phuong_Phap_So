function [P] = Noi_Suy_lagrange(X, Y)
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
P = vpa(P,2);
plot(X,Y,'r*')
hold on
fplot(P, [min(X)-0.5, max(X)+0.5])
