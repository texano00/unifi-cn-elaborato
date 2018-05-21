% x = gaussSiedel(A, b, tol, x0, imax)
%   Metodo che implementa efficientemente il metodo di Gauss-Seidel applicato ad
%   una matrice sparsa Ax=b.
%
% Input:
%   -A: matrice sparsa;
%   -b: vettore dei termini noti;
%   -tol: tolleranza;
%   -x0: vettore iniziale;
%   -imax: numero massimo di iterazioni.
%
% Output:
%   -x: vettore incognite;
%   -i: numero iterazioni.

function [x,i] = gaussSeidel(A, b, tol, x0, imax)
    n = length(b);
    if nargin <= 3
        x = rand(n,1);
    else
        x = x0;
    end
    if nargin <= 4
        imax = 100*n*round(-log(tolx));
    end
    for i = 1:imax
        r = A*x-b;
        nr = norm(r,inf);
        if nr <= tol
            break;
        end
        r = mSolve(A,r);
        x = x-r;
    end
    if nr > tol
        error('Superato il numero massimo di iterazioni prima della tolleranza %f\n',tol);
    end
end