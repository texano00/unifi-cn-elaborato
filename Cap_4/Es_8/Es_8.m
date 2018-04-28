addpath('../Es_1');
addpath('../Es_6');
addpath('../Es_7');

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
  lebesgue(xi)
end