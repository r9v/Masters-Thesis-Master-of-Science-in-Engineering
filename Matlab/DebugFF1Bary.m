clear all
close all
clc
beep off

param.initCond=setInitConditionsFF1Bary();

param.Kp=10;
param.Kd=20;
simTime=10;
         
sim('FF1Bary.slx',simTime);
