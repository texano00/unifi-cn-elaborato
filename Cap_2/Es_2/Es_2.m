% Soluzione Cap_2 Es_2.
%
% -p: polinomio;
% -pd: derivata prima del polinomio;
% -tolx: tolleranza;
% -tx: vettore contenente i valori di tolleranza ad ogni passo;
% -xn: vettore contenente i valori del metodo di newton ad ogni passo;
% -xc: vettore contenente i valori del metodo delle corde ad ogni passo;
% -xs: vettore contenente i valori del metodo delle secanti ad ogni passo.

p = @(x) x^3-4*x^2+5*x-2;
pd = @(x) 3*x^2-8*x+5;
tolx = 10^-1;
tx = [];
xn = [];
xc = [];
xs = [];
j = 1;

% Iterazione fino a una tolleranza di 10^(-17)

while tolx>10^(-17)
    tx(j) = tolx;
    xn(j) = newton(p, pd, 3, 1000, tolx);
    xc(j) = corde(p, pd, 3, 1000, tolx);
    xs(j) = secanti(p, pd, 3, 1000, tolx);
    tolx = tolx/10;
    j = j+1;
end