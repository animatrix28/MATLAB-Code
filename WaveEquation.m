function [ ] = WaveEquation(t0,tn,x0,xm,h,k,c)
t=t0:k:tn;
x=x0:h:xm;
m=length(x);
n=length(t);
a=c*k^2/h^2;
f=@(x) x.*(1-x);%  Change f according with the problem
g=@(x)0;
u=zeros(m,n);
u(:,1)=f(x);
if a>1 
    fprintf('The method fails')
    return
end
for  j=1:n-1
    for i=2:m-1
        if j==1
      u(i,j+1)=(a*(u(i-1,j)+u(i+1,j))+(2-2*a)*u(i,j)+k*2*g(x(i)))/2;
        else 
      u(i,j+1)=a*(u(i-1,j)+u(i+1,j))+(2-2*a)*u(i,j)-u(i,j-1);
        end
    end
end
disp(u)
surf(t,x,u)
end