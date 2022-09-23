% + Bang ham fplot:
% - fplot(<f(x)>,<lim x,y>,<frm>)
% - fplot(<f(x)>,<lim x,y>)
figure(2)
fx='sin(x^3)';
xlim=[0 5];
fplot(fx,xlim,'.r-');