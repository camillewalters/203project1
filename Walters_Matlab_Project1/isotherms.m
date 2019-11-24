clear all
clc

%using z value from part b. i.
z=0.1675;

x=1:0.1:5.5;
y=-4:0.1:3;
[x y]=meshgrid(x,y);
t=-0.1.*z.^2+17*exp(-0.1.*((0.1.*x-2)-(0.05.*y-1).^2-(z-1).^2))-10;

%use contour plot with a constant z value to find isotherms
[c h]=contour (x,y,t,30)
clabel (c,h)
xlabel('x(km)')
ylabel('y(km)')
title('Isotherms at Point (4, -0.3)')
colorbar