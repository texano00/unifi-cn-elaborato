function x = triangolareSuperiore(A,x);
    if ~ismatrix(A)
        error('The input must be a matrix');
    end
    
    [n,m] = size(A);
    
    if(n~=m)
        error('The input must be a square matrix');
    end
    
    if(~isvector(x))
        error('The second parameter must be a vector');
    end
    
    vectorSize = size(x,1);

    if(vectorSize~=n)
        error('The vector must have %i rows, %i passed', n, vectorSize);
    end
    
    for j=n:-1:1
        x(j) = x(j)/A(j,j); 
        for i = 1:j-1
            x(i) = x(i)-A(i,j)*x(j);
        end
    end
end