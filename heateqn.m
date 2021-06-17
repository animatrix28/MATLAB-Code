function [u] = heateqn(f, x0,t0,x1, t1, h, k, c)
    x = x0:h:x1;
    t = t0:k:t1;
    m = length(x);
    n = length(t);
    u = zeros(m, n);
    a = k*(c*2)/h^2;
    if a > 0.5
        fprintf("method fails for a>0.5");
        return;
    end
    
    u(:,1) = f(x);
    
    for j=1:n-1
        for i=2:m-1
            u(i,j+1) = a*u(i+1, j) + (1-2*a)*u(i, j) + a*u(i-1,j);
        end
    end
    surf(t,x, u);
end