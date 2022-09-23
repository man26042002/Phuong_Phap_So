clc; clear all;
A=[2 -1 1;3 1 -1;1 -3 2];
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

% Tinh Dinh Thuc
p = 1;
sign = 1;
for i = 1 : m
    p = p * A(i,i);
end
fprintf('Dinh Thuc = %d\n',p);
        