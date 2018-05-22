clear all
close all
clc
beep off

param.initCond=setInitConditionsFF();

param.Kp=3;
param.Kd=2;

simTime=20;
         
sim('FFAlgorytmRozszerzony.slx',simTime);

plot(e);
legend('ey1','ey2');
