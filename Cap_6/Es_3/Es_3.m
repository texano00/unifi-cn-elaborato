% Soluzione Es_3 Cap_6
%   Calcolo vettore e numero di iterazioni impiegate , su un matrice
%   sparsa, con metodo iterativo di Jacobi.
%
% Input:
%   -n: numero dimensione matrice sparsa varia da 100 a 1000, ogni 20;
%   -tol: tolleranza;
%   -b: vettore unario dei termini noti;
%   -x0: vettore nullo iniziale.
%
% Output:
%   -k: vettore contenente numero di iterazioni.

k = ones(46,1);
tol = 10^(-5);
n = 100:20:1000;

for i = 1:length(n)
    A = sparseMatrix(n(i));
    b = ones(n(i),1);
    x0 = zeros(n(i),1);
    [x,k(i)] = jacobi(A,b,tol,x0);
end

plot(n,k)