figure;
hold on;
i=0;
mytime=0;
j=1;
while mytime<=10
    i=i+j;
    if(q.Time(i)>=mytime) 
        mytime=mytime+j;
        coords=coordsZiemski(q.Data(:,i));
        drawZiemski(coords)
      scatter3(coords.effector(1),coords.effector(2),coords.effector(3),'b','filled')
        pause(0.1)
    end
end
grid on
xlim([0 20])
ylim([-4 4])
zlim([0 4])
ylabel('y [m]')
xlabel('x [m]')
zlabel('z [m]')
t=0:0.2:10;
xtraj=t;
ytraj=t;
ztraj=t;
plot3(xtraj,ytraj,ztraj,'r.','MarkerSize',1);