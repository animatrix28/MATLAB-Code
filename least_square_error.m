%Name: Animesh Srivastava
%Registeration No.: 17ETCS002026
syms t
T = 2*pi;
x = [0 T/6 T/3 T/2 2*T/3 5*T/6];
y = [1.98 1.30 1.05 1.30 -0.88 -0.25];
w = 2*pi/T;
h = 2;
a = zeros(1,h);
b = zeros(1,h);
ao = 2*mean(y);
har = ao/2;
for i = 1:h
    a(i) = 2*mean(y.*cos(i*w*x));
    b(i) = 2*mean(y.*sin(i*w*x));
    har = har + a(i)*cos(i*w*t)+b(i)*sin(i*w*t);
end
F=har;
O = [1.98 1.30 1.05 1.30 -0.88 -0.25]
t=[0 T/6 T/3 T/2 2*T/3 5*T/6];
F=eval(F)
E=0;
for i=1:6
    E=E+(O(i)-F(i)).^2;
end    
fprintf('THE ERROR E GENERATED ACCORDING TO GIVEN FORMULAE IS %f \n',E)