figure(1)
x = @(t)15.*cos((pi/2)*t - pi/2);
v = @(t)-15*(pi/2).*sin((pi/2)*t - pi/2);
a = @(t)-15*(pi/2)*(pi/2).*cos((pi/2)*t - pi/2)';
tlim = [0 15];
fplot(x,tlim,'.r-'); hold on;
fplot(v,tlim,'.b-'); hold on;
fplot(a,tlim,'.g-');
legend('x = 15*cos((pi/2)*t - pi/2)', 'v = -15*(pi/2)*sin((pi/2)*t - pi/2)', 'a = -15*(pi/2)*(pi/2)*cos((pi/2)*t - pi/2)');
