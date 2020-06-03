syms x;
p1 = x^4+2*x^3-x^2-4*x-2;
j1 = x^4+x^3-x^2-2*x-2;
p2 = x^5+3*x^4+x^3+x^2+3*x+1;
j2 = x^4+2*x^3+x+2;
disp("1)");
[G1,S1,T1] = gcd(p1,j1)
disp("2)");
[G2,S2,T2] = gcd(p2,j2)