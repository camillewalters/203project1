
function F=doublefunc(x)

f1=(cos(2*x(1))*exp(- (x(1) - 3)^2 - x(2)^2/2)*(64*x(1)^2 + 16*x(1) + x(2)^2))/400 + (exp(- (x(1) - 3)^2 - x(2)^2/2)*(128*x(1) + 16)*(sin(2*x(1)) + 2*sin((3*(x(2)/2 - 2)^2)/4)))/800 - (exp(- (x(1) - 3)^2 - x(2)^2/2)*(2*x(1) - 6)*(sin(2*x(1)) + 2*sin((3*(x(2)/2 - 2)^2)/4))*(64*x(1)^2 + 16*x(1) + x(2)^2))/800;
f2=(x(2)*exp(- (x(1) - 3)^2 - x(2)^2/2)*(sin(2*x(1)) + 2*sin((3*(x(2)/2 - 2)^2)/4)))/400 - (x(2)*exp(- (x(1) - 3)^2 - x(2)^2/2)*(sin(2*x(1)) + 2*sin((3*(x(2)/2 - 2)^2)/4))*(64*x(1)^2 + 16*x(1) + x(2)^2))/800 + (cos((3*(x(2)/2 - 2)^2)/4)*exp(- (x(1) - 3)^2 - x(2)^2/2)*((3*x(2))/8 - 3/2)*(64*x(1)^2 + 16*x(1) + x(2)^2))/400;

F=[f1 f2];