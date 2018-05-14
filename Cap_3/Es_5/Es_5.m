% Soluzione Cap_3 Es_5.

LDLt = [3 2 -1; 2 7 7; -1 7 30];
xt1 = [4; 5; 3];
b1 = LDLt*xt1;
x1 = risolutoreLDLt(LDLt,b1);
r1 = LDLt*x1-b1;
k1 = cond(LDLt);
krb1 = norm(r1)/norm(b1);
kxtx1 = norm(x1 - xt1)/norm(xt1);
LU = [-23 5 -21 8;0 0 5 7; 1 54 7 9; 0 -8 12 4];
xt2 =[2; 8; 3; 5];
b2 = LU*xt2;
x2 = risolutoreLUpiv(LU, b2);
r2 = LU*x2-b2;
k2 = cond(LU);
krb2 = norm(r2)/norm(b2);
kxtx2 = norm(x2 - xt2)/norm(xt2);