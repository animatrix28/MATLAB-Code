x=linspace(-1,1,10);
y=linspace(-1,1,10);
z=linspace(-1,1,10);
[x,y,z]=meshgrid(x,y,z);
f1=y;
f2=x;
f3=x-2.*y+z;
grid on
quiver3(x,y,z,f1,f2,f3);
hold on
