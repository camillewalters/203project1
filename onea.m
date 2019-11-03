clear all;
clc;

x=1:0.1:5.5;
y=-4:0.1:3;
[x y]=meshgrid(x,y);
z=0.00125.*exp(-((x-3).^2+0.5.*y.^2)).*(sin(2.*x)+2.*sin(0.75*(0.5*y-2).^2)).*(16.*x+64.*x.^2+y.^2);

 surf(x,y,z);
 surfc(x,y,z);
%contour(x,y,z,30);
