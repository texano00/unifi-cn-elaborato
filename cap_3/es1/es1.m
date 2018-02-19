A = [1 2 0;2 1 0;2 2 1];
b = [2 2 2];

x = triangolareInferiore(A,b);

function x = triangolareInferiore(A,x);
    if ~ismatrix(A)
        error('The input must be a matrix');
    end
    
    if ~isSquare(A)
        error('The input must be a square matrix');
    end
    
    n = size(A,1);
    for j=1:n
        if(A(j,j)~=1)
            error("The matrix is not a unitary diagonal matrix")
        end
    end
    if(~isvector(x))
        error('The second parameter must be a vector');
    end
    
    vectorSize = size(x);
    vectorSize = vectorSize(2);

    if(vectorSize~=n)
        error('The vector must have %i rows, %i passed', n, vectorSize);
    end
    
    for j=1:n
        %x(j) = x(j)/A(j,j); because A(j,j)=1  
        for i = j+1:n
            x(i) = x(i)-A(i,j)*x(j);
        end
    end
end

function y = isSquare(n) 
    y = (mod(sqrt(n), 1) == 0);
end