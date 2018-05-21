function [ initCond ] = setInitConditionsFF(  )

%----- polozenia -----%
initCond.x0=0; %
initCond.y0=0; %
initCond.theta0=0;%
initCond.q10=pi/2;%
initCond.q20=pi/2;%
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

% G=[0,0;0,0;(-7/12).*((17/5)+(6/5).*((33/10).*c2+15.*((1/10).*c1+( ...
%   1/5).*s1))+(3/10).*((15/2)+30.*((1/10).*c12+(1/5).*s12))).*(( ...
%   60431/240)+(21/10).*c1+(21/20).*c12+(231/100).*c2+(21/5).*s1+( ...
%   21/10).*s12).^(-1),(-7/40).*((15/2)+(33/5).*c2+30.*((1/10).*c12+( ...
%   1/5).*s12)).*((60431/240)+(21/10).*c1+(21/20).*c12+(231/100).*c2+( ...
%   21/5).*s1+(21/10).*s12).^(-1);1,0;0,1];
initCond.z0=[0,0];


xb=initCond.x0;
yb=initCond.y0;
t0=initCond.theta0;
q1=initCond.q10;
q2=initCond.q20;
c0=cos(t0);
s0=sin(t0);
c1=cos(q1);
s1=sin(q1);
c12=cos(q1+q1);
s12=sin(q2+q1);

initCond.Y0=[(1/10).*c0+(1/5).*c1+(3/10).*c12+(-1/5).*s0+xb,
             (1/5).*c0+(1/10).*s0+(1/5).*s1+(3/10).*s12+yb];

qp1=initCond.xp0;
qp2=initCond.yp0;
qp3=initCond.thetap0;
qp4=initCond.qp10;
qp5=initCond.qp20;

initCond.Yp0=[(1/10).*(10.*qp1+(-1).*qp3.*(2.*c0+s0)+(-2).*qp5.*s1+(-3).*(qp5+ ...
  qp4).*s12),
  (1/10).*(10.*qp2+c0.*qp3+2.*c1.*qp5+3.*c12.*(qp5+qp4)+(-2).*qp3.*s0)];





end

