a = input("a = ");
x0 = input("x0 = ");
f = @(x)x^2-a;
rez = fzero(f,x0);
disp(rez);