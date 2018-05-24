% u = mSolve(M, r)
%   Metodo per la risoluzione di sistemi lineari triangolari inferiori,
%   accedendo agli elementi per colonna.
%
% Input:
%   -M: la matrice dei coefficienti;
%   -r: vettore dei termini noti.
%
% Output:
%   -u: vettore delle soluzioni.

function u = mSolve(M,r)
    u = r;
    n = length(u);
    for i=1:n
        u(i) = u(i) / M(i,i);
        u(i+1:n) = u(i+1:n) - M(i+1:n,i) * u(i);
    end
end
