% y = lagrange(xi, fi, x)
%   Calcola il polinomio interpolante di grado n in forma di Lagrange, nei
%   punti x.
% 
% Input:
%   -xi : vettore contenente le ascisse di interpolazione su cui calcolare
%   la differenza divisa;
%   -fi : vettore contenente i valori assunti dalla funzione in
%   corrispondenza dei punti xi.
%   -x : vettore contenente i valori su cui calcolare il polinomio
%   interpolante
% 
% Output:
%   -y : vettore contenente il valore del polinomio interpolante calcolato
%   sulle x.

function [y] = lagrange(xi, fi, x)
    n = length(xi);
    m = length(x);
    y = zeros(m,1);
    for i = 1:m
        y(i) = 0;
        for j = 1:n
            range = [1:j-1, j+1:n];
            bl = prod(x(i) - xi(range))/prod(xi(j) - xi(range));
            y(i) = y(i) + fi(j) * bl;
        end
    end
end
