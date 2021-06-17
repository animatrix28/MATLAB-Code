tspan=[0,1];
y0=1;
f=@(x,y)(y+x)/(y-x);
[x,y]=ode45(f,tspan,y0);
plot(x,y,'*')
hod on 
y=dosolve('Dy=(y+x)/(y-x)','y(0)=1','x');
y=eval(y);
plot(t,y,'r')