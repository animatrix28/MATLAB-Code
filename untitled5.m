function [ ] = untitled5()
x=[pi/6 pi/3 pi/2 2*pi/3 5*pi/6 pi 7*pi/6 4*pi/3 3*pi/2 5*pi/3 11*pi/6 2*pi];
y=[2.34 3.01 3.68 4.15 3.69 2.20 0.83 0.51 0.88 1.09 1.19 1.64];
syms t;
T=2*pi;
w=2*pi/T;
h=3;
a=zeros(1,h);
b=zeros(1,h);
a0=2*mean(y);
HS=a0/2;
for i=1:h
    a(i)=2*mean(y.*cos(i*w*x));
    b(i)=2*mean(y.*sin(i*w*x));
    HS=HS+a(i)*cos(i*w*t)+b(i)*sin(i*w*t);
end
f=vpa(HS,3)
plot(x,y,'*')
hold on 
t=linspace(x(1),x(end),1000);

plot(t,eval(HS),'r')
grid on