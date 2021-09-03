% Parameters
amp = 95; freq = 200 * pi;
pha = pi / 5; dur = 0.025;

% Function Call
[t, x] = one_cos(amp, freq, pha, dur);
plot(t, x);

grid on
title('Plot of sinusoid')
xlabel('time(sec)')