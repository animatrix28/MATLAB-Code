syms x 
f1=-x;
f2=0;
T=2*pi;
w=(2*pi)/T;
k=5;
n=-k:k;
cn=(1/T)*(int(f1*exp(-1i*w*n*x),x,-pi,0)+int(f2*exp(-1i*w*n*x),x,0,pi));
CFS=sum(cn.*exp(1i*w*n*x));
disp(vpa(CFS,5))
x=linspace(-3*pi,3*pi,500);
y=eval(CFS);
plot(x,y,'b')
hold on
grid on 
x1=linspace(-pi,pi,500); 
g=@(x1) (-x1).*(-pi<=x1 & x1<0) + 0.*(0<=x1 & x1<=pi);
y1=g(x1);
rfx=repmat(y1,1,3);
rx=linspace(-3*pi,3*pi,length(rfx));
plot(rx,rfx,'r') 