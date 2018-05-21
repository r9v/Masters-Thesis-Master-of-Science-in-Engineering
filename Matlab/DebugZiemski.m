clear all
close all
clc
beep off

param.initCond=setInitConditions();

param.Kp=3;
param.Kd=2;

simTime=20;
         
sim('ZiemskiAlgorytmRozszerzony.slx',simTime);

plot(e);
legend('ey1','ey2','ey3','ey4','ey5')
