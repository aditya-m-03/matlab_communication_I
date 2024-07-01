clc;
clear all;
Fs=10000;
Ac=1;
Am=1;
Fc=500;
Fm=35;
b=10;
t=(0:0.1*Fs)/Fs;
wm=2*pi*Fm;
wc=2*pi*Fc;
m=Am*cos(wm*t);
subplot(5,1,1);
plot(t,m);
title('message');
c=Ac*cos(wc*t);
subplot(5,1,2);
plot(t,c);
title('carrier');
s=Ac*cos((wc*t)+b*sin(wm*t));
subplot(5,1,3);
plot(t,s);
title('FM modulation');
d=demod(s,Fc,Fs,'fm');
subplot(5,1,4);
plot(t,d);
title('demodulation');



