% Khu Gauss - Jordan
clc; clear all;
A=[2 -1 1;3 1 -1;1 -3 2];
n=size(A,1);
m=size(A,2);
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
disp('Ma tran sau khi khu gauss - Jordan')
A