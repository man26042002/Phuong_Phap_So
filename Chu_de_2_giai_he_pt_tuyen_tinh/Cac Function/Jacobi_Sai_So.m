function [x0, k] = Jacobi_Sai_So(A,b,tol)
k = 0; d = 1;
n = size(A,1);
x0 = zeros(1, n);
while (sqrt(d)> tol)
    for i = 1:n
        S = 0;
        for j = 1:n
            if j ~= i
                S = S + A(i,j)*x0(j);
            end
        end
        x1(i)=(b(i)-S)/A(i,i);
    end
    d=0;
    for i = 1:n
        d = d + (x1(i)-x0(i))*(x1(i)-x0(i));
    end
    x0 = x1;
    k=k+1;
end