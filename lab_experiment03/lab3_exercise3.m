f0 = 5;

t = -0.5:0.001:0.5;
y = cos(2 * pi * f0 * t);

subplot(3, 2, 1:2);
set(gca,'XTick', (-0.5:0.1:0.5)); set(gca, "YTick", (-1:1.0:1));
plot(t, y);
title("Original Signal");

subplot(3, 2, 3);
f1 = 8; t1 = -0.5:(1 / f1):0.5; Ts1 = 1 / f1;
yn_1 = cos(2 * pi * f0 * t1);
set(gca,'XTick', (-0.5:0.5:0.5)); set(gca, "YTick", (-1:1.0:1));
stem(t1, yn_1);
title("8Hz Sampling");

subplot(3, 2, 4);
yn_r1 = zeros(1, length(t));
for i = 1:length(t1)
    for k = 1:length(t)
        yn_r1(k) = yn_r1(k) + yn_1(i) * sinc((t(k) - t1(i)) / Ts1);
    end
end
plot(t, yn_r1);
hold on
stem(t1, yn_1)
title("8Hz Reconstruction");

subplot(3, 2, 5);
f2 = 12; t2 = -0.5:1 / f2:0.5;
yn_2 = cos(2*pi*f0*t2);
set(gca,'XTick', (-0.5:0.5:0.5)); set(gca, "YTick", (-1:1.0:1));
stem(t2, yn_2);
title("12Hz Sampling");

subplot(3, 2, 6);
yn_r2 = zeros(1, length(t));
Ts2 = 1 / f2;
for i = 1:length(t2)
    for k = 1:length(t)
        yn_r2(k) = yn_r2(k) + yn_2(i) * sinc((t(k) - t2(i)) / Ts2);
    end
end

plot(t, yn_r2);
hold on
stem(t2, yn_2)
title("12Hz Reconstruction");