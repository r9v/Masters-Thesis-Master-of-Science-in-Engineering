function  [J1,J2]=runSim(i,j,J1,J2)
param = evalin('base','param');
iter=evalin('base','iter');
iter_max=evalin('base','iter_max');
backUp=evalin('base','saveResultsEveryIteration');
SaveInfo = evalin('base','SaveInfo');

assignin('base', 'Kd', param.KdVals(i));
assignin('base', 'lambda', param.lambdaVals(j));

startMsg=sprintf("Starting simulation with:\n i: %1.f\n j: %1.f\n iter: %1.f\nTime is: %s",...
i,j,iter,datestr(datetime(now,'ConvertFrom','datenum')));
disp(startMsg);

sim('AdaptacyjnySH.slx',param.simTime);
j1_saved(i,j,:)=j1;
j2_saved(i,j,:)=j2;
J1(i,j)=sum(j1);
J2(i,j)=sum(j2);

disp(sprintf("Simulation %1.f Completed. Progress: %0.2f%%",iter,(iter/iter_max)*100))
if(backUp)
    disp("saving ...")
    saveBackUp(SaveInfo,J1,J2,i,j,iter,j1_saved,j2_saved);
    disp("saving done")
end

end

