freq = 4000;        % frequency: 4000Hz
T = 1/freq;    % time period

% generate time vector
ts = T / 25;   % time sampling
% starting time: -T
% ending   time: +T
tt = -T:ts:+T;

