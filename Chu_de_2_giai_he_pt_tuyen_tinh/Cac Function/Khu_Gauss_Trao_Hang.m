function [A] = Khu_Gauss_Trao_Hang(A)
m=size(A,1);
n=size(A,2);
% Elimination
for k = 1 : min(m,n)
     % InterChange
    imax = k;
    for i=k+1:m
        if abs(A(i,k)) > abs(A(imax,k))
            imax = i;
        end
    end
    for j=1:n
        q=A(k,j);
        A(k,j)=A(imax,j);
        A(imax,j)=q;
    end
    % Emilination
    for i = k+1 : m
        p=A(i,k)/A(k,k);
        for j = k : n
        A(i,j)=A(i,j)-p*A(k,j);
        end
    end
end