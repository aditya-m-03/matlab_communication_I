clc;
clear all;
close all;
%generation of continuous time signal
t=0:0.0005:1;
f=4;
xa=cos(2*pi*f*t);
subplot(3,1,1);
plot(t,xa);
grid
xlabel('time');
ylabel('amplitude');
title('continuous time signal');
axis([0 1 -1.2 1.2]);
% sampling the given continuous time signal
fs=10;
T=1/fs;
n=0:T:1;
xs=cos(2*pi*f*n);
subplot(3,1,2);
stem(n,xs);
grid
xlabel('time '); ylabel('amplitude');
title('Sampled discrete time signal');
axis([0 1 -1.2 1.2]);
%reconstructing the original CTS from the sampled signal
n=(0:T:1)';
xs=cos(2*pi*f*n); % value of f taken here is 4HZ;
t=linspace(0,1,500)';
% equation for reconstruction
ya=sinc((1/T)*t(:,ones(size(n)))-(1/T)*n(:,ones(size(t)))')*xs;
subplot(3,1,3);
plot(n,xs,'.',t,ya);
grid
xlabel('time ');
ylabel('amplitude');
title('reconstructed continuous time signal');
axis([0 1 -1.2 1.2]);