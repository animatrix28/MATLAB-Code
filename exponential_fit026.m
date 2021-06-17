function[ ] = exponential_fit026(x,y)
n = length(x);
Y = log(y);
s = [x; ones(1,n)];
A = s*s';
B = s*Y';
D = A\B;
a = exp(D(2));
b = exp(D(1));
syms t
yp = a*b.^t;
fprintf(' the exponential fit is given by: \n');
disp(vpa(yp,6));
t = linspace(min(x),max(x),200);
z = eval(vpa(yp,6));
plot(x,y,'*',t,z,'r');
grid on
hold on
end
