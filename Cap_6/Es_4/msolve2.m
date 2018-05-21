function b = msolve2(A, b)
    for i=1:length(A)
        for j=1:i-1
            b(i)=b(i)-A(i,j)*b(j);
        end
        b(i)=b(i)/A(i,i);
    end
end
        