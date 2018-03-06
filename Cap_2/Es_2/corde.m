% corde(f, f1, x0, imax, tolx)
% Metodo delle corde.
%
% Input:
% f: la funzione;
% f1: la derivata della funzione;
% x0: l'approssimazione iniziale;
% imax: il numero massimo di iterazioni;
% tolx: la tolleranza desiderata;

function [] = corde(f, f1, x0, imax, tolx)
    f1x0 = feval(f1, x0);
	i = 0;
    vai = true;
    while ( i<imax ) && vai
        i = i+1;
        fx = feval(f, x0);
        if f1x0==0
            vai=false;
            i=i-1;
            i
            fx
            break
        end
        x1 = x0-fx/f1x0;
        vai = abs(x1-x0)>tolx;
        x0 = x1;
    end
    x0,i
end