clear all
close all
clc
beep off

% ---parametry fizyczne manipulatora--- %
% ---poczatkowa konfiguracja i predkosci--- %
param.initCond=setInitConditions();
u1=5;
u2=0;
u3=0;
u4=0;
u5=0;

simTime=60;
sim('Model2.slx',simTime);
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
