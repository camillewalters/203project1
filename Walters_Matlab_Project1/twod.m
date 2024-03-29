clear all;
clc;


x=1:0.1:5.5;
y=-4:0.1:3;
[x y]=meshgrid(x,y);

z=0.00125.*exp(-((x-3).^2+0.5.*y.^2)).*(sin(2.*x)+2.*sin(0.75*(0.5*y-2).^2)).*(16.*x+64.*x.^2+y.^2);
t=-0.1.*z.^2+17*exp(-0.1.*((0.1.*x-2)-(0.05.*y-1).^2-(z-1).^2))-10;

surf(x,y,z,t);
title('Plot of Terrain with Temperature as a Colour Map')
xlabel('x (km)')
ylabel('y (km)')
zlabel('z (km)')
colorbar

