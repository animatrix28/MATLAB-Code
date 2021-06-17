%ANIMESH SRIVASTAVA
%17ETCS002026
function [] = FourierSeries( )
N=20;
n=1:N;
T=6;
w= 2*pi/T;
syms x;
f1=x;
f2=(6-x)/2;
a0=(2/T)*(int(f1,x,0,2)+int(f2,x,2,6));
an=(2/T)*(int(f1.*cos(n*w*x),x,0,2)+ int(f2.*cos(n*w*x),x,2,6));
bn=(2/T)*(int(f1.*sin(n*w*x),x,0,2)+int(f2.*sin(n*w*x),x,2,6));
v1=[a0/2,an,bn];
v2=[1,cos(n*w*x),sin(n*w*x)];
FS= sum(v1.*v2);
fprintf('The Fourier Series of the given function is\n');
disp(vpa(FS,8));
f=@(x)(x.*(0<=x & x<=2)+((6-x)./2).*(2<=x & x<=6));
x1=linspace(0,6,500);
y1=f(x1);
ry1=repmat(y1,1,8);
rx1=linspace(-24,24,length(ry1));
plot(rx1,ry1,'r');
grid on;
hold on;
x=linspace(0,6,500);
y=eval(FS);
ry=repmat(y,1,8);
rx=linspace(-24,24,length(ry));
plot(rx,ry,'b')
