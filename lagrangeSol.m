clear all
clc
%initial guess based on plot from part e
x0=[2.9 -0.8 -1.2163 0]
[x, fval]=fsolve(@solution, x0)


function F=solution (x)
%conversion of variables as follows

%x(1)=x
%x(2)=y
%x(3)=z
%x(4)=lambda

%functions from "lagrange.m"
f1=x(4)*((cos(2*x(1))*exp(- (x(1) - 3)^2 - x(2)^2/2)*(64*x(1)^2 + 16*x(1) + x(2)^2))/400 + (exp(- (x(1) - 3)^2 - x(2)^2/2)*(128*x(1) + 16)*(sin(2*x(1)) + 2*sin((3*(x(2)/2 - 2)^2)/4)))/800 - (exp(- (x(1) - 3)^2 - x(2)^2/2)*(2*x(1) - 6)*(sin(2*x(1)) + 2*sin((3*(x(2)/2 - 2)^2)/4))*(64*x(1)^2 + 16*x(1) + x(2)^2))/800) + 17*exp(((exp(- (x(1) - 3)^2 - x(2)^2/2)*(sin(2*x(1)) + 2*sin((3*(x(2)/2 - 2)^2)/4))*(64*x(1)^2 + 16*x(1) + x(2)^2))/800 - 1)^2/10 - x(1)/100 + (x(2)/20 - 1)^2/10 + 1/5)*((((exp(- (x(1) - 3)^2 - x(2)^2/2)*(sin(2*x(1)) + 2*sin((3*(x(2)/2 - 2)^2)/4))*(64*x(1)^2 + 16*x(1) + x(2)^2))/800 - 1)*((cos(2*x(1))*exp(- (x(1) - 3)^2 - x(2)^2/2)*(64*x(1)^2 + 16*x(1) + x(2)^2))/400 + (exp(- (x(1) - 3)^2 - x(2)^2/2)*(128*x(1) + 16)*(sin(2*x(1)) + 2*sin((3*(x(2)/2 - 2)^2)/4)))/800 - (exp(- (x(1) - 3)^2 - x(2)^2/2)*(2*x(1) - 6)*(sin(2*x(1)) + 2*sin((3*(x(2)/2 - 2)^2)/4))*(64*x(1)^2 + 16*x(1) + x(2)^2))/800))/5 - 1/100) - (exp(- 2*(x(1) - 3)^2 - x(2)^2)*(128*x(1) + 16)*(sin(2*x(1)) + 2*sin((3*(x(2)/2 - 2)^2)/4))^2*(64*x(1)^2 + 16*x(1) + x(2)^2))/3200000 - (cos(2*x(1))*exp(- 2*(x(1) - 3)^2 - x(2)^2)*(sin(2*x(1)) + 2*sin((3*(x(2)/2 - 2)^2)/4))*(64*x(1)^2 + 16*x(1) + x(2)^2)^2)/1600000 + (exp(- 2*(x(1) - 3)^2 - x(2)^2)*(4*x(1) - 12)*(sin(2*x(1)) + 2*sin((3*(x(2)/2 - 2)^2)/4))^2*(64*x(1)^2 + 16*x(1) + x(2)^2)^2)/6400000
f2=17*exp(((exp(- (x(1) - 3)^2 - x(2)^2/2)*(sin(2*x (1)) + 2*sin((3*(x(2)/2 - 2)^2)/4))*(64*x(1)^2 + 16*x(1) + x(2)^2))/800 - 1)^2/10 - x(1)/100 + (x(2)/20 - 1)^2/10 + 1/5)*(x(2)/2000 + (((exp(- (x(1) - 3)^2 - x(2)^2/2)*(sin(2*x(1)) + 2*sin((3*(x(2)/2 - 2)^2)/4))*(64*x(1)^2 + 16*x(1) + x(2)^2))/800 - 1)*((x(2)*exp(- (x(1) - 3)^2 - x(2)^2/2)*(sin(2*x(1)) + 2*sin((3*(x(2)/2 - 2)^2)/4)))/400 - (x(2)*exp(- (x(1) - 3)^2 - x(2)^2/2)*(sin(2*x(1)) + 2*sin((3*(x(2)/2 - 2)^2)/4))*(64*x(1)^2 + 16*x(1) + x(2)^2))/800 + (cos((3*(x(2)/2 - 2)^2)/4)*exp(- (x(1) - 3)^2 - x(2)^2/2)*((3*x(2))/8 - 3/2)*(64*x(1)^2 + 16*x(1) + x(2)^2))/400))/5 - 1/100) + x(4)*((x(2)*exp(- (x(1) - 3)^2 - x(2)^2/2)*(sin(2*x(1)) + 2*sin((3*(x(2)/2 - 2)^2)/4)))/400 - (x(2)*exp(- (x(1) - 3)^2 - x(2)^2/2)*(sin(2*x(1)) + 2*sin((3*(x(2)/2 - 2)^2)/4))*(64*x(1)^2 + 16*x(1) + x(2)^2))/800 + (cos((3*(x(2)/2 - 2)^2)/4)*exp(- (x(1) - 3)^2 - x(2)^2/2)*((3*x(2))/8 - 3/2)*(64*x(1)^2 + 16*x(1) + x(2)^2))/400) - (x(2)*exp(- 2*(x(1) - 3)^2 - x(2)^2)*(sin(2*x(1)) + 2*sin((3*(x(2)/2 - 2)^2)/4))^2*(64*x(1)^2 + 16*x(1) + x(2)^2))/1600000 + (x(2)*exp(- 2*(x(1) - 3)^2 - x(2)^2)*(sin(2*x(1)) + 2*sin((3*(x(2)/2 - 2)^2)/4))^2*(64*x(1)^2 + 16*x(1) + x(2)^2)^2)/3200000 - (cos((3*(x(2)/2 - 2)^2)/4)*exp(- 2*(x(1) - 3)^2 - x(2)^2)*((3*x(2))/8 - 3/2)*(sin(2*x(1)) + 2*sin((3*(x(2)/2 - 2)^2)/4))*(64*x(1)^2 + 16*x(1) + x(2)^2)^2)/1600000
f3=-x(4)
f4=(exp(- (x(1) - 3)^2 - x(2)^2/2)*(sin(2*x(1)) + 2*sin((3*(x(2)/2 - 2)^2)/4))*(64*x(1)^2 + 16*x(1) + x(2)^2))/800 - x(3)

F=[f1 f2 f3 f4]
end