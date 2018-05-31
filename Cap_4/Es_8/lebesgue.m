% leb = lebesgue(x)
%   Calcola il valore della costante di Lebesgue per i=2,...,N , dato il 
%   vettore x di N nodi (ordinato). 
%
% Input: 
%   -x: vettore ordinato dei nodi.
%
% Output: 
%   -leb: vettore dei valori della costante di Lebesgue.

function leb = lebesgue(x)
    a=x(1); 
    b=x(end); 
    m=1001;
    xx=linspace(a,b,m); 
    for i=2:length(x)
        for j=1:i
            g(j,:)=polElemLagrange(x,xx,j);
        end
        leb(i-1)=norm(g,1);
    end
end