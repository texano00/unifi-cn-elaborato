% Soluzione Cap_1 Es_6 Prima successione.
%
% -conv: valore di convergenza;
% -x: vettore contenente il punto inziale e successivi punti della
% successione;
% -r: vettore contente gli errori assoluti di convergenza.

conv = sqrt(3);
x = [3];
r = [x(1)-conv];

% Iterazione della successione 


for i = 1:5
    x(i+1) = (x(i)+(3/x(i)))/2;
    r(i+1) = x(i+1)-conv;
end