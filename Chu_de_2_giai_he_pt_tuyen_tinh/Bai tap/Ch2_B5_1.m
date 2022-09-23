clc;clear all;close all;
A=[2 -12;1 -5];X=[0;1];
N=8;
for k=1:N
    w=inv(A)*X;
    X=w/norm(w);
end
X
lambda=(X'*A*X)/(X'*X);
lambda