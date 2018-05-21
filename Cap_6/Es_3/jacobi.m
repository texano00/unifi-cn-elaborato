% [x,i] = jacobi(A, b, tol, x0, imax)
%   Metodo che implementa efficientemente il metodo di Jacobi applicato ad
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

function [x,i] = jacobi(A, b, tol, x0, imax)
    n = length(b);
    D = diag(A);
    if nargin <= 3
        x = rand(n,1);
    else
        x = x0;
    end
    if nargin <= 4
        imax = 100*n*round(-log(tol));
    end
    for i = 1:imax
        r = A*x-b;
        nr = norm(r,inf);
        if nr <= tol
            break;
        end
        r = r./D;
        x = x-r;
    end
    if nr > tol
        warning('Superato il numero massimo di iterazioni prima della tolleranza %f\n',tol);
    end
end
