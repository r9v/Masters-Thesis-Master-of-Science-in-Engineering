plot(e);
grid on
title('');
ylabel('blad [m]')
xlabel('czas [s]')
legend('e_1','e_2','Interpreter','latex')

figure;
plot(q.Time,q.Data(1:2,:));
grid on
ylabel('pozycja bazy [m]')
xlabel('czas [s]')
title(' ')
legend('x','y')

figure;
plot(q.Time,q.Data(4:5,:));
grid on
ylabel('takietam')
xlabel('czas [s]')
title(' ')
legend('\phi_1 [rad]','\phi_2 [rad]','Interpreter','latex')

figure;
plot(q.Time,q.Data(3,:));
grid on
hold on
plot(q.Time,q.Data(6:end,:));
ylabel('oriencaja bazy i konfiguracja manipulatora')
xlabel('czas [s]')
title(' ')
legend('\theta [rad]','q_1 [rad]','q_2 [m]','q_3 [rad]','Interpreter','latex')