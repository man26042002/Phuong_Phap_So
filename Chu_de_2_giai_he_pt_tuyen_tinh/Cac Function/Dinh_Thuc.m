function [p] = Dinh_Thuc(A)
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
for i = 1 : m
    p = p * A(i,i);
end
