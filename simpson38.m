function [ ] = simpson38( f,a,b,n )
h=(b-a)/n;
I=f(a)+f(b);
for i=1:n-1
    x=a+i*h;
    if(mod(i,3)==1)
        I=I+2*f(x);
    else
        I=I+3*f(x);
    end
end
I=I*3*h/8;
fprintf('Integration of the given funtion is:\n')
disp(I)
end

