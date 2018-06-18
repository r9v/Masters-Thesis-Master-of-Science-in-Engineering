clear all
close all
clc
beep off

param.initCond=setInitConditionsRoz();

param.Kp=2;
param.Kd=4;

simTime=10;
         
sim('ZiemskiAlgorytmRoz.slx',simTime);


