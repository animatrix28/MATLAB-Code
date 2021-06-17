function [ ] = NDD( x,y )
n=length(x);
d=zeros(n);
d(:,1)=y;
for j=2:n
    for i=j:n
        d(i,j)=(d(i,j-1)-d(i-1,j-1))/(x(i)-x(i-j+1));
    end
end
dd=[x',d];
fprintf('Divided difference table is:\n');
disp(dd)
poly=d(1,1);
prod=1;
syms t;
for i=2:n
    prod=prod*(t-x(i-1));
    poly=poly+prod*d(i,i);
end
fprintf('Required interpolation formulae is:\n');
poly=expand(poly);
disp(poly)
end

