clear all;
clc;

z=0.00125.*exp(-((x-3).^2+0.5.*y.^2)).*(sin(2.*x)+2.*sin(0.75*(0.5*y-2).^2)).*(16.*x+64.*x.^2+y.^2);

dx(x,y)=diff(z,x)
dy(x,y)=diff(z,y)

%northwest direction from (4, -0.3)
i1=3;
j1=0.7;

%southwest direction from (4, -0.3)
i2=3;
j2=-1.3; 


%if the vectors are at an acute angle to each other,the dot product is
%positive and they are decending. Otherwise, they are ascending
