clear all
clc
beep off

param.initCond=setInitConditionsFF('Uog');

param.Kp=10;
param.Kd=20;
simTime=10;
         
sim('FFUog.slx',simTime);
