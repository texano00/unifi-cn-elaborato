z = linspace(-6,6);
f = @(x) 1 ./ (1 + 25.*x.^2);
plot(z,f(z))
title('Funzione di Runge')