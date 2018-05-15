% Soluzione Cap_3 Es_6.
%
% Input:
%   -A: matrice da fattorizzare;
%   -e: vettore termini noti.
%
% Output:
%   -LU: fattorizzazione della matrice A;
%   -L: matrice triangolare inferiore di LU;
%   -U: matrice triangolare superiore di LU;
%   -b: vettore termini noti;
%   -Sp: Gauss senza pivoting;
%   -Cp: Gauss con pivoting.

A = [10^(-13) 1 ; 1 1];
LU = fattorizzazioneLU(A);
L = tril(LU,-1)+eye(length(LU));
U = triu(LU);

if A==L*U
    fprintf('La fattorizzazione LU è corretta');
else
    error('La fattorizzazione LU è errata');
end

e = [1; 1];
b = A*e;
Sp = U\(L\b);
Cp = A\b;