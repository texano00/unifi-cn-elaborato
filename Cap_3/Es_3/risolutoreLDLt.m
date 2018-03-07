% risolutoreLDLt(LDLt,b)
% Metodo per il calcolo di una matrice LDLt.

% Input:
% LDLt: matrice;
% b: vettore dei termini noti.

function x = risolutoreLDLt(LDLt, b)
    [L,D,Lt] = scomponiLDLt(LDLt);
    x1 = triangolareInferiore(L,b);
    x2 = diagonale(D,x1);
    x = triangolareSuperiore(Lt,x2);
end