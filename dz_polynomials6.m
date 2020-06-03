disp("#1");
n = 9;
x1 = 0;
x = 1:1:n;
y = x.^(-1);
p = polyfit(x,y,1);
r1 = roots(p)
x = linspace(-10,10,20);
f = polyval(p,x);
plot(x,f);
grid on;
hold on;
y = linspace(-10,10,20);
f1 = polyval(x1,y);
plot(y,f1);
grid on;
hold on;
disp("#2");
x6 = 0;
x5 = [-1,0,1,2,3];
y5 = [6,5,0,3,2];
f5 = polyfit(x5,y5,1);
r2 = roots(f5)
x5 = linspace(-2,10,100);
fun = polyval(f5,x5);
plot(x5,fun);
grid on;
hold on;