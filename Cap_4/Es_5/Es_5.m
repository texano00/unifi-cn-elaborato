funct = '1./(1+x.^2)';
a = -5;
b = 5;
x = linspace(a,b,40); 
xx = linspace(a,b,200); %200 punti 
y= feval (inline(funct), x); 
f = feval (inline(funct), xx); 
yy = spline(x,y,xx);
yMySplineKnot = spline3(x,y,xx,false);
yMySplineNat = spline3(x,y,xx,true);
plot(xx,yMySplineNat,xx,yMySplineKnot);