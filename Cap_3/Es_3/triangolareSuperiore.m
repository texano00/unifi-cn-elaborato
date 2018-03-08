% triangolareSuperiore(A, b)
% Metodo per la risoluzione di una matrice tringolare superiore.

% Input:
% A: matrice triangolare superiore;
% b: vettore dei termini noti.
% Output:
% x: vettore delle soluzioni del sistema.

function x = triangolareSuperiore(A,b)
    x = b;
    if ~ismatrix(A)
        error("A non e' una matrice");
    end
    [n,m] = size(A);   
    if(n~=m)
        error("A non e' una matrice quadratica");
    end  
    if(~isvector(x))
        error("b non e' un vettore");
    end 
    vectorSize = size(x,1);
    if(vectorSize~=n)
        error('Il vettore deve avere %i riche, invece ha %i righe', n, vectorSize);
    end   
    for j=n:-1:1
        x(j) = x(j)/A(j,j); 
        for i = 1:j-1
            x(i) = x(i)-A(i,j)*x(j);
        end
    end
end