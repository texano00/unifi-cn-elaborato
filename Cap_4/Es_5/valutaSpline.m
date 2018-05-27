% x = valutaSpline(xi, s, x)
%   Valuta una spline su una serie di punti.
%
% Input:
%   -xi: vettore contenente gli n+1 nodi di interpolazione;
%   -s: vettore contenente le espressioni degli n polinomi che
%   definiscono la spline;
%   -x: vettore di m punti su cui si vuole valutare la spline.
%
% Output:
%   -x: vettore di m valori contenente la valutazione dei punti in x
%   della spline (NaN se un punto non e' valutabile).

function x = valutaSpline(xi, s, x)
    n = length(xi) - 1;
    k = 1;
    j = 1;
    for i = 1 : n
        inInt = 1;
        while j <= length(x) && inInt
            if x(j) >= xi(i) && x(j) <= xi(i + 1)
                j = j + 1;
            else
                inInt = 0;
            end
        end
        x(k : j - 1) = subs(s(i), x(k : j - 1));
        k = j;
    end
end