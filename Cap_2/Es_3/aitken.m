% x0 = aitken(f, f1, x0, imax, tolx)
%   Metodo di accelerazione di Aitken.
%
% Input:
%   -f: la funzione
%   -f1: la derivata della funzione;
%   -x0: l'approssimazione iniziale;
%   -imax: il numero massimo di iterazioni;
%   -tolx: la tolleranza desiderata;
%
% Output :
%   -x0: radici della funzione

function x0 = aitken(f, f1, x0, imax, tolx)
    ia = 0;
	control = true;
    iszero = false;
    while ( ia<imax ) && control
        ia = ia+1;
        fx = feval(f, x0);
        f1x = feval(f1, x0);
        if f1x == 0
            iszero = true;
            ia = ia-1;
            break
        end
        x1 = x0 - fx/f1x;
        fx = feval(f, x1);
        f1x = feval(f1, x1);
        if f1x == 0
            iszero = true;
            ia = ia-1;
            break
        end
        x2 = x1 - fx/f1x;
        if (x2-2*x1+x0)==0
            iszero = false;
            ia = ia-1;
            break
        end
        x3 = (x2*x0-x1^2)/(x2-2*x1+x0);
        if abs(x3-x0)>tolx
            control = true;
        else
            control = false;
        end
        x0 = x3;
    end
    if iszero
        fprintf('Con tol = %e il metodo di Aitken non converge entro la tolleranza ed il numero di passi richiesti\n', tolx);
    else
        fprintf('Con tol = %e il metodo di Aitken converge a %f dopo %d passi\n', tolx, x3, ia);
    end
end