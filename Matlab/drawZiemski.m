function []=drawZiemski(coords)
Base=coords.Base;
K1=coords.K1;
K1a=coords.K1a;
K2=coords.K2;
K3=coords.effector;
corner1=coords.corner1;
corner2=coords.corner2;
corner3=coords.corner3;
corner4=coords.corner4;


line([corner1(1), corner2(1)], [corner1(2), corner2(2)], [corner1(3), corner2(3)]);
line([corner2(1), corner3(1)], [corner2(2), corner3(2)], [corner2(3), corner3(3)]);
line([corner3(1), corner4(1)], [corner3(2), corner4(2)], [corner3(3), corner4(3)]);
line([corner1(1), corner4(1)], [corner1(2), corner4(2)], [corner1(3), corner4(3)]);

line([K1(1), K1a(1)], [K1(2), K1a(2)], [K1(3), K1a(3)]);
line([K1a(1), K2(1)], [K1a(2), K2(2)], [K1a(3), K2(3)]);
line([K2(1), K3(1)], [K2(2), K3(2)], [K2(3), K3(3)]);


end