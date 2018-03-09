% A = fattorizzazioneLU(A)
% Fattorizzazione LU di una matrice nonsingolare con tutti i minori
% principali non nulli.
%
% Input:
% A: la matrice nonsingolare da fattorizzare LU.
% Output:
% A: la matrice riscritta con le informazioni dei fattori L ed U.

function A = fattorizzazioneLU(A)
	[m,n]=size(A);
    if m~=n
        error("La matrice non e' quadrata!");
    end
	for i=1:n-1
        if A(i,i)==0
            error("La matrice non e' fattorizzabile LU!");
        end
        A(i+1:n,i) = A(i+1:n,i)/A(i,i);
        A(i+1:n,i+1:n) = A(i+1:n,i+1:n)-A(i+1:n,i)*A(i,i+1:n);
	end
end