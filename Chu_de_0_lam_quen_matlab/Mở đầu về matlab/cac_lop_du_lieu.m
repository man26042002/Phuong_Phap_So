% Cac lop du lieu
clc; clear all;
% lop double
a=1, b=[1 2 3], c=[1 2;3 4], z=1+2i, ca=class(a), cb=class(b), cz=class(c),
cz=class(z)
% Lop char
t='Khoa Vat ly, Truong DHKH Tu Nhien, DHQGHN', ct=class(t)
% Lop sym
syms x;y=x^2,cy=class(y)
% Lop inline
f=inline('x^2','x'), cf=class(f)