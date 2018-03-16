% secantiSqrtAlpha(alpha, x0, x1, imax, tolx)
% Metodo delle Secanti ottimizzato per l'approssimazione della radice
% quadrata.
%
% Input:
% alpha: l'argomento della radice quadrata;
% x0: l'approssimazione iniziale;
% imax: il numero massimo di iterazioni;
% tolx: la tolleranza desiderata.
% Output:
% xs: vettore radici;
% exs: vettore errore.

function [xs, exs] = secantiSqrtAlpha(alpha, x0, x1, imax, tolx)
    format long e;
    x = x1;
    xs = [];
    exs = [];
    i = 1; 
    xs(i) = x0;
    exs(i) = x0-sqrt(alpha);
    i = i+1;
    xs(i) = x;
    exs(i) = x-sqrt(alpha);
    while ( i<imax ) && ( abs(x-x0)>tolx )
        i = i+1;
        x1 = (x*x0 + alpha)/(x + x0);
        x0 = x;
        x = x1;
        xs(i) = x;
        exs(i) = x-sqrt(alpha);
    end
end

