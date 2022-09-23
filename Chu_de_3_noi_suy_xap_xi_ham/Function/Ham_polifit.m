function [i] = Ham_polifit(X, Y, n)
for i = 1 : n-1
    pp=polyfit(X,Y,i)
    xx=linspace(min(X)-0.5,max(X)+0.5,200);
    yy=polyval(pp,xx);
    figure(i);
    plot(xx,yy);hold on
    plot(X,Y,'sr');hold off;
end
    