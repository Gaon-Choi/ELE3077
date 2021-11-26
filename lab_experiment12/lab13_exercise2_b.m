Fc = 200;   % cut-off frequency
Fs = 1000;  % sampling frequency

[b, a] = butter(7, 200/500);
% freqz(b, a) % it may be another solution.

[h, w] = freqz(b, a);
magH = abs(h); angH = angle(h);
db = mag2db(magH);

subplot(2, 1, 1);
plot(w, db);
title("magnitude plot"); xlabel("π rad/samples"), ylabel("magnitude");
subplot(2, 1, 2);
plot(w, angH);
title("phase plot"); xlabel("π rad/samples"), ylabel("phase");