function [A] = decomposizioneQR(A);
  [n,m] = size(A);

  for i=1:n
    alfa = norm( A(i:m,i) );
    if alfa==0, error('la matrice A non ha rango massimo'), end
    if A(i,i)>=0, alfa = -alfa; end
    v1 = A(i,i) -alfa;
    A(i,i) = alfa; A(i+1:m,i) = A(i+1:m,i)/v1;
    beta = -v1/alfa;
    A(i:m,i+1:n) = A(i:m,i+1:n) - (beta*[1; A(i+1:m,i)])*([1 A(i+1:m,i)']*A(i:m,i+1:n));
  end