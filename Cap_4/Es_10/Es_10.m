% Soluzione Cap_4 Es_10.
%
% -A: matrice;
% -b: vettore termini noti:
% -x: vettore soluzione;
% -r: vettore residuo;
% -n: norma euclidea al quadrato del vettore residuo.

A = ones(10,3);
j = 2;
for i = 3:2:length(A)-1
    A(i,2) =  j;
    A(i+1,2) = j;
    A(i,3) = j^2;
    A(i+1,3) = j^2;
    j = j+1;
end
b = [2.9; 3.1; 6.9; 7.1; 12.9; 13.1; 20.9; 21.1; 30.9; 31.1];

x = risolutoreQR(A,b);
r = A*x-b;
n = norm(r)^2;