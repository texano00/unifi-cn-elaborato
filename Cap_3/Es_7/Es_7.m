% Soluzione Cap_3 Es_7
%
% Input:
%   -b1: vettore termini noti;
%   -b2: vettore termini noti.
%
% Output:
%   -x1: vettore delle incognite;
%   -x2: vettore delle incognite.

b1 = [1; 101*ones(12,1)];
b2 = 0.1*[1; 101*ones(12,1)];
x1 = triangolareInferioreMod(100,b1);
x2 = triangolareInferioreMod(100,b2);

% Input:
%   -A: matrice.
%
% Output:
%   -k: numero di condizionamento matrice A;
%   -ninf: norma infinito matrice A;
%   -n1: norma 1 matrice A;
%   -ninv: norma infinito inversa matrice A.

A = eye(12)+100*[ zeros(1, 12); eye(11) zeros(1, 11)'];
k = cond(A);
ninf = norm(A,inf);
n1 = norm(A,1);
ninv = norm(A^-1, inf);