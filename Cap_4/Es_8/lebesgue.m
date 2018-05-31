% leb = lebesgue(x)
%   Calcola il valore della costante di Lebesgue, dato il vettore x di 
%   N nodi (ordinato). 
%
% Input: 
%   -x: vettore ordinato dei nodi.
%
% Output: 
%   -leb: valore della costante di Lebesgue.

function leb = lebesgue(x)
    n = length(x);
    x_g = linspace(x(1),x(end),1001);
    m = length(x_g);
    vLeb = zeros(m,1);
    for i = 1:m
        for j = 1:n
            range = [1:j-1, j+1:n];
            bl = prod(x_g(i) - x(range))/prod(x(j) - x(range));
            vLeb(i) = vLeb(i) + abs(bl);
        end
    end
    leb = norm(vLeb,inf);
end