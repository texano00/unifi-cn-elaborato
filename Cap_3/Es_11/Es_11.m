x = [0,0];
f=inline('[4*x(1)^3+2*x(1)+x(2), x(1)+2*x(2)+2]');
tolx = 10^-3;
J=[12*x(1)^2+2, 1; 1, 2];

newtonNonLin(f, J, x, 1000, tolx)