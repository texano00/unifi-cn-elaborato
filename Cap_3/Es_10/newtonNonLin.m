% x = newtonNonLin(f, J, x, imax, tol )
% Risoluzione di sistemi non lineari con il metodo di Newton.
%
% Input :
% f: funzione;
% J: Jacobiano;
% x: punto iniziale;
% imax: passi massimi;
% tol: tolleranza.

function x = newtonNonLin(f, J, x, imax, tolx)
    i=0;
    while(i<imax) && (norm(x-xold)>tolx)
        i=i+1;
        xold=x;
        [J, p] = fattorizzazioneLUpiv(J);
        x = x + risolutoreLUpiv(J, p, -feval(f,x));
    end
end
