clear all
close all
clc
beep off

load lambdaVals_F1_T8_Backup4.mat

KdDigit=6;
lambdaDigit=6;
param.KdVals=logspace(0,KdDigit,4*KdDigit-KdDigit+1);
param.lambdaVals=logspace(0,lambdaDigit,4*lambdaDigit-lambdaDigit+1);
param.lambdaVals=param.lambdaVals(1:8);


figure;
surf(log10(param.lambdaVals(1:8)),log10(param.KdVals(1:17)),log10(J1))
xlabel('log(lambda)')
ylabel('log(K_d)')
zlabel('log(J_1)')

figure;
surf(log10(param.lambdaVals(1:8)),log10(param.KdVals(1:17)),log10(J2))
xlabel('log(lambda)')
ylabel('log(K_d)')
zlabel('log(J_2)')