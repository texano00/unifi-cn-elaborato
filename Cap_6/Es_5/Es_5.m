% Soluzione Es_5 Cap_6
%   Calcolo passo-iterazione e norma, su un matrice
%   sparsa, con metodo iterativo di Jacobi e Gauss-Seidel.
%
% Input:
%   -tol: tolleranza;
%   -A: matrice sparsa;
%   -b: vettore unario dei termini noti;
%   -x0: vettore nullo iniziale.
%
% Output:
%   -B1: matrice contenente passo-iterazione e norma, metodo Jacobi;
%   -B2: matrice contenente passo-iterazione e norma, metodo Gauss-Seidel.
%
% Modificare il ritorno dei metodi di Jacobi e GaussSeidel , al posto del numero di
% passi impiegati 'i', ritornare una matrice 'B' contenente passo-iterazione e
% norma, togliendo i commenti per il suo calcolo all'interno dei
% codici.

tol = 10^(-5);
A = sparseMatrix(1000);
b = ones(1000,1);
x0 = zeros(1000,1);

[k1,B1] = jacobi(A,b,tol,x0);
[k2,B2] = gaussSeidel(A,b,tol,x0);

semilogy(B1(:,2),B1(:,1),B2(:,2),B2(:,1));
legend('Jacobi','Gauss-Seidel');