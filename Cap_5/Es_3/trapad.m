% I = trapAd(a, b, fun, tol)
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
% Output:
%   -I: approssimazione dell'integrale definito della funzione;
%   -k: numero di valutazioni funzionali.

function [I,k] = trapAd(a, b, fun, tol, k)
    h = (b-a)/2;
	c = (a+b)/2;
    if nargin <= 4
        k = 0;
    end
    fa = feval(fun,a);
    fb = feval(fun,b);
    fc = feval(fun,c);
    k = k+3;
    I1 = h*(fa + fb);
    I = h*((0.5*(fa+fb))+fc);
    err = abs(I-I1)/3;
    if err>tol
        [IS,ks] = trapAd(a, c, fun, tol/2, k);
        [ID,kd] = trapAd(c, b, fun, tol/2, k);
        I = IS+ID;
        k = k+ks+kd;
    end
end