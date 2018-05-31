n = 2:2:40;

for i = 1:length(n)
%    x_e = linspace(-6, 6, n(i)+1);
    x_c = (ceby(n(i),-6,6))';
    length(x_c)
    x = linspace(-6,6,1001);
%    vLambda_e = zeros(size(x));
    vLambda_c = zeros(size(x));
    for j = 1:n(i)+1
        y_j = zeros(1,n(i)+1);
        y_j(j) = 1;
%        k_je = polyfit(x_e, y_j, n(i));
        k_jc = polyfit(x_c, y_j, n(i));
%        vLambda_e = vLambda_e + abs(polyval(k_je,x));
        vLambda_c = vLambda_c + abs(polyval(k_jc,x));
    end

%    Lambda_e(i) = norm(vLambda_e,inf);
    Lambda_c(i) = norm(vLambda_c,inf);
end