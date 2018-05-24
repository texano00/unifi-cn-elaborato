% Soluzione Es_2 Cap_6
%   Calcolo autovalore e numero di iterazioni impiegate , su un matrice
%   sparsa.
%
% Input:
%   -n: numero dimensione matrice sparsa varia da 100 a 1000, ogni 100;
%   -tol: tolleranza;
%   -x0: vettore iniziali ad elementi costanti.
%
% Output:
%   -y: vettore contenente gli autovalori;
%   -k: vettore contenente numero di iterazioni.

y = ones(10,1);
k = ones(10,1);
tol = 10^(-5);
n = 100:100:1000;

for i = 1:length(n)
    A = sparseMatrix(n(i));
    x0 = ones(n(i),1);
    [y(i),k(i)] = potenze(A, tol, x0);
end