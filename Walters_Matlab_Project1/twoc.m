clear all;
clc;

%this script solves c parts i. and iii.
syms x y z
z=0.00125.*exp(-((x-3).^2+0.5.*y.^2)).*(sin(2.*x)+2.*sin(0.75*(0.5*y-2).^2)).*(16.*x+64.*x.^2+y.^2);
t=-0.1.*z.^2+17*exp(-0.1.*((0.1.*x-2)-(0.05.*y-1).^2-(z-1).^2))-10;

%components of the gradient
dx(x,y)=diff(z,x)
dy(x,y)=diff(z,y)

%northwest direction unit vector
i1=-1./sqrt(2);
j1=1./sqrt(2);

%southwest direction unit vector
i2=-1./sqrt(2);
j2=-1./sqrt(2); 


%directional derivative of the function going north west
ddnw=double((i1.*dx(4,-0.3))+(j1.*dy(4,-0.3)))

%directional derivative of the function going south west
ddsw=double((i2.*dx(4,-0.3))+(j2.*dy(4,-0.3)))
