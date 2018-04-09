clear all
close all
clc
beep off

param.initCond=setInitConditions();

param.Kp=100;
param.Kd=100;

simTime=20;
sim('ZiemskiAlgorytmRozszerzony.slx',simTime);

plot(e);
legend('exg','eyg','exl','eyl','ezl')

