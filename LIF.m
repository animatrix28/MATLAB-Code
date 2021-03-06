%NAME = ANIMESH SRIVASTAVA
%REGISTRATION NUMBER = 17ETCS002026
function [ ] = LIF(x,y)
n = length(x);
poly = 0;
syms t; 
for i=1:n
    prod=1;
    for k=1:n
        if i~=k
        prod=prod*(t-x(k))/(x(i)-x(k));
        end
    end
        poly=poly+prod*y(i);
end
disp(poly)
plot(x,y)
t=x(1):0.01:x(n);
z=eval(poly);
plot(x,y,'o',t,z)
end
