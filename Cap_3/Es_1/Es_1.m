% Soluzione Cap_3 Es_1.
%
% -A: matrice;
% -b: vettore dei termini noti.

A = [1 2 0;2 1 0;2 2 1];
b = [2 2 2];

x = triangolareInferiore(A,b);
x