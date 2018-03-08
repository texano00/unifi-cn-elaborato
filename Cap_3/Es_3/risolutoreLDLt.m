% risolutoreLDLt(LDLt,b)
% Metodo per la risoluzione di una matrice LDLt.

% Input:
% LDLt: matrice;
% b: vettore dei termini noti.
% Output:
% x: vettore delle soluzioni del sistema.

function x = risolutoreLDLt(LDLt, b)
    LDLt = fattorizzazioneLDLt(LDLt);
    x1 = triangolareInferiore(tril(LDLt,-1)+eye(length(LDLt)),b);
    x2 = diagonale(diag(LDLt),x1);
    x = triangolareSuperiore(tril(LDLt,-1)+eye(length(LDLt))',x2);
end