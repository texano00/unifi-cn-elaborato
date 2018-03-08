format longEng

conv = sqrt(3)
x = [3];
r = [x(1)-conv];

for i = 1:5
    x(i+1) = (x(i)+(3/x(i)))/2;
    r(i+1) = x(i+1)-conv;
end

x, r