% risolutoreLDLt(LDLt,b)
% Metodo per la risoluzione di una matrice LDLt.

% Input:
% LDLt: matrice;
% b: vettore dei termini noti.
% Output:
% x: vettore delle soluzioni del sistema.

function x = risolutoreLDLt(LDLt, b)
    LDLt = fattorizzazioneLDLt(LDLt);
    L = tril(LDLt,-1)+eye(length(LDLt));
    D = diag(diag(LDLt));
    Lt = (tril(LDLt,-1)+eye(length(LDLt)))';
    L, D, Lt
    x1 = triangolareInferiore(L,b);
    x2 = diagonale(D,x1);
    x = triangolareSuperiore(Lt,x2);
end