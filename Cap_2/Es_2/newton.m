% x0 = newton(f, f1, x0, imax, tolx)
%   Metodo di Newton generico.
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

function x0 = newton(f, f1, x0, imax, tolx)
    in = 0;
    control = true;
    iszero = false;
    while ( in<imax ) && control
        in = in+1;
        fx = feval(f, x0);
        f1x = feval(f1, x0);
        if f1x == 0
            iszero = true;
            in = in-1; 
            break
        end
        x1 = x0 - fx/f1x;
        if abs(x1-x0)>tolx
            control = true;
        else
            control = false;
        end
        x0 = x1;        
    end
    if iszero
        fprintf('Con tol = %e il metodo di Newton non converge entro la tolleranza ed il numero di passi richiesti\n', tolx);
    else
        fprintf('Con tol = %e il metodo di Newton converge a %f dopo %d passi\n', tolx, x0, in);
    end
end
