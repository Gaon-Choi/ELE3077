x = 0:250;
y = sin(2 * pi * (1/20) * x);
y2 = awgn(y, 15, 'measured');
% noise = 0.4 * randn(1, length(x));
% y2 = y + noise

subplot(2, 1, 1)
plot(x, y); title("original sine wave : y");
xlabel("x"); ylabel("y");

subplot(2, 1, 2)
plot(x, y2); title("sine wave with white gaussian noise : y2");
xlabel("x"); ylabel("y2");
sgtitle("Comparison between original signal and gaussian noised signal")