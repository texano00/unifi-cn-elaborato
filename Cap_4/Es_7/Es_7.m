addpath('../Es_1');
addpath('../Es_6');

% Funzione di Runge
f = @(x) 1 ./ (1 + 25.*x.^2);

a = -6;
b = 6;

n = 2:2:40;
for i = 1:length(n)
  % Ascisse di Chebyshev
  xi = ceby(n(i),a,b);

  % Calcolo le fi nella funzione di Runge
  fi = f(xi);

  % Lagrange
  x = linspace(-6,6);
  y = lagrange(xi,fi,x);
  % Plot
  plot(x,y,x,f(x))
  title(strcat('Grado n=',num2str(n(i))));
  % pause(0.5);

  % Qui devo calcolare l'errore
end