function S = sparseMatrix(n)
    B=[[-ones(n-1,1);0] [-ones(n-1,1);0] 4*ones(n,1) [0;-1*ones(n-1,1)] [0;-1*ones(n-1,1)]];
    d=[-10 -1 0 1 10];
    S = spdiags(B,d,n,n);
end