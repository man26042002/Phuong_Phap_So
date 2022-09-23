clc; clear all; close all;
syms t; x=15*sin((pi/2)*t+pi/3);
v=diff(x,'t');
a=diff(x,'t',2);
tlim=[0 15];
% Ve do thi : Su dung fplot
fplot(x,tlim,'-r');hold on
fplot(v,tlim,'-b');
fplot(a,tlim,'-g');hold off
% Ghi chu cac diem dac biet
title('Do thi dao dong dieu hoa x,v,a');
xlabel('t-thoi gian');
legend('x-li do','v-van toc','a-gia toc');
x,v,a
tt=linspace(0,15,100);
xt=@(t)15.*sin((pi/2).*t+pi/3);
[df,df2] = Dao_ham(xt,tt)
figure(2)
plot(tt,df); hold on
plot(tt,df2);
fplot(v,tlim,'-b');
fplot(a,tlim,'-g');hold off