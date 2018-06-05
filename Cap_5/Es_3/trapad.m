% [I,k] = trapAd(a, b, fun, tol[, fa, fb])
%   Formula dei trapezi adattativa per l'approssimazione dell'integrale
%   definito di una funzione.
%
% Input:
%   -a: estremo sinistro dell'intervallo di integrazione;
%   -b: estremo destro dell'intervallo di integrazione;
%   -fun: la funzione di cui si vuol calcolare l'integrale;
%   -tol: la tolleranza entro la quale si richiede debba rientrare la
%   soluzione approssimata.
%
% Input ricorsivi:
%   -fa: valore della funzione nell'estremo sinistro del sottointervallo;
%   -fb: valore della funzione nell'estremo destro del sottointervallo;
%
% Output:
%   -I: approssimazione dell'integrale definito della funzione;
%   -kta: numero di valutazioni funzionali.

function [I,kta] = trapAd(a, b, fun, tol, fa, fb)
    global k
    h = (b-a)/2;
    if nargin <= 4
        k = 0;
        fa = feval(fun,a);
        fb = feval(fun,b);
        k = k+2;
    end
    c = (a+b)/2;
    fc = feval(fun,c);
    k = k+1;
    I1 = h*(fa + fb);
    I = (0.5*h)*(fa+(2*fc)+fb);
    err = abs(I-I1)/3;
    if err>tol
        IS = trapAd(a, c, fun, tol/2, fa, fc);
        ID = trapAd(c, b, fun, tol/2, fc, fb);
        I = IS+ID;
    end
    kta = k;
end