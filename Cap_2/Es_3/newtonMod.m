% newtonMod(f, f1, x0, m, imax, tolx)
% Metodo di Newton modificato.
%
% Input:
% f: la funzione;
% f1: la derivata della funzione;
% x0: l'approssimazione iniziale;
% m: la molteplicita della radice;
% imax: il numero massimo di iterazioni;
% tolx: la tolleranza desiderata;

function [] = newtonMod(f, f1, x0, m, imax, tolx)
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
        x1 = x0 - m*(fx/f1x);
        vai = abs(x1-x0)>tolx;
        x0 = x1;
    end
    x0,i
end

