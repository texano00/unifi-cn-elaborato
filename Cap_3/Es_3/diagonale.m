% diagonale(A,x)
% Metodo per il cacolo del vettore incognite di una matrice diagonale.
%
% Input:
% A: matrice.
% b: vettore dei termini noti.

function x = diagonale(A,b)
    x = b;
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
    for j=1:n
        x(j) = x(j)/A(j,j);
    end
end