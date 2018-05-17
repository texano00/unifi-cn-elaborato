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
    x = linspace(a,b,n+1);
    f = feval(fun,x);

    If = ((b-a)/n) * ( sum(f) - 0.5 ( f(1) + f(end) ) )
end