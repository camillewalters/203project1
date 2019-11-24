clear all;
clc;

syms x y;
z=0.00125.*exp(-((x-3).^2+0.5.*y.^2)).*(sin(2.*x)+2.*sin(0.75*(0.5*y-2).^2)).*(16.*x+64.*x.^2+y.^2);

%partial derivatives
dx=diff(z,x)
dy=diff(z,y)
%magnitude of the gradient, which is the slope
gradient(x,y)=sqrt(dx.^2+dy.^2)

%initializing max values
maxslope=0;
maxx=0;
maxy=0;

%iterating through all values of x and y and checking gradient value
%incrementing by value of 0.05 for precision
for i= 1:0.05:5.5
    for j= -4:0.05:3
        if gradient(i,j)>maxslope
            %reassigning values if gradient that was just checked is larger
            maxslope=double(gradient(i,j));
            maxx=i;
            maxy=j;
        end
    end
end

disp(maxx)
disp(maxy)

