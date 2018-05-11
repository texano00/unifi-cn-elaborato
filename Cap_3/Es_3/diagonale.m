% b = diagonale(D,b)
%   Metodo per il cacolo del vettore incognite di una matrice diagonale.
%
% Input:
%   -d: vettore diagonale della matrice.
%   -b: vettore dei termini noti.
%
% Output:
%   -b: vettore delle soluzioni del sistema.

function b = diagonale(d,b)
    if(~isvector(b))
        error('b non è un vettore');
    end    
    if(~isvector(d))
        error('d non è un vettore');
    end 
    n = length(d);
    if(n~=length(b))
       error('d e b non hanno la stessa lunghezza');
    end   
    for j=1:n
        b(j) = b(j)/d(j);
    end
end