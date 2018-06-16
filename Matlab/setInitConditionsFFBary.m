function [ initCond ] = setInitConditionsFFBary(uogolnione)

q=uogolnione.q0;
qp=uogolnione.qp0;

xBar0=(1/8).*(8.*q(1)+3.*cos(q(4)+q(3))+cos(q(4)+q(5)+q(3)));
yBar0=(1/8).*(8.*q(2)+3.*sin(q(4)+q(3))+sin(q(4)+q(5)+q(3)));
xBar0p=(1/8).*(8.*qp(1)+(-3).*(qp(3)+qp(4)).*sin(q(4)+q(3))+(-1).*(qp(3)+qp(4)+qp(5)).*sin(q(4)+q(5)+q(3)));
yBar0p=(1/8).*(8.*qp(2)+3.*(qp(3)+qp(4)).*cos(q(4)+q(3))+(qp(3)+qp(4)+qp(5)).*cos(q(4)+q(5)+q(3)));

initCond.q0=[
    xBar0;
    yBar0;
    uogolnione.q0(3:5)];

initCond.qp0=[
    xBar0p;
    yBar0p;
    uogolnione.qp0(3:5)];



end

