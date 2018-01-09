function  saveBackUp(SaveInfo,J1,J2,i,j,iter,j1_saved,j2_saved)

i_saved=i;
j_saved=j;
iter_saved=iter;

save(SaveInfo.FileName,'SaveInfo','J1','J2','i_saved','j_saved','iter_saved','j1_saved','j2_saved');

end

