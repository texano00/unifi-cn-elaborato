% corde(f, f1, x0, imax, tolx)
% Metodo delle corde.
%
% Input:
% f: la funzione;
% f1: la derivata della funzione;
% x0: l'approssimazione iniziale;
% imax: il numero massimo di iterazioni;
% tolx: la tolleranza desiderata;
% Output :
% x0: radici della funzione.

function x0 = corde(f, f1, x0, imax, tolx)
    f1x0 = feval(f1, x0);
	ic = 0;
    vai = true;
    while ( ic<imax ) && vai
        ic = ic+1;
        fx = feval(f, x0);
        if f1x0==0
            vai=false;
            ic=ic-1; 
            break
        end
        x1 = x0-fx/f1x0;
        vai = abs(x1-x0)>tolx;
        x0 = x1;
    end
    ic
end