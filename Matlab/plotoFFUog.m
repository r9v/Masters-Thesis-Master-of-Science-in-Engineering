close all
plot(e);
grid on
title('');
ylabel('blad[m]')
xlabel('czas[s]')
legend('e_1','e_2','Interpreter','latex')

figure;
plot(q.Time,q.Data(:,1:2));
grid on
ylabel('pozycja platformy [m]')
xlabel('czas [s]')
title(' ')
h = legend('$x$','$y$');
set(h,'interpreter','Latex','FontSize',11)

figure;
plot(q.Time,q.Data(:,3));
grid on
hold on
plot(q.Time,q.Data(:,4:5));
ylabel('oriencaja bazy i konfiguracja manipulatora [rad]')
xlabel('czas [s]')
title(' ')
legend('\theta','q_1','q_2','Interpreter','latex')

%---------------PLOT BARYCENTER---------------%
xb=q.Data(:,1:2);
xbar=(1/8).*(8.*xb(:,1)+3.*cos(q.Data(:,4)+q.Data(:,3))+cos(q.Data(:,4)+q.Data(:,5)+q.Data(:,3)));
ybar=(1/8).*(8.*xb(:,2)+3.*sin(q.Data(:,4)+q.Data(:,3))+sin(q.Data(:,4)+q.Data(:,5)+q.Data(:,3)));
xbp=qp.Data(:,1:2);
xbarp=(1/8).*(8.*xbp(:,1)+(-3).*(qp.Data(:,4)+qp.Data(:,3)).*sin(q.Data(:,4)+q.Data(:,3))+(-1).*(qp.Data(:,4)+qp.Data(:,5)+qp.Data(:,3)).*sin(q.Data(:,4)+q.Data(:,5)+q.Data(:,3)));
ybarp=(1/8).*(8.*xbp(:,2)+3.*(qp.Data(:,4)+qp.Data(:,3)).*cos(q.Data(:,4)+q.Data(:,3))+(qp.Data(:,4)+qp.Data(:,5)+qp.Data(:,3)).*cos(q.Data(:,4)+q.Data(:,5)+q.Data(:,3)));

figure;
plot(q.Time,[xbar,ybar]);
grid on
ylabel('pozycja srodka masy [m]')
xlabel('czas [s]')
title(' ')
h = legend('$\bar{x}$','$\bar{y}$');
set(h,'interpreter','Latex','FontSize',11)

figure;
plot(qp.Time,[xbarp,ybarp]);
grid on
ylabel('predkosc srodka masy [m/s]')
xlabel('czas [s]')
title(' ')
hh = legend('$\dot{\bar{x}}$','$\dot{\bar{y}}$');
set(hh,'interpreter','Latex','FontSize',11)

