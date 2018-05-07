% x0 = newtonMod(f, f1, x0, m, imax, tolx)
% Metodo di Newton modificato.
%
% Input:
%  -f: la funzione;
%  -f1: la derivata della funzione;
%  -x0: l'approssimazione iniziale;
%  -m: la molteplicita della radice;
%  -imax: il numero massimo di iterazioni;
%  -tolx: la tolleranza desiderata;
%
% Output :
%  -x0: radici della funzione

function x0 = newtonMod(f, f1, x0, m, imax, tolx)
    inm = 0;
    vai = true;
    while ( inm<imax ) && vai
        inm = inm+1;
        fx = feval(f, x0);
        f1x = feval(f1, x0);
        if f1x==0
            vai=false;
            inm=inm-1; 
            break
        end
        x1 = x0 - m*(fx/f1x);
        vai = abs(x1-x0)>tolx;
        x0 = x1;
    end
    inm
end

