% Soluzione Es_2 Cap_6
%   Calcolo autovalore e numero di iterazioni impiegate , su un matrice
%   sparsa.
%
% Input:
%   -n: numero dimensione matrice sparsa varia da 100 a 1000, ogni 100;
%   -tol: tolleranza.
%
% Output:
%   -y: vettore contenente gli autovalori;
%   -k: vettore contenente numero di iterazioni.

y = (10);
k = (10);
tol = 10^(-5);
i = 1;
for n = 100:100:1000
    A = sparseMatrix(n);
    [y(i),k(i)] = potenze(A, tol);
    i=i+1;
end