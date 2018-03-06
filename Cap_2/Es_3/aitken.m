% aitken(f, f1, x0, imax, tolx, s, g, gs)
% Metodo di accelerazione di Aitken.
%
% Input:
% f: la funzione
% f1: la derivata della funzione;
% x0: l'approssimazione iniziale;
% imax: il numero massimo di iterazioni;
% tolx: la tolleranza desiderata;

function [] = aitken(f, f1, x0, imax, tolx)
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
        fx = feval(f, x1);
        f1x = feval(f1, x1);
        if f1x==0
            vai=false;
            i=i-1;
            break
        end
        x2 = x1 - fx/f1x;
        if (x2-2*x1+x0)==0
            vai=false;
            i=i-1;
            break
        end
        x3 = (x2*x0-x1^2)/(x2-2*x1+x0);
        vai = abs(x3-x0)>tolx;
        x0 = x3;
    end
    x0,i
end