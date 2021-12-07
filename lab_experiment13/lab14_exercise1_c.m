f = 2;      % cut-off frequency
fs = 10;    % sampling frequency which is argument of our imp_invr = 1/10 = 0.1
% [b, a] = butter(6, 2(10/2)) -> original
[b, a] = butter(6, 2*pi*f, 's');
[bz, az] = imp_invr(b, a, 0.1);

figure(1);
freqz(bz, az, 2048, fs);    % analog form graph with specified fs
% figure(2);
% freqz(bz, az);