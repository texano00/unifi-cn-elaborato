% Soluzione Cap_4 Es_8.
%
% -a: punto estremo sinistro intervallo;
% -b: punto estremo destro intervallo;
% -n: grado della costante di Lebesgue da calcolare;
% -x: ascisse di Chebyshev;
% -k: vettore contenente le costanti di Lebesgue.

a = -6;
b = 6;
n = 2:2:40;

k = ones(length(n),1);

for i = 1:length(n)
    x = ceby(n(i),a,b);
    k(i,1) = lebesgue(x);
end