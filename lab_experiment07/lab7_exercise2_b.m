n = 0:63;
x = ((0.95).^n).*cos((pi/20)*n);

M1 = 100; M2 = 40;
k1 = [0:M1-1]; k2 = [0:M2-1];
DT_samp = @(x, k, n) x*(exp(-1j * 2 * pi / length(k))).^(n'*k);

X1 = DT_samp(x, k1, n);
X2 = DT_samp(x, k2, n);

x1 = idft(X1);
x2 = idft(X2);

subplot(3, 1, 1);
stem(x);

subplot(3, 1, 2);
stem(real(x1));

subplot(3, 1, 3);
stem(real(x2));