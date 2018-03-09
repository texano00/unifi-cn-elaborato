A = [10^(-3) 1 ; 1 1];
LU = fattorizzazioneLU(A);
L = tril(LU,-1)+eye(length(LU))
U = triu(LU)
LU = L*U, A

format long e;
e = [1; 1]
b = A*e
Sp = U\(L\b)
Cp = A\b