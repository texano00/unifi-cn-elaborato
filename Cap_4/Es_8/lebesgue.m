function leb = lebesgue(x)
    % Dato il vettore x di N nodi (ordinato), la funzione calcola
    % il valore della costante di Lebesgue per i=2,...,N
    %
    % Input: x (vettore ordinato dei nodi)
    % Output: leb (vettore dei valori della costante di Lebesgue)
    a=x(1); b=x(end); M=10001;
    xx=linspace(a,b,M); %sono i punti "target"
    N=length(x);
    for i=2:N,
        for s=1:i
            l(s,:)=polElemLagrange(s,xx,x);
        end
        leb(i-1)=norm(l,1);
    end
end