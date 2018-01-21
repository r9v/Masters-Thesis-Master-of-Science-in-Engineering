function [ initCond ] = setInitConditions(  )

%----- polozenia -----%
initCond.x0=0.5; %
initCond.y0=0.5; %
initCond.theta0=0;%
initCond.phi10=10;%
initCond.phi20=0;%
initCond.theta10=pi;%
initCond.theta20=-1;%
initCond.theta30=3*pi/2;%

%----- predkosci -----%
initCond.phip10=10;
initCond.phip20=10;

v=(initCond.phip20+initCond.phip10)/2;
omega=(initCond.phip20-initCond.phip10)/2;

initCond.thetap0=omega;
initCond.xp0=v*cos(initCond.theta0);
initCond.yp0=v*sin(initCond.theta0);

initCond.thetap10=0;
initCond.thetap20=0;
initCond.thetap30=0;

L=0.3;
initCond.n10=(v+L*omega)/2;
initCond.n20=(v-L*omega)/2;

%----- combined -----%
initCond.z0=[initCond.n10;initCond.n20;initCond.thetap10;initCond.thetap20;initCond.thetap30];
initCond.qm0=[initCond.x0;initCond.y0;initCond.theta0;initCond.phi10;initCond.phi20];
initCond.qr0=[initCond.theta10;initCond.theta20;initCond.theta30];
initCond.q0=[initCond.qm0;initCond.qr0];

end

