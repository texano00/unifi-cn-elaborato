% A = fattorizzaQR(A)
% Fattorizzazione QR di Householder per matrici mxn con m>=n.
%
% Input:
% A: la matrice da fattorizzare QR.
% Output:
% A: la matrice riscritta con le informazioni dei fattori Q ed R.

function A = fattorizzazioneQR(A)
    [m,n]=size(A);
	for i=1:n
        alfa = norm(A(i:m, i), 2);
        if alfa==0
            error('La matrice non ha rango massimo');
        end
        if(A(i,i))>=0
            alfa = -alfa;
        end
        v1 = A(i,i)-alfa;
        A(i,i) = alfa;
        A(i+1:m, i) = A(i+1:m, i)/v1;
        beta = -v1/alfa;
        A(i:m, i+1:n) = A(i:m, i+1:n)-(beta*[1; A(i+1:m, i)])*([1 A(i+1:m, i)']*A(i:m, i+1:n));
    end
end