n = 0:7;
N = length(n);

k = 0:N-1;
x = [1 1 1 1 0 0 0 0];
X = dft(x);

magX = abs(X);
angX = angle(X);

Xw = ((2*pi)/N) * k;
yw = ((2*pi)/2000)*[0:1999];
Y = 1 + exp(-j .* yw) + exp(-2*j .* yw) + exp(-3*j .* yw);

subplot(2, 1, 1);
plot(yw, abs(Y));
hold on
stem(Xw, magX);

subplot(2, 1, 2);
plot(yw, angle(Y));
hold on
stem(Xw, angX);