% diagonale(d,x)
% Metodo per il cacolo del vettore incognite di una matrice diagonale.
%
% Input:
% d: vettore diagonale.
% b: vettore dei termini noti.
% Output:
% x: vettore delle soluzioni del sistema.

function x = diagonale(d,b)
    x = b;
    if ~ismatrix(d)
        error("d non e' un vettore");
    end
    n = size(d);
    if(~isvector(x))
        error("b non e' un vettore");
    end    
    vectorSize = size(x,1);
    if(vectorSize~=n)
        error('Il vettore deve avere %i riche, invece ha %i righe', n, vectorSize);
    end    
    for j=1:n
        x(j) = x(j)/d(j);
    end
end