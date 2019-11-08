clear all;
clc;

syms x y;
z=0.00125.*exp(-((x-3).^2+0.5.*y.^2)).*(sin(2.*x)+2.*sin(0.75*(0.5*y-2).^2)).*(16.*x+64.*x.^2+y.^2);

dx=diff(z,x)
dy=diff(z,y)
gradient(x,y)=sqrt(dx.^2+dy.^2)

maxslope=0;
maxx=0;
maxy=0;


for i= 1:0.05:5.5
    for j= -4:0.05:3
        if gradient(i,j)>maxslope
            maxslope=double(gradient(i,j));
            maxx=i;
            maxy=j;
        end
    end
end

disp(maxx)
disp(maxy)

