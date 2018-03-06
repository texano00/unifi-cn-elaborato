p = inline('x^3-4*x^2+5*x-2');
tolx = 10^-1;
while tolx>eps
    tolx
    bisezione(p, 0, 3, tolx);
    tolx = tolx/10;
end