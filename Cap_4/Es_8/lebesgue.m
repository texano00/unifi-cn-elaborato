% leb = lebesgue(x_c)
%   Calcola il valore della costante di Lebesgue, dato il vettore x di 
%   N nodi (ordinato). 
%
% Input: 
%   -x_c: vettore ordinato dei nodi di Chebyshev.
%
% Output: 
%   -leb: valore della costante di Lebesgue.

function leb = lebesgue(x_c)
    m = length(x_c);
    x = (linspace(-6,6,1001))';
    vLeb = zeros(length(x),1);
    for i = 1:m
        y_i = zeros(m,1);
        y_i(i) = 1; 
        k_c = polyfit(x_c, y_i, m-1);
        vLeb = vLeb + abs(polyval(k_c,x));
    end
    leb = norm(vLeb,inf);
end