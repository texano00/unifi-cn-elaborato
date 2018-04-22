% xi = ceby(n, a, b)
% Calcola le ascisse di Chebyshev su un determinato intervallo.
%
% Input:
%   -a: l'estremo sinistro dell'intervallo;
%   -b: l'estremo destro dell'intervallo;
%   -n: il numero di ascisse che si vuole generare (n+1, da 0 a n).
%
% Output:
%   -xi: vettore contenente le ascisse di Chebyschev generate.

function xi = ceby(n, a, b)
    xi = zeros(n+1, 1);
    for i = 0:n
        xi(n+1-i) = (a+b)/2 + cos(pi*(2*i+1)/(2*(n+1)))*(b-a)/2;
    end
end