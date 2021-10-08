r1 = 0.9;   r2 = 0.95;
s1 = pi / 6;    s2 = pi / 3;
G1 = 0.1 * abs(1-0.9*exp(-j*pi/3));
G2 = 0.05 * abs(1-0.95*exp(-j*pi/3));
G3 = 0.1 * abs(1-0.9*exp(-j*2*pi/3));
G4 = 0.05 * abs(1-0.95*exp(-j*2*pi/3));

num = G1*[1];   den = [1, -2 * r1 * cos(s1), r1 * r1];
zeros = roots(num); poles = roots(den);
[h, w] = freqz(num, den, N); mag_h = 20 * log10(abs(h)); ang_h = angle(h);
subplot(2,4,1);
plot(w/pi, mag_h); title("Filter 1: magnitude response"); ylim([-4, 0]);
xlabel("frequency in \pi units"); ylabel("Magnitude (dB)");
subplot(2,4,5);
plot(w/pi, ang_h); title("Filter 1: phase response");
xlabel("frequency in \pi units");    ylabel("Phase (degrees)");

num = G2*[1];   den = [1, -2 * r2 * cos(s1), r2 * r2];
zeros = roots(num); poles = roots(den);
[h, w] = freqz(num, den, N); mag_h = 20 * log10(abs(h)); ang_h = angle(h);
subplot(2,4,2);
plot(w/pi, mag_h); title("Filter 2: magnitude response"); ylim([-4, 0]);
xlabel("frequency in \pi units");    ylabel("Magnitude (dB)");
subplot(2,4,6);
plot(w/pi, ang_h); title("Filter 2: phase response");
xlabel("frequency in \pi units");    ylabel("Phase (degrees)");

num = G3*[1];   den = [1, -2 * r1 * cos(s2), r1 * r1];
zeros = roots(num); poles = roots(den);
[h, w] = freqz(num, den, N); mag_h = 20 * log10(abs(h)); ang_h = angle(h);
subplot(2,4,3);
plot(w/pi, mag_h); title("Filter 3: magnitude response"); ylim([-4, 0]);
xlabel("frequency in \pi units"); ylabel("Magnitude (dB)");
subplot(2,4,7);
plot(w/pi, ang_h); title("Filter 3: phase response");
xlabel("frequency in \pi units"); ylabel("Phase (degrees)");

num = G4*[1];   den = [1, -2 * r2 * cos(s2), r2 * r2];
zeros = roots(num); poles = roots(den);
[h, w] = freqz(num, den, N); mag_h = 20 * log10(abs(h)); ang_h = angle(h);
subplot(2,4,4);
plot(w/pi, mag_h); title("Filter 4: magnitude response"); ylim([-4, 0]);
xlabel("frequency in \pi units");    ylabel("Magnitude (dB)");
subplot(2,4,8);
plot(w/pi, ang_h); title("Filter 4: phase response");
xlabel("frequency in \pi units");    ylabel("Phase (degrees)");

sgtitle("Resonator Response Plot");