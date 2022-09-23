function [x] = Giai_he_pt_Gauss_Jordan(A)
n=size(A,1);
% Elimination
for k=1:n
    for i=1:n
        if i~=k
            p=A(i,k)/A(k,k);
            for j=1:n+1
                A(i,j)=A(i,j)-p*A(k,j);
            end
        end
    end
end
disp('Ma tran sau khi khu Gauss-Jordan: ')
A
% substitution
for i=1:n
    x(i)=(A(i,n+1))/A(i,i);
end
disp('Nghiem cua ma tran : ')
