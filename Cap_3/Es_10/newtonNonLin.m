% x = newtonNonLin(f, J, x, imax, tol )
% Metodo per la risoluzione di sistemi non lineari con il metodo di Newton.
%
% Input :
% f: funzione;
% J: Jacobiano;
% x: punto iniziale;
% imax: passi massimi;
% tol: tolleranza.

function x = newtonNonLin(f, J, x, imax, tolx)
    i=0;
    xold=0;
    while(i<imax) && (norm(x-xold)>tolx)
        i=i+1;
        xold=x;
        [J, p] = fattorizzazioneLUpiv(J);
        J, p
        x = x + risolutoreLUpiv(J, p, -feval(f,x));
        x, i
    end
end
