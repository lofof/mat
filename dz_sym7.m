syms x;
f = exp(1/(1-x.^2))./(1+x^2);
fplot(f,[-7,7]);
y = linspace(-1,20,100);
ylim([-1 15])
xlim([-6 6])
grid on
hold on
f_diff = diff(f);
b = solve(f_diff,0);
for j=1:size(b)
    if isreal(b(j))
        a = subs(f,x,b(j));
        plot(b(j),a,'o');
    end
end
f_diff1 = diff(f_diff);
b1 = solve(f_diff1,0);
disp(b1);
a9 = subs(f,x,b1(9));
a4 = subs(f,x,b1(4));
a5 = subs(f,x,b1(5));
a8 = subs(f,x,b1(8));
plot(b1(9),a9,'x',b1(4),a4,'x',b1(5),a5,'x',b1(8),a8,'x');
plot(0*y+1,y,'--', 0*y-1,y,'--');