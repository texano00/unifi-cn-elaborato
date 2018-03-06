p = inline('x^3-4*x^2+5*x-2');
pd = inline('3*x^2-8*x+5');
tolx = 10^-1;
while tolx>eps
    tolx
    newton(p, pd, 3, 1000, tolx);
    corde(p, pd, 3, 1000, tolx);
    secanti(p, pd, 3, 1000, tolx);
    tolx = tolx/10;
end