% 2019009261_Gaon Choi

freq = 4000;        % frequency: 4000Hz
T = 1/freq;    % time period

% generate time vector
ts = T / 25;   % time sampling
% starting time: -T
% ending   time: +T
tt = -T:ts:+T;

A1 = 22;    A2 = 1.2 * A1;  % 22 years old
M = 10; D = 28  % birthday: 2000.10.28.
T_m1 = (37.2 / M) * T;
T_m2 = -(41.3 / D) * T;

x1 = A1 * cos(2*pi*freq*(tt - T_m1));
x2 = A2 * cos(2*pi*freq*(tt - T_m2));

subplot(3, 1, 1)
plot(tt, x1)
title("Plot of x1(t)")
subplot(3, 1, 2)
plot(tt, x2)
title("Plot of x2(t)")

x3 = x1 + x2;
subplot(3, 1, 3)
plot(tt, x3)
title("Plot of x3(t) = x1(t) + x2(t)")