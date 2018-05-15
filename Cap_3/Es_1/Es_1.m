% Soluzione Cap_3 Es_1.
%
% Input:
%   -A: matrice a digonale unitaria;
%   -b: vettore dei termini noti;
%
% Output:
%   -x: vettore delle incognite.

A = [1 2 0;2 1 0;2 2 1];
b = [2 2 2];

x = triangolareInferiore(A,b);