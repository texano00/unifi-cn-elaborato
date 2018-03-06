% secanti(f, f1, x0, imax, tolx)
% Metodo delle secanti.
%
% Input:
% f: la funzione;
% f1: la derivata della funzione;
% x0: l'approssimazione iniziale;
% imax: il numero massimo di iterazioni;
% tolx: la tolleranza desiderata;

function [] = secanti(f, f1, x0, imax, tolx)
    i = 1;
    fx0 = feval(f, x0);
    f1x = feval(f1, x0);
    if f1x==0
       vai=false;
       i=i-1;
    else
        x1 = x0-fx0/f1x;
        vai = abs(x1-x0)>tolx;
    end
    while ( i<imax ) && vai
        i = i+1;
        fx1 = feval(f, x1);
        if (fx1-fx0)==0
            vai=false;
            i=i-1;
            break
        end
        x2 = (fx1*x0-fx0*x1)/(fx1-fx0);
        vai = abs(x2-x1)>tolx;
        fx0 = fx1;
        x0 = x1;
        x1 = x2;
    end
    x0,i
end