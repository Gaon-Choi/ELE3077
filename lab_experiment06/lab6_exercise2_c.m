N = 64;

for n = 1:N
    x(n) = ((0.95)^n) * cos(n * pi/20);
end

for n = 1:(2*N)
    if n <= N
        x2(n) = x(n);
    else
        x2(n) = 0;
    end
end
stem(1:2*N, x2);

x2_dft = dft(x2);
mag = abs(x2_dft); ang = angle(x2_dft);

subplot(2, 1, 1);
stem(1:2*N, mag);
xlabel("k"); ylabel("magnitude of X2");

subplot(2, 1, 2);
stem(1:2*N, ang);
xlabel("k"); ylabel("phase of X2");