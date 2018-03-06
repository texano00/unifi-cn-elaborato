% newton(f, f1, x0, imax, tolx)
% Metodo di Newton generico.
%
% Input:
% f: la funzione;
% f1: la derivata della funzione;
% x0: l'approssimazione iniziale;
% imax: il numero massimo di iterazioni;
% tolx: la tolleranza desiderata;

function [] = newton(f, f1, x0, imax, tolx)
    i = 0;
    vai = true;
    while ( i<imax ) && vai
        i = i+1;
        fx = feval(f, x0);
        f1x = feval(f1, x0);
        if f1x==0
            vai=false;
            i=i-1; 
            break
        end
        x1 = x0 - fx/f1x;
        vai = abs(x1-x0)>tolx;
        x0 = x1;        
    end
    x0,i
end
