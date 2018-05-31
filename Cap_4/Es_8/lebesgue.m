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
    n = length(x_c);
    x = linspace(-6,6,1001);
    m = length(x);
    vLeb = zeros(m,1);
    for i = 1:m
        for j = 1:n
            range = [1:j-1, j+1:n];
            bl = prod(x(i) - x_c(range))/prod(x_c(j) - x_c(range));
            vLeb(i) = vLeb(i) + abs(bl);
        end
    end
    leb = norm(vLeb,inf);
end