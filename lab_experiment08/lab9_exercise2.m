n = (0:1:511)';

x = cos((pi/20).*n) + 3 * cos((pi/12).*n);

X1 = my_fft(x);
X2 = fft(x);

magX1 = abs(X1); angX1 = angle(X1);
magX2 = abs(X2); angX2 = angle(X2);

subplot(2, 2, 1);
plot(magX1); title("Magnitude of X1");
xlabel("k-index"); ylabel("Magnitude of X1");

subplot(2, 2, 2);
plot(magX2); title("Magnitude of X2");
xlabel("k-index"); ylabel("Magnitude of X1");

subplot(2, 2, 3);
plot(angX1); title("Angle of X1");
xlabel("k-index"); ylabel("Angle of X1");

subplot(2, 2, 4);
plot(angX2); title("Angle of X2");
xlabel("k-index"); ylabel("Angle of X2");

sgtitle("Comparison Analysis : fft vs. my\_fft");