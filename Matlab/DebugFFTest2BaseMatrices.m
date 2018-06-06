clear all
close all
clc
beep off

param.initCond=setInitConditionsFFTest2();

param.Kp=10;
param.Kd=20;
simTime=10;
         
sim('FFAlgorytmRozszerzonyTest2.slx',simTime);
