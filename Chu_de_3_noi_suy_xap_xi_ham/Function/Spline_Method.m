function [s,ss] = Spline_Method(X,Y)
sp=spline(X,Y);
s = sp.breaks;
ss = sp.coefs;
% Ve do thi
xx = linspace(min(X)-0.5,max(X)+0.5,300);
yy = fnval(sp,xx);
figure(1);
plot(xx,yy);hold on
plot(X,Y,'sr');hold off;
