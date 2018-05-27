% y = spline3(xi, fi, x, tipo)
%   Determina le espressioni degli n polinomi che formano una spline
%   cubica naturale o con condizioni not-a-knot e la valuta su una seria 
%   di punti.
%
% Input:
%   -xi: vettore contenente gli n+1 nodi di interpolazione;
%   -fi: vettore contenente i valori assunti dalla funzione da
%   approssimare nei nodi in xi;
%   -x: vettore di m punti su cui si vuole valutare la spline.
%   -tipo: true se la spline implementa condizioni not-a-knot, false se
%   invece e' una spline naturale.
% Output:
%   -y: vettore di m valori contenente la valutazione dei punti in x
%   della spline (NaN se un punto non e' valutabile).

function y = spline3(xi, fi, x, tipo)
    phi = zeros(length(xi)-2, 1);
    xxi = zeros(length(xi)-2, 1);
    dd = zeros(length(xi)-2, 1);
    for i=2:length(xi)-1
        hi = xi(i) - xi(i-1);
        hi1 = xi(i+1) - xi(i);
        phi(i) = hi/(hi+hi1);
        xxi(i) = hi1/(hi+hi1);
        dd(i) = differenzaDivisa(xi(i-1:i+1), fi(i-1:i+1));
    end
    if tipo
        mi = risolviSistSplineNotAKnot(phi, xxi, dd);
    else
        mi = risolviSistSplineNaturale(phi, xxi, dd);
    end
    s = esprSpline3(xi, fi, mi);
    y = valutaSpline(xi, s, x);
end