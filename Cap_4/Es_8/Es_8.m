% Soluzione Cap_4 Es_8.
%
% -n: grado del polinomio.
% -cl: costanti di lebesegue sulle ascsse di Chebishev.

n = 2:2:40;
cl = ones(length(n),1);

for i = 1:length(n)
    cl(i) = (2/pi)*log(n(i));
end