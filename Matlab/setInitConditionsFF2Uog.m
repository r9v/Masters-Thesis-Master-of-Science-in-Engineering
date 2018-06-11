function [ initCond ] = setInitConditionsFF2Uog(  )

%----- polozenia -----%
initCond.x0=0; %
initCond.y0=0; %
initCond.theta0=0;%
initCond.q10=0;%
initCond.q20=0.1;%

initCond.q0=[
    initCond.x0;
    initCond.y0;
    initCond.theta0;
    initCond.q10;
    initCond.q20];

%----- predkosci -----%
initCond.xp0=0;
initCond.yp0=0;
initCond.thetap0=-0.25;
initCond.qp10=0;
initCond.qp20=0.1;
initCond.qp0=[
    initCond.xp0;
    initCond.yp0;
    initCond.thetap0;
    initCond.qp10;
    initCond.qp20];



end

