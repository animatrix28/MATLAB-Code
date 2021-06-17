function [ ] = quadratic_fit( x,y )
n=length(x);
s=[(x.^2)' x' ones(n,1)];
A=s'*s;
B=s'*y';
M=A\B;
syms t;
yc=M(1)*t^2+M(2)*t+M(3);
fprintf('Approximate funtion is:\n');
yc=vpa(yc,4);
disp(yc)
t=x(1):0.01:x(n);
z=eval(yc);
plot(t,z,'r',x,y,'*')
end

