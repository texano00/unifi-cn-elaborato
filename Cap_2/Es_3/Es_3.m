p = inline('x^3-4*x^2+5*x-2');
pd = inline('3*x^2-8*x+5');
tolx = 10^-1;
xn = [];
xnm1 = [];
xnm2 = [];
xa = [];
j = 1;
while tolx>eps
    xn(j) = newton(p, pd, 0, 1000, tolx);
    xnm1(j) = newtonMod(p, pd, 0, 1, 1000, tolx);
    xnm2(j) = newtonMod(p, pd, 0, 2, 1000, tolx);
    xa(j) = aitken(p, pd, 0, 1000, tolx);
    tolx = tolx/10;
    j = j+1;
end

xn, xnm1, xnm2, xa