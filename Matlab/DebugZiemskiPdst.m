clear all
close all
clc
beep off

param.initCond=setInitConditionsPdst();

param.Kp=2;
param.Kd=4;

simTime=10;
         
sim('ZiemskiAlgorytmPdst.slx',simTime);
