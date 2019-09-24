a=-2.5;
b=1.35;
i=3;
c=-0.72;
x=2.75;
y1=1.5*(a-b)*(a-b)/(abs(a-b)*c);
y2=i/5;
y3=10*10*10*sqrt(abs(a-b));
y4=(a+x*x)*cos(7)/(i*x*x+a*a*b*c);
y=y1+y2+y3-y4
A=[a b i c x y];
razn=A-[1 1 1 1 1 1];
razn(2)
razn(1)=0;
razn(2)=0;
razn(3)=0;
max(razn)