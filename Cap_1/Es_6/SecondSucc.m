% Soluzione Cap_1 Es_6 Seconda successione.

format longEng

% -x: vettore contenente il punto inziale e successivi punti della
% successione;
% -r: vettore contente gli errori assoluti di convergenza.

conv = sqrt(3);
x = [3,2];
r = [x(1)-conv,x(2)-conv];

% Iterazione della successione 

for i = 2:7
    x(i+1) = (3+(x(i-1)*x(i)))/(x(i-1)+x(i));
    r(i+1) = x(i+1)-conv;
end

x, r