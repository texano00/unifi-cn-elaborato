% If = trapad(a, b, fun, tol)
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
%   -If: l'approssimazione dell'integrale definito della funzione;

function [If] = trapad(a, b, fun, tol)
    h = (b-a)/2;
	m = (a+b)/2;
    If1 = h*(feval(fun, a) + feval(fun, b));
    If = If1/2 + h*feval(fun, m);
    err = abs(If-If1)/3;
    if err>tol
        IfSx = trapad(a, m, fun, tol/2);
        IfDx = trapad(m, b, fun, tol/2);
        If = IfSx+IfDx;
    end
end