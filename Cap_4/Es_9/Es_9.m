% Soluzione Cap_4 Es_9.
%
% -f: funzione di Runge;
% -a: punto estremo sinistro intervallo;
% -b: punto estremo destro interballo;
% -n: grado polinomio.

f = @(x) 1 ./ (1 + 25.*x.^2);
a = -6;
b = 6;
n = 2:2:40;

% -k: valori numero di condizionamento su ascissi equidistanti.
k = zeros(length(n),1);

% -x: valori nei quali mi interessa sapere il valore del polimonio interpolante e spline
x = linspace(a,b,1000);

% -Lagrange
for i = 1:length(n)
  % -xi: n+1 ascisse equidistanti in [a,b]
  xi = linspace(a,b,n(i)+1);

  % -fi: Calcolo le fi nella funzione di Runge
  fi = f(xi);

  % -y: Lagrange
  y = lagrange(xi,fi,x);

  % -Plot
  plot(x,y)
  hold on
  
  % -calcolo numero di condizionamento su ascisse equidistanti
  k(i,1) = lebesgue(xi);
end
legend('2','4','6','8','10','12','14','16','18','20','22','24','26','28','30','32','34','36','38','40')
hold off

% -Spline cubica
for i = 1:length(n)
    
    % -xs: n+1 ascisse equidistanti in [a,b]
    xs = linspace(a,b,n(i)+1);

    % -fs: Calcolo le fs nella funzione di Runge
    fs = f(xs);
    
    % -Calcolo Spline cubica Naturale e NotAKnot
    if length(xs) < 4  
        splineNaturale = spline3(xs,fs,x,false);
        
        figure;
        plot(x,splineNaturale);
        legend('Spline Naturale');
    else
        splineNotAKnot = spline3(xs,fs,x,true);
        splineNaturale = spline3(xs,fs,x,false);
    
        figure;
        plot(x,splineNaturale,x,splineNotAKnot);
        legend('Spline Naturale','Spline NotAKnot');
    end
end