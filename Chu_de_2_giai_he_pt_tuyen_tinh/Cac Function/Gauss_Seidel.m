function [x, k] = Gauss_Seidel(A,b,tol)
k = 0; d = 1;
n = size(A,1);
x = zeros(1, n);
% Gauss - Seidel
while d > tol
    temp = x;
    for i = 1:n
        S = 0;
        for j = 1:n
            if i ~= j
               S = S + A(i,j)*x(j);
            end
        end
        x(i) = (b(i)-S)/A(i,i);
     end
     k = k+1;
     d = norm(temp - x);
end
    
