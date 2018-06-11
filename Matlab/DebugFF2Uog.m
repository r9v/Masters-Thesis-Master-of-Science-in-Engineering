clear all
close all
clc
beep off

param.initCond=setInitConditionsFF2Uog();

param.Kp=10;
param.Kd=20;
simTime=10;
         
sim('FF1Uog.slx',simTime);
