% Soluzione Cap_4 Es_8.

a = -6;
b = 6;
n = 2:2:40;

for i = 1:length(n)    
    x = ceby(n(i),a,b);
    lebesgue(x)
end