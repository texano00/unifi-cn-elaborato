% x0 = corde(f, f1, x0, imax, tolx)
%   Metodo delle corde.
%
% Input:
%   -f: la funzione;
%   -f1: la derivata della funzione;
%   -x0: l'approssimazione iniziale;
%   -imax: il numero massimo di iterazioni;
%   -tolx: la tolleranza desiderata;
%
% Output :
%   -x0: radici della funzione.

function x0 = corde(f, f1, x0, imax, tolx)
    f1x0 = feval(f1, x0);
	ic = 0;
    control = true;
    iszero = false;
    while ( ic<imax ) && control
        ic = ic+1;
        fx = feval(f, x0);
        if f1x0 == 0
            iszero = true;
            ic = ic-1; 
            break;
        end
        x1 = x0-fx/f1x0;
        if abs(x1-x0)>tolx
            control = true;
        else
            control = false;
        end
        x0 = x1;
    end
    if iszero
        fprintf('Con tol = %e il metodo delle Corde non converge entro la tolleranza ed il numero di passi richiesti\n', tolx);
    else
        fprintf('Con tol = %e il metodo delle Corde converge a %f dopo %d passi\n', tolx, x1, ic);
    end
end