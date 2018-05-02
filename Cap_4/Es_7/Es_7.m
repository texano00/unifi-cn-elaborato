% Funzione di Runge
f = @(x) 1 ./ (1 + 25.*x.^2);
a = -6;
b = 6;
n = 2:2:40;

% valori nei quali mi interessa sapere il valore del polimonio interpolante
x = linspace(-6,6);

for i = 1:length(n)
    % Ascisse di Chebyshev
    xi = ceby(n(i),a,b);
  
    % Calcolo le fi nella funzione di Runge
    fi = f(xi);
  
    % Lagrange
    y = lagrange(xi,fi,x);
  
    % Plot 
    plot(x, y);
    hold on
  
    norm(f(x) - y)
end
legend('2','4','6','8','10','12','14','16','18','20','22','24','26','28','30','32','34','36','38','40')
hold off