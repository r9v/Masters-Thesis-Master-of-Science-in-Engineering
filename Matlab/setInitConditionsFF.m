function [ initCond ] = setInitConditionsFF(  )

%----- polozenia -----%
xb=0; %
yb=0; %
initCond.theta0=0;%
initCond.q10=0;%
initCond.q20=-pi/2;%
q3=initCond.theta0;
q4=initCond.q10;
q5=initCond.q20;
q=[0,0,q3,q4,q5];

initCond.x0=xb+(3/10).*cos(q(4)+q(3))+(1/5).*cos(q(4)+q(5)+q(3));
initCond.y0=yb+(3/10).*sin(q(4)+q(3))+(1/5).*sin(q(4)+q(5)+q(3));


initCond.q0=[
    initCond.x0;
    initCond.y0;
    initCond.theta0;
    initCond.q10;
    initCond.q20];

%----- predkosci -----%
initCond.xp0=0;
initCond.yp0=0;
initCond.thetap0=0;%WELP xp,yp,thetap depend on each other
initCond.qp10=0;
initCond.qp20=0;
initCond.qp0=[
    initCond.xp0;
    initCond.yp0;
    initCond.thetap0;
    initCond.qp10;
    initCond.qp20];



end

