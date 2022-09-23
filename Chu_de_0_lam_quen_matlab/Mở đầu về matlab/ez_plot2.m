% Ve ham tham so: x=x(t);y=y(t);
% - h=ezplot(<x(t)>,y(t),<lim t>)
% set(h,...)
figure(4);
syms t;
x=16*sin(t)^3;
y=13*cos(t)-5*cos(2*t)-2*cos(3*t);
h=ezplot(x,y,[0 2*pi]);
set(h,'color','r','linewidth');
axis square;shg;