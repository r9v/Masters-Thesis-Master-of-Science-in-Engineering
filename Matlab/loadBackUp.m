function [i_start,j_start,iter]=loadBackUp()
disp("Loading saved file.")
sName = evalin('base','FileToLoadFromName');
load(sName);
iter=iter_saved+1;

assignin('base', 'J1', J1);
assignin('base', 'J2', J2);
assignin('base', 'j1_saved', j1_saved);
assignin('base', 'j2_saved', j2_saved);

param = evalin('base','param');
KdValsSize=size(param.KdVals,2);
lambdaValsSize=size(param.lambdaVals,2);
if(iter_saved==KdValsSize*lambdaValsSize) %all simulations already done.
    i_start=KdValsSize+1;
    j_start=lambdaValsSize+1; %now simulation 'for loop' wont run
else
    if(j_saved==lambdaValsSize) %no more js, start over again for the next i.
        i_start=i_saved+1;
        j_start=1;
    else
        i_start=i_saved;
        j_start=j_saved+1;
    end
end
end

