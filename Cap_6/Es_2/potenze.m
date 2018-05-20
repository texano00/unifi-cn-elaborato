% [lambda,i] = potenze(A, tol, x0, imax)
%   Metodo che implementa efficientemente il metodo delle potenze
%
% Input:
%   -A: matrice;
%   -tol: tolleranza;
%   -x0: vettore iniziale;
%   -imax: numero massimo di iterazioni.
%
% Output:
%   -lambda: autovalore;
%   -i: numero iterazioni.

function [lambda,i] = potenze(A, tol, x0, imax)
    n = size(A,1);
    if nargin <= 2
        x = rand(n,1);
    else
        x = x0;
    end
    x = x/norm(x);
    if nargin <= 3
        imax = 100*n;
    end
    lambda = inf;
    for i=1:imax
        lambda0 = lambda;
        v = A*x;
        lambda = x'*v;
        err = abs(lambda-lambda0);
        if err <= tol
            break;
        end
        x = v/norm(v);
    end
    if err > tol
        warning('Superato il numero massimo di iterazioni prima della tolleranza %f\n',tol);
    end
end