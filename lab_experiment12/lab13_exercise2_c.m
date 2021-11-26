Fc = 200;   % cut-off frequency
Fs = 1000;  % sampling frequency

[b, a] = butter(7, 200/500);
% freqz(b, a) % it may be another solution.

[h, w] = freqz(b, a);
zplane(b, a)
xlabel("Real Part"); ylabel("Imaginary Part");
sgtitle("pole-zero plot of 7th order low-pass Butterworth filter")