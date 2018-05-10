% x0 = secanti(f, f1, x0, imax, tolx)
%   Metodo delle secanti.
%
% Input:
%   -f: la funzione;
%   -f1: la derivata della funzione;
%   -x0: l'approssimazione iniziale;
%   -imax: il numero massimo di iterazioni;
%   -tolx: la tolleranza desiderata;
%
% Output :
%   -x0: radici della funzione

function x0 = secanti(f, f1, x0, imax, tolx)
    is = 1;
    fx0 = feval(f, x0);
    f1x = feval(f1, x0);
    iszero = false;
    if f1x == 0
       control = false;
       iszero = true;
       is = is-1;
    else
       x1 = x0-fx0/f1x;
       if abs(x1-x0)>tolx
           control = true;
       else
           control = false;
       end
    end
    while ( is<imax ) && control
        is = is+1;
        fx1 = feval(f, x1);
        if (fx1-fx0)==0
            iszero = true;
            is = is-1; 
            break
        end
        x2 = (fx1*x0-fx0*x1)/(fx1-fx0);
        if abs(x2-x1)>tolx
            control = true;
        else
            control = false;
        end
        fx0 = fx1;
        x0 = x1;
        x1 = x2;
    end
    if iszero
        fprintf('Con tol = %e il metodo delle Secanti non converge entro la tolleranza ed il numero di passi richiesti\n', tolx);
    else
        fprintf('Con tol = %e il metodo delle Secanti converge a %f dopo %d passi\n', tolx, x1, is);
    end
end