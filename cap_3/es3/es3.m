function x = risolutoreLDLt(A, b);
    [L,D,Lt] = scomponiLDLt(A);
    x = triangolareInferiore(L,b);
    x = diagonale(D,x);
    x = triangolareSup(Lt,x);
end

function [L,D,Lt] = scomponiLDLt(A);
    n = size(A,1);
    L = zeros(n);
    D = zeros(n);
    Lt = zeros(n);

    for i=1:n
        for j=1:n
            if(j<i)
                L(i,j) = A(i,j);
            end
            if j==i
                D(i,j) = A(i,j);
            end
            if(j>i)
                Lt(i,j) = A(i,j);
            end
        end
    end
end
