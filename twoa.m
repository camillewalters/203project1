clear all
clc
syms x y z
t(x,y,z)=-0.1.*z.^2+17*exp(-0.1.*((0.1.*x-2)-(0.05.*y-1).^2-(z-1).^2))-10;

xmin=2.9191;
ymin=-0.7505;
zmin=-1.2236;

xmax=3.5963;
ymax=-2.0459;
zmax=0.1796;

tempmin=double(t(xmin,ymin,zmin))
tempmax=double(t(xmax,ymax,zmax))