function [ ] = untitled4()
syms x real;
k=3;
f1=x;
f2=-x;
n=1:k;
T=2*pi;
w=2*pi/T;
a0=(2/T)*(int(f1,x,-1,0)+int(f2,x,0,1));
an=(2/T)*(int(f1*cos(n*w*x),x,-1,0) + int(f2*cos(n*w*x),x,0,1));
bn=(2/T)*(int(f1*sin(n*w*x),x,-1,0) + int(f2*sin(n*w*x),x,0,1));
v1=[a0/2 an bn];
v2=[1 cos(n*w*x) sin(n*w*x)];
FS=sum(v1.*v2);
fprintf("The fourier series of te function is: \n");
disp(vpa(FS,3));
x=linspace(-1,1,100000);
y=eval(FS);
ry=repmat(y,1,3);
rx=linspace(-3,3,length(ry));
plot(rx,ry,'g');
grid on