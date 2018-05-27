% Prova utilizzo spline3 
%
% -f: funzione;
% -a: estremo sinistro;
% -b: estemo destro;
% -x: ascisse di interpolazione;
% -xx: punti valutazione spline;
% -vfx: funzione valutata punti di interpolazione;
% -splineNotAKnot: valuta spline con condizioni NotAKnot (false);
% -splineNaturale: valuta spline con condizioni naturale (true).

f = @(x) (1./(1+x.^2));
a = -5;
b = 5;

x = linspace(a,b,40); 
xx = linspace(a,b,200); 
vfx = feval (f, x);

% vfxx = feval (f, xx);
% splineMatlab = spline(x,y,xx);

splineNotAKnot = spline3(x,vfx,xx,false);
splineNaturale = spline3(x,vfx,xx,true);

plot(xx,splineNaturale,xx,splineNotAKnot);