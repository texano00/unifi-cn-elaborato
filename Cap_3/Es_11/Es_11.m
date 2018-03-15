x = [1/2,1/2];
f=inline('[2*x(1)-x(2), 3*x(2)^2-x(1)]');
tolx = 10^-3;
J=[2-x(2), 2*x(1)-1; 3*x(2)^2-1, 6*x(2)-x(1)];

newtonNonLin(f, J, x, 1000, tolx)