fun = @doublefunc;

%initial guesses based on contour plot
x0 = [3,-1];
% x0 = [3.5,-2];
% x0 = [3.75, 0.5];

x = fsolve(fun,x0)