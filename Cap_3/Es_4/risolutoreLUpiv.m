% risolutoreLUPiv(LU,b)
% Metodo per la risoluzione di una matrice LUPiv.

% Input:
% LU: matrice;
% b: vettore dei termini noti;
% Output:
% x: vettore delle soluzioni del sistema.

function x = risolutoreLUpiv(LU, b)
    [LU,p] = fattorizzazioneLUpiv(LU);
    P=zeros(length(LU));
    for i=1:length(LU)
        P(i, p(i)) = 1;
    end
    Pb = P*b;
    L = tril(LU,-1)+eye(length(LU));
    U = triu(LU);
    P, Pb, L, U
    x1 = triangolareInferiore(L, Pb);
    x = triangolareSuperiore(U, x1);
end