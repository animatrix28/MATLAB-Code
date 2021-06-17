function [ ]=RK4_11(x0,y0,xn,h)
f=@(x,y) ((x*2)+(2*y));
x=x0:h:xn;
n=length(x);
y(1)=y0;
for i=2:n 
    K1=h*f(x(i-1), y(i-1)); 
    K2=h*f(x(i-1)+h/2, y(i-1)+K1/2); 
    K3=h*f(x(i-1)+h/2, y(i-1)+K2/2);
    K4=h*f(x(i-1)+h, y(i-1)+K3);   
  y(i)=y(i-1)+(1/6)*(K1+2*K2+2*K3+K4);
end 
fprintf('corrected approximate solution y(%f)=%f ',x(end), y(end))
plot(x,y,'m*')
hold on 
u=dsolve('Dy=(3*x)+(y/2)','y(0)=1','x');
u=eval(u)
fprintf('\nExact solution y(%f)=%f \n',x(end), u(end))
plot(x,u,'b--')
end 