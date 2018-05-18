y = (10);
k = (10);
i = 1;
for n = 100:100:1000
    A = sparseMatrix(n);
    [y(i),k(i)] = potenze(A, 10^(-5));
    i=i+1;
end