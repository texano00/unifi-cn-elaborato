format longEng

conv = sqrt(3);
x = [3,2];
r = [x(1)-conv,x(2)-conv];

for i = 2:7
    x(i+1) = (3+(x(i-1)*x(i)))/(x(i-1)+x(i));
    r(i+1) = x(i+1)-conv;
end

x
r