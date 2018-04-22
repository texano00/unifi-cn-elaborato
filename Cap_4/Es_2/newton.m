% y = newton(xi, fi, x)
%   Calcola il polinomio interpolante di grado n in forma di Newton, nei
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

function [y] = newton(xi, fi, x)
    n = length(xi)-1;
    for j = 1:n
        for i = n+1:-1:j+1
            fi(i) = (fi(i)-fi(i-1))/(xi(i)-xi(i-j));
        end
    end
    y = fi(n+1)*ones(size(x));
    y
    for i = n:-1:1
        y = y.*(x-xi(i))+fi(i);
        y
    end
end