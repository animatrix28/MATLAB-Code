function [ ] = Euler(x0,y0,xn,h)
f=@(x,y) (x+y);
x=x0:h:xn;
n=length(x); 
y(1)=y0;
for i=1:n-1
    y(i+1)=y(i)+h*f(x(i),y(i));
    fprintf('y(%f)=%f\n',x(i+1),y(i+1))
end
fprintf('The approximate solution y(%f)=%f\n',x(end),y(end))
plot(x,y,'r--')
hold on
u=dsolve('Dy=(x+2*y)','y(x0)=y0','x');
z=eval(u);
plot(x,z,'b--')
end