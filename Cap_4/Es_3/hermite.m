% y = hermite(xi, fi, f1i, x)
%   Calcola il polinomio interpolante di grado n in forma di Hermite, nei
%   punti x.
% 
% Input:
%   -xi : vettore contenente le ascisse di interpolazione su cui calcolare 
%   la differenza divisa;
%   -fi : vettore contenente i valori assunti dalla funzione in
%   corrispondenza dei punti xi.
%   -f1i : vettore contenente i valori assunti dalla derivata prima della 
%   funzione in corrispondenza dei punti xi.
%   -x : vettore contenente i valori su cui calcolare il polinomio
%   interpolante
% 
% Output:
%   -y : vettore contenente il valore del polinomio interpolante calcolato
%   sulle x.

function [y] = hermite(xi, fi, f1i, x)
    n = length(xi)-1;
    xh = zeros(2*n+2, 1);
    xh(1:2:2*n+1) = xi;
    xh(2:2:2*n+2) = xi;
    fh = zeros(2*n+2, 1);
    fh(1:2:2*n+1) = fi;
    fh(2:2:2*n+2) = f1i;
    nh = length(xh)-1;
    fh, xh
    for i = nh:-2:3
        fh(i) = (fh(i)-fh(i-2))/(xh(i)-xh(i-2));
    end
    for i = 2:nh
        for j = nh+1:-1:i+1
            fh(j) = (fh(j)-fh(j-1))/(xh(j)-xh(j-i));
        end
    end
    y = fh(nh+1)*ones(size(x));
    y
    for i = nh:-1:1
        y = y.*(x-xh(i))+fh(i);
        y
    end
end