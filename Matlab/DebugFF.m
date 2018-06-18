clear all
close all
clc
beep off

param.initCond=setInitConditionsFFBary();

param.Kp=10;
param.Kd=20;
simTime=10;
         
sim('FFBary.slx',simTime);
%DrawFFBary
%plotoFFBary
