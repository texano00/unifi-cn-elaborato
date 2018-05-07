% Soluzione Cap_3 Es_9.

A1 = [3 2 1; 1 2 3; 1 2 1; 2 1 2];
b1 = [10; 10; 10; 10];
xqr1 = risolutoreQR( A1, b1 );
xab1 = A1\b1;
xqr1, xab1

A2 = [9 -14 -3; 4 9 6; 33 4 12; 7 -23 4];
b2 = [12; -5; 9; -25];
xqr2 = risolutoreQR( A2, b2 );
xab2 = A2\b2;
xqr2, xab2