x = rand(1, 11);
n = 0:10;
k = -1000:1000;
w = (pi/500) * k;

X = x * (exp(-j * pi / 500)).^(n'*k);

subplot(2, 1, 1);
plot(w, abs(X));
title("Magnitude of X(e^j^w)");
xlabel("w"); ylabel("|X(e^j^w)|");

subplot(2, 1, 2);
plot(w, angle(X));
title("Angle of X(e^j^w)");
xlabel("w"); ylabel("∠X(e^j^w)");