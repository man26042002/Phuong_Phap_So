clc; clear all; close all;
f=@(x,y) (y.*sin(x))
h=0.05; x=0:h:10; y=5;
for k=1:length(x)-1
    p=y(k)+f(x(k),y(k))*h; % Predictor
    y(k+1)=y(k)+h*(f(x(k),y(k))+f(x(k+1),p))/2; % Corrector
end
plot(x,y,'g');