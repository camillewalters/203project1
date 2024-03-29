clear all
clc

syms x y z

%initializing parametrically to be able to sub in values
t(x,y,z)=-0.1.*z.^2+17*exp(-0.1.*((0.1.*x-2)-(0.05.*y-1).^2-(z-1).^2))-10;

xmin=2.9191;
ymin=-0.7505;
zmin=-1.2236;
tempmin=double(t(xmin,ymin,zmin))

xmax=3.5551;
ymax=0.6003;
zmax=1.5883;
tempmax=double(t(xmax,ymax,zmax))

%used in part b. i.
xpoint=4;
ypoint=-0.3;
zpoint=0.1675;
temppoint=double(t(xpoint,ypoint,zpoint))