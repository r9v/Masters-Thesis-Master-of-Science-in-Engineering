%figure;
plot(e);
grid on
title('');
ylabel('blad [m]')
xlabel('czas [s]')
legend('e_1','e_2','Interpreter','latex')

xbar=q.Data(:,1:2);
xb=(1/8).*(8.*xbar(:,1)-3.*cos(q.Data(:,4)+q.Data(:,3))-cos(q.Data(:,4)+q.Data(:,5)+q.Data(:,3)));
yb=(1/8).*(8.*xbar(:,2)-3.*sin(q.Data(:,4)+q.Data(:,3))-sin(q.Data(:,4)+q.Data(:,5)+q.Data(:,3)));

figure;
plot(q.Time,[xb,yb]);
grid on
ylabel('pozycja platformy [m]')
xlabel('czas [s]')
title(' ')
h = legend('$x$','$y$');
set(h,'interpreter','Latex','FontSize',11)


%---------------PLOT BARYCENTER---------------%
figure;
plot(q.Time,q.Data(:,1:2));
grid on
ylabel('pozycja srodka masy [m]')
xlabel('czas [s]')
title(' ')
h = legend('$\bar{x}$','$\bar{y}$');
set(h,'interpreter','Latex','FontSize',11)

figure;
plot(qp.Time,qp.Data(:,1:2));
grid on
ylabel('predkosc srodka masy [m/s]')
xlabel('czas [s]')
title(' ')
hh = legend('$\dot{\bar{x}}$','$\dot{\bar{y}}$');
set(hh,'interpreter','Latex','FontSize',11)

figure;
plot(q.Time,q.Data(:,3));
grid on
hold on
plot(q.Time,q.Data(:,4:5));
ylabel('oriencaja bazy i konfiguracja manipulatora[rad]')
xlabel('czas[s]')
title(' ')

legend('\theta','q_1','q_2','Interpreter','latex')