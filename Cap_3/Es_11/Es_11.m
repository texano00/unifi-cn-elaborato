% Soluzione Cap_3 Es_11.
%
% Input: 
%   -min: punti minimo relativo;
%   -x: punti iniziali;
%   -F: sistema non lineare;
%   -J: matrice di Jacobi;
%   -tolx: tolleranza.
%
% Output:
%   -x1: minimo relativo;
%   -nx1: norma ultimo incremento;
%   -e1: errore approssimazione;
%   -x2: minimo relativo;
%   -nx2: norma ultimo incremento;
%   -e2: errore approssimazione.

min = [1/12;1/6];
x = [1/2;1/2];
F = @(x) [2*x(1)-x(2), 3*x(2)^2-x(1)];
J = [2-x(2), 2*x(1)-1; 3*x(2)^2-1, 6*x(2)-x(1)];

tolx = 10^-3;
[x1, nx1] = newtonNonLin(F, J, x, 100, tolx);
e1 = norm(min-x1);

tolx = 10^-6;
[x2,nx2] = newtonNonLin(F, J, x, 100, tolx);
e2 = norm(min-x2);