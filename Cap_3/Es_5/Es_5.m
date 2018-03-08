LDLt = [3 2 -1; 2 7 7; -1 7 30];
b = [1; 2; 3];
x = risolutoreLDLt(LDLt,b);
LDLt, b, x

LU = [1 -1 4; 3 2 1; 2 1 2];
b = [1; 2 ; 3];
xx = risolutoreLUpiv(LU, b);
LU, b, xx