% diagonale(d,x)
% Metodo per il cacolo del vettore incognite di una matrice diagonale.
%
% Input:
% D: matrice diagonale.
% b: vettore dei termini noti.
% Output:
% x: vettore delle soluzioni del sistema.

function x = diagonale(D,b)
    x = b;
    if ~ismatrix(D)
        error("D non e' una matrice");
    end
    [n,m] = size(D);
    if(n~=m)
        error("D non e' una quadratica");
    end
    if(~isvector(x))
        error("x non e' un vettore");
    end    
    vectorSize = size(x,1);
    if(vectorSize~=n)
        error('Il vettore deve avere %i riche, invece ha %i righe', n, vectorSize);
    end    
    for j=1:n
        x(j) = x(j)/D(j,j);
    end
end