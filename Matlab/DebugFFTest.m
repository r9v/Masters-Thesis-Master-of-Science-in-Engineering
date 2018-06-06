clear all
close all
clc
beep off

param.initCond=setInitConditionsFF();

param.Kp=20;
param.Kd=40;
simTime=10;
         
sim('FFAlgorytmRozszerzonyTest.slx',simTime);
