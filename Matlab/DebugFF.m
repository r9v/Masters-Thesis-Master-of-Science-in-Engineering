clear all
close all
clc
beep off

param.initCond=setInitConditionsFF();

param.Kp=10;
param.Kd=20;
simTime=100;
         
sim('FFAlgorytmRozszerzony.slx',simTime);
