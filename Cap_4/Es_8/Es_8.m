% Soluzione Cap_4 Es_8.
%
% -f: funzione di Runge;
% -a: punto estremo destro intervallo;
% -b: punto estremo sinistro interballo;
% -n: numero di valutazioni;

f = @(x) 1 ./ (1 + 25.*x.^2);
a = -6;
b = 6;
n = 2:2:40;

% -x: valori nei quali mi interessa sapere il valore del polimonio interpolante
x = linspace(-6,6);

for i = 1:length(n)
  % -xi: Ascisse di Chebyshev
  xi = ceby(n(i),a,b);
  lebesgue(xi)
end