a1 = input("a1 = ");
b1 = input("b1 = ");
N = 100;
a = 0;
b = 2*pi/3;
x = linspace(a,b,N);
Y = 1./(a1.*cos(x)+b1.*sin(x)).^2;
Y1 =@(x)1./(a1.*cos(x)+b1.*sin(x)).^2;
plot(x,Y);
grid on;
xr=ginput(2);
[x_m,y_m] = fminbnd(Y1,xr(1,1),xr(2,1));
hold on;
plot(x_m,y_m,'r*',xr(1,1),xr(1,2),'g*',xr(2,1),xr(2,2),'g*');
hold off;