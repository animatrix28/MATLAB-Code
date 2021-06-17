%ANIMESH SRIVASTAVA
%17ETCS002026
function [  ] = NGF_IF( x,y )
n=length(x);
d=zeros(n);
d(:,1)=y;
  for j=2:n
      for i=j:n
         d(i,j)=d(i,j-1)-d(i-1,j-1); 
      end
  end    
h=x(2)-x(1);
syms t
p=(t-x(1))/h;
poly=d(1,1);
prod=1;
for i=2:n
    prod=prod*(p-(i-2))/(i-1);
    poly=poly + prod*d(i,i);
end
poly=expand(poly);
speed=diff(poly);
t = x;
v = eval(speed);
plot(t,v,'*');
hold on
t = x(1):0.01:x(n);
s = eval(speed);
plot(t,s,'-')
end