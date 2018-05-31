% leb = lebesgue(x)
%   Calcola il valore della costante di Lebesgue per i=2,...,N , dato il 
%   vettore x di N nodi (ordinato). 
%
% Input: 
%   -x: vettore ordinato dei nodi.
%
% Output: 
%   -leb: valore della costante di Lebesgue.

function leb = lebesgue3(x)
    xx=linspace(x(1),x(end),5);  
    n = length(x);
    m = length(xx);
    bl = zeros(m,1);
    for i = 1:m
        for j = 1:n
            range = [1:j-1, j+1:n];
            bla = abs(prod(xx(i) - x(range))/prod(x(j) - x(range)));
            bl(i) = bl(i) + bla; 
        end
    end
    leb = max(bl);
end