%Monte-Carlo Integration
clc;clear all;close all;
syms x;y=cos(x);
f=inline(vectorize(y),'x');
a=0;b=pi/2;
N=5000;
x=a+(b-a)*rand(1,N);
S=0;
for k=1:N
    S=S+f(x(k));
end
format long;
S*(b-a)/N
format short;