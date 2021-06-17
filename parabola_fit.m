function[ ] = parabola_fit(x,y)
n = length(x);
s = [x'.*x' x' ones(n,1)];
A = s' * s;
B = s' *y';
M = inv(A)*B;
syms t
yc = M(1)*t^2 + M(2)*t + M(3);
fprintf(' the parabolic fit of the function is:\n')
disp(yc)
t = x(1):0.0001:x(n);
z = M(1)*t.^2+M(2)*t+M(3);
plot(x,y,'*',t,z)
grid on
hold on
end
