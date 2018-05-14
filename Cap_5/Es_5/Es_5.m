% Soluzione Cap_5_Es_5
%
% -f: funzione;
% -a: estremo sinistro dell'intervallo;
% -b: estremo destro delli'intervallo;
% -tol: tolleranza.

f = @(x)(exp(-x * 10^(6))); 
a = 0;
b = 1;
tol = 10^(-9);

ta = trapAd(a,b,f,tol);
sa = simpAd(a,b,f,tol);