% [A, p] = fattorizzaLUpiv(A)
% Metodo per la fattorizzazione LU di una matrice.
%
% Input:
%  -A: matrice sdp da fattorizzare.
%
% Output:
%  -A: matrice riscritta L e U;
%  -p: vettore contente l'informazione della matrice di permutazione P.

function [A, p] = fattorizzazioneLUpiv(A)
    [m,n]=size(A);
    if m~=n
        error("La matrice non e' quadrata!");
    end
	p=[1:n];
    for i=1:(n-1)
        [aki, ki] = max(abs(A(i:n,i)));
        if aki==0
            error("La matrice e' singolare!");
        end
        ki = ki+i-1;
        if ki>i
            A([i,ki],:) = A([ki,i],:);
            p([i,ki]) = p([ki,i]);
        end
        A((i+1):n,i) = A((i+1):n,i)/A(i,i);
        A((i+1):n,(i+1):n) = A((i+1):n,(i+1):n)-A((i+1):n,i)*A(i,(i+1):n);
   end
end