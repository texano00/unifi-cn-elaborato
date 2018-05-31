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
%   -Bj: matrice contenente passo-iterazione e norma, metodo Jacobi;
%   -Bgs: matrice contenente passo-iterazione e norma, metodo Gauss-Seidel.

tol = 10^(-5);
A = sparseMatrix(1000);
b = ones(1000,1);
x0 = zeros(1000,1);

[xj,kj,Bj] = jacobi(A,b,tol,x0);
[xgs,kgs,Bgs] = gaussSeidel(A,b,tol,x0);

semilogy(Bj(:,2),Bj(:,1),Bgs(:,2),Bgs(:,1));
legend('Jacobi','Gauss-Seidel');