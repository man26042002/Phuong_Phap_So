function [P] = Noi_Suy_NewTon(X, Y)
n = length(X) - 1;
syms x;
% Buoc 1: Tim ma tran sai phan
F=[Y',zeros(n+1,n)]
for j=2:n+1
    for i=j:n+1
        F(i,j)=(F(i,j-1)-F(i-1,j-1))/(X(i)-X(i-j+1));
    end
end
F
% Buoc 2: Tinh da thuc noi suy
D=diag(F);
P=0;
for i=1:n+1
    L=1;
    for j=1:i-1
        L=L*(x-X(j));
    end
    P=P+D(i)*L;
end
P = simplify(P)
P = vpa(P,2);
plot(X,Y,'r*')
hold on
fplot(P, [min(X)-0.5, max(X)+0.5])