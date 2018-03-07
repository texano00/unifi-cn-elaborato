% secantisqrtalpha(alpha, x0, x1, imax, tolx)
% Metodo delle Secanti ottimizzato per l'approssimazione della radice
% quadrata.
%
% Input:
% alpha: l'argomento della radice quadrata;
% x0: l'approssimazione iniziale;
% imax: il numero massimo di iterazioni;
% tolx: la tolleranza desiderata.

function [] = secantisqrtalpha(alpha, x0, x1, imax, tolx)
    format long e;
    x = x1;
    i = 1;
    x0,x0-sqrt(alpha),x,x-sqrt(alpha),i
    while ( i<imax ) && ( abs(x-x0)>tolx )
        i = i+1;
        x1 = (x*x0 + alpha)/(x + x0);
        x0 = x;
        x = x1;
        x,x-sqrt(alpha),i
    end
end

