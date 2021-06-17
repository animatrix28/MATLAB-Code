x = [30 60 90 120 150 180 210 240 270 300 330 360];
y = [2.34 3.01 3.68 4.15 3.69 2.20 0.83 0.51 0.88 1.09 1.19 1.64];
syms t
T=2*pi;
w = 2*pi/T;
h = 3;
a = zeros(1,h);
b = zeros(1,h);
ao = 2*mean(y);
HS = ao/2;
for i = 1:h
    a(i) = 2*mean(y.*cos(i*w*x));
    b(i) = 2*mean(y.*sin(i*w*x));
    HS = HS + a(i)*cos(i*w*t)+b(i)*sin(i*w*t);
end
f = vpa(HS,4)
plot(x,y,'*')
hold on
grid on
t = linspace(x(1),x(end),1000);
y1 = eval(HS);
plot(t,y1,'r')