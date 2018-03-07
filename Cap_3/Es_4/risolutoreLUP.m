function x = risolutoreLUP(LU, P, b)
    [L,U] = scomponiLU(LU);
    x = triangolareInferiore(L,P*b);
    x = triangolareSuperiore(U,x);
end