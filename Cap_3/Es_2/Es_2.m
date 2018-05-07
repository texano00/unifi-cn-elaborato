% Soluzione Cap_3 Es_2.
%
% Input:
%  -A1: matrice prima fattorizzazione;
%  -A2: matrice seconda fattorizzazione.
%
% Output:
%  -LDLt1: matrice A1 fattorizzata LDLt
%  -LDLt2: matrice A2 fattorizzata LDLt

A1 = [1 -1 2 2; -1 5 -14 2;2 -14 42 2;2 2 2 65];
LDLt1 = fattorizzazioneLDLt(A1);
LDLt1

A2 = [1 -1 2 2; -1 6 -17 3; 2 -17 48 -16; 2 3 -16 4];
LDLt2 = fattorizzazioneLDLt(A2);