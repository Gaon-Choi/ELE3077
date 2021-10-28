n = 0:63;
x = ((0.95).^n).*cos((pi/20)*n);

M1 = 100; M2 = 40;
k1 = [0:M1-1]; k2 = [0:M2-1];
DT_samp = @(x, k, n) x*(exp(-1j * 2 * pi / length(k))).^(n'*k);

X1 = DT_samp(x, k1, n);
X2 = DT_samp(x, k2, n);

magX1 = abs(X1);
magX2 = abs(X2);

subplot(2, 1, 1);
stem(magX1);

subplot(2, 1, 2);
stem(magX2);