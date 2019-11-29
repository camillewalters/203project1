close all
clc


% %case1
% R=0.25;
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
% %PART 1
% %part I
% axis equal
% z=sqrt(R^2-x^2-y^2);
% fsurf(z)
% hold on
% fsurf(-z);
% hold on
% z=sqrt(x^2+y^2)*tan(PHI*pi/180);
% fsurf(z+R-D-(sqrt(R^2-(R-D)^2)*tan(PHI*pi/180)));%-C1
% UL=H*tan(PHI*pi/180);
% zlim([-R H*tan(PHI*pi/180)+R-D-(sqrt(R^2-(R-D)^2)*tan(PHI*pi/180))]);
% hold on;



syms r theta z real
%solving for body volume
Pi=sym('pi');
I1=int(r,z,0,sqrt(R^2-r^2));%z integral outer 
I2=int(I1,r,0,R);%r integral outer
I3=int(I2,theta,0,Pi/2);%theta integral outer
I4=int(r,z,0,sqrt((R-T)^2-r^2));%z integral inner
I5=int(I4,r,0,R-T);%r integral inner
I6=int(I5,theta,0,Pi/2);%theta integral iner
IBod=8*(I3-I6)
volBody=double(IBod)

%solving for head volume
I7=int(r,z,0,sqrt(H^2-r^2));%z integral 
I8=int(I7,r,0,H);%r integral ne
I9=int(I8,theta,0,Pi/2);%theta integral 
IHead=4*I9
volHead=double(IHead)

%solving for neck volume
I10=int(r,r,0,z/tan(PHI*pi/180));
I11=int(I10,z,sqrt(R^2-(R-D)^2)*tan(PHI*pi/180),H*tan(PHI*pi/180));
I12=int(I11,theta,0,2*Pi)
volNeck=double(I12)

%solving for socket volume
I13=int(r,z,R-D,sqrt(R^2-r^2));
I14=int(I13,r,0,sqrt(R^2-(R-D)^2));
I15=int(I14,theta,0,2*Pi) 
volSock=double(I15)

%solving total volume
Vtotal=volBody+volHead+volNeck-volSock

%part 2

%mass of head

density=250+14*(cos(theta-pi/2)-sin(theta));

I16=int(density*r^2*sin(theta),r,0,H);%z integral 
I17=int(I16,theta,0,pi);%theta integral 
zMI=double(I17)

%z moment of intertia and zBar
I22=int(r*density,r,0,H);
I23=int(I22,theta,0,pi);
MassHead=double(I23)
zBar=double((I17/I23)+R)
%theta is the same but we can onlygo from 0 to pi. use zrdrdzdtheta to get
%the right values

%finding composite centers of mass
% 
% %Case 1 (ensure that case 1 values are uncommented above)
% xBarBody1=-0.225*50/(volBody*325+50)
% zBarBody1=-0.1*50/(volBody*325+50)
% xBarTotal1=(xBarBody1*(volBody*325+50))/(volBody*325+50+MassHead)
% zBarTotal1=(zBarBody1*(volBody*325+50)+zBar*MassHead)/(volBody*325+50+MassHead)

%Case 2 (ensure that case 2 values are uncommented above)
xBarBody2=-0.375*50/(volBody*325+50)
zBarBody2=-0.125*50/(volBody*325+50)
xBarTotal2=(xBarBody2*(volBody*325+50))/(volBody*325+50+MassHead)
zBarTotal2=(zBarBody2*(volBody*325+50)+zBar*MassHead)/(volBody*325+50+MassHead)

%NetTorque1=(volBody*325+50+MassHead)*9.81*xBarTotal1-(volBody*325+50+MassHead)*9.81*zBarTotal1
NetTorque2=(volBody*325+50+MassHead)*9.81*xBarTotal2-(volBody*325+50+MassHead)*9.81*zBarTotal2

