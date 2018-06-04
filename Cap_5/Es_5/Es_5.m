% Soluzione Cap_5_Es_5
%
% Input:
%   -f: funzione;
%   -a: estremo sinistro dell'intervallo;
%   -b: estremo destro delli'intervallo;
%   -id: valore integrale definito;
%   -tol: tolleranza.
%
% Output:
%   -tc: approssimazione con formula trapezi composita dell'integrale definito della funzione;
%   -errTC : errore trapezi composita;
%   -sc: approssimazione con formula simpson composita dell'integrale definito della funzione;
%   -errSC : errore simpson composita;
%   -n: numero di valutazioni funzionali (sottointervalli);
%   -ta: approssimazione con formula trapezi adattiva dell'integrale definito della funzione;
%   -kta: numero di valutazioni funzionali trapezi adattiva;
%   -sa: approssimazione con formula simpson adattiva dell'integrale definito della funzione;
%   -ksa: numero di valutazioni funzionali simpson adattiva.

f = @(x)(exp(-x * 10^(6))); 
a = 0;
b = 1;
id = 10^(-6);
tol = 10^(-9);

% Trapezi composita.
i = 1;
A =  ones(10,3);
for n = 1000000:1000000:10000000
    tc = trapComp(n,a,b,f);
    errTC = abs(id-tc);
    
    % Memorizzo 'n' (sottointervalli), 'tc' (trapezi composita) e 
    % errTC (errore trapezi composita).
    A(i,1) = n;
    A(i,2) = tc;
    A(i,3) = errTC;
    
    if errTC <= tol
        break;
    end
    i = i+1;
end
if errTC > tol
    warning('Superato il numero massimo di iterazioni prima della tolleranza');
end

% Simpson composita.
i = 1;
B =  ones(16,3);
for n = 100000:100000:2000000
    sc = simpComp(n,a,b,f);
    errSC = abs(id-sc);
    
    % Memorizzo 'n' (sottointervalli), 'sc' (simpson composita) e 
    % errSC (errore simpson composita).
    B(i,1) = n;
    B(i,2) = sc;
    B(i,3) = errSC;
    
    if errSC <= tol
        break;
    end
    i = i+1;
end
if errSC > tol
    warning('Superato il numero massimo di iterazioni prima della tolleranza');
end

% Trapezi adattiva.
[ta,kta] = trapAd(a,b,f,tol);

% Simpson adattiva.
[sa,ksa] = simpAd(a,b,f,tol);