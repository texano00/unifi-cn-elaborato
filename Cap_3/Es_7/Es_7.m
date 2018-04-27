b1 = [1; 101*ones(12,1)];
b2 = 0.1*[1; 101*ones(12,1)];
x1 = triangolareInferioreMod(100,b1);
x2 = triangolareInferioreMod(100,b2);
x1
x2

A = eye(12)+100*[ zeros(1, 12); eye(11) zeros(1, 11)'];
k = cond(A);
ninf = norm(A,inf);
n1 = norm(A,inf);
ninv = norm(A^-1, inf);