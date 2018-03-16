% x = newtonNonLin(f, J, x, imax, tol )
% Metodo per la risoluzione di sistemi non lineari con il metodo di Newton.
%
% Input :
% F: sistema non lineare;
% J: Jacobiano;
% x: punto iniziale;
% imax: passi massimi;
% tol: tolleranza.
% Ouput :
% x: minimo relativo.

function x = newtonNonLin(f, J, x, imax, tolx)
    i=0;
    xold=0;
    while(i<imax) && (norm(x-xold)>tolx)
        i=i+1;
        xold=x;
        val = -feval(f,x);
        b = [val(1);val(2)];
        x = x + risolutoreLUpiv(J, b);
        i, b
    end
end
