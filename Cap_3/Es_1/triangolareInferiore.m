% triangolareInferiore(A, b)
% Metodo per la risoluzione di una matrice tringolare inferiore.

% Input:
% A: matrice triangolare inferiore;
% b: vettore dei termini noti.
% Output:
% x: vettore delle soluzioni del sistema.

function x = triangolareInferiore(A,b)
    x = b;
    if ~ismatrix(A)
        error("A non e' una matrice");
    end
    [n,m] = size(A);
    if(n~=m)
        error("A non e' una matrice quadratica");
    end
    for j=1:n
        if(A(j,j)~=1)
            error("A non ha coefficienti diagonali unitari")
        end
    end
    if(~isvector(x))
        error("b non e' un vettore");
    end
    vectorSize = size(x);
    if(vectorSize~=n)
        error("Il vettore deve avere %i riche, invece ha %i righe', n, vectorSize");
    end
    for j=1:n
        for i = j+1:n
            x(i) = x(i)-A(i,j)*x(j);
        end     
    end
end