function [X,lambda] = PowerMethod_Reyleigh(A,X,N)
for k=1:N
    w=inv(A)*X;
    X=w/norm(w);
end
lambda = (X'*A*X)/(X'*X);