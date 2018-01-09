clear all
close all
clc
beep off

% ---parametry fizyczne manipulatora--- %
param.l2=0.3;
param.l3=0.2;
param.m2=20;
param.m3=20;
param.g=9.81;
param.a=param.l3*param.l2*param.m3/2;

% ---poczatkowa konfiguracja i predkosci--- %
param.q10=pi/4;
param.q20=pi/4;
param.q30=pi/4;
param.qp10=0;
param.qp20=0;
param.qp30=0;

% ---parametry algorytmu Sadegha i Horowitza--- %
param.R=10;
param.gamma=1;
param.a0_hat=0;
% --workaround so I dont have to edit all consts in slx file to 'param.Const'-- %
Names = fieldnames(param);
for nn = 1:length(Names)
    eval([Names{nn},' = param.',Names{nn},';']);
end

% ---parametry badan--- %
param.simTime=30;

% --parameters mesh-- %
KdDigit=6;
lambdaDigit=6;
param.KdVals=logspace(0,KdDigit,4*KdDigit-KdDigit+1);
param.lambdaVals=logspace(0,lambdaDigit,4*lambdaDigit-lambdaDigit+1);
param.lambdaVals=param.lambdaVals(1:8);
param.lambdaVals(1:8);
param.KdVals(1:13);
% --save configuration-- %
loadPreviousResults=0;
saveResultsEveryIteration=0;

FileToLoadFromName='lambdaVals_F1_T8_Backup4.mat';
FileToSaveToName='lambdaVals_F1_T8.mat';
SimulationCfgFile='savedCfg.mat';
SaveInfo=getSaveInfo();
% Simulink.BlockDiagram.loadActiveConfigSet('AdaptacyjnySH.slx',SimulationCfgFile);

% --sim setup-- %
J1=zeros(size(param.KdVals,2),size(param.lambdaVals,2));
J2=zeros(size(param.KdVals,2),size(param.lambdaVals,2));
iter_max=size(param.KdVals,2)*size(param.lambdaVals,2);

% ---symulacje--- %
if(loadPreviousResults)
    [i_start,j_start,iter]=loadBackUp();
    for j=j_start:size(param.lambdaVals,2)
        [J1,J2]=runSim(i_start,j,J1,J2);
        iter=iter+1;
    end
    i_start=i_start+1;
else
    i_start=1;
    iter=1;
end

for i=i_start:size(param.KdVals,2)
    Kd=param.KdVals(i);
    for j=1:size(param.lambdaVals,2)
        [J1,J2]=runSim(i,j,J1,J2);
        iter=iter+1;
    end
end

% ---misc--- %
% [v I]=min(J1(:));
% [KdMinIdx, lambdaMinIdx] = ind2sub(size(J1),I)
% [v I]=max(J1(:));
% [KdMaxIdx, lambdaMaxIdx] = ind2sub(size(J1),I)

%---plots--- %
% figure;
% surf(log10(param.lambdaVals(1:8)),log10(param.KdVals(1:13)),log10(J1))
% xlabel('log(lambda)')
% ylabel('log(K_d)')
% zlabel('log(J_1)')

% figure;
% surf(log10(param.lambdaVals),log10(param.KdVals),log10(J2))
% xlabel('log(lambda)')
% ylabel('log(K_d)')
% zlabel('log(J_2)')