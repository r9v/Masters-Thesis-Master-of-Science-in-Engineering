close all
%-----error-----%
plot(e);
grid on
title('');
ylabel('blad[m]')
xlabel('czas[s]')
legend('e_1','e_2','Interpreter','latex')

%-----pozycja platformy-----%
figure;
plot(q.Time,q.Data(:,1:2));
grid on
ylabel('pozycja platformy [m]')
xlabel('czas [s]')
title(' ')
h = legend('$x$','$y$');
set(h,'interpreter','Latex','FontSize',11)

%-----konfiguracja manipulatora-----%
figure;
plot(q.Time,q.Data(:,3:5));
grid on
ylabel('oriencaja bazy i konfiguracja manipulatora [rad]')
xlabel('czas [s]')
title(' ')
legend('\theta','q_1','q_2','Interpreter','latex')

%---------------PLOT BARYCENTER---------------%

figure;
plot(q.Time,qBAR.Data(:,1:2));
grid on
ylabel('pozycja srodka masy [m]')
xlabel('czas [s]')
title(' ')
h = legend('$\bar{x}$','$\bar{y}$');
set(h,'interpreter','Latex','FontSize',11)

figure;
plot(qp.Time,qpBAR.Data(:,1:2));
grid on
ylabel('predkosc srodka masy [m/s]')
xlabel('czas [s]')
title(' ')
hh = legend('$\dot{\bar{x}}$','$\dot{\bar{y}}$');
set(hh,'interpreter','Latex','FontSize',11)

