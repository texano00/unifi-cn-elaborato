format short;

x = [1/2;1/2];
f = inline('x(1)^2+x(2)^3-x(1)*x(2)');
F = inline('[2*x(1)-x(2), 3*x(2)^2-x(1)]');
J = [2-x(2), 2*x(1)-1; 3*x(2)^2-1, 6*x(2)-x(1)];

tolx = 10^-3;
x1 = newtonNonLin(F, J, x, 100, tolx);
n1 = norm(x1);
x1, n1

tolx = 10^-6;
x2 = newtonNonLin(F, J, x, 100, tolx);
n2 = norm(x2);
x2, n2