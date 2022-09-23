clc; clear all;
A=[2 -1 1;3 1 -1;1 -3 2];
n = size(A,1);
m = size(A,2);
s = 0;
% Khu Gauss
for k = 1 : min(m, n)
    for i = k+1 : m
        p=A(i,k)/A(k,k);
            for j = k : n
            A(i,j)=A(i,j)-p*A(k,j);
            end
    end
end
disp('Ma tran sau khi khu Gauss :')
A
% Rank
for i = 1 : n
    for j = 1 : min(m,n)
        if A(i,j) ~= 0
            s = s + 1; break;
        end
    end
end
fprintf('Rank(A) = %d\n',s);
    