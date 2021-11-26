x = 0:250;
y = sin(2 * pi * (1/20) * x);
y2 = awgn(y, 15, 'measured');

y_filtered = filter(lpf, 1, y2);
y_nodelay = filtfilt(lpf, 1, y2);

subplot(2, 1, 1);
plot(x, y2)
title("the original white-noised signal")
xlabel("x"); ylabel("y2");

subplot(2, 1, 2);
plot(x, y_filtered, x, y_nodelay);
title("filtered signal : 'filter' vs. 'filtfilt'")
xlabel("x"); ylabel("y\_filtered / y\_nodelay");
legend("y\_filtered", "y\_nodelay");