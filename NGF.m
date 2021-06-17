function [ ] = NGF( x,y )
n=length(x);
d=zeros(n);
d(:,1)=y;
h=x(2)-x(1);
for j=2:n
    for i=j:n
    d(i,j)=d(i,j-1)-d(i-1,j-1);
end
end
fprintf('Forward difference table is:\n');
disp(d);
syms t;
p=(t-x(1))/h;
poly=d(1,1);
prod=1;
for i=2:n
    prod=prod*(p-i+2)/(i-1);
    poly=poly+prod*d(i,i);
end
poly=expand(poly)
t=x(1):0.01:x(n);
z=eval(poly);
plot(t,z,'r',x,y,'*')
end

