% If = trapComp(n, a, b, fun)
%   Formula dei trapezi composita per l'approssimazione dell'integrale
%   definito di una funzione.
%
% Input:
%   -n: numero di sottointervalli sui quali applicare la formula dei
%       trapezi semplice.
%   -a: estremo sinistro dell'intervallo di integrazione;
%   -b: estremo destro dell'intervallo di integrazione;
%   -fun: la funzione di cui si vuol calcolare l'integrale;
%
% Output:
%   -If: l'approssimazione dell'integrale definito della funzione.

function [If] = trapComp(n, a, b, fun)
    h = (b-a)/n;
    If = 0;
    for i = 1:n-1
        If = If+fun(a+i*h);
    end
    If = (h/2)*(2*If + fun(a) + fun(b));
end