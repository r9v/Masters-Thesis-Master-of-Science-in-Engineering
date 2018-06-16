function []=drawRobot(Base,K1,K2,C1,C2,C3,C4);

plot([Base(1) K1(1)], [Base(2) K1(2)],'R')
hold on
ylim([-2,2])
xlim([-2,2])
plot([K1(1) K2(1)], [K1(2) K2(2)],'B')
plot([C1(1) C2(1)], [C1(2) C2(2)],'K')
plot([C2(1) C3(1)], [C2(2) C3(2)],'K')
plot([C3(1) C4(1)], [C3(2) C4(2)],'K')
plot([C4(1) C1(1)], [C4(2) C1(2)],'K')

end