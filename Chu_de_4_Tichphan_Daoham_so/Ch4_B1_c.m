clc; clear all; close all;
% Phuong phap Simpson 3/8
syms x; y = cos(x)/(x^2 + 1);
f=inline(vectorize(y),'x');
a = 0; b = 10;
N = 5000000; S = 0;
x=a+(b-a)*rand(1,N);
for k = 1 : N
    S = S + f(x(k));
end
format long;
S*(b-a)/N
