addpath('../Es_4/');
addpath('../Es_8/');

% Esempio 1
A = [1 2 3; 1 1 1; 1 2 3; 3 2 1];
b = [2;2;1;1];
x1 = risolutoreQR( A, b );

% Esempio 2
A = [3 2 1; 1 2 3; 3 2 1; 1 2 3];
b = [2;1;1;2];
x2 = risolutoreQR( A, b );