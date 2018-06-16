clear all
clc
beep off

param.Kp=10;
param.Kd=20;
simTime=0.8;

%--dont touch--%
param.initCond=setInitConditionsFF();
sim('FFUog.slx',simTime);
