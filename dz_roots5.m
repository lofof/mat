F='cos(x)-exp(0.001+x.^2)';
rez1=fzero(F,0);
rez2=solve(F);
disp(rez1);
disp(rez2);