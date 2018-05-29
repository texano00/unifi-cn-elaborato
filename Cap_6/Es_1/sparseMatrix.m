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
        e = ones(n,1);
        S = spdiags(e*[-1 -1 4 -1 -1],[-10,-1:1,10], n,n);
    else 
        error('Il valore di n inserito non è > di 10');
    end
end