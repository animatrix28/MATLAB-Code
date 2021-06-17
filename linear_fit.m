function [ ] = linear_fit( x,y )
n=length(x);
s=[x' ones(n,1)];
A=s'*s;
B=s'*y';
M=A\B;
syms t;
yc=M(1)*t+M(2);
fprintf('APPROXIMATE FUNCTION IS:\n');
disp(vpa(yc,4))
t=x(1):0.01:x(n);
z=eval(yc);
plot(t,z,'r',x,y,'*')
end

