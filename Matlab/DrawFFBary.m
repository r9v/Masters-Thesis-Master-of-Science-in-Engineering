figure;
i=0;
mytime=0;
j=3;
k=1;
color=['B','B','B','B','K','K','K','K','G','G','G','G','B','B','B','B'];
while mytime<=10
    i=i+j;
    if(q.Time(i)>=mytime) 
        mytime=mytime+j;
        [Base,K1,K2,C1,C2,C3,C4]=coordsFF(q.Data(i,:));
        drawRobot(Base,K1,K2,C1,C2,C3,C4,color(k))
        k=k+1;
        p1=scatter(K2(1),K2(2),'b','filled')
        %pause(0.5)
    end
end
grid on
xlim([-1 2])
ylim([-1 2])
ylabel('y [m]')
xlabel('x [m]')


t=0:0.5:10;

dln=1;
lna=0.01;
lnb=30;
lndt=1;
sina=0.5;
sinb=0.5;
ln=dln+lna*log(lnb*(t+lndt));
sinn=sina*sin(sinb*t);

xtraj=sinn;
ytraj=ln;
p2=plot(xtraj,ytraj,'r.','MarkerSize',6);
legend([p1,p2],{'Polozenie efektora w kolejnych chwilach czasu','Zadana trajektoria'});