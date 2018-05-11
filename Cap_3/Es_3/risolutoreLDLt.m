% x = risolutoreLDLt(LDLt,b)
%   Metodo per la risoluzione di una matrice LDLt.
%
% Input:
%   -LDLt: matrice;
%   -b: vettore dei termini noti.
%
% Output:
%   -x: vettore delle soluzioni del sistema.

function x = risolutoreLDLt(LDLt, b)
    LDLt = fattorizzazioneLDLt(LDLt);
    x = triangolareInferiore(tril(LDLt,-1)+eye(length(LDLt)),b);
    x = diagonale(diag(LDLt),x);
    x = triangolareSuperiore((tril(LDLt,-1)+eye(length(LDLt)))',x);
end