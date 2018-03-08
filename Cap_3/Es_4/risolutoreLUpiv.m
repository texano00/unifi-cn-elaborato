% risolutoreLUPiv(LU, P, b)
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
    x1 = triangolareInferiore(tril(LU,-1)+eye(length(LU)), P*b);
    x = triangolareSuperiore(triu(LU), x1);
end