clear all;
clc;

syms x y;
% assume(x>1&x<5.5);
% assume(y>-4&y<3);
z=0.00125.*exp(-((x-3).^2+0.5.*y.^2)).*(sin(2.*x)+2.*sin(0.75*(0.5*y-2).^2)).*(16.*x+64.*x.^2+y.^2);

dx=diff(z,x)==0
dy=diff(z,y)==0;
sol=solve([dx,dy]);
xsol=sol.x
ysol=sol.y
