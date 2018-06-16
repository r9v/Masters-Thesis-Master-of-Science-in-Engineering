function [ initCond ] = setInitConditionsFFBary(  )

%----- polozenia -----%
xb=0; %
yb=0; %
initCond.theta0=0;%
initCond.q10=0;%
initCond.q20=0.1;%
q3=initCond.theta0;
q4=initCond.q10;
q5=initCond.q20;
q=[xb,yb,q3,q4,q5];
x0=(1/8).*(8.*xb+3.*cos(q(4)+q(3))+cos(q(4)+q(5)+q(3)))
y0=(1/8).*(8.*yb+3.*sin(q(4)+q(3))+sin(q(4)+q(5)+q(3)))

xbp=0;
ybp=0;
tp=0.2;
q1p=0;
q2p=-0.1;

qp=[xbp,ybp,tp,q1p,q2p];
xbarp=(1/8).*(8.*qp(1)+(-3).*(qp(3)+qp(4)).*sin(q(4)+q(3))+(-1).*(qp(3)+qp(4)+qp(5)).*sin( ...
  q(4)+q(5)+q(3)))
ybarp=(1/8).*(8.*qp(2)+3.*(qp(3)+qp(4)).*cos(q(4)+q(3))+(qp(3)+qp(4)+qp(5)).*cos(q(4)+q(5)+q(3)))

initCond.q0=[
    x0;
    y0;
    initCond.theta0;
    initCond.q10;
    initCond.q20];

%----- predkosci -----%
initCond.qp0=[
    xbarp;
    ybarp;
    tp;
    q1p;
    q2p];



end

