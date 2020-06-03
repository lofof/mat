[ x1, y1] = meshgrid( -10 : 0.5 : 10, -10 : 0.5 : 10 );
a1 = input("a = ");
z1 =a1*x1.*exp(-x1.^2-y1.^2);
figure;
surf(x1, y1, z1);
title("z =a*x*e in (-x^2-y^2)");