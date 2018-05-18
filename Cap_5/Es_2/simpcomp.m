% I = simpComp(n, a, b, fun)
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
%   -I: l'approssimazione dell'integrale definito della funzione.

function I = simpComp(n, a, b, fun)
    h = (b-a)/n;
    I = fun(a)-fun(b);
    for i=1:n/2
        I = I + 4*fun(a+(2*i-1)*h)+2*fun((a+2*i*h));
    end
    I = I*(h/3);
end