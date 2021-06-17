x=-2*pi:2*pi
f=@(x) -5*cos(3*x);
g=@(x) (x^2)-4*x-30;
plot(x,f(x))
hold on
plot(x,g(x))