% x = risolviSistemaQR(A,b)
% Risoluzione di un sistema lineare sovredeterminato del tipo Ax=b
% tramite fattorizzazione QR di Householder della matrice dei
% coefficienti.
%
% Input:
% A: matrice dei coefficienti;
% b: vettore dei termini noti.
% Output:
% x: vettore delle soluzioni del sistema lineare sovradeterminato.

function x = risolutoreQR(QR, b)
    QRc = QR;
    [m,n] = size(QR);
    QR = fattorizzazioneQR(QR);
    Qt = eye(m);
    for i=1:n
        Qt= [eye(i-1) zeros(i-1,m-i+1);zeros(i-1, m-i+1)' (eye(m-i+1) - (2/norm([1; QR(i+1:m, i)], 2)^2)*([1; QR(i+1:m, i)]*[1 QR(i+1:m, i)']))]*Qt;
    end
    R = triu(QR(1:n, :))
    x = triangolareSuperiore(R, Qt(1:n, :)*b);
end