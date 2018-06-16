figure;
i=0;
mytime=0;
j=3;
while mytime<=10
    i=i+j;
    if(q.Time(i)>=mytime) 
        mytime=mytime+j;
        [Base,K1,K2,C1,C2,C3,C4]=coords(q.Data(i,:));
        drawRobot(Base,K1,K2,C1,C2,C3,C4)
        scatter(K2(1),K2(2),'b','filled')
        %pause(0.5)
    end
end
grid on
xlim([-0.5 2])
ylim([-1 1.5])
ylabel('y [m]')
xlabel('x [m]')