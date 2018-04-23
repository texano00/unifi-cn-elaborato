% m = risolviSistSplineNotAKnot(phi, xi, dd)
%   Risoluzione del sistema lineare di una spline cubica con condizioni
%   not-a-knot per la determinazione dei fattori m_i necessari per la
%   costruzione dell'espressione della spline cubica not-a-knot.
%
% Input:
%   -phi: vettore dei fattori phi che definiscono la matrice dei
%   coefficienti (lunghezza n-1);
%   -xi: vettore dei fattori xi che definiscono la matrice dei
%   coefficienti (lunghezza n-1);
% 	-dd: vettore delle differenze divise (lunghezza n-1).
%
% Output:
%   -m: vettore riscritto con gli n+1 fattori m_i calcolati.

function [m] = risolviSistSplineNotAKnot(phi, xi, dd)
    dd = [6*dd(1); 6*dd; 6*dd(length(dd))];
    n = length(xi);
    l = zeros(n+1, 1);
	u = zeros(n+2, 1);
    w = zeros(n+1, 1);
	u(1) = 1;
    w(1) = 0;
    l(1) = phi(1)/u(1);
    u(2) = 2-phi(1);
    w(2) = xi(1)-phi(1);
    l(2) = phi(2)/u(2);
	u(3) = 2-l(2)*w(2);
    for i = 4:n
        w(i-1) = xi(i-2);
        l(i-1) = phi(i-1)/u(i-1);
        u(i) = 2-l(i-1)*w(i-1);
    end
	w(n) = xi(n-1);
    l(n) = (phi(n)-xi(n))/u(n);
    u(n+1) = 2-xi(n)-l(n-1)*w(n-1);
    w(n+1) = xi(n);
    l(n+1) = 0;
    u(n+2) = 1;

    y = zeros(n+2, 1);
    y(1) = dd(1);
    for i=2:n+2
        y(i) = dd(i)-l(i-1)*y(i-1);
    end
    m = zeros(n+2, 1);
    m(n+2) = y(n+2)/u(n+2);
    for i = n+1:-1:1
        m(i) = (y(i)-w(i)*m(i+1))/u(i);
    end
    m(1) = m(1)-m(2)-m(3);
    m(n+2) = m(n+2)-m(n+1)-m(n);
end