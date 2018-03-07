% newtonsqrtalpha(alpha, x0, imax, tolx)
% Metodo di Newton ottimizzato per l'approssimazione della radice
% quadrata.
%
% Input:
% alpha: l'argomento della radice quadrata;
% x0: l'approssimazione iniziale;
% imax: il numero massimo di iterazioni;
% tolx: la tolleranza desiderata.

function [] = newtonsqrtalpha(alpha, x0, imax, tolx)
    format long e;
    x = (x0+alpha/x0)/2;
    i = 1;
    x0,x0-sqrt(alpha),x,x-sqrt(alpha),i
	while( i<imax ) && ( abs(x-x0)>tolx )
        i = i+1;
        x0 = x;
        x = (x0+alpha/x0)/2;
        x,x-sqrt(alpha),i
    end
end