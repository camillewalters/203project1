clear all;
clc;

%using 0.1 unit increment
x=1:0.1:5.5;
y=-4:0.1:3;
[x y]=meshgrid(x,y);
%z function
z=0.00125.*exp(-((x-3).^2+0.5.*y.^2)).*(sin(2.*x)+2.*sin(0.75*(0.5*y-2).^2)).*(16.*x+64.*x.^2+y.^2);

%plot of surface
surf(x,y,z);
xlabel('x')
ylabel('y') 
zlabel('f(x,y)')
title('Plot of Terrain') 
 
%contour plot
[c h]=contour(x,y,z,30)
clabel(c,h)
xlabel('x')
ylabel('y')
title('Contour Plot')
colorbar
