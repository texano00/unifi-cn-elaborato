% I = simpComp(n, a, b, fun)
%   Formula di Simpson composita per l'approssimazione dell'integrale
%   definito di una funzione.
%
% Input:
%   -n: numero, pari, di sottointervalli sui quali applicare la formula di
%       Simpson composita.
%   -a: estremo sinistro dell'intervallo di integrazione;
%   -b: estremo destro dell'intervallo di integrazione;
%   -fun: la funzione di cui si vuol calcolare l'integrale;
%
% Output:
%   -I: l'approssimazione dell'integrale definito della funzione.

function I = simpComp(n, a, b, fun)
    if mod(n,2) ~= 0
        error('n sottointervalli non è pari');
    end
    x = linspace(a,b,n+1);
    I = 0;
    for i=0:n/2
        I = I + 2*feval(fun,x(2*i+1));
        if i~=0
            I = I + 4*feval(fun,x(2*i));
        end
    end
    fa = feval(fun,x(1));
    fb = feval(fun,x(end));
    I = ((b-a)/n)*(1/3)*(I-(fa+fb));
end