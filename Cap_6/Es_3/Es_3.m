% Soluzione Es_3 Cap_6
%   Calcolo autovalore e numero di iterazioni impiegate , su un matrice
%   sparsa.
%
% Input:
%   -n: numero dimensione matrice sparsa varia da 100 a 1000, ogni 100;
%   -tol: tolleranza;
%   -b: vettore unario dei termini noti;
%   -x0: vettore nullo iniziale.
%
% Output:
%   -k: vettore contenente numero di iterazioni.

k = (46);
tol = 10^(-5);
i=1;
for n = 100:20:1000
    A = sparseMatrix(n);
    b = ones(n,1);
    x0 = zeros(n,1);
    [x,k(i)] = jacobi(A,b,tol,x0);
    i = i+1;
end