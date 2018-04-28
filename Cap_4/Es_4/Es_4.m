xi = zeros(3,1);
fi = zeros(3,1);
f1i = zeros(3,1);
for i = 0:length(xi)-1
    xi(i+1) = i*pi;
    fi(i+1) = sin(xi(i+1));
    f1i(i+1) = cos(xi(i+1));
end
x = [xi(1); 1; xi(2); 5; xi(3)];

y1 = lagrange(xi, fi, x);
plot(xi, fi, x, y1);

y2 = newton(xi, fi, x);
plot(xi, fi, x, y2);

y3 = hermite(xi, fi, f1i, x);
% Li plotto su due grafici diversi perchè xi,fi altrimenti
% xi,fi è indistinguibile dall'ascissa del piano cartesiano
plot(xi,fi);
plot(x,y3);