% triangolareInferiore(A, b)
% Metodo per la risoluzione di una matrice tringolare inferiore.

% Input:
% A: matrice triangolare inferiore;
% b: vettore dei termini noti.

function x = triangolareInferiore(A,b)
    x = b;
    if ~ismatrix(A)
        error('The input must be a matrix');
    end
    [n,m] = size(A);
    if(n~=m)
        error('The input must be a square matrix');
    end
    for j=1:n
        if(A(j,j)~=1)
            error("The matrix is not a unitary diagonal matrix")
        end
    end
    if(~isvector(x))
        error('The second parameter must be a vector');
    end
    vectorSize = size(x,1);
    if(vectorSize~=n)
        error('The vector must have %i rows, %i passed', n, vectorSize);
    end
    for j=1:n
%       x(j) = x(j)/A(j,j); because A(j,j)=1  
        for i = j+1:n
            x(i) = x(i)-A(i,j)*x(j);
        end
    end
end