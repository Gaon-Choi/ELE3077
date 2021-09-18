x = rand(1, 11);
n = 0:10;
k = -1000:1000;
w = (pi/500) * k;

y = x;  m = n + 2;
Y = y * (exp(-j * pi / 500)).^(m'*k);

subplot(2, 1, 1);
plot(w, abs(Y));
title("Magnitude of Y(e^j^w)");
xlabel("w"); ylabel("|Y(e^j^w)|");

subplot(2, 1, 2);
plot(w, angle(Y));
title("Angle of Y(e^j^w)");
xlabel("w"); ylabel("∠Y(e^j^w)");