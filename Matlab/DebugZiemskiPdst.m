clear all
close all
clc
beep off

param.initCond=setInitConditionsPdst();

param.Kp=2;
param.Kd=4;

simTime=10;
         
sim('ZiemskiAlgorytmPdst.slx',simTime);

plot(e);
title('');
ylabel('blad[m]')
xlabel('czas[s]')
legend('e_1','e_2','Interpreter','latex')
figure();
plot(q);
ylabel('konfiguracja')
xlabel('czas[s]')
legend('x[m]','y[m]','theta[rad]','phi1[rad]','phi2[rad]','q1[rad]','q2[rad]','q3[rad]')