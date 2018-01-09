function [ initCond ] = setInitConditions(  )

initCond.x0=0; %
initCond.y0=0; %
initCond.theta0=0;%
initCond.phi10=0;%
initCond.phi20=0;%
initCond.theta10=0;%
initCond.theta20=0;%
initCond.theta30=0;%

initCond.xp0=0;
initCond.yp0=0;
initCond.thetap0=0;
initCond.phip10=0;
initCond.phip20=0;
initCond.thetap10=0;%
initCond.thetap20=0;%
initCond.thetap30=0;%

initCond.n10=0;%
initCond.n20=0;%

initCond.qap0=[initCond.n10 initCond.n20 initCond.thetap10 initCond.thetap20 initCond.thetap30];
initCond.qa0=[0,0,initCond.theta10 initCond.theta20 initCond.theta30];
initCond.qm0=[initCond.x0,initCond.y0,initCond.theta0,initCond.phi10,initCond.phi20];


end

