% Gauss Elimination
clear all; clc;
A=[2 4 3 4;3 1 -2 -2;4 11 7 7];%A=[A|b]
n=size(A,1);
% Elimination
for k=1:n-1
    % InterChange
    imax = k;
    for i=k+1:n
        if abs(A(i,k)) > abs(A(imax,k))
            imax = i;
        end
    end
    for j=1:n+1
        q=A(k,j);
        A(k,j)=A(imax,j);
        A(imax,j)=q;
    end
    % Emilination
    for i=k+1:n
        p=A(i,k)/A(k,k);
        for j=k:n+1
            A(i,j)=A(i,j)-p*A(k,j);
        end
    end
end
disp('Ma tran sau khi khu gauss trao hang :');
A
% Back substitution
for i=n:-1:1
    S=0;
    for j=i+1:n
        S=S+A(i,j)*x(j);
    end
    x(i,1)=(A(i,n+1)-S)/A(i,i);
end
disp('Ma tran mo rong luc sau va nghiem cua no :');
A,x