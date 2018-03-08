% risolutoreLUP(LU, P, b)
% Metodo per il calcolo di una matrice LU.

% Input:
% LU: matrice;
% b: vettore dei termini noti.
% P: matrice elementare di permutazione.

function x = risolutoreLUP(LU, P, b)
    [L,U] = scomponiLU(LU);
    x1 = triangolareInferiore(L,P*b);
    x = triangolareSuperiore(U,x1);
end