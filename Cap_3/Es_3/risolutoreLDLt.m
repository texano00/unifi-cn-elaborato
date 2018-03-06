function x = risolutoreLDLt(LDLt, b);
    [L,D,Lt] = scomponiLDLt(LDLt);
    x = triangolareInferiore(L,b);
    x = diagonale(D,x);
    x = triangolareSuperiore(Lt,x);
end