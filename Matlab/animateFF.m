% figure;
i=0;
mytime=0;
while mytime<=10
    i=i+1;
    if(q.Time(i)>=mytime) 
        mytime=mytime+1;
        [Base,K1,K2,C1,C2,C3,C4]=robotPoints(q.Data(i,:));
        drawRobot(Base,K1,K2,C1,C2,C3,C4)
        %pause(0.5)
    end
end
ylabel('y[m]')
xlabel('x[m]')