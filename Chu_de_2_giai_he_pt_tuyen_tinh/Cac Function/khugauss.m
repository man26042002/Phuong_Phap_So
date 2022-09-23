function [A]= khugauss(A)
disp('___________ma tran da nhap____________ ');
 A
m=size(A,1);
n=size(A,2);
S=1;
% gauss
for k=1:min(n,m-1)
  
    for i=k+1:m
        if (A(k,k)==0)&&(A(i,k)~=0)
            for j=k:n
                t=A(k,j);
                A(k,j)= A(i,j);
                A(i,j)=t;
            end 
        end 
        p=A(i,k)/A(k,k);
        for j=k:n
            A(i,j)=A(i,j)-p*A(k,j);
        end
    end
end
disp('_________________ma tran da khu gauss_____________');
A
%det(A)
if m==n
   
    for i=1:n
        S = S*A(i,i);
    end 
    fprintf('det(A) = %f\n',S);
else
    disp('ma tran khong phai ma tran vuong');
end 
%rank
R =0;

for i=1:m
    for j=1:min(m,n)
        if A(i,j)~=0
            R=R+1;  break;
        end
    end
end
fprintf('rank(A) = %d\n',R);
%jordan
for i =1:min(n,m)
    h = A(i,i);
    for j=i:n
        A(i,j)= A(i,j)/h;
    end
end 

if (R < n)
    m =R;
end 

for i=min(m,n):-1:2
    for k=i-1:-1:1
        x = A(k,i)/A(i,i);
        for j=n:-1:1
            A(k,j)=A(k,j)-x*A(i,j);
        end
    end
end
disp('_______________________ma tran da khu gauss - jordan___________');


   
