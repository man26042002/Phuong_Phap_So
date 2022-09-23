% Tich phan trong Matlab
clc;clear all;close all;
syms x;y=cos(x); % x tinh theo radian
a=0;b=10;
I1=int(y,'x',a,b)
f=inline(vectorize(y),'x');
I2=quad(f,a,b)