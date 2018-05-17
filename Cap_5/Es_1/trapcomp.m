% I = trapComp(n, a, b, fun)
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
%   -I: l'approssimazione dell'integrale definito della funzione.

function I = trapComp(n,a,b,fun)
    x = linscape(a,b,n+1);
    f = feval(fun,x);
    I = ((b-a)/n)*(sum(f)-0.5*(f(1) + f(end)));
end