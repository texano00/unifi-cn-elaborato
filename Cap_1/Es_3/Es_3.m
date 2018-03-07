format long e;

h = zeros(10,1);
f = zeros(10,1);
for j = 1:10
    h(j) = power(10,-j);
    f(j) = teta(1,h(j));
end

f

function Output_val = teta(x,h)
    sum = x+h;
    dif = x-h;
    Output_val = (power(sum,4) - power(dif,4))/2*h;
end