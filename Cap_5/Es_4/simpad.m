% If = simpAd(a, b, fun, tol)
%   Formula di Simpson adattativa per l'approssimazione dell'integrale
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
%   -If: l'approssimazione dell'integrale definito della funzione;

function [If] = simpAd(a, b, fun, tol)
    h = (b-a)/6;
	m = (a+b)/2;
    m1 = (a+m)/2;
    m2 = (m+b)/2;
    If1 = h*(feval(fun, a) + 4*feval(fun, m) + feval(fun, b));
    If = If1/2 + h*(2*feval(fun, m1) + 2*feval(fun, m2) - feval(fun, m));
    err = abs(If-If1)/15;
    if err>tol
        IfSx = simpAd(a, m, fun, tol/2);
        IfDx = simpAd(m, b, fun, tol/2);
        If = IfSx+IfDx;
    end
end