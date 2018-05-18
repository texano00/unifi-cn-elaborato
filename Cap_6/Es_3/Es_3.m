i=1;
for n = 100:20:1000
    A = sparseMatrix(n);
    b = ones(n,1);
    x0 = zeros(n,1);
    x = (n);
    [x,y(i)] = jacobi(A,b,10^(-5),x0);
    y(i)
    i = i+1;
end