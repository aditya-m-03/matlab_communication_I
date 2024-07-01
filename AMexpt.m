clc;
clear all;
t=[0:0.001;2];
F1=5;
m=sin(2*pi*F1*t);
subplot(6,2,[1,2]);
plot(t,m);
title('Message signal');
F2=50;
c=sin(2*pi*F2*t);
subplot(6,2,[3,4]);
plot(t,c);
title('carrier signal');
m1=0.5;
s1=(1+(m1*m)).*c;
subplot(6,2,[5,6]);
plot(t,s1);
title('under modulation');
m2=1;
s2=(1+(m2*m)).*c;
subplot(6,2,[7,8]);
plot(t,s2);
title('100%modulation');
m3=1.5;
s3=(1+(m3*m)).*c;
subplot(6,2,[9,10]);
plot(t,s3);
title('over modulation');
s5=s2.*c;
[b,a]=butter(5,0.1);
s4=filter(b,a,s5);
subplot(6,2,[11,12]);
plot(t,s4);
title('Demodulation');

