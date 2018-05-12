% x = risolutoreLUPiv(LU,b)
% Metodo per la risoluzione di una matrice LUPiv.

% Input:
%  -LU: matrice;
%  -b: vettore dei termini noti;
%
% Output:
%  -x: vettore delle soluzioni del sistema.

function x = risolutoreLUpiv(LU, b)
    [LU,p] = fattorizzazioneLUpiv(LU);
    b = b(p);
    x = triangolareInferiore(tril(LU,-1)+eye(length(LU)), b);
    x = triangolareSuperiore(triu(LU), x);
end