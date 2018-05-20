k = (46);
tol = 10^(-5);
i=1;
for n = 100:20:1000
    A = sparseMatrix(n);
    b = ones(n,1);
    x0 = zeros(n,1);
    [x,k(i)] = gaussSeidel(A,b,tol,x0);
    i = i+1;
end