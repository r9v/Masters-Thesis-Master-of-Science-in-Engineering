clear all
close all
clc
beep off

param.initCond=setInitConditionsPdst();

param.Kp=3;
param.Kd=2;

simTime=20;
         
sim('ZiemskiAlgorytmPdst.slx',simTime);

plot(e);
legend('ey1','ey2','ey3','ey4','ey5')
plot(q);
legend('x','y','theta','phi1','phi2','q1','q2','q3')