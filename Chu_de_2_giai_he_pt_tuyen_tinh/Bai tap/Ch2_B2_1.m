% Giai he phuong trinh
A = [2 -2 1 3; 3 1 -1 7; 1 -3  2 0]
n=size(A,1);
% Elimination
for k=1:n-1
    for i=k+1:n
        p=A(i,k)/A(k,k);
        for j=k:n+1
            A(i,j)=A(i,j)-p*A(k,j);
        end
    end
end
disp('Ma tran sau khi khu Gauss : ')
A
% Back substitution
for i=n:-1:1
    S=0;
    for j=i+1:n
        S=S+A(i,j)*x(j);
    end
    x(i,1)=(A(i,n+1)-S)/A(i,i);
end
disp('Nghiem cua ma tran : ')
x