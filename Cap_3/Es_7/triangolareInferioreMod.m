% triangolareInferioreMod(alpha, b)
% Metodo per la risoluzione di una matrice bidiagonale inferiore a diagonale unitaria di Toeplitz

% Input:
% alpha: valore ripetuto nella diagonale inferiore;
% b: vettore dei termini noti.
% Output:
% b: vettore delle soluzioni del sistema.

function b = triangolareInferioreMod(alpha,b)
    if(~isvector(b))
        error("b non e' un vettore");
    end
    
    n = size(b,1);

    for i=2:n
        b(i) = b(i) - alpha*b(i-1);
    end
end