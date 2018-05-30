function y = polElemLagrange(i,xbar,x)
    %
    % y = lagrange(i,xbar,x)
    %
    n = length(x);
    m = length(xbar);
    y = prod(repmat(xbar,1,n-1)-repmat(x([1:i-1,i+1:n]),m,1),2)/...
    prod(x(i)-x([1:i-1,i+1:n]));