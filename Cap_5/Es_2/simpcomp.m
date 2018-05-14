% If = simpComp(n, a, b, fun)
%   Formula di Simpson composita per l'approssimazione dell'integrale
%   definito di una funzione.
%
% Input:
%   -n: numero, pari, di sottointervalli sui quali applicare la formula di
%       Simpson semplice.
%   -a: estremo sinistro dell'intervallo di integrazione;
%   -b: estremo destro dell'intervallo di integrazione;
%   -fun: la funzione di cui si vuol calcolare l'integrale;
%
% Output:
%   -If: l'approssimazione dell'integrale definito della funzione.

function [If] = simpComp(n, a, b, fun)
    h = (b-a)/n;
    If = fun(a)-fun(b);
    for i=1:n/2
        If = If + 4*fun(a+(2*i-1)*h)+2*fun((a+2*i*h));
    end
    If = If*(h/3);
end