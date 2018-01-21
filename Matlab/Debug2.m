clear all
close all
clc
beep off

% ---parametry fizyczne manipulatora--- %
% ---poczatkowa konfiguracja i predkosci--- %
param.initCond=setInitConditions();

param.initCond.x0=0.18%
param.initCond.y0=-0.2; %
param.initCond.theta0=pi/2;%
param.initCond.phi10=10;%
param.initCond.phi20=-10;%
param.initCond.theta10=0;%
param.initCond.theta20=0.2;%
param.initCond.theta30=pi/2;%
param.initCond.phip10=0;
param.initCond.phip20=0;
param.initCond.thetap10=0;
param.initCond.thetap20=0;
param.initCond.thetap30=0;

param.Kp=200;
param.Kd=20;



v=(param.initCond.phip20+param.initCond.phip10)/2;
omega=(param.initCond.phip20-param.initCond.phip10)/2;

param.initCond.thetap0=omega;
param.initCond.xp0=v*cos(param.initCond.theta0);
param.initCond.yp0=v*sin(param.initCond.theta0);



L=0.3;
param.initCond.n10=(v+L*omega)/2;
param.initCond.n20=(v-L*omega)/2;

%----- combined -----%
param.initCond.z0=[param.initCond.n10;param.initCond.n20;param.initCond.thetap10;param.initCond.thetap20;param.initCond.thetap30];
param.initCond.qm0=[param.initCond.x0;param.initCond.y0;param.initCond.theta0;param.initCond.phi10;param.initCond.phi20];
param.initCond.qr0=[param.initCond.theta10;param.initCond.theta20;param.initCond.theta30];
param.initCond.q0=[param.initCond.qm0;param.initCond.qr0];

simTime=5;
sim('Model3.slx',simTime);
plot(k);
ylim([10,-10])
legend('xg','yg','xl','yl','zl')
figure;
plot(kp)
legend('xpg','ypg','xpl','ypl','zpl')
figure
plot(kpp)
legend('xppg','yppg','xppl','yppl','zppl')
figure
plot(q);
%ylim([0,2])
legend('x','y','theta','phi1','phi2','theta1','theta2','theta3')
figure;
plot(x,y)
figure
plot(qp)
legend('xp','yp','thetap','phip1','phip2','thetap1','thetap2','thetap3')
figure
plot(zp)
legend('n1','n2','theta1','theta2','theta3')
