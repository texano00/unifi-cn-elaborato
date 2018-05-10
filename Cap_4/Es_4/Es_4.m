% Soluzione Cap_4 Es_4.
%
% -xi: valori ascisse di interpolazione
% -fi: valori della funzione sin() sui punti di interpolazione xi;
% -fli: valori derivata della funzione sull ascisse di interpolazione;
% -x: serie di punti;
% -y: valori della funzione sin() calcolati sui punti x;
% -y1: valori del polinomio di lagrange calcolati sui punti x;
% -y2: valori del polinomio di newton calcolati sui punti x;
% -y3: valori del polinomio di hermite calcolati sui punti x.

xi = zeros(3,1);
f1i = zeros(3,1);
for i = 0:length(xi)-1
    xi(i+1) = i*pi;
    f1i(i+1) = cos(xi(i+1));
end

fi = [0;0;0];
x = (0:0.1:2*pi);

y = sin(x);
y1 = lagrange(xi, fi, x);
y2 = newton(xi, fi, x);
y3 = hermite(xi, fi, f1i, x);

plot(x,y,x,y1,x,y2,x,y3);
legend('f','l','n','h')