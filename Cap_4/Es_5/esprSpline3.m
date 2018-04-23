% s = esprSpline3(xi, fi, mi)
%   Calcola le espressioni degli n polinomi costituenti una spline
%   cubica.
%
% Input:
%   -xi: vettore contenente gli n+1 nodi di interpolazione;
%   -fi: vettore contenente i valori assunti dalla funzione da
%   approssimare nei nodi in xi;
%   -mi: fattori m_i calcolati risolvendo il sistema lineare
%   corrispondente.
%
% Output:
%   -s: vettore contenente le espressioni degli n polinomi che
%   definiscono la spline cubica.

function [s] = esprSpline3(xi, fi, mi)
    s = sym('x', [length(xi)-1 1]);
	syms x;
    for i = 2:length(xi)
        hi = xi(i)-xi(i-1);
        ri = fi(i-1)-((hi^2)/6)*mi(i-1);
        qi = (fi(i)-fi(i-1))/hi-(hi/6)*(mi(i)-mi(i-1));
        s(i-1) = (((x - xi(i-1))^3)*mi(i) + ((xi(i) - x)^3)*mi(i-1))/(6*hi) + qi*(x - xi(i-1)) + ri;
    end
end