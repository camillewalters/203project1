clear all;
clc;

%using 0.1 unit increment
x=1:0.1:5.5;
y=-4:0.1:3;
[x y]=meshgrid(x,y);
%z function
z=0.00125.*exp(-((x-3).^2+0.5.*y.^2)).*(sin(2.*x)+2.*sin(0.75*(0.5*y-2).^2)).*(16.*x+64.*x.^2+y.^2);


%plot of surface
figure(1)
surf(x,y,z);
xlabel('x (km)')
ylabel('y (km)') 
zlabel('f(x,y)')
title('Plot of Terrain') 
colorbar
 
%contour plot
figure(2)
[c h]=contour(x,y,z,30)
clabel(c,h)
xlabel('x (km)')
ylabel('y (km)')
title('Contour Plot')
colorbar
