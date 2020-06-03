a = 2*pi;
[x,y] = meshgrid(-1:0.01:1, -1:0.01:1);
r = sqrt(x.^2+y.^2);
f = (2*besselj(1,a*r(:))./r(:)).^2;
figure;
mesh(x,y,reshape(f,size(x)));
set(gca,'Zscale','Log');