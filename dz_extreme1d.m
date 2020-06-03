m = input("m = ");
N = 50;
a = 0;
b = 2*pi;
x = linspace(a,b,N);
Y = 0;
for k=1:m
    j = 1 - sin(2*x*k);
    Y = Y + j;
end
Y1 = @(x)1 - sin(2*x) + 1 - sin(4*x) + 1 - sin(6*x);
plot(x,Y);
grid on;
xr=ginput(2);
[x_m,y_m] = fminbnd(Y1,xr(1,1),xr(2,1));
hold on;
plot(x_m,y_m,'r*',xr(1,1),xr(1,2),'g*',xr(2,1),xr(2,2),'g*');
hold off;