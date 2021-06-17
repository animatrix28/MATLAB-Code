syms x;
x=linspace(0,8,1000);
f=@(x)((x.^2)/4).*(0<=x&x<4)+4.*(4<=x&x<6);
rfx=repmat(f(x),1,4);
rx=linspace(-16,16,length(rfx));
plot(rx,rfx)