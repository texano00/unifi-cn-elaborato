function [L,D,Lt] = scomponiLDLt(LDLt);
    n = size(LDLt,1);
    L = zeros(n);
    D = zeros(n);
    Lt = zeros(n);

    for i=1:n
        for j=1:n
            if(j<i)
                L(i,j) = LDLt(i,j);
            end
            if j==i
                D(i,j) = LDLt(i,j);
                L(i,j) = 1;
                Lt(i,j) = 1;
            end
            if(j>i)
                Lt(i,j) = LDLt(i,j);
            end
        end
    end
end