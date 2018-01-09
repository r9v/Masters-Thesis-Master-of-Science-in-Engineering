function SaveInfo = getSaveInfo( input_args )
param = evalin('base','param');
FileToSaveToName = evalin('base','FileToSaveToName');

SaveInfo.Date= datetime(now,'ConvertFrom','datenum');
load('cfg.mat');
SaveInfo.SimConfig=cfg;%copy (getActiveConfigSet('AdaptacyjnySH'));
SaveInfo.Params=param;
SaveInfo.FileName=FileToSaveToName;

end

