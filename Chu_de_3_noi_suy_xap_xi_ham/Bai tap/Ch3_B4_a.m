%Spline
clc; clear all; close all;
X = [0,13,24,36,40,51,63,74,82,85];
Y = [0,15,34,49,27,11,19,61,37,0];
sp = spline(X,Y);
sp.breaks
sp.coefs
xx = linspace(0,85,300);
yy = fnval(sp,xx);
figure(1);
plot(xx,yy);hold on
plot(X,Y,'sr');hold off;
title('???ng ?i kh? d? c?a t�u th?y :))');