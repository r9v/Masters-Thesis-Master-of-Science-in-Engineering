clear all
close all
clc
beep off

% ---parametry fizyczne manipulatora--- %


% ---poczatkowa konfiguracja i predkosci--- %
param.initCond=setInitConditions();
% ---parametry algorytmu Sadegha i Horowitza--- %
u1=1;
u2=0;
u3=0;
u4=3.25;
u5=0;

simTime=30;
sim('Model1.slx',simTime);
plot(q);
legend('x','y','theta','phi1','phi2','theta1','theta2','theta3')
figure;
plot(x,y)
figure;
plot(qapp)
legend('n1','n2','thetap1','thetap2','thetap3')
figure;
plot(Qdet)
figure;
plot(wznacznik1)
figure;
plot(wznacznik2)
