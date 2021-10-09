N = 64;

for n = 1:N
    x(n) = ((0.95)^n) * cos(n * pi/20);
end

x_dft = dft(x);
subplot(1, 2, 1);
stem(1:N, abs(x_dft));
xlabel("k"); ylabel("magnitude of X1");

subplot(1, 2, 2);
stem(1:N, angle(x_dft));
xlabel("k"); ylabel("phase of X1");

sgtitle("DFT of x[n]");