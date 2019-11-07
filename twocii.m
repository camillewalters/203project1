clear all;
clc;

syms x y z
 
t=-0.1.*z.^2+17*exp(-0.1.*((0.1.*x-2)-(0.05.*y-1).^2-(z-1).^2))-10;
dx(x,y,z)=diff(t,x);
dy(x,y,z)=diff(t,y);
dz(x,y,z)=diff(t,z);

%northwest direction
i1=-1./(sqrt(1+1+1.3469.^2));
j1=1./(sqrt(1+1+1.3469.^2));
k1=1.3469./(sqrt(1+1+1.3469.^2));

%southwest direction
i2=-1./(sqrt(1+1+0.7912.^2));
j2=-1./(sqrt(1+1+0.7912.^2));
k2=-0.7912./(sqrt(1+1+0.7912.^2));

%directional derivative north west
ddnw=double((i1.*dx(4,-0.3,0.1675))+(j1.*dy(4,-0.3,0.1675))+(j1.*dz(4,-0.3,0.1675)))

%directional derivative south west
ddsw=double((i2.*dx(4,-0.3,0.1675))+(j2.*dy(4,-0.3,0.1675))+(j2.*dz(4,-0.3,0.1675)))
