function [x] = risolutoreQR( A, b )
  [m,n] = size(A);
  Qt = eye(m);
  for i=1:n
  Qt= [eye(i-1) zeros(i-1,m-i+1); zeros(i-1, m-i+1)' (eye(m-i+1) - (2/norm([1; A(i+1:m, i)], 2)^2)*([1; A(i+1:m, i)]*[1 A(i+1:m, i)']))]*Qt;
  end
  x = triangolareSuperiore(triu(A(1:n, :)), Qt(1:n, :)*b);
end