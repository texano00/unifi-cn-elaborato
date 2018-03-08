% scomponiLU(LU)
% Metodo per la scomposizione di una matrice LU in due matrici (L, U)

% Input:
% LU: matrice.

function [L,U] = scomponiLU(LU);
    n = size(LU,1);
    L = zeros(n);
    U = zeros(n);
    for i=1:n
        for j=1:n
            if(j<i)
                L(i,j) = LU(i,j);
            end            
            if(j==i)
                L(i,j) = 1;
            end            
            if(j>=i)
                U(i,j) = LU(i,j);
            end
        end
    end
end