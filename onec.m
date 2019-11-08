clear all
clc
syms x y

z(x,y)=0.00125.*exp(-((x-3).^2+0.5.*y.^2)).*(sin(2.*x)+2.*sin(0.75*(0.5*y-2).^2)).*(16.*x+64.*x.^2+y.^2);
A(x,y)=diff(diff(z,x),x);
B(x,y)=diff(diff(z,x),y);
C(x,y)=diff(diff(z,y),y);
D(x,y)=B.^2-A.*C;

% x=2.9191;
% y=-0.7505;

% x=3.5963;
% y=-2.0459;

x=3.5551;
y=0.6003;

solz=double(z(x,y))
sola=double(A(x,y))
solb=double(B(x,y))
solc=double(C(x,y))
sold=double(D(x,y))

if sold<0 && sola<0
    fprintf('relative max')
elseif sold<0 && sola>0
    fprintf('relative min')
elseif sold>0
    fprintf('saddle point')
elseif sold==0
    fprintf('no conclusion')
end