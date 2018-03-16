format short;

x = [1/2;1/2];
f = inline('x(1)^2+x(2)^3-x(1)*x(2)');
F = inline('[2*x(1)-x(2), 3*x(2)^2-x(1)]');
J=[2-x(2), 2*x(1)-1; 3*x(2)^2-1, 6*x(2)-x(1)];

tolx = 10^-3;

y1 = newtonNonLin(F, J, x, 100, tolx);
n1 = norm(y1);
y1, n1

tolx = 10^-6;

y2 = newtonNonLin(F, J, x, 100, tolx);
n2 = norm(y2);
y2, n2