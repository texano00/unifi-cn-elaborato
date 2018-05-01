p = @(x) x^3-4*x^2+5*x-2;
pd = @(x) 3*x^2-8*x+5;
tolx = 10^-1;
tx = [];
xn = [];
xc = [];
xs = [];
j = 1;
while tolx>eps
    tx(j) = tolx;
    xn(j) = newton(p, pd, 3, 1000, tolx);
    xc(j) = corde(p, pd, 3, 1000, tolx);
    xs(j) = secanti(p, pd, 3, 1000, tolx);
    tolx = tolx/10;
    j = j+1;
end

xn, xc, xs