xi = zeros(3,1);
fi = zeros(3,1);
f1i = zeros(3,1);
for i = 0:length(xi)-1
    xi(i+1) = i*pi;
    fi(i+1) = sin(xi(i+1));
    f1i(i+1) = cos(xi(i+1));
end
x = [xi(1); 1; xi(2); 5; xi(3)];
y1 = newton(xi, fi, x);
plot(xi, fi, x, y1);
%x = [xi(1); xi(2); xi(3)];
%y2 = hermite(xi, fi, f1i, x);
%plot(xi, fi, x, y2);
