function [I] = simpson_one_third_rule026(a,b,n,f)
if mod(n,2)
    disp('n must be even\n');
   return
end
h = (b-a)/n;
if numel(f)>1
    I = (h/3)*(f(1)+f(n+1)+4*(sum(f(2:2:n)))+2*(sum(f(3:2:n-1))));
else
    x = a:h:b;
    I = (h/3)*(f(a)+f(b)+4*(sum(f(x(2:2:n))))+2*sum(f(x(3:2:n-1))));                                     
    
end