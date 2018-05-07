% x0 = newton(f, f1, x0, imax, tolx)
% Metodo di Newton generico.
%
% Input:
%  -f: la funzione;
%  -f1: la derivata della funzione;
%  -x0: l'approssimazione iniziale;
%  -imax: il numero massimo di iterazioni;
%  -tolx: la tolleranza desiderata;
%
% Output :
%  -x0: radici della funzione.

function x0 = newton(f, f1, x0, imax, tolx)
    in = 0;
    vai = true;
    while ( in<imax ) && vai
        in = in+1;
        fx = feval(f, x0);
        f1x = feval(f1, x0);
        if f1x==0
            vai=false;
            in=in-1; 
            break
        end
        x1 = x0 - fx/f1x;
        vai = abs(x1-x0)>tolx;
        x0 = x1;        
    end
    in
end
