% Soluzione Cap_2 Es_3.
%
% -p: polinomio;
% -pd: derivata prima del polinomio;
% -tolx: tolleranza;
% -xn: vettore contenente i valori del metodo di newton ad ogni passo;
% -xnm1: vettore contenente i valori del metodo di newton modificato m=1 ad ogni passo;
% -xnm2: vettore contenente i valori del metodo di newton modificato m=2 ad ogni passo.
% -xa: vettore contenente i valori del metodo di Aitken ad ogni passo;

p = @(x) x^3-4*x^2+5*x-2;
pd = @(x) 3*x^2-8*x+5;
tolx = 10^-1;
xn = [];
xnm1 = [];
xnm2 = [];
xa = [];
j = 1;

% Iterazione.

while tolx>eps
    xn(j) = newton(p, pd, 0, 1000, tolx);
    xnm1(j) = newtonMod(p, pd, 0, 1, 1000, tolx);
    xnm2(j) = newtonMod(p, pd, 0, 2, 1000, tolx);
    xa(j) = aitken(p, pd, 0, 1000, tolx);
    tolx = tolx/10;
    j = j+1;
end

xn, xnm1, xnm2, xa