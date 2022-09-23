function [x1,x2]=gptb2(a,b,c)
% function file: Giai phuong trinh bac 2: a.x^2+b.x+c=0
d=sqrt(b^2-4*a*c);% Tinh can biet thuc
x1=(-b-d)/(2*a); % Nghiem thu 1
x2=(-b+d)/(2*a); % Nghiem thu 2