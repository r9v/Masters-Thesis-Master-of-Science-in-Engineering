function [ initCond ] = setInitConditionsFF()

%----- uogolnione polozenia -----%
uogolnione.x0=0; %
uogolnione.y0=0; %
uogolnione.theta0=0;%
uogolnione.q10=0;%
uogolnione.q20=0.1;%

%-----uogolnione  predkosci -----%
uogolnione.xp0=0;
uogolnione.yp0=0;
uogolnione.thetap0=0.1;
uogolnione.qp10=0;
uogolnione.qp20=0;

uogolnione.q0=[
    uogolnione.x0;
    uogolnione.y0;
    uogolnione.theta0;
    uogolnione.q10;
    uogolnione.q20];

uogolnione.qp0=[
    uogolnione.xp0;
    uogolnione.yp0;
    uogolnione.thetap0;
    uogolnione.qp10;
    uogolnione.qp20];

initCond.q0=uogolnione.q0;
initCond.qp0=uogolnione.qp0;

end

