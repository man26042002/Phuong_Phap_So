function [df,df2] = Dao_ham(y,x)
dx=1e-3; 
df=(y(x+(dx./2))-y(x-(dx./2)))./dx;
df2=(y(x+(dx))-2*y(x)+y(x-dx))./((dx)^2);