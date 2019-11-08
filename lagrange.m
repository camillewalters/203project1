clear all 
clc


syms x y z lambda
%function to optimize
t=-0.1.*(0.00125.*exp(-((x-3).^2+0.5.*y.^2)).*(sin(2.*x)+2.*sin(0.75*(0.5*y-2).^2)).*(16.*x+64.*x.^2+y.^2)).^2+17*exp(-0.1.*((0.1.*x-2)-(0.05.*y-1).^2-((0.00125.*exp(-((x-3).^2+0.5.*y.^2)).*(sin(2.*x)+2.*sin(0.75*(0.5*y-2).^2)).*(16.*x+64.*x.^2+y.^2))-1).^2))-10;
%constraint
C=0.00125.*exp(-((x-3).^2+0.5.*y.^2)).*(sin(2.*x)+2.*sin(0.75*(0.5*y-2).^2)).*(16.*x+64.*x.^2+y.^2)-z==0;
%lagrange equation
L=t+lambda.*lhs(C);
%partial derivatives
dx=diff(L,x)
dy=diff(L,y)
dz=diff(L,z)
dl=diff(L,lambda)

