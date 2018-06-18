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
        p1=scatter3(coords.effector(1),coords.effector(2),coords.effector(3),'b','filled')
        pause(0.01)
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

xtraj=2*t;
ytraj=-0.3*cos(2*t);
%pdst
 %ztraj=repelem(0.5+0.2*sin(1.1314),length(t));
 %roz
ztraj=repelem(0.2000,length(t));

p2=plot3(xtraj,ytraj,ztraj,'r.','MarkerSize',6);
legend([p1,p2],{'Polozenie efektora w kolejnych chwilach czasu','Zadana trajektoria'});