% Soluzione Cap_4 Es_8.
%
% -a: punto estremo sinistro intervallo;
% -b: punto estremo destro intervallo;
% -n: numero di valutazioni;
% -x: ascisse di Chebyshev.

a = -6;
b = 6;
n = 2:2:40;

k = ones(length(n),2);

for i = 1:length(n)    
    x = ceby(n(i),a,b);
    k(i,1) = lebesgue(x);
    k(i,2) = (2/pi)*log(n(i));
end