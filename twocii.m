clear all;
clc;

syms x y z
 
t=-0.1.*z.^2+17*exp(-0.1.*((0.1.*x-2)-(0.05.*y-1).^2-(z-1).^2))-10;

%components of the gradient of the temperature function
dx(x,y,z)=diff(t,x)
dy(x,y,z)=diff(t,y)
dz(x,y,z)=diff(t,z)

z(x,y)=0.00125.*exp(-((x-3).^2+0.5.*y.^2)).*(sin(2.*x)+2.*sin(0.75*(0.5*y-2).^2)).*(16.*x+64.*x.^2+y.^2);
elevation=z(4,-0.3);

%components of gradient of elevation function
dzdx(x,y)=diff(z,x)
dzdy(x,y)=diff(z,y)

tangentPlane(x,y)=dzdx(4,-0.3)*(x-4)+dzdy(4,-0.3)*(y+0.3);

%elevations at the points
NWP=tangentPlane(-1,-1);
SWP=tangentPlane(-1,1);

% to see the values of the points
disp(double(NWP))
disp(double(SWP))

%northwest direction unit vector
i1=-1./(sqrt(1+1+NWP.^2));
j1=1./(sqrt(1+1+NWP.^2));
k1=NWP./(sqrt(1+1+NWP.^2));

%southwest direction unit vector
i2=-1./(sqrt(1+1+SWP.^2));
j2=-1./(sqrt(1+1+SWP.^2));
k2=SWP./(sqrt(1+1+SWP.^2));


%directional derivative north west
ddnw=double((i1.*dx(4,-0.3,elevation))+(j1.*dy(4,-0.3,elevation))+(j1.*dz(4,-0.3,elevation)))

%directional derivative south west
ddsw=double((i2.*dx(4,-0.3,elevation))+(j2.*dy(4,-0.3,elevation))+(k2.*dz(4,-0.3,elevation)))
