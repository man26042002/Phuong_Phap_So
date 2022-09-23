function [A] = Gauss_Jordan(A)
m=size(A,1);
n=size(A,2);
for k = 1 : min(m,n)
    for i = 1 : m
        if i ~= k
            p = A(i,k)/A(k,k);
            for j = 1 : n
                A(i,j)=A(i,j)-p*A(k,j);  
            end
        end
    end
end