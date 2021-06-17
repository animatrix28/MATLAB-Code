function [ ] = trapezoidal( f,a,b,n )
h=(b-a)/n;
I=f(a)+I(b);
for i=1:n-1
    x=a+i*h;
    I=I+2*f(x);
end
I=I*h/2;
fprintf('Integration of the givem function is:\n');
disp(I)
end

