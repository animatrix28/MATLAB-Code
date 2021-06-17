function [ ] = NBF( x,y )
n=length(x);
d=zeros(n);
h=x(2)-x(1);
d(:,1)=y;
for j=2:n
    for i=j:n
        d(i,j)=d(i,j-1)-d(i-1,j-1);
    end
end
fprintf('BACKWARD DIFFERENCE TABLE IS:\n');
disp(d)
nabla=d(n,:);
poly=nabla(1);
prod=1;
syms t;
p=(t-x(n))/h;
for i=2:n
    prod=prod*(p+i-2)/(i-1);
    poly=poly+prod*nabla(i);
end
poly=expand(poly);
fprintf('Interpolation equation is:\n');
disp(poly)
t=x(1):0.1:x(n);
z=eval(poly);
plot(t,z,'r',x,y,'*')
t=1925;
q=eval(poly)
end