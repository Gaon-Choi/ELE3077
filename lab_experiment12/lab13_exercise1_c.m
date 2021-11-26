x = 0:250;
y = sin(2 * pi * (1/20) * x);
y2 = awgn(y, 15, 'measured');

y_filtered = filter(lpf, 1, y2);
y_nodelay = filtfilt(lpf, 1, y2);

% filtfilt compensates delay caused by filtering
% the difference between filter and filtfilt is: time shift