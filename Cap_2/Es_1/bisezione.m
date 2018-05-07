% x = bisezione(f, a, b, tolx)
% Metodo di bisezione.
%
% Input:
%  -f: la funzione;
%  -a: estremo sinistro dell'intervallo di confidenza;
%  -b: estremo destro dell'intervallo di confidenza;
%  -tolx: la tolleranza desiderata;
%
% Output :
%  -x: radici della funzione

function x = bisezione(f, a, b, tolx)
    imax = ceil( log2(b-a) - log2(tolx) );
    fa = feval(f, a);
    fb = feval(f, b);
    ib = 0;
    while ( ib<imax )
        x = (a+b)/2;
        fx = feval(f, x);
        f1x = abs( (fb-fa)/(b-a) );
        if abs(fx)<=tolx*f1x
            break
        elseif fa*fx<0
            b = x; 
            fb = fx;
        else
            a = x; 
            fa = fx;
        end
        ib = ib+1;
    end
    ib
end