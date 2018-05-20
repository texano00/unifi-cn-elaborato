% S = sparceMatrix(n)
%   Genere una matrice sparsa nXn, con n>10. 
%   Si utilizza la function MatLab spdiags.
%
% Input:
%   -n: grandezza matrice.
%
% Output:
%   -S: matrice sparsa.

function S = sparseMatrix(n)
    if n>10
        B=[[-ones(n-1,1);0] [-ones(n-1,1);0] 4*ones(n,1) [0;-1*ones(n-1,1)] [0;-1*ones(n-1,1)]];
        d=[-10 -1 0 1 10];
        S = spdiags(B,d,n,n);
    else 
        error('Il valore di n inserito non è > di 10');
    end
end