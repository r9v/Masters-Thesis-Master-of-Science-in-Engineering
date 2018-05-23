clear all
close all
clc
beep off

param.initCond=setInitConditionsFF();

param.Kp=10;
param.Kd=200;

simTime=20;
         
sim('FFAlgorytmRozszerzony.slx',simTime);

plot(e);
legend('ey1','ey2');

plot(q)
ylim([-4 4]);
legend('x','y','t','q1','q2');