x=[0:0.01:10];
f1=sin(x).^2;
f2=cos(x).^2;
f3=x;
figure
hold on
plot(x,f1,'b')
plot(x,f2,'m')
plot(x,f3,'g')
legend('f1','f2','f3')
axis([-10,10 ,-10,10])

figure
subplot(3,1,1)
plot(x,f1,'b')
title('f1')
subplot(3,1,2)
plot(x,f2,'m')
title('f2')
subplot(3,1,3)
plot(x,f3,'g')
title('f3')

x=[];
y=[];
for i =-10:0.1:10;
x=[x,i];
if (x<=0)
y=[y,sqrt(1+abs(x))/(2+abs(x))];
else
y=[y,(1+x)/(2+cos(x).^3)];
end
end
figure
subplot(2,1,1)
plot(x,y,'g')
y1=(sqrt((1+abs(x))/(2+abs(x)))).*(x<=0);
y2=((1+x)/(2+cos(x).^3)).*(x>0);
subplot(2,1,2)
plot(x,y1 + y2)

