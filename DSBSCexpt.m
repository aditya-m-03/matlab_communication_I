clc;
close all;
clear all;
Fc=100000;
Fs=1000000;
F=1000;
m=0.5;
a=1/m;
opt=-a;
t=0:1/Fs:((2/Fs)-(1/Fs));
x=cos(2*pi*F*t);
y=modulate(x,Fc,Fs,'amdsb-tc',opt);
subplot(3,1,1);
plot(x);
title('modulating signal');
subplot(3,1,2);
plot(y);
title('modulating dsbsc signal');
x_recov=demod(y,Fc,Fs,'amdsb-tc',opt);
subplot(3,1,3);
plot(x_recov);
title('original message');