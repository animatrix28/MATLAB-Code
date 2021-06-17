function [ ] = exponential_fit( x,y )
n=length(x);
Y=log(y);
s=[x' ones(n,1)];
A=s'*s;
B=s'*Y';
M=A\B;
M(2)=exp(M(2));
syms t;
yc=M(1)*t.^2+M(2);
fprintf('Approxiamte funtion is:\n');
yc=vpa(yc,4);
disp(yc)
t=x(1):0.01:x(n);
z=eval(yc);
plot(t,z,'r',x,y,'*')
end

