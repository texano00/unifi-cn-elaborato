% sx = valutaSpline(xi, s, x)
%   Valuta una spline su una serie di punti.
%
% Input:
%   -xi: vettore contenente gli n+1 nodi di interpolazione;
%   -s: vettore contenente le espressioni degli n polinomi che
%   definiscono la spline;
%   -x: vettore di m punti su cui si vuole valutare la spline.
%
% Output:
%   -sx: vettore di m valori contenente la valutazione dei punti in pt
%   della spline (NaN se un punto non è valutabile).

function [sx] = valutaSpline(xi, s, x)
    sx = zeros(length(x), 1);
    for i=1:length(x)
        if x(i) < xi(1) || x(i) > xi(length(xi))
            sx(i)=NaN;
        else
            for j=1:length(xi)
                if x(i) >= xi(j-1) && x(i) <= xi(j)
                    f = inline(s(j));
                    sx(i)=f(x(i));
                    break;
                end
            end
        end
    end
end