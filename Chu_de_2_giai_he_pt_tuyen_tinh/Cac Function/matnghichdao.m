function [B] = matnghichdao(A)
disp('___________ma tran da nhap____________ ');
A
m=size(A,1);
n=size(A,2);
S=1;
    % ma tran nghich dao : so hang bang so cot
if  m~=n 
    disp('ma tran khong kha nghich');
else
    B=eye(n);
    % Ghep 2 ma tran 
    for k=1:n-1
        for i=k+1:m
            p=A(i,k)/A(k,k);
            for j=1:n
                A(i,j)=A(i,j)-p*A(k,j);
                B(i,j)=B(i,j)-p*B(k,j);
            end
        end
    end
    % Tinh det
    for i=1:n
        S = S*A(i,i);
    end 
    % Xet dieu kien
    if S ==0
         disp('khong co ma tran nghich dao');
     else 
            for i =1:m
                h = A(i,i);
                for j=1:n
                     A(i,j)= A(i,j)/h;
                     B(i,j)=B(i,j)/h;
                end
            end 
    % Tim nghiem () Backup stitution
          for i=n:-1:1
                 for k=i-1:-1:1
                     x = A(k,i)/A(i,i);
                     for j=n:-1:1
                         B(k,j)=B(k,j)-x*B(i,j);
                         A(k,j)=A(k,j)-x*A(i,j);
                     end
                 end
           end
            disp('_____________ma tran nghich dao la_______');
    end 
end