% + Bang cac ham ezplot
% - ezplot(<f(x)>,<lim x,y>)
figure(3)
xylim=[0 4 -1 1];
subplot(2,1,1); %<fx>- bieu thuc char
ezplot(fx,xylim);
syms x ; fx1=sin(x^3)
subplot(2,1,2); %<fx1>- bieu thuc sym
h=ezplot(fx1,xlim); set(h,'color','r');
