% bl = polElemLagrange(z,x,i)
%   Calcola i-esima base del pol. elementare di Lagrange
%   su un vettore di punti.
%
% Input:
%   -z: nodi di interpolazione;
%   -x: vettore di punti su cui calcolare la base del polinomio di
%   Lagrange;
%   -i: indice del polinomio.
%
% Output:
%   -bl: vettore contenente i-esima base del polinomio di Lagrange.

function bl = polElemLagrange(z,x,i)
    n = length(z); 
    m = length(x);  
    bl = prod(repmat(x,1,n-1)-repmat(z([1:i-1,i+1:n]),m,1),2)/...
        prod(z(i)-z([1:i-1,i+1:n]));
end