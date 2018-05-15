% Soluzione Cap_3 Es_5.
%
% Input:
%   -LDLt: matrice da fattorizzare;
%   -xt1: vettore incognite.
%
% Ouput:
%   -b1: vettore termini noti;
%   -x1: vettore incognite;
%   -r1: vettore residuo
%   -k1: numero di condizionamento matrice;
%   -krb1: rapporto tra la norma vettore residuo e la norma vettore termini noti;
%   -kxtx1: rapporto tra la norma della differenzs tra x - ~x e la norma
%   del vettore ~x.

LDLt = [3 2 -1; 2 7 7; -1 7 30];
xt1 = [4; 5; 3];
b1 = LDLt*xt1;
x1 = risolutoreLDLt(LDLt,b1);
r1 = LDLt*x1-b1;
k1 = cond(LDLt);
krb1 = norm(r1)/norm(b1);
kxtx1 = norm(x1 - xt1)/norm(xt1);

% Input:
%   -LU: matrice da fattorizzare;
%   -xt2: vettore incognite.
%
% Ouput:
%   -b2: vettore termini noti;
%   -x2: vettore incognite;
%   -r2: vettore residuo
%   -k2: numero di condizionamento matrice;
%   -krb2: rapporto tra la norma vettore residuo e la norma vettore termini noti;
%   -kxtx2: rapporto tra la norma della differenzs tra x - ~x e la norma
%   del vettore ~x.

LU = [-23 5 -21 8;0 0 5 7; 1 54 7 9; 0 -8 12 4];
xt2 =[2; 8; 3; 5];
b2 = LU*xt2;
x2 = risolutoreLUpiv(LU, b2);
r2 = LU*x2-b2;
k2 = cond(LU);
krb2 = norm(r2)/norm(b2);
kxtx2 = norm(x2 - xt2)/norm(xt2);