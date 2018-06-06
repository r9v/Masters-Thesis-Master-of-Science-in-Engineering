function [ initCond ] = setInitConditionsFF(  )

%----- polozenia -----%
xb=0; %
yb=0; %
initCond.theta0=0;%
initCond.q10=0;%
initCond.q20=0.1;%
q3=initCond.theta0;
q4=initCond.q10;
q5=initCond.q20;
q=[0,0,q3,q4,q5];

initCond.x0=(1/8).*(8.*xb+3.*cos(q(4)+q(3))+cos(q(4)+q(5)+q(3)));
initCond.y0=(1/8).*(8.*yb+3.*sin(q(4)+q(3))+sin(q(4)+q(5)+q(3)));


initCond.q0=[
    initCond.x0;
    initCond.y0;
    initCond.theta0;
    initCond.q10;
    initCond.q20];

%----- predkosci -----%
initCond.xp0=0;
initCond.yp0=0;
initCond.thetap0=1;
initCond.qp10=0;
initCond.qp20=1;
initCond.qp0=[
    initCond.xp0;
    initCond.yp0;
    initCond.thetap0;
    initCond.qp10;
    initCond.qp20];



end

