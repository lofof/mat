n = input("n = ");
A = randi([-100,100],n,n);
[R,D] = eig(A);
P1 = poly(D);
P2 = poly(A);
if P1 == P2
    disp("Yes");
else
    disp("No");
end