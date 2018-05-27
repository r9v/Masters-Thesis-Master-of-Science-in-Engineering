

for tstep=1:floor(length(q.Time)/15):length(q.Time)
[Base,K1,K2,C1,C2,C3,C4]=coords(tstep,q);
drawRobot(Base,K1,K2,C1,C2,C3,C4)
pause(0.5)
end

%traj3.mat
%%y1=ln y2=sin
% dln=1;
% lna=0.01;
% lnb=30;
% lndt=1;
% ln=dln+lna*log(lnb*(t+lndt));
% sina=0.02;
% sinb=0.01;
% sinn=sina*sin(sinb*t);