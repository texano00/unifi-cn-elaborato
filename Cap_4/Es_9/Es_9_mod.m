% Soluzione Cap_4 Es_9.
%
% -f: funzione di Runge;
% -a: punto estremo destro intervallo;
% -b: punto estremo sinistro interballo;
% -n: numero di ascisse di interpolazione.

f = @(x) 1 ./ (1 + 25.*x.^2);
a = -6;
b = 6;
n = 2:2:40;

% -x: valori nei quali mi interessa sapere il valore del polimonio interpolante e spline
x = linspace(a,b,1000);

for i = 1:length(n)
    % -xi: n+1 ascisse equidistanti in [a,b]
    xi = linspace(a,b,n(i)+1);

    % -fi: Calcolo le fi nella funzione di Runge
    fi = f(xi);

    % -y: Lagrange
    y = lagrange(xi,fi,x);

    % Plot
    plot(x,y)
    hold on
 
end
legend('2','4','6','8','10','12','14','16','18','20','22','24','26','28','30','32','34','36','38','40')
hold off

for i = 1:length(n)
    % -xs: n+1 ascisse equidistanti in [a,b]
    xs = linspace(a,b,n(i)+1);

    % -fs: Calcolo le fi nella funzione di Runge
    fs = f(xs);
    
    % Calcolo Spline Naturale e NotAKnot
    if length(xs) > 4     
        splineNotAKnot = spline3(xs,fs,x,false);
        splineNaturale = spline3(xs,fs,x,true);
    
        figure;
        plot(x,splineNaturale,x,splineNotAKnot);
        legend('Spline Naturale','Spline NotAKnot');
    end
end