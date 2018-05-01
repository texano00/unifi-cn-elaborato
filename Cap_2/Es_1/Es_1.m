p = @(x) x^3-4*x^2+5*x-2;
tolx = 10^-1;
tx = [];
xb = [];
j = 1;
while tolx>eps
    tx(j) = tolx;
    xb(j) = bisezione(p, 0, 3, tolx);
    tolx = tolx/10;
    j = j+1;
end

xb