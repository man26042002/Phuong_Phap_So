clc; clear all; close all;
S=dsolve('D2y+Dy-6*y^2=0','y(0)=1.5, Dy(0)=2')
figure(1);
ezplot(S,[0 3])

