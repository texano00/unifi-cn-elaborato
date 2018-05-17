% I = simpAd(a, b, fun, tol)
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
%   -I: l'approssimazione dell'integrale definito della funzione;

function I = simpAd(a, b, fun, tol, fa, fb, fc)
    h = (b-a)/6;
    c = (a+b)/2;
    if nargin <= 4
        k = 0;
        fa = feval(fun,a);
        fb = feval(fun,b);
        fc = feval(fun,c);
        k = k+3;
    end
    x1 = (a+c)/2;
    x2 = (c+b)/2;
    f1 = feval(fun,x1);
    f2 = feval(fun,x2);
    k = k+2;
    I1 = h*(fa + 4*fc + fb);
    I = (0.5*h) * (fa + 4*f1 + 2*fc + 4*f2 + fb);
    err = abs(I-I1)/15;
    if err > tol
        I = simpAd(fun,a,c,tol/2,fa,fc,f1) + simpAd(fun,c,b,tol/2,fc,fb,f2);
    end
end