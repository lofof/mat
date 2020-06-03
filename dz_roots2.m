a = -10;
b = 10;
m=100; x=linspace(a,b,m);
f='x.^2+2*x-1-sin(x)';
plot(x,eval(f),x,0*x,':'); grid on
xlabel('x'); ylabel('y');
z=ginput(1);
[zr,fr]=fzero(f,z(1));
hold on
plot(zr,fr,'r*',z(1),z(2),'g*')
hold off;
disp(zr);