% Soluzione Cap_2 Es_1.
%
% -p: polinomio;
% -tolx: tolleranza;
% -tx: vettore contenente i valori di tolleranza ad ogni passo;
% -xb: vettore contenente i valori del metodo di bisezione ad ogni passo.

p = @(x) x^3-4*x^2+5*x-2;
tolx = 10^-1;
tx = [];
xb = [];
j = 1;

% Iterazione fino a una tolleranza di circa 10^(-16) (eps)

while tolx>eps
    tx(j) = tolx;
    xb(j) = bisezione(p, 0, 3, tolx);
    tolx = tolx/10;
    j = j+1;
end