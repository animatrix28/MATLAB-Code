     
fig_size = [232 84 774 624];

t = 0:0.01:10;

nt = length(t);

dt = t(2);

h1 = 2*exp(-t);
h2 = 2*exp(-t);

x = 1 - exp(-3*t); 
y1 = conv(x,h1)*dt;
y1 = y1(1:nt);
hold on

figure(1),clf,plot(t,x,t,h1,t,y1),grid,xlabel('Time (s)'),ylabel('Amplitude'),...

title('second link'),...

legend('x(t)','h1(t)','y1')
h = conv(h1,h2)*dt;
h = h(1:nt);
hold on
figure(2),clf,plot(t,h1,t,h2,t,h),grid,xlabel('Time (s)'),ylabel('Amplitude'),...

title('overall link'),...

legend('x(t)','h1(t)','y1')
y2 = conv(h,x)*dt;
y2 = h(1:nt);
hold on 
figure(3),clf,plot(t,h,t,x,t,y2),grid,xlabel('Time (s)'),ylabel('Amplitude'),...

title('destination link'),...
    legend('h(t)','x(t)','y2')