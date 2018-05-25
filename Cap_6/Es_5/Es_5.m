% Soluzione Es_5 Cap_6

tol = 10^(-5);
A = sparseMatrix(1000);
b = ones(1000,1);
x0 = zeros(1000,1);

% Modificare il ritorno di jacobi e gaussSeidel , al posto del vettore
% soluzione , ritornare un vettore contenente le norme

[x1,k1] = jacobi(A,b,tol,x0);
[x2,k2] = gaussSeidel(A,b,tol,x0);

semilogy(k1,x1,k2,x2);