clc;clear all;close all;
A=[2 -12;1 -5];X=[0;1];tol=1e-9;
format long
[X,lambda,k] = PowerMethod_Reyleigh2(A,X,tol)