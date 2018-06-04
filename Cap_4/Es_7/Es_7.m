% Soluzione Cap_4 Es_7.
%
% -f: funzione di Runge;
% -a: punto estremo sinistro intervallo;
% -b: punto estremo destro interballo;
% -n: grado polinomio.

f = @(x) 1 ./ (1 + 25.*x.^2);
a = -6;
b = 6;
n = 2:2:40;

% -x: valori nei quali mi interessa sapere il valore del polimonio interpolante
x = linspace(-6,6);

% -k: valori numero di condizionamento su ascissi equidistanti.
k = zeros(length(n),1);

for i = 1:length(n)
    % -xi: Ascisse di Chebyshev
    xi = ceby(n(i),a,b);
  
    % -fi: Calcolo le fi nella funzione di Runge
    fi = f(xi);
  
    % -y: Lagrange
    y = lagrange(xi,fi,x);
  
    % Plot 
    plot(x, y);
    hold on
    
    % -calcolo errore in base al grado del polinomio
    k(i,1) = norm(f(x) - y);
end
legend('2','4','6','8','10','12','14','16','18','20','22','24','26','28','30','32','34','36','38','40')
hold off