close all
clc

% 
% %case1
% R=0.25
% T=0.02;
% H=0.150;
% PHI=30;
% D=0.015;

%case2
R=0.4;
T=0.02;
H=0.275;
PHI=45;
D=0.035;

syms x y
%PART 1
%part I
z=sqrt(0.25^2-x^2-y^2);
fsurf(z)
hold on
fsurf(-z);
hold on
% z=sqrt(x^2+y^2-r)
% fsurf(z);
% hold on
z=sqrt(x^2+y^2)*tan(PHI*pi/180)
fsurf(z);
UL=H*tan(PHI*pi/180)
zlim([-R UL]);
hold on;



syms r theta z real
%solving for body volume
Pi=sym('pi');
I1=int(r,z,sqrt((R-T)^2-r^2),sqrt(R^2-r^2));%z integral outer
I2=int(I1,r,0,R);%r integral outer
I3=int(I2,theta,0,Pi/2);%theta integral outer
% I4=int(r,z,0,sqrt(T^2-r^2));%z integral inner
% I5=int(I4,r,0,R-T);%r integral inner
% I6=int(I5,theta,0,Pi/2);%theta integral iner
IBod=8*(I3);
volBody=double(IBod)

%solving for head volume
I7=int(r,z,0,sqrt(H^2-r^2));%z integral 
I8=int(I1,r,0,H);%r integral 
I9=int(I2,theta,0,Pi/2);%theta integral 
IHead=4*I9;
volHead=double(IHead)

%solving for neck volume
I10=int(r,r,0,sqrt((H^2*z^2)/H*tan(PHI*pi/180)));
I11=int(I10,z,sqrt(R^2-(R-D)^2)/tan(PHI*pi/180),H*tan(PHI*pi/180));
I12=int(I11,theta,0,2*Pi);
volNeck=double(I12)

%solving for socket volume
I13=int(r,z,R-D,sqrt(R^2-r^2));
I14=int(I13,r,0,sqrt(R^2-(R-D)^2));
I15=int(I14,theta,0,2*Pi);
volSock=double(I18)

%solving total volume
Vtotal=volBody+volHead+volNeck-volSock

%part 2



