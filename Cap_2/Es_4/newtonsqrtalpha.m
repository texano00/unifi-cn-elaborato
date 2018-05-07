% [xn,exn] = newtonSqrtAlpha(alpha, x0, imax, tolx)
% Metodo di Newton ottimizzato per l'approssimazione della radice
% quadrata.
%
% Input:
%  -alpha: l'argomento della radice quadrata;
%  -x0: l'approssimazione iniziale;
%  -imax: il numero massimo di iterazioni;
%  -tolx: la tolleranza desiderata.
%
% Output:
%  -xn: vettore radici;
%  -exn: vettore errore.

function [xn,exn] = newtonSqrtAlpha(alpha, x0, imax, tolx)
    format long e;
    xn = [];
    exn = [];
    i = 1; 
    xn(i) = x0;
    exn(i) = x0-sqrt(alpha);
    i = i+1;
    x = (x0+alpha/x0)/2;
    xn(i) = x;
    exn(i) = x-sqrt(alpha);
    while( i<imax ) && ( abs(x-x0)>tolx )
        i = i+1;
        x0 = x;
        x = (x0+alpha/x0)/2;
        xn(i) = x;
        exn(i) = x-sqrt(alpha);
    end
end