time_interval = 0.01;
t = 0:time_interval:1;

% Exercise1-(a)
subplot(2, 3, 1);
x = sin(4*pi*t);
plot(t, x); title("original signal");

subplot(2, 3, 2);
x1 = x + 0.15 * randn(1, length(t));
plot(t, x1); title("corrupted signal");

subplot(2, 3, 3);
h = [1/4 1/2 1/4];

% Exercise1-(b)
x2 = conv(x1, h);
x2(1) = []; x2(end)=[];
plot(t, x2); title("filtered signal");

interval_ = -pi:0.01*2*pi:+pi;
subplot(2, 3, 4);
X = fft(x); X = fftshift(X); magX = abs(X); plot(interval_, magX);
title("frequency of X"); xlabel("angular frequency (w)");

subplot(2, 3, 5);
X1 = fft(x1); X1 = fftshift(X1); magX1 = abs(X1); plot(interval_, magX1);
title("frequency of X1"); xlabel("angular frequency (w)");

subplot(2, 3, 6);

X2 = fft(x2); X2 = fftshift(X2); magX2 = abs(X2); plot(interval_, magX2);
title("frequency of X2"); xlabel("angular frequency (w)");

% Exercise1-(c)
err1 = mean((x-x1).^2)
err2 = mean((x-x2).^2)
ERR = abs(err1-err2)