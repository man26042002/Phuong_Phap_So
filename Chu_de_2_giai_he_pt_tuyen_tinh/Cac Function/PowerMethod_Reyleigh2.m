function [X,lambda,k] = PowerMethod_Reyleigh2(A,X,tol)
d = 1;k=0; n = size(A,1);
while d > tol
    X0 = X;
    for i=1:n
        w=inv(A)*X;
        X=w/norm(w);
    end    
    d = norm(X0-X);
    k=k+1;
end
lambda = (X'*A*X)/(X'*X);
