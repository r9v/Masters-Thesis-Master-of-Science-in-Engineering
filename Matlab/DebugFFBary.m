clear all
clc
beep off

param.initCond=setInitConditionsFF('Bary');

param.Kp=10;
param.Kd=20;
simTime=10;
         
sim('FFBary.slx',simTime);
