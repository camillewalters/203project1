clear all
clc

syms x y z
%displaying first derivative
z(x,y)=0.00125.*exp(-((x-3).^2+0.5.*y.^2)).*(sin(2.*x)+2.*sin(0.75*(0.5*y-2).^2)).*(16.*x+64.*x.^2+y.^2);

disp(diff(z,x))
disp(diff(z,y))

%initial guesses based on contour plot
x0 = [3,-1];
x1 = [3.5,-2];
x2 = [3.75, 0.5];

xa = fsolve(@doublefunc,x0)
xb = fsolve(@doublefunc,x1)
xc = fsolve(@doublefunc,x2)

function F=doublefunc(x)

f1=(cos(2*x(1))*exp(- (x(1) - 3)^2 - x(2)^2/2)*(64*x(1)^2 + 16*x(1) + x(2)^2))/400 + (exp(- (x(1) - 3)^2 - x(2)^2/2)*(128*x(1) + 16)*(sin(2*x(1)) + 2*sin((3*(x(2)/2 - 2)^2)/4)))/800 - (exp(- (x(1) - 3)^2 - x(2)^2/2)*(2*x(1) - 6)*(sin(2*x(1)) + 2*sin((3*(x(2)/2 - 2)^2)/4))*(64*x(1)^2 + 16*x(1) + x(2)^2))/800;
f2=(x(2)*exp(- (x(1) - 3)^2 - x(2)^2/2)*(sin(2*x(1)) + 2*sin((3*(x(2)/2 - 2)^2)/4)))/400 - (x(2)*exp(- (x(1) - 3)^2 - x(2)^2/2)*(sin(2*x(1)) + 2*sin((3*(x(2)/2 - 2)^2)/4))*(64*x(1)^2 + 16*x(1) + x(2)^2))/800 + (cos((3*(x(2)/2 - 2)^2)/4)*exp(- (x(1) - 3)^2 - x(2)^2/2)*((3*x(2))/8 - 3/2)*(64*x(1)^2 + 16*x(1) + x(2)^2))/400;

F=[f1 f2];
end