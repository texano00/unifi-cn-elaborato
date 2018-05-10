% x0 = newtonMod(f, f1, x0, m, imax, tolx)
%   Metodo di Newton modificato.
%
% Input:
%   -f: la funzione;
%   -f1: la derivata della funzione;
%   -x0: l'approssimazione iniziale;
%   -m: la molteplicita della radice;
%   -imax: il numero massimo di iterazioni;
%   -tolx: la tolleranza desiderata;
%
% Output :
%   -x0: radici della funzione

function x0 = newtonMod(f, f1, x0, m, imax, tolx)
    inm = 0;
    control = true;
    iszero = false;
    while ( inm<imax ) && control
        inm = inm+1;
        fx = feval(f, x0);
        f1x = feval(f1, x0);
        if f1x == 0
            iszero = true;
            inm = inm-1; 
            break
        end
        x1 = x0 - m*(fx/f1x);
        if abs(x1-x0)>tolx
            control = true;
        else
            control = false;
        end
        x0 = x1;
    end
    if iszero
        fprintf('Con tol = %e il metodo di Newton Modificato non converge entro la tolleranza ed il numero di passi richiesti\n', tolx);
    else
        fprintf('Con tol = %e il metodo di Newton Modificato converge a %f dopo %d passi\n', tolx, x1, inm);
    end
end

