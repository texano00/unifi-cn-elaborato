% Soluzione Cap_5_Es_5
%
% Input:
%   -f: funzione;
%   -a: estremo sinistro dell'intervallo;
%   -b: estremo destro delli'intervallo;
%   -tol: tolleranza.
%
% Output:
%   -ta: approssimazione dell'integrale definito della funzione;
%   -kt: numero di valutazioni funzionali;
%   -sa: approssimazione dell'integrale definito della funzione;
%   -ks: numero di valutazioni funzionali;

f = @(x)(exp(-x * 10^(6))); 
a = 0;
b = 1;
tol = 10^(-9);

[ta,kt] = trapAd(a,b,f,tol);
[sa,ks] = simpAd(a,b,f,tol);