A = [10^(-13) 1 ; 1 1];
LU = fattorizzazioneLU(A);
L = tril(LU,-1)+eye(length(LU));
U = triu(LU);
LU = L*U;
L, U, LU

format long e;
e = [1; 1];
b = A*e;
Sp = U\(L\b);
Cp = A\b;
b, Sp, Cp