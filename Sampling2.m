clear; clc;
subplot(3,1,1);
f = 30e3;
fs = 2 * f;
Ts = 1/fs;
t1 = 0:1e-7:5/f;
x1 = cos(2 * pi * f * t1);
plot(t1,x1);
hold on;
t2 = 0:Ts:5/f;
x2 = cos(2 * pi * f * t2);
stem(t2,x2);
xlabel('Time');
ylabel('Amplitude');
xr = zeros(length(t1));
for i=1:length(t1)
    for j=1:length(x2)
        xr(i)= xr(i) + x2(j)*sinc(2*fs*t1(i)-j);
    end 
end
plot(t1,xr);
xlabel('Time');
ylabel('Amplitude');
legend('x(t)','x(nT)','x_r(t)');