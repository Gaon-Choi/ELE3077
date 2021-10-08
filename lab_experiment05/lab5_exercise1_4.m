N = 1024;
G1 = 1/10; G2 = 1/20; G3 = 1/20; G4 = 1/40;

num = G1 * [1];   den = [1, 0.9];
zeros = roots(num); poles = roots(den);
[h, w] = freqz(num, den, N); mag_h = 20 * log10(abs(h)); ang_h = angle(h);
subplot(2,4,1);
plot(w/pi, mag_h); title("Filter 1: magnitude response"); ylim([-4,0]);
xlabel("frequency in \pi units");    ylabel("Magnitude (dB)");
subplot(2,4,5);
plot(w/pi, ang_h); title("Filter 1: phase response");
xlabel("frequency in \pi units");    ylabel("Phase (degrees)");

num = G2 * [1];   den = [1, 0.95];
zeros = roots(num); poles = roots(den);
[h, w] = freqz(num, den, N); mag_h = 20 * log10(abs(h)); ang_h = angle(h);
subplot(2,4,2);
plot(w/pi, mag_h); title("Filter 2: magnitude response"); ylim([-4,0]);
xlabel("frequency in \pi units");    ylabel("Magnitude (dB)");
subplot(2,4,6);
plot(w/pi, ang_h); title("Filter 2: phase response");
xlabel("frequency in \pi units");    ylabel("Phase (degrees)");

num = G3 * [1, -1];   den = [1, 0.9];
zeros = roots(num); poles = roots(den);
[h, w] = freqz(num, den, N); mag_h = 20 * log10(abs(h)); ang_h = angle(h);
subplot(2,4,3);
plot(w/pi, mag_h); title("Filter 3: magnitude response"); ylim([-4,0]);
xlabel("frequency in \pi units");    ylabel("Magnitude (dB)");
subplot(2,4,7);
plot(w/pi, ang_h); title("Filter 3: phase response");
xlabel("frequency in \pi units");    ylabel("Phase (degrees)");

num = G4 * [1, -1];   den = [1, 0.95];
zeros = roots(num); poles = roots(den);
[h, w] = freqz(num, den, N); mag_h = 20 * log10(abs(h)); ang_h = angle(h);
subplot(2,4,4);
plot(w/pi, mag_h); title("Filter 4: magnitude response"); ylim([-4,0]);
xlabel("frequency in \pi units");    ylabel("Magnitude (dB)");
subplot(2,4,8);
plot(w/pi, ang_h); title("Filter 4: phase response");
xlabel("frequency in \pi units");    ylabel("Phase (degrees)");

sgtitle("High-pass Filter Response Plot");