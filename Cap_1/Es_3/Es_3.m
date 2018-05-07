% Soluzione Cap_1 Es_3

format long e;

% -h: vettore contenente i valori 10^-j.
% -f: vettore contenente i valori della funzione teta.

h = zeros(10,1);
f = zeros(10,1);

% Iterazione per il calcolo dei valori della funzione.

for j = 1:10
    h(j) = power(10,-j);
    f(j) = teta(1,h(j));
end

f

% val = teta(x,h)
% Funzione che calcola il valore di teta.
% 
% Input:
%  -x;
%  -h.
%
% Ouput:
%  -val.

function val = teta(x,h)
    sum = x+h;
    dif = x-h;
    val = (power(sum,4) - power(dif,4))/2*h;
end