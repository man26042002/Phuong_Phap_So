%Tim Tri rieng-Vector rieng bang cheo hoa
clc;clear all;close all;
A=[2 -12;1 -5];
[P,D]=eig(A);
lambda=diag(D);
for k=1:size(A,1)
disp('Tri rieng=');ld=lambda(k)
disp('Vector rieng=');v=P(:,k)
end