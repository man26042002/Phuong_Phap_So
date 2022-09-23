figure(1)
syms t;
x = 15*cos((pi/2)*t - pi/2);
v = diff(x);
a = diff(v);
t = [0 2*pi];  
fplot(x,t,'.r-');  hold on;  fplot(v,t,'.b-');    fplot(a,t,'.g-');
legend('x(t)','v(t)','a(t)');
title('Do thi dao dong');
xlabel('t - thoi gian');    ylabel('A - Bien do');

figure(2);
ezplot(x,v, [0 2*pi]);
