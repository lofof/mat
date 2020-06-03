[x1,y1] = meshgrid(-10:0.5:10,-10:0.5:10);
a = input("a = ");
z1 = a .* sin(sqrt(x1.^2+y1.^2))./sqrt(x1.^2+y1.^2);
figure;
plot3(x1,y1,z1);
[x2,y2] = meshgrid(-10:0.5:10,-10:0.5:10);
z2 = -x2.*sin(x2)-y2.*cos(y2);
figure;
mesh(x2,y2,z2);