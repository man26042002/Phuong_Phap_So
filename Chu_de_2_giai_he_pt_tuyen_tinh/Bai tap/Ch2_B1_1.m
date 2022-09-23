% Gauss Elimination
clear all; clc;
A=[2 -1 1;3 1 -1;1 -3 2];%A=[A|b]
n=size(A,1);
m=size(A,2);
% Elimination
for k = 1 : min(m,n)
    for i = k+1 : m
        p=A(i,k)/A(k,k);
        for j = k : n
        A(i,j)=A(i,j)-p*A(k,j);
        end
    end
end
A