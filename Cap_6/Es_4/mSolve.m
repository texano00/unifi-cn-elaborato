function u = mSolve(M,r)
    u = r;
    n = length(u);
    for i = 1:n
        u(i) = u(i)/M(i,i);
        u(i+1:n) = u(i+1:n)+ M(i+1:n,i) * u(i);
    end
end